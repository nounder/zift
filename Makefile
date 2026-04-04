.PHONY: all clean test run run-swift app app-swift lib build

ZIG_OUT    = zig-out
APP_DIR    = $(ZIG_OUT)/Zift.app
SWIFT_APP  = $(ZIG_OUT)/ZiftSwift.app
INCLUDE    = include
SWIFT_SRC  = swift
SWIFT_FILES = $(wildcard $(SWIFT_SRC)/*.swift)

all: app

# ── Pure Zig (AppKit) ───────────────────────────────────────────────────

build:
	zig build

app: build
	@mkdir -p "$(APP_DIR)/Contents/MacOS" "$(APP_DIR)/Contents/Resources"
	@cp "$(ZIG_OUT)/bin/zift" "$(APP_DIR)/Contents/MacOS/Zift"
	@/usr/libexec/PlistBuddy -c "Clear dict" "$(APP_DIR)/Contents/Info.plist" 2>/dev/null || true
	@/usr/libexec/PlistBuddy -c "Add :CFBundleName string Zift" "$(APP_DIR)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :CFBundleIdentifier string com.zift.app" "$(APP_DIR)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :CFBundleVersion string 1.0" "$(APP_DIR)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :CFBundleShortVersionString string 1.0" "$(APP_DIR)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :CFBundlePackageType string APPL" "$(APP_DIR)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :CFBundleExecutable string Zift" "$(APP_DIR)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :LSMinimumSystemVersion string 13.0" "$(APP_DIR)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :NSHighResolutionCapable bool true" "$(APP_DIR)/Contents/Info.plist"
	@echo "Built $(APP_DIR)  (Pure Zig)"

run: app
	open "$(APP_DIR)"

# ── SwiftUI frontend + Zig core ─────────────────────────────────────────

lib:
	zig build lib

app-swift: lib
	@mkdir -p "$(SWIFT_APP)/Contents/MacOS" "$(SWIFT_APP)/Contents/Resources"
	swiftc \
		-O \
		-import-objc-header /dev/null \
		-I $(INCLUDE) \
		-Xcc -fmodule-map-file=$(INCLUDE)/module.modulemap \
		-L $(ZIG_OUT)/lib \
		-lzift \
		-framework SwiftUI \
		-framework AppKit \
		-framework CoreGraphics \
		-o "$(SWIFT_APP)/Contents/MacOS/ZiftSwift" \
		$(SWIFT_FILES)
	@/usr/libexec/PlistBuddy -c "Clear dict" "$(SWIFT_APP)/Contents/Info.plist" 2>/dev/null || true
	@/usr/libexec/PlistBuddy -c "Add :CFBundleName string ZiftSwift" "$(SWIFT_APP)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :CFBundleIdentifier string com.zift.swift" "$(SWIFT_APP)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :CFBundleVersion string 1.0" "$(SWIFT_APP)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :CFBundleShortVersionString string 1.0" "$(SWIFT_APP)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :CFBundlePackageType string APPL" "$(SWIFT_APP)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :CFBundleExecutable string ZiftSwift" "$(SWIFT_APP)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :LSMinimumSystemVersion string 13.0" "$(SWIFT_APP)/Contents/Info.plist"
	@/usr/libexec/PlistBuddy -c "Add :NSHighResolutionCapable bool true" "$(SWIFT_APP)/Contents/Info.plist"
	@echo "Built $(SWIFT_APP)  (SwiftUI + Zig core)"

run-swift: app-swift
	open "$(SWIFT_APP)"

# ── Common ──────────────────────────────────────────────────────────────

test:
	zig build test

clean:
	rm -rf zig-out .zig-cache
