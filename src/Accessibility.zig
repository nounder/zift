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

pub const Foundation = @import("Foundation.zig");

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
    pub const class = objc.class("AXBrailleMap");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "dimensions", NSSize, .{} },
        .{ "heightAtPoint:", f32, .{NSPoint} },
        .{ "presentImage:", void, .{?*anyopaque} },
        .{ "setHeight:atPoint:", void, .{ f32, NSPoint } },
    };
};

pub const AXBrailleTable = struct {
    pub const class = objc.class("AXBrailleTable");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "identifier", objc.NSString, .{} },
        .{ "initWithIdentifier:", AXBrailleTable, .{objc.NSString} },
        .{ "isEightDot", objc.BOOL, .{} },
        .{ "locales", Foundation.NSLocale, .{} },
        .{ "localizedName", objc.NSString, .{} },
        .{ "localizedProviderName", objc.NSString, .{} },
        .{ "providerIdentifier", objc.NSString, .{} },
    };

    pub const class_methods = .{
        .{ "defaultTableForLocale:", ?AXBrailleTable, .{Foundation.NSLocale} },
        .{ "languageAgnosticTables", AXBrailleTable, .{} },
        .{ "supportedLocales", Foundation.NSLocale, .{} },
        .{ "tablesForLocale:", AXBrailleTable, .{Foundation.NSLocale} },
    };
};

pub const AXBrailleTranslationResult = struct {
    pub const class = objc.class("AXBrailleTranslationResult");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "resultString", objc.NSString, .{} },
    };
};

pub const AXBrailleTranslator = struct {
    pub const class = objc.class("AXBrailleTranslator");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "backTranslateBraille:", AXBrailleTranslationResult, .{objc.NSString} },
        .{ "initWithBrailleTable:", AXBrailleTranslator, .{AXBrailleTable} },
        .{ "translatePrintText:", AXBrailleTranslationResult, .{objc.NSString} },
    };
};

pub const AXCategoricalDataAxisDescriptor = struct {
    pub const class = objc.class("AXCategoricalDataAxisDescriptor");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "categoryOrder", Object, .{} },
        .{ "initWithAttributedTitle:categoryOrder:", AXCategoricalDataAxisDescriptor, .{ Foundation.NSAttributedString, Object } },
        .{ "initWithTitle:categoryOrder:", AXCategoricalDataAxisDescriptor, .{ objc.NSString, Object } },
        .{ "setCategoryOrder:", void, .{Object} },
    };
};

pub const AXChartDescriptor = struct {
    pub const class = objc.class("AXChartDescriptor");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
    pub const class = objc.class("AXCustomContent");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "attributedLabel", Foundation.NSAttributedString, .{} },
        .{ "attributedValue", Foundation.NSAttributedString, .{} },
        .{ "importance", AXCustomContent.Importance, .{} },
        .{ "label", objc.NSString, .{} },
        .{ "setImportance:", void, .{AXCustomContent.Importance} },
        .{ "value", objc.NSString, .{} },
    };

    pub const class_methods = .{
        .{ "customContentWithAttributedLabel:attributedValue:", Object, .{ Foundation.NSAttributedString, Foundation.NSAttributedString } },
        .{ "customContentWithLabel:value:", Object, .{ objc.NSString, objc.NSString } },
    };

    pub const Importance = enum(i64) {
        default = 0,
        high = 1,
    };
};

pub const AXDataPoint = struct {
    pub const class = objc.class("AXDataPoint");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const AXDataSeriesDescriptor = struct {
    pub const class = objc.class("AXDataSeriesDescriptor");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const AXLiveAudioGraph = struct {
    pub const class_methods = .{
        .{ "start", void, .{} },
        .{ "stop", void, .{} },
        .{ "updateValue:", void, .{f64} },
    };
};

pub const AXMathExpressionFenced = struct {
    pub const class = objc.class("AXMathExpressionFenced");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "closeString", objc.NSString, .{} },
        .{ "expressions", Object, .{} },
        .{ "initWithExpressions:openString:closeString:", AXMathExpressionFenced, .{ Object, objc.NSString, objc.NSString } },
        .{ "openString", objc.NSString, .{} },
    };
};

pub const AXMathExpressionFraction = struct {
    pub const class = objc.class("AXMathExpressionFraction");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "denimonatorExpression", Object, .{} },
        .{ "initWithNumeratorExpression:denimonatorExpression:", AXMathExpressionFraction, .{ Object, Object } },
        .{ "numeratorExpression", Object, .{} },
    };
};

pub const AXMathExpressionIdentifier = struct {
    pub const class = objc.class("AXMathExpressionIdentifier");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "content", objc.NSString, .{} },
        .{ "initWithContent:", AXMathExpressionIdentifier, .{objc.NSString} },
    };
};

