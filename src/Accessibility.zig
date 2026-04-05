//! Accessibility bindings for Zig — AUTO-GENERATED from Swift symbol graph
//! Run: python3 scripts/gen_framework.py Accessibility

const std = @import("std");
const objc = @import("objc.zig");

const Object = objc.Object;
pub const Selector = objc.Sel;
pub const Any = *anyopaque;
pub const AnyObject = Object;
pub const AnyClass = Object;
pub const OpaquePointer = ?*anyopaque;
pub const UnsafeMutableRawPointer = *anyopaque;
pub const UnsafeRawPointer = *const anyopaque;
pub const UnsafeMutablePointer = *anyopaque;
pub const UnsafePointer = *const anyopaque;
pub const TimeInterval = f64;
pub const pid_t = std.c_int;

pub const AppKit = @import("AppKit.zig");
pub const Foundation = @import("Foundation.zig");
pub const WebKit = @import("WebKit.zig");

pub const NSPoint = Foundation.NSPoint;
pub const NSSize = Foundation.NSSize;
pub const NSRect = Foundation.NSRect;
pub const NSRange = Foundation.NSRange;
pub const NSEdgeInsets = Foundation.NSEdgeInsets;

pub const Feature = enum(i64) {
    personalVoiceAllowAppsToRequestToUse = 1,
    allowAppsToAddAudioToCalls = 2,
    assistiveTouch = 3,
    assistiveTouchDevices = 4,
    dwellControl = 5,
};

pub const AXBrailleMapRenderer = *anyopaque;
pub const AXChart = *anyopaque;
pub const AXCustomContentProvider = *anyopaque;
pub const AXDataAxisDescriptor = *anyopaque;
pub const AXMathExpressionProvider = *anyopaque;
pub const NSCopying = *anyopaque;
pub const NSObjectProtocol = *anyopaque;

pub const AXBrailleMap = struct {
    obj: Object,

    pub const methods = .{
        .{ "dimensions", NSSize, .{} },
        .{ "heightAtPoint:", f32, .{NSPoint} },
        .{ "presentImage:", void, .{?*anyopaque} },
        .{ "setHeight:atPoint:", void, .{ f32, NSPoint } },
    };

    pub fn send(self: AXBrailleMap, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXBrailleMap", class_methods, selector, args);
    }
};

