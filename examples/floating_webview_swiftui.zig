//! Floating WebView — Pure Zig calling SwiftUI directly.
//!
//! Calls Swift ABI functions from Zig without any Swift source code.
//! Uses the stable Swift ABI: mangled symbol names, register-based
//! calling convention, and framework-exported type metadata + witness tables.
//!
//! The main challenge is calling convention: Swift uses `swiftcc` which
//! decomposes structs into registers differently than C ABI. For functions
//! whose signatures are C-compatible (pointer args, small returns), we use
//! extern "c". For others, we use inline asm to match the Swift register layout.

// ── Swift runtime ────────────────────────────────────────────────────

// Swift.String is 16 bytes, fits in x0 + x1 — C ABI compatible.
const SwiftString = extern struct { _0: u64, _1: u64 };

extern "c" fn @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(
    ptr: [*]const u8,
    count: usize,
    is_ascii: u8,
) SwiftString;

const swiftStringInit = @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC";

// ── SwiftUI Text ─────────────────────────────────────────────────────

// Text is 32 bytes. In Swift ABI it's returned decomposed in x0, x1, w2, x3.
// C ABI would use sret for this size, so we must use inline asm.
const Text = extern struct { _0: u64, _1: u64, _2: u8, _pad: [7]u8 = .{0} ** 7, _3: u64 };

/// Call SwiftUI.Text.init(verbatim:) using inline asm to match swiftcc return.
/// Swift ABI: args in x0,x1 (String), returns x0,x1,w2,x3 (Text decomposed).
/// Zig inline asm only allows one return, so we store results to a stack buffer.
fn textInitVerbatim(str: SwiftString) Text {
    var out: Text = undefined;
    asm volatile (
        \\bl _$s7SwiftUI4TextV8verbatimACSS_tcfC
        \\str x0, [x9, #0]
        \\str x1, [x9, #8]
        \\strb w2, [x9, #16]
        \\str x3, [x9, #24]
        :
        : [s0] "{x0}" (str._0),
          [s1] "{x1}" (str._1),
          [buf] "{x9}" (&out),
        : .{ .memory = true });
    return out;
}

// Type metadata accessor for SwiftUI.Text
// fn(request: usize) -> { metadata: *anyopaque, state: usize }
// 16-byte return fits in x0+x1 — C ABI compatible.
extern "c" fn @"$s7SwiftUI4TextVMa"(request: usize) extern struct { metadata: *anyopaque, state: usize };
const textMetadataAccessor = @"$s7SwiftUI4TextVMa";

// Protocol witness table for SwiftUI.Text : SwiftUI.View (data symbol)
extern const @"$s7SwiftUI4TextVAA4ViewAAWP": anyopaque;

// static SwiftUI.__App.run<A where A: SwiftUI.View>(A) -> Never
// Args: x0=value_ptr, x1=type_metadata, x2=witness_table — all pointers, C-compatible.
extern "c" fn @"$s7SwiftUI5__AppO3runys5NeverOxAA4ViewRzlFZ"(
    value_ptr: *const Text,
    type_metadata: *anyopaque,
    view_witness_table: *const anyopaque,
) noreturn;

const appRun = @"$s7SwiftUI5__AppO3runys5NeverOxAA4ViewRzlFZ";

// ── Entry point ──────────────────────────────────────────────────────

pub fn main() void {
    // 1. Create Swift.String
    const lit = "Hello from Zig!";
    const str = swiftStringInit(lit.ptr, lit.len, 1);

    // 2. Create SwiftUI.Text(verbatim:) via inline asm (swiftcc return)
    const text = textInitVerbatim(str);

    // 3. Get type metadata via accessor
    const metadata = textMetadataAccessor(0).metadata;

    // 4. Get witness table address
    const witness_table: *const anyopaque = &@"$s7SwiftUI4TextVAA4ViewAAWP";

    // 5. Launch SwiftUI app — blocks forever.
    appRun(&text, metadata, witness_table);
}