pub const AXMathExpressionMultiscript = struct {
    pub const class = objc.class("AXMathExpressionMultiscript");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "baseExpression", Object, .{} },
        .{ "initWithBaseExpression:prescriptExpressions:postscriptExpressions:", AXMathExpressionMultiscript, .{ Object, Object, Object } },
        .{ "postscriptExpressions", Object, .{} },
        .{ "prescriptExpressions", Object, .{} },
    };
};

pub const AXMathExpressionNumber = struct {
    pub const class = objc.class("AXMathExpressionNumber");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "content", objc.NSString, .{} },
        .{ "initWithContent:", AXMathExpressionNumber, .{objc.NSString} },
    };
};

pub const AXMathExpressionOperator = struct {
    pub const class = objc.class("AXMathExpressionOperator");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "content", objc.NSString, .{} },
        .{ "initWithContent:", AXMathExpressionOperator, .{objc.NSString} },
    };
};

pub const AXMathExpressionRoot = struct {
    pub const class = objc.class("AXMathExpressionRoot");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "initWithRadicandExpressions:rootIndexExpression:", AXMathExpressionRoot, .{ Object, Object } },
        .{ "radicandExpressions", Object, .{} },
        .{ "rootIndexExpression", Object, .{} },
    };
};

pub const AXMathExpressionRow = struct {
    pub const class = objc.class("AXMathExpressionRow");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "expressions", Object, .{} },
        .{ "initWithExpressions:", AXMathExpressionRow, .{Object} },
    };
};

pub const AXMathExpressionSubSuperscript = struct {
    pub const class = objc.class("AXMathExpressionSubSuperscript");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "baseExpression", Object, .{} },
        .{ "initWithBaseExpression:subscriptExpressions:superscriptExpressions:", AXMathExpressionSubSuperscript, .{ Object, Object, Object } },
        .{ "subscriptExpressions", Object, .{} },
        .{ "superscriptExpressions", Object, .{} },
    };
};

pub const AXMathExpressionTable = struct {
    pub const class = objc.class("AXMathExpressionTable");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "expressions", Object, .{} },
        .{ "initWithExpressions:", AXMathExpressionTable, .{Object} },
    };
};

pub const AXMathExpressionTableCell = struct {
    pub const class = objc.class("AXMathExpressionTableCell");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "expressions", Object, .{} },
        .{ "initWithExpressions:", AXMathExpressionTableCell, .{Object} },
    };
};

pub const AXMathExpressionTableRow = struct {
    pub const class = objc.class("AXMathExpressionTableRow");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "expressions", Object, .{} },
        .{ "initWithExpressions:", AXMathExpressionTableRow, .{Object} },
    };
};

pub const AXMathExpressionText = struct {
    pub const class = objc.class("AXMathExpressionText");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "content", objc.NSString, .{} },
        .{ "initWithContent:", AXMathExpressionText, .{objc.NSString} },
    };
};

pub const AXMathExpressionUnderOver = struct {
    pub const class = objc.class("AXMathExpressionUnderOver");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "baseExpression", Object, .{} },
        .{ "initWithBaseExpression:underExpression:overExpression:", AXMathExpressionUnderOver, .{ Object, Object, Object } },
        .{ "overExpression", Object, .{} },
        .{ "underExpression", Object, .{} },
    };
};

pub const AXNumericDataAxisDescriptor = struct {
    pub const class = objc.class("AXNumericDataAxisDescriptor");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "scaleType", AXNumericDataAxisDescriptor.ScaleType, .{} },
        .{ "setScaleType:", void, .{AXNumericDataAxisDescriptor.ScaleType} },
        .{ "setValueDescriptionProvider:", void, .{objc.NSString} },
        .{ "valueDescriptionProvider", objc.NSString, .{} },
    };

    pub const ScaleType = enum(i64) {
        linear = 0,
        log10 = 1,
        ln = 2,
    };
};

pub const AccessibilityRequest = struct {
    pub const class = objc.class("AXRequest");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "technology", objc.NSString, .{} },
    };

    pub const class_methods = .{
        .{ "currentRequest", ?AccessibilityRequest, .{} },
    };
};

pub fn viewObj(val: anytype) Object {
    const T = @TypeOf(val);
    if (T == Object) return val;
    if (@hasField(T, "id")) return val.id;
    @compileError("cannot extract obj from " ++ @typeName(T));
}

pub fn init(comptime class_name: [*:0]const u8) Object {
    return objc.send(objc.send(objc.getClass(class_name).?, "alloc", Object, .{}), "init", Object, .{});
}

pub fn nsArray(items: []const Object) Object {
    const arr = objc.send(objc.class("NSMutableArray"), "arrayWithCapacity:", Object, .{@as(c_ulong, items.len)});
    for (items) |item| objc.send(arr, "addObject:", void, .{item});
    return arr;
}

pub fn fmtZ(comptime fmt_str: []const u8, args: anytype, buf: []u8) [*:0]const u8 {
    const msg = std.fmt.bufPrint(buf[0 .. buf.len - 1], fmt_str, args) catch "?";
    buf[msg.len] = 0;
    return @ptrCast(buf[0..msg.len :0]);
}