pub const AXBrailleTable = struct {
    obj: Object,

    pub const methods = .{
        .{ "identifier", objc.NSString, .{} },
        .{ "initWithIdentifier:", AXBrailleTable, .{objc.NSString} },
        .{ "isEightDot", objc.BOOL, .{} },
        .{ "locales", Foundation.NSLocale, .{} },
        .{ "localizedName", objc.NSString, .{} },
        .{ "localizedProviderName", objc.NSString, .{} },
        .{ "providerIdentifier", objc.NSString, .{} },
    };

    pub fn send(self: AXBrailleTable, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultTableForLocale:", ?AXBrailleTable, .{Foundation.NSLocale} },
        .{ "languageAgnosticTables", AXBrailleTable, .{} },
        .{ "supportedLocales", Foundation.NSLocale, .{} },
        .{ "tablesForLocale:", AXBrailleTable, .{Foundation.NSLocale} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXBrailleTable", class_methods, selector, args);
    }
};

pub const AXBrailleTranslationResult = struct {
    obj: Object,

    pub const methods = .{
        .{ "resultString", objc.NSString, .{} },
    };

    pub fn send(self: AXBrailleTranslationResult, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXBrailleTranslationResult", class_methods, selector, args);
    }
};

pub const AXBrailleTranslator = struct {
    obj: Object,

    pub const methods = .{
        .{ "backTranslateBraille:", AXBrailleTranslationResult, .{objc.NSString} },
        .{ "initWithBrailleTable:", AXBrailleTranslator, .{AXBrailleTable} },
        .{ "translatePrintText:", AXBrailleTranslationResult, .{objc.NSString} },
    };

    pub fn send(self: AXBrailleTranslator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXBrailleTranslator", class_methods, selector, args);
    }
};

pub const AXCategoricalDataAxisDescriptor = struct {
    obj: Object,

    pub const methods = .{
        .{ "categoryOrder", Object, .{} },
        .{ "initWithAttributedTitle:categoryOrder:", AXCategoricalDataAxisDescriptor, .{ Foundation.NSAttributedString, Object } },
        .{ "initWithTitle:categoryOrder:", AXCategoricalDataAxisDescriptor, .{ objc.NSString, Object } },
        .{ "setCategoryOrder:", void, .{Object} },
    };

    pub fn send(self: AXCategoricalDataAxisDescriptor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXCategoricalDataAxisDescriptor", class_methods, selector, args);
    }
};

pub const AXChartDescriptor = struct {
    obj: Object,

    pub const methods = .{
        .{ "attributedTitle", ?Foundation.NSAttributedString, .{} },
        .{ "contentDirection", AXChartDescriptor.ContentDirection, .{} },
        .{ "contentFrame", NSRect, .{} },
        .{ "series", Object, .{} },
        .{ "setAttributedTitle:", void, .{?Foundation.NSAttributedString} },
        .{ "setContentDirection:", void, .{AXChartDescriptor.ContentDirection} },
        .{ "setContentFrame:", void, .{NSRect} },
        .{ "setSeries:", void, .{Object} },
        .{ "setSummary:", void, .{?objc.NSString} },
        .{ "setTitle:", void, .{?objc.NSString} },
        .{ "setYAxis:", void, .{?AXNumericDataAxisDescriptor} },
        .{ "summary", ?objc.NSString, .{} },
        .{ "title", ?objc.NSString, .{} },
        .{ "yAxis", ?AXNumericDataAxisDescriptor, .{} },
    };

    pub fn send(self: AXChartDescriptor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXChartDescriptor", class_methods, selector, args);
    }

    pub const ContentDirection = enum(i64) {
        leftToRight = 0,
        rightToLeft = 1,
        topToBottom = 2,
        bottomToTop = 3,
        radialClockwise = 4,
        radialCounterClockwise = 5,
    };
};

pub const AXCustomContent = struct {
    obj: Object,

    pub const methods = .{
        .{ "attributedLabel", Foundation.NSAttributedString, .{} },
        .{ "attributedValue", Foundation.NSAttributedString, .{} },
        .{ "importance", AXCustomContent.Importance, .{} },
        .{ "label", objc.NSString, .{} },
        .{ "setImportance:", void, .{AXCustomContent.Importance} },
        .{ "value", objc.NSString, .{} },
    };

    pub fn send(self: AXCustomContent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "customContentWithAttributedLabel:attributedValue:", Object, .{ Foundation.NSAttributedString, Foundation.NSAttributedString } },
        .{ "customContentWithLabel:value:", Object, .{ objc.NSString, objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXCustomContent", class_methods, selector, args);
    }

    pub const Importance = enum(i64) {
        default = 0,
        high = 1,
    };
};

pub const AXDataPoint = struct {
    obj: Object,

    pub const methods = .{
        .{ "attributedLabel", ?Foundation.NSAttributedString, .{} },
        .{ "label", ?objc.NSString, .{} },
        .{ "setAttributedLabel:", void, .{?Foundation.NSAttributedString} },
        .{ "setLabel:", void, .{?objc.NSString} },
        .{ "setXValue:", void, .{Object} },
        .{ "setYValue:", void, .{?*anyopaque} },
        .{ "xValue", Object, .{} },
        .{ "yValue", ?*anyopaque, .{} },
    };

    pub fn send(self: AXDataPoint, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXDataPoint", class_methods, selector, args);
    }
};

pub const AXDataSeriesDescriptor = struct {
    obj: Object,

    pub const methods = .{
        .{ "attributedName", Foundation.NSAttributedString, .{} },
        .{ "dataPoints", Object, .{} },
        .{ "initWithAttributedName:isContinuous:dataPoints:", AXDataSeriesDescriptor, .{ Foundation.NSAttributedString, objc.BOOL, Object } },
        .{ "initWithName:isContinuous:dataPoints:", AXDataSeriesDescriptor, .{ objc.NSString, objc.BOOL, Object } },
        .{ "isContinuous", objc.BOOL, .{} },
        .{ "name", ?objc.NSString, .{} },
        .{ "setAttributedName:", void, .{Foundation.NSAttributedString} },
        .{ "setDataPoints:", void, .{Object} },
        .{ "setIsContinuous:", void, .{objc.BOOL} },
        .{ "setName:", void, .{?objc.NSString} },
    };

    pub fn send(self: AXDataSeriesDescriptor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXDataSeriesDescriptor", class_methods, selector, args);
    }
};

pub const AXLiveAudioGraph = struct {
    pub const class_methods = .{
        .{ "start", void, .{} },
        .{ "stop", void, .{} },
        .{ "updateValue:", void, .{f64} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXLiveAudioGraph", class_methods, selector, args);
    }
};

pub const AXMathExpressionFenced = struct {
    obj: Object,

    pub const methods = .{
        .{ "closeString", objc.NSString, .{} },
        .{ "expressions", Object, .{} },
        .{ "initWithExpressions:openString:closeString:", AXMathExpressionFenced, .{ Object, objc.NSString, objc.NSString } },
        .{ "openString", objc.NSString, .{} },
    };

    pub fn send(self: AXMathExpressionFenced, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionFenced", class_methods, selector, args);
    }
};

pub const AXMathExpressionFraction = struct {
    obj: Object,

    pub const methods = .{
        .{ "denimonatorExpression", Object, .{} },
        .{ "initWithNumeratorExpression:denimonatorExpression:", AXMathExpressionFraction, .{ Object, Object } },
        .{ "numeratorExpression", Object, .{} },
    };

    pub fn send(self: AXMathExpressionFraction, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionFraction", class_methods, selector, args);
    }
};

pub const AXMathExpressionIdentifier = struct {
    obj: Object,

    pub const methods = .{
        .{ "content", objc.NSString, .{} },
        .{ "initWithContent:", AXMathExpressionIdentifier, .{objc.NSString} },
    };

    pub fn send(self: AXMathExpressionIdentifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionIdentifier", class_methods, selector, args);
    }
};

pub const AXMathExpressionMultiscript = struct {
    obj: Object,

    pub const methods = .{
        .{ "baseExpression", Object, .{} },
        .{ "initWithBaseExpression:prescriptExpressions:postscriptExpressions:", AXMathExpressionMultiscript, .{ Object, Object, Object } },
        .{ "postscriptExpressions", Object, .{} },
        .{ "prescriptExpressions", Object, .{} },
    };

    pub fn send(self: AXMathExpressionMultiscript, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionMultiscript", class_methods, selector, args);
    }
};

pub const AXMathExpressionNumber = struct {
    obj: Object,

    pub const methods = .{
        .{ "content", objc.NSString, .{} },
        .{ "initWithContent:", AXMathExpressionNumber, .{objc.NSString} },
    };

    pub fn send(self: AXMathExpressionNumber, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionNumber", class_methods, selector, args);
    }
};

pub const AXMathExpressionOperator = struct {
    obj: Object,

    pub const methods = .{
        .{ "content", objc.NSString, .{} },
        .{ "initWithContent:", AXMathExpressionOperator, .{objc.NSString} },
    };

    pub fn send(self: AXMathExpressionOperator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionOperator", class_methods, selector, args);
    }
};

pub const AXMathExpressionRoot = struct {
    obj: Object,

    pub const methods = .{
        .{ "initWithRadicandExpressions:rootIndexExpression:", AXMathExpressionRoot, .{ Object, Object } },
        .{ "radicandExpressions", Object, .{} },
        .{ "rootIndexExpression", Object, .{} },
    };

    pub fn send(self: AXMathExpressionRoot, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionRoot", class_methods, selector, args);
    }
};

pub const AXMathExpressionRow = struct {
    obj: Object,

    pub const methods = .{
        .{ "expressions", Object, .{} },
        .{ "initWithExpressions:", AXMathExpressionRow, .{Object} },
    };

    pub fn send(self: AXMathExpressionRow, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionRow", class_methods, selector, args);
    }
};

pub const AXMathExpressionSubSuperscript = struct {
    obj: Object,

    pub const methods = .{
        .{ "baseExpression", Object, .{} },
        .{ "initWithBaseExpression:subscriptExpressions:superscriptExpressions:", AXMathExpressionSubSuperscript, .{ Object, Object, Object } },
        .{ "subscriptExpressions", Object, .{} },
        .{ "superscriptExpressions", Object, .{} },
    };

    pub fn send(self: AXMathExpressionSubSuperscript, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionSubSuperscript", class_methods, selector, args);
    }
};

pub const AXMathExpressionTable = struct {
    obj: Object,

    pub const methods = .{
        .{ "expressions", Object, .{} },
        .{ "initWithExpressions:", AXMathExpressionTable, .{Object} },
    };

    pub fn send(self: AXMathExpressionTable, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionTable", class_methods, selector, args);
    }
};

pub const AXMathExpressionTableCell = struct {
    obj: Object,

    pub const methods = .{
        .{ "expressions", Object, .{} },
        .{ "initWithExpressions:", AXMathExpressionTableCell, .{Object} },
    };

    pub fn send(self: AXMathExpressionTableCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionTableCell", class_methods, selector, args);
    }
};

pub const AXMathExpressionTableRow = struct {
    obj: Object,

    pub const methods = .{
        .{ "expressions", Object, .{} },
        .{ "initWithExpressions:", AXMathExpressionTableRow, .{Object} },
    };

    pub fn send(self: AXMathExpressionTableRow, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionTableRow", class_methods, selector, args);
    }
};

pub const AXMathExpressionText = struct {
    obj: Object,

    pub const methods = .{
        .{ "content", objc.NSString, .{} },
        .{ "initWithContent:", AXMathExpressionText, .{objc.NSString} },
    };

    pub fn send(self: AXMathExpressionText, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionText", class_methods, selector, args);
    }
};

pub const AXMathExpressionUnderOver = struct {
    obj: Object,

    pub const methods = .{
        .{ "baseExpression", Object, .{} },
        .{ "initWithBaseExpression:underExpression:overExpression:", AXMathExpressionUnderOver, .{ Object, Object, Object } },
        .{ "overExpression", Object, .{} },
        .{ "underExpression", Object, .{} },
    };

    pub fn send(self: AXMathExpressionUnderOver, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXMathExpressionUnderOver", class_methods, selector, args);
    }
};

pub const AXNumericDataAxisDescriptor = struct {
    obj: Object,

    pub const methods = .{
        .{ "scaleType", AXNumericDataAxisDescriptor.ScaleType, .{} },
        .{ "setScaleType:", void, .{AXNumericDataAxisDescriptor.ScaleType} },
        .{ "setValueDescriptionProvider:", void, .{objc.NSString} },
        .{ "valueDescriptionProvider", objc.NSString, .{} },
    };

    pub fn send(self: AXNumericDataAxisDescriptor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXNumericDataAxisDescriptor", class_methods, selector, args);
    }

    pub const ScaleType = enum(i64) {
        linear = 0,
        log10 = 1,
        ln = 2,
    };
};

pub const AccessibilityRequest = struct {
    obj: Object,

    pub const methods = .{
        .{ "technology", objc.NSString, .{} },
    };

    pub fn send(self: AccessibilityRequest, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentRequest", ?AccessibilityRequest, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "AXRequest", class_methods, selector, args);
    }
};

pub fn viewObj(val: anytype) Object {
    const T = @TypeOf(val);
    if (T == Object) return val;
    if (@hasField(T, "obj")) return val.obj;
    @compileError("cannot extract obj from " ++ @typeName(T));
}

pub fn init(comptime class_name: [*:0]const u8) Object {
    return objc.msgSend(Object, objc.msgSendClass(Object, class_name, "alloc", .{}), "init", .{});
}

pub fn nsArray(items: []const Object) Object {
    const arr = objc.msgSendClass(Object, "NSMutableArray", "arrayWithCapacity:", .{@as(c_ulong, items.len)});
    for (items) |item| objc.msgSend(void, arr, "addObject:", .{item});
    return arr;
}

pub fn fmtZ(comptime fmt_str: []const u8, args: anytype, buf: []u8) [*:0]const u8 {
    const msg = std.fmt.bufPrint(buf[0 .. buf.len - 1], fmt_str, args) catch "?";
    buf[msg.len] = 0;
    return @ptrCast(buf[0..msg.len :0]);
}
