# zwift

A macOS todo app with two frontends:

- **Zig** — native AppKit UI built entirely in Zig via Objective-C runtime bindings
- **Swift** — SwiftUI frontend

Both produce standalone `.app` bundles.

## Requirements

- macOS 13+
- [Zig](https://ziglang.org/download/) 0.15.2+
- Swift toolchain (ships with Xcode or Command Line Tools) — only needed for the Swift version

## Build & Run

```
zig build            # builds both app bundles
zig build app-zig    # builds TodozZig.app (Zig + AppKit)
zig build app-swift  # builds TodozSwift.app (SwiftUI)
zig build run-zig    # build and open TodozZig.app
zig build run-swift  # build and open TodozSwift.app
```

App bundles are output to `zig-out/`.

### Tests

```
zig build test
```

## Regenerating bindings

The AppKit/Foundation Zig bindings are pre-generated and checked in. To regenerate them (e.g. for a new SDK version):

```
python3 scripts/gen_framework.py AppKit
python3 scripts/gen_framework.py Foundation
```

Requires macOS with Command Line Tools or Xcode installed.
