//! WebKit bindings for Zig — AUTO-GENERATED from Swift symbol graph
//! Run: python3 scripts/gen_framework.py WebKit

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

pub const Accessibility = @import("Accessibility.zig");
pub const AppKit = @import("AppKit.zig");
pub const Foundation = @import("Foundation.zig");

pub const NSPoint = Foundation.NSPoint;
pub const NSSize = Foundation.NSSize;
pub const NSRect = Foundation.NSRect;
pub const NSRange = Foundation.NSRange;
pub const NSEdgeInsets = Foundation.NSEdgeInsets;

pub const WKDialogResult = enum(i64) {
    showDefault = 1,
    askAgain = 2,
    handled = 3,
};

pub const Code = enum(i64) {
    unknown = 1,
    webContentProcessTerminated = 2,
    webViewInvalidated = 3,
    javaScriptExceptionOccurred = 4,
    javaScriptResultTypeIsUnsupported = 5,
    contentRuleListStoreCompileFailed = 6,
    contentRuleListStoreLookUpFailed = 7,
    contentRuleListStoreRemoveFailed = 8,
    contentRuleListStoreVersionMismatch = 9,
    attributedStringContentFailedToLoad = 10,
    attributedStringContentLoadTimedOut = 11,
    javaScriptInvalidFrameTarget = 12,
    navigationAppBoundDomain = 13,
    javaScriptAppBoundDomain = 14,
    duplicateCredential = 15,
    malformedCredential = 16,
    credentialNotFound = 17,
};

pub const WKMediaCaptureState = enum(i64) {
    none = 0,
    active = 1,
    muted = 2,
};

pub const WKMediaCaptureType = enum(i64) {
    camera = 0,
    microphone = 1,
    cameraAndMicrophone = 2,
};

pub const WKMediaPlaybackState = enum(i64) {
    none = 0,
    playing = 1,
    paused = 2,
    suspended = 3,
};

pub const WKNavigationActionPolicy = enum(i64) {
    cancel = 0,
    allow = 1,
    download = 2,
};

pub const WKNavigationResponsePolicy = enum(i64) {
    cancel = 0,
    allow = 1,
    download = 2,
};

pub const WKNavigationType = enum(i64) {
    other = -1,
    linkActivated = 0,
    formSubmitted = 1,
    backForward = 2,
    reload = 3,
    formResubmitted = 4,
};

pub const WKPermissionDecision = enum(i64) {
    prompt = 0,
    grant = 1,
    deny = 2,
};

pub const WKUserInterfaceDirectionPolicy = enum(i64) {
    content = 0,
    system = 1,
};

pub const WKUserScriptInjectionTime = enum(i64) {
    atDocumentStart = 0,
    atDocumentEnd = 1,
};

pub const WKWebExtensionContextError = enum(i64) {
    unknown = 1,
    alreadyLoaded = 2,
    notLoaded = 3,
    baseURLAlreadyInUse = 4,
    noBackgroundContent = 5,
    backgroundContentFailedToLoad = 6,
};

pub const WKWebExtensionDataRecordError = enum(i64) {
    unknown = 1,
    localStorageFailed = 2,
    sessionStorageFailed = 3,
    synchronizedStorageFailed = 4,
};

pub const WKWebExtensionError = enum(i64) {
    unknown = 1,
    resourceNotFound = 2,
    invalidResourceCodeSignature = 3,
    invalidManifest = 4,
    unsupportedManifestVersion = 5,
    invalidManifestEntry = 6,
    invalidDeclarativeNetRequestEntry = 7,
    invalidBackgroundPersistence = 8,
    invalidArchive = 9,
};

pub const WKWebExtensionMatchPatternError = enum(i64) {
    unknown = 1,
    invalidScheme = 2,
    invalidHost = 3,
    invalidPath = 4,
};

pub const WKWebExtensionMessagePortError = enum(i64) {
    unknown = 1,
    notConnected = 2,
    messageInvalid = 3,
};

pub const WebCacheModel = enum(i64) {
    documentViewer = 0,
    documentBrowser = 1,
    primaryWebBrowser = 2,
};

pub const WebNavigationType = enum(i64) {
    linkClicked = 0,
    formSubmitted = 1,
    backForward = 2,
    reload = 3,
    formResubmitted = 4,
    other = 5,
};

pub const WebViewInsertAction = enum(i64) {
    typed = 0,
    pasted = 1,
    dropped = 2,
};

pub const DOMEventListener = *anyopaque;
pub const DOMEventTarget = *anyopaque;
pub const DOMNodeFilter = *anyopaque;
pub const DOMXPathNSResolver = *anyopaque;
pub const NSCopying = *anyopaque;
pub const NSDraggingInfo = *anyopaque;
pub const NSObjectProtocol = *anyopaque;
pub const NSURLDownloadDelegate = *anyopaque;
pub const NSValidatedUserInterfaceItem = *anyopaque;
pub const WKDownloadDelegate = *anyopaque;
pub const WKHTTPCookieStoreObserver = *anyopaque;
pub const WKNavigationDelegate = *anyopaque;
pub const WKScriptMessageHandler = *anyopaque;
pub const WKScriptMessageHandlerWithReply = *anyopaque;
pub const WKUIDelegate = *anyopaque;
pub const WKURLSchemeHandler = *anyopaque;
pub const WKURLSchemeTask = *anyopaque;
pub const WKWebExtensionControllerDelegate = *anyopaque;
pub const WKWebExtensionTab = *anyopaque;
pub const WKWebExtensionWindow = *anyopaque;
pub const WebDocumentRepresentation = *anyopaque;
pub const WebDocumentSearching = *anyopaque;
pub const WebDocumentText = *anyopaque;
pub const WebDocumentView = *anyopaque;
pub const WebDownloadDelegate = *anyopaque;
pub const WebEditingDelegate = *anyopaque;
pub const WebFrameLoadDelegate = *anyopaque;
pub const WebOpenPanelResultListener = *anyopaque;
pub const WebPlugInViewFactory = *anyopaque;
pub const WebPolicyDecisionListener = *anyopaque;
pub const WebPolicyDelegate = *anyopaque;
pub const WebResourceLoadDelegate = *anyopaque;
pub const WebUIDelegate = *anyopaque;

pub const DOMAbstractView = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "document", DOMDocument, .{} },
    };

    pub fn send(self: DOMAbstractView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMAttr = struct {
    obj: Object,

    pub const Super = DOMNode;
    pub const methods = .{
        .{ "name", objc.NSString, .{} },
        .{ "ownerElement", DOMElement, .{} },
        .{ "setValue:", void, .{objc.NSString} },
        .{ "specified", objc.BOOL, .{} },
        .{ "style", DOMCSSStyleDeclaration, .{} },
        .{ "value", objc.NSString, .{} },
    };

    pub fn send(self: DOMAttr, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMBlob = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "size", u64, .{} },
    };

    pub fn send(self: DOMBlob, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSCharsetRule = struct {
    obj: Object,

    pub const Super = DOMCSSRule;
    pub const methods = .{
        .{ "encoding", objc.NSString, .{} },
    };

    pub fn send(self: DOMCSSCharsetRule, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSFontFaceRule = struct {
    obj: Object,

    pub const Super = DOMCSSRule;
    pub const methods = .{
        .{ "style", DOMCSSStyleDeclaration, .{} },
    };

    pub fn send(self: DOMCSSFontFaceRule, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSImportRule = struct {
    obj: Object,

    pub const Super = DOMCSSRule;
    pub const methods = .{
        .{ "href", objc.NSString, .{} },
        .{ "media", DOMMediaList, .{} },
        .{ "styleSheet", DOMCSSStyleSheet, .{} },
    };

    pub fn send(self: DOMCSSImportRule, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSMediaRule = struct {
    obj: Object,

    pub const Super = DOMCSSRule;
    pub const methods = .{
        .{ "cssRules", DOMCSSRuleList, .{} },
        .{ "deleteRule:", void, .{u32} },
        .{ "insertRule:index:", u32, .{ objc.NSString, u32 } },
        .{ "media", DOMMediaList, .{} },
    };

    pub fn send(self: DOMCSSMediaRule, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSPageRule = struct {
    obj: Object,

    pub const Super = DOMCSSRule;
    pub const methods = .{
        .{ "selectorText", objc.NSString, .{} },
        .{ "setSelectorText:", void, .{objc.NSString} },
        .{ "style", DOMCSSStyleDeclaration, .{} },
    };

    pub fn send(self: DOMCSSPageRule, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSPrimitiveValue = struct {
    obj: Object,

    pub const Super = DOMCSSValue;
    pub const methods = .{
        .{ "getCounterValue", ?DOMCounter, .{} },
        .{ "getFloatValue:", f32, .{u16} },
        .{ "getRGBColorValue", ?DOMRGBColor, .{} },
        .{ "getRectValue", ?DOMRect, .{} },
        .{ "getStringValue", ?objc.NSString, .{} },
        .{ "primitiveType", u16, .{} },
        .{ "setFloatValue:floatValue:", void, .{ u16, f32 } },
        .{ "setStringValue:stringValue:", void, .{ u16, objc.NSString } },
    };

    pub fn send(self: DOMCSSPrimitiveValue, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSRule = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "cssText", objc.NSString, .{} },
        .{ "parentRule", DOMCSSRule, .{} },
        .{ "parentStyleSheet", DOMCSSStyleSheet, .{} },
        .{ "setCssText:", void, .{objc.NSString} },
        .{ "type", u16, .{} },
    };

    pub fn send(self: DOMCSSRule, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSRuleList = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "item:", ?DOMCSSRule, .{u32} },
        .{ "length", u32, .{} },
    };

    pub fn send(self: DOMCSSRuleList, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSStyleDeclaration = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "azimuth", ?objc.NSString, .{} },
        .{ "background", ?objc.NSString, .{} },
        .{ "backgroundAttachment", ?objc.NSString, .{} },
        .{ "backgroundColor", ?objc.NSString, .{} },
        .{ "backgroundImage", ?objc.NSString, .{} },
        .{ "backgroundPosition", ?objc.NSString, .{} },
        .{ "backgroundRepeat", ?objc.NSString, .{} },
        .{ "border", ?objc.NSString, .{} },
        .{ "borderBottom", ?objc.NSString, .{} },
        .{ "borderBottomColor", ?objc.NSString, .{} },
        .{ "borderBottomStyle", ?objc.NSString, .{} },
        .{ "borderBottomWidth", ?objc.NSString, .{} },
        .{ "borderCollapse", ?objc.NSString, .{} },
        .{ "borderColor", ?objc.NSString, .{} },
        .{ "borderLeft", ?objc.NSString, .{} },
        .{ "borderLeftColor", ?objc.NSString, .{} },
        .{ "borderLeftStyle", ?objc.NSString, .{} },
        .{ "borderLeftWidth", ?objc.NSString, .{} },
        .{ "borderRight", ?objc.NSString, .{} },
        .{ "borderRightColor", ?objc.NSString, .{} },
        .{ "borderRightStyle", ?objc.NSString, .{} },
        .{ "borderRightWidth", ?objc.NSString, .{} },
        .{ "borderSpacing", ?objc.NSString, .{} },
        .{ "borderStyle", ?objc.NSString, .{} },
        .{ "borderTop", ?objc.NSString, .{} },
        .{ "borderTopColor", ?objc.NSString, .{} },
        .{ "borderTopStyle", ?objc.NSString, .{} },
        .{ "borderTopWidth", ?objc.NSString, .{} },
        .{ "borderWidth", ?objc.NSString, .{} },
        .{ "bottom", ?objc.NSString, .{} },
        .{ "captionSide", ?objc.NSString, .{} },
        .{ "clear", ?objc.NSString, .{} },
        .{ "clip", ?objc.NSString, .{} },
        .{ "color", ?objc.NSString, .{} },
        .{ "content", ?objc.NSString, .{} },
        .{ "counterIncrement", ?objc.NSString, .{} },
        .{ "counterReset", ?objc.NSString, .{} },
        .{ "cssFloat", ?objc.NSString, .{} },
        .{ "cssText", objc.NSString, .{} },
        .{ "cue", ?objc.NSString, .{} },
        .{ "cueAfter", ?objc.NSString, .{} },
        .{ "cueBefore", ?objc.NSString, .{} },
        .{ "cursor", ?objc.NSString, .{} },
        .{ "direction", ?objc.NSString, .{} },
        .{ "display", ?objc.NSString, .{} },
        .{ "elevation", ?objc.NSString, .{} },
        .{ "emptyCells", ?objc.NSString, .{} },
        .{ "font", ?objc.NSString, .{} },
        .{ "fontFamily", ?objc.NSString, .{} },
        .{ "fontSize", ?objc.NSString, .{} },
        .{ "fontSizeAdjust", ?objc.NSString, .{} },
        .{ "fontStretch", ?objc.NSString, .{} },
        .{ "fontStyle", ?objc.NSString, .{} },
        .{ "fontVariant", ?objc.NSString, .{} },
        .{ "fontWeight", ?objc.NSString, .{} },
        .{ "getPropertyCSSValue:", ?DOMCSSValue, .{objc.NSString} },
        .{ "getPropertyPriority:", ?objc.NSString, .{objc.NSString} },
        .{ "getPropertyValue:", ?objc.NSString, .{objc.NSString} },
        .{ "height", ?objc.NSString, .{} },
        .{ "isPropertyImplicit:", objc.BOOL, .{objc.NSString} },
        .{ "item:", ?objc.NSString, .{u32} },
        .{ "left", ?objc.NSString, .{} },
        .{ "length", u32, .{} },
        .{ "letterSpacing", ?objc.NSString, .{} },
        .{ "lineHeight", ?objc.NSString, .{} },
        .{ "listStyle", ?objc.NSString, .{} },
        .{ "listStyleImage", ?objc.NSString, .{} },
        .{ "listStylePosition", ?objc.NSString, .{} },
        .{ "listStyleType", ?objc.NSString, .{} },
        .{ "margin", ?objc.NSString, .{} },
        .{ "marginBottom", ?objc.NSString, .{} },
        .{ "marginLeft", ?objc.NSString, .{} },
        .{ "marginRight", ?objc.NSString, .{} },
        .{ "marginTop", ?objc.NSString, .{} },
        .{ "markerOffset", ?objc.NSString, .{} },
        .{ "marks", ?objc.NSString, .{} },
        .{ "maxHeight", ?objc.NSString, .{} },
        .{ "maxWidth", ?objc.NSString, .{} },
        .{ "minHeight", ?objc.NSString, .{} },
        .{ "minWidth", ?objc.NSString, .{} },
        .{ "orphans", ?objc.NSString, .{} },
        .{ "outline", ?objc.NSString, .{} },
        .{ "outlineColor", ?objc.NSString, .{} },
        .{ "outlineStyle", ?objc.NSString, .{} },
        .{ "outlineWidth", ?objc.NSString, .{} },
        .{ "overflow", ?objc.NSString, .{} },
        .{ "padding", ?objc.NSString, .{} },
        .{ "paddingBottom", ?objc.NSString, .{} },
        .{ "paddingLeft", ?objc.NSString, .{} },
        .{ "paddingRight", ?objc.NSString, .{} },
        .{ "paddingTop", ?objc.NSString, .{} },
        .{ "page", ?objc.NSString, .{} },
        .{ "pageBreakAfter", ?objc.NSString, .{} },
        .{ "pageBreakBefore", ?objc.NSString, .{} },
        .{ "pageBreakInside", ?objc.NSString, .{} },
        .{ "parentRule", DOMCSSRule, .{} },
        .{ "pause", ?objc.NSString, .{} },
        .{ "pauseAfter", ?objc.NSString, .{} },
        .{ "pauseBefore", ?objc.NSString, .{} },
        .{ "pitch", ?objc.NSString, .{} },
        .{ "pitchRange", ?objc.NSString, .{} },
        .{ "playDuring", ?objc.NSString, .{} },
        .{ "position", ?objc.NSString, .{} },
        .{ "quotes", ?objc.NSString, .{} },
        .{ "removeProperty:", ?objc.NSString, .{objc.NSString} },
        .{ "richness", ?objc.NSString, .{} },
        .{ "right", ?objc.NSString, .{} },
        .{ "setAzimuth:", void, .{objc.NSString} },
        .{ "setBackground:", void, .{objc.NSString} },
        .{ "setBackgroundAttachment:", void, .{objc.NSString} },
        .{ "setBackgroundColor:", void, .{objc.NSString} },
        .{ "setBackgroundImage:", void, .{objc.NSString} },
        .{ "setBackgroundPosition:", void, .{objc.NSString} },
        .{ "setBackgroundRepeat:", void, .{objc.NSString} },
        .{ "setBorder:", void, .{objc.NSString} },
        .{ "setBorderBottom:", void, .{objc.NSString} },
        .{ "setBorderBottomColor:", void, .{objc.NSString} },
        .{ "setBorderBottomStyle:", void, .{objc.NSString} },
        .{ "setBorderBottomWidth:", void, .{objc.NSString} },
        .{ "setBorderCollapse:", void, .{objc.NSString} },
        .{ "setBorderColor:", void, .{objc.NSString} },
        .{ "setBorderLeft:", void, .{objc.NSString} },
        .{ "setBorderLeftColor:", void, .{objc.NSString} },
        .{ "setBorderLeftStyle:", void, .{objc.NSString} },
        .{ "setBorderLeftWidth:", void, .{objc.NSString} },
        .{ "setBorderRight:", void, .{objc.NSString} },
        .{ "setBorderRightColor:", void, .{objc.NSString} },
        .{ "setBorderRightStyle:", void, .{objc.NSString} },
        .{ "setBorderRightWidth:", void, .{objc.NSString} },
        .{ "setBorderSpacing:", void, .{objc.NSString} },
        .{ "setBorderStyle:", void, .{objc.NSString} },
        .{ "setBorderTop:", void, .{objc.NSString} },
        .{ "setBorderTopColor:", void, .{objc.NSString} },
        .{ "setBorderTopStyle:", void, .{objc.NSString} },
        .{ "setBorderTopWidth:", void, .{objc.NSString} },
        .{ "setBorderWidth:", void, .{objc.NSString} },
        .{ "setBottom:", void, .{objc.NSString} },
        .{ "setCaptionSide:", void, .{objc.NSString} },
        .{ "setClear:", void, .{objc.NSString} },
        .{ "setClip:", void, .{objc.NSString} },
        .{ "setColor:", void, .{objc.NSString} },
        .{ "setContent:", void, .{objc.NSString} },
        .{ "setCounterIncrement:", void, .{objc.NSString} },
        .{ "setCounterReset:", void, .{objc.NSString} },
        .{ "setCssFloat:", void, .{objc.NSString} },
        .{ "setCssText:", void, .{objc.NSString} },
        .{ "setCue:", void, .{objc.NSString} },
        .{ "setCueAfter:", void, .{objc.NSString} },
        .{ "setCueBefore:", void, .{objc.NSString} },
        .{ "setCursor:", void, .{objc.NSString} },
        .{ "setDirection:", void, .{objc.NSString} },
        .{ "setDisplay:", void, .{objc.NSString} },
        .{ "setElevation:", void, .{objc.NSString} },
        .{ "setEmptyCells:", void, .{objc.NSString} },
        .{ "setFont:", void, .{objc.NSString} },
        .{ "setFontFamily:", void, .{objc.NSString} },
        .{ "setFontSize:", void, .{objc.NSString} },
        .{ "setFontSizeAdjust:", void, .{objc.NSString} },
        .{ "setFontStretch:", void, .{objc.NSString} },
        .{ "setFontStyle:", void, .{objc.NSString} },
        .{ "setFontVariant:", void, .{objc.NSString} },
        .{ "setFontWeight:", void, .{objc.NSString} },
        .{ "setHeight:", void, .{objc.NSString} },
        .{ "setLeft:", void, .{objc.NSString} },
        .{ "setLetterSpacing:", void, .{objc.NSString} },
        .{ "setLineHeight:", void, .{objc.NSString} },
        .{ "setListStyle:", void, .{objc.NSString} },
        .{ "setListStyleImage:", void, .{objc.NSString} },
        .{ "setListStylePosition:", void, .{objc.NSString} },
        .{ "setListStyleType:", void, .{objc.NSString} },
        .{ "setMargin:", void, .{objc.NSString} },
        .{ "setMarginBottom:", void, .{objc.NSString} },
        .{ "setMarginLeft:", void, .{objc.NSString} },
        .{ "setMarginRight:", void, .{objc.NSString} },
        .{ "setMarginTop:", void, .{objc.NSString} },
        .{ "setMarkerOffset:", void, .{objc.NSString} },
        .{ "setMarks:", void, .{objc.NSString} },
        .{ "setMaxHeight:", void, .{objc.NSString} },
        .{ "setMaxWidth:", void, .{objc.NSString} },
        .{ "setMinHeight:", void, .{objc.NSString} },
        .{ "setMinWidth:", void, .{objc.NSString} },
        .{ "setOrphans:", void, .{objc.NSString} },
        .{ "setOutline:", void, .{objc.NSString} },
        .{ "setOutlineColor:", void, .{objc.NSString} },
        .{ "setOutlineStyle:", void, .{objc.NSString} },
        .{ "setOutlineWidth:", void, .{objc.NSString} },
        .{ "setOverflow:", void, .{objc.NSString} },
        .{ "setPadding:", void, .{objc.NSString} },
        .{ "setPaddingBottom:", void, .{objc.NSString} },
        .{ "setPaddingLeft:", void, .{objc.NSString} },
        .{ "setPaddingRight:", void, .{objc.NSString} },
        .{ "setPaddingTop:", void, .{objc.NSString} },
        .{ "setPage:", void, .{objc.NSString} },
        .{ "setPageBreakAfter:", void, .{objc.NSString} },
        .{ "setPageBreakBefore:", void, .{objc.NSString} },
        .{ "setPageBreakInside:", void, .{objc.NSString} },
        .{ "setPause:", void, .{objc.NSString} },
        .{ "setPauseAfter:", void, .{objc.NSString} },
        .{ "setPauseBefore:", void, .{objc.NSString} },
        .{ "setPitch:", void, .{objc.NSString} },
        .{ "setPitchRange:", void, .{objc.NSString} },
        .{ "setPlayDuring:", void, .{objc.NSString} },
        .{ "setPosition:", void, .{objc.NSString} },
        .{ "setProperty:value:priority:", void, .{ objc.NSString, objc.NSString, objc.NSString } },
        .{ "setQuotes:", void, .{objc.NSString} },
        .{ "setRichness:", void, .{objc.NSString} },
        .{ "setRight:", void, .{objc.NSString} },
        .{ "setSize:", void, .{objc.NSString} },
        .{ "setSpeak:", void, .{objc.NSString} },
        .{ "setSpeakHeader:", void, .{objc.NSString} },
        .{ "setSpeakNumeral:", void, .{objc.NSString} },
        .{ "setSpeakPunctuation:", void, .{objc.NSString} },
        .{ "setSpeechRate:", void, .{objc.NSString} },
        .{ "setStress:", void, .{objc.NSString} },
        .{ "setTableLayout:", void, .{objc.NSString} },
        .{ "setTextAlign:", void, .{objc.NSString} },
        .{ "setTextDecoration:", void, .{objc.NSString} },
        .{ "setTextIndent:", void, .{objc.NSString} },
        .{ "setTextShadow:", void, .{objc.NSString} },
        .{ "setTextTransform:", void, .{objc.NSString} },
        .{ "setTop:", void, .{objc.NSString} },
        .{ "setUnicodeBidi:", void, .{objc.NSString} },
        .{ "setVerticalAlign:", void, .{objc.NSString} },
        .{ "setVisibility:", void, .{objc.NSString} },
        .{ "setVoiceFamily:", void, .{objc.NSString} },
        .{ "setVolume:", void, .{objc.NSString} },
        .{ "setWhiteSpace:", void, .{objc.NSString} },
        .{ "setWidows:", void, .{objc.NSString} },
        .{ "setWidth:", void, .{objc.NSString} },
        .{ "setWordSpacing:", void, .{objc.NSString} },
        .{ "setZIndex:", void, .{objc.NSString} },
        .{ "size", ?objc.NSString, .{} },
        .{ "speak", ?objc.NSString, .{} },
        .{ "speakHeader", ?objc.NSString, .{} },
        .{ "speakNumeral", ?objc.NSString, .{} },
        .{ "speakPunctuation", ?objc.NSString, .{} },
        .{ "speechRate", ?objc.NSString, .{} },
        .{ "stress", ?objc.NSString, .{} },
        .{ "tableLayout", ?objc.NSString, .{} },
        .{ "textAlign", ?objc.NSString, .{} },
        .{ "textDecoration", ?objc.NSString, .{} },
        .{ "textIndent", ?objc.NSString, .{} },
        .{ "textShadow", ?objc.NSString, .{} },
        .{ "textTransform", ?objc.NSString, .{} },
        .{ "top", ?objc.NSString, .{} },
        .{ "unicodeBidi", ?objc.NSString, .{} },
        .{ "verticalAlign", ?objc.NSString, .{} },
        .{ "visibility", ?objc.NSString, .{} },
        .{ "voiceFamily", ?objc.NSString, .{} },
        .{ "volume", ?objc.NSString, .{} },
        .{ "whiteSpace", ?objc.NSString, .{} },
        .{ "widows", ?objc.NSString, .{} },
        .{ "width", ?objc.NSString, .{} },
        .{ "wordSpacing", ?objc.NSString, .{} },
        .{ "zIndex", ?objc.NSString, .{} },
    };

    pub fn send(self: DOMCSSStyleDeclaration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSStyleRule = struct {
    obj: Object,

    pub const Super = DOMCSSRule;
    pub const methods = .{
        .{ "selectorText", objc.NSString, .{} },
        .{ "setSelectorText:", void, .{objc.NSString} },
        .{ "style", DOMCSSStyleDeclaration, .{} },
    };

    pub fn send(self: DOMCSSStyleRule, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSStyleSheet = struct {
    obj: Object,

    pub const Super = DOMStyleSheet;
    pub const methods = .{
        .{ "addRule:style:index:", i32, .{ objc.NSString, objc.NSString, u32 } },
        .{ "cssRules", DOMCSSRuleList, .{} },
        .{ "deleteRule:", void, .{u32} },
        .{ "insertRule:index:", u32, .{ objc.NSString, u32 } },
        .{ "ownerRule", DOMCSSRule, .{} },
        .{ "removeRule:", void, .{u32} },
        .{ "rules", DOMCSSRuleList, .{} },
    };

    pub fn send(self: DOMCSSStyleSheet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSValue = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "cssText", objc.NSString, .{} },
        .{ "cssValueType", u16, .{} },
        .{ "setCssText:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMCSSValue, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCSSValueList = struct {
    obj: Object,

    pub const Super = DOMCSSValue;
    pub const methods = .{
        .{ "item:", ?DOMCSSValue, .{u32} },
        .{ "length", u32, .{} },
    };

    pub fn send(self: DOMCSSValueList, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCharacterData = struct {
    obj: Object,

    pub const Super = DOMNode;
    pub const methods = .{
        .{ "appendData:", void, .{objc.NSString} },
        .{ "data", objc.NSString, .{} },
        .{ "deleteData:length:", void, .{ u32, u32 } },
        .{ "insertData:data:", void, .{ u32, objc.NSString } },
        .{ "length", u32, .{} },
        .{ "replaceData:length:data:", void, .{ u32, u32, objc.NSString } },
        .{ "setData:", void, .{objc.NSString} },
        .{ "substringData:length:", ?objc.NSString, .{ u32, u32 } },
    };

    pub fn send(self: DOMCharacterData, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMCounter = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "identifier", objc.NSString, .{} },
        .{ "listStyle", objc.NSString, .{} },
        .{ "separator", objc.NSString, .{} },
    };

    pub fn send(self: DOMCounter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMDocument = struct {
    obj: Object,

    pub const Super = DOMNode;
    pub const methods = .{
        .{ "URL", objc.NSString, .{} },
        .{ "URLWithAttributeString:", ?Foundation.NSURL, .{objc.NSString} },
        .{ "activeElement", DOMElement, .{} },
        .{ "adoptNode:", ?DOMNode, .{DOMNode} },
        .{ "anchors", DOMHTMLCollection, .{} },
        .{ "applets", DOMHTMLCollection, .{} },
        .{ "body", DOMHTMLElement, .{} },
        .{ "characterSet", objc.NSString, .{} },
        .{ "charset", objc.NSString, .{} },
        .{ "cookie", objc.NSString, .{} },
        .{ "createAttribute:", ?DOMAttr, .{objc.NSString} },
        .{ "createAttributeNS:qualifiedName:", ?DOMAttr, .{ objc.NSString, objc.NSString } },
        .{ "createCDATASection:", ?*anyopaque, .{objc.NSString} },
        .{ "createCSSStyleDeclaration", ?DOMCSSStyleDeclaration, .{} },
        .{ "createComment:", ?*anyopaque, .{objc.NSString} },
        .{ "createDocumentFragment", ?*anyopaque, .{} },
        .{ "createElement:", ?DOMElement, .{objc.NSString} },
        .{ "createElementNS:qualifiedName:", ?DOMElement, .{ objc.NSString, objc.NSString } },
        .{ "createEntityReference:", ?*anyopaque, .{objc.NSString} },
        .{ "createEvent:", ?DOMEvent, .{objc.NSString} },
        .{ "createExpression:resolver:", ?DOMXPathExpression, .{ objc.NSString, DOMXPathNSResolver } },
        .{ "createNSResolver:", ?DOMXPathNSResolver, .{DOMNode} },
        .{ "createNodeIterator:whatToShow:filter:expandEntityReferences:", ?DOMNodeIterator, .{ DOMNode, u32, DOMNodeFilter, objc.BOOL } },
        .{ "createProcessingInstruction:data:", ?DOMProcessingInstruction, .{ objc.NSString, objc.NSString } },
        .{ "createRange", ?DOMRange, .{} },
        .{ "createTextNode:", ?DOMText, .{objc.NSString} },
        .{ "createTreeWalker:whatToShow:filter:expandEntityReferences:", ?DOMTreeWalker, .{ DOMNode, u32, DOMNodeFilter, objc.BOOL } },
        .{ "defaultCharset", objc.NSString, .{} },
        .{ "defaultView", DOMAbstractView, .{} },
        .{ "doctype", DOMDocumentType, .{} },
        .{ "documentElement", DOMElement, .{} },
        .{ "documentURI", objc.NSString, .{} },
        .{ "domain", objc.NSString, .{} },
        .{ "elementFromPoint:y:", ?DOMElement, .{ i32, i32 } },
        .{ "evaluate:contextNode:resolver:type:inResult:", ?DOMXPathResult, .{ objc.NSString, DOMNode, DOMXPathNSResolver, u16, DOMXPathResult } },
        .{ "execCommand:", objc.BOOL, .{objc.NSString} },
        .{ "execCommand:userInterface:", objc.BOOL, .{ objc.NSString, objc.BOOL } },
        .{ "execCommand:userInterface:value:", objc.BOOL, .{ objc.NSString, objc.BOOL, objc.NSString } },
        .{ "forms", DOMHTMLCollection, .{} },
        .{ "getComputedStyle:pseudoElement:", ?DOMCSSStyleDeclaration, .{ DOMElement, objc.NSString } },
        .{ "getElementById:", ?DOMElement, .{objc.NSString} },
        .{ "getElementsByClassName:", ?DOMNodeList, .{objc.NSString} },
        .{ "getElementsByName:", ?DOMNodeList, .{objc.NSString} },
        .{ "getElementsByTagName:", ?DOMNodeList, .{objc.NSString} },
        .{ "getElementsByTagNameNS:localName:", ?DOMNodeList, .{ objc.NSString, objc.NSString } },
        .{ "getMatchedCSSRules:pseudoElement:", ?DOMCSSRuleList, .{ DOMElement, objc.NSString } },
        .{ "getMatchedCSSRules:pseudoElement:authorOnly:", ?DOMCSSRuleList, .{ DOMElement, objc.NSString, objc.BOOL } },
        .{ "getOverrideStyle:pseudoElement:", ?DOMCSSStyleDeclaration, .{ DOMElement, objc.NSString } },
        .{ "hasFocus", objc.BOOL, .{} },
        .{ "images", DOMHTMLCollection, .{} },
        .{ "implementation", DOMImplementation, .{} },
        .{ "importNode:deep:", ?DOMNode, .{ DOMNode, objc.BOOL } },
        .{ "inputEncoding", objc.NSString, .{} },
        .{ "lastModified", objc.NSString, .{} },
        .{ "links", DOMHTMLCollection, .{} },
        .{ "preferredStylesheetSet", objc.NSString, .{} },
        .{ "queryCommandEnabled:", objc.BOOL, .{objc.NSString} },
        .{ "queryCommandIndeterm:", objc.BOOL, .{objc.NSString} },
        .{ "queryCommandState:", objc.BOOL, .{objc.NSString} },
        .{ "queryCommandSupported:", objc.BOOL, .{objc.NSString} },
        .{ "queryCommandValue:", ?objc.NSString, .{objc.NSString} },
        .{ "querySelector:", ?DOMElement, .{objc.NSString} },
        .{ "querySelectorAll:", ?DOMNodeList, .{objc.NSString} },
        .{ "readyState", objc.NSString, .{} },
        .{ "referrer", objc.NSString, .{} },
        .{ "selectedStylesheetSet", objc.NSString, .{} },
        .{ "setBody:", void, .{DOMHTMLElement} },
        .{ "setCharset:", void, .{objc.NSString} },
        .{ "setCookie:", void, .{objc.NSString} },
        .{ "setDefaultCharset:", void, .{objc.NSString} },
        .{ "setDocumentURI:", void, .{objc.NSString} },
        .{ "setSelectedStylesheetSet:", void, .{objc.NSString} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setXmlStandalone:", void, .{objc.BOOL} },
        .{ "setXmlVersion:", void, .{objc.NSString} },
        .{ "styleSheets", DOMStyleSheetList, .{} },
        .{ "title", objc.NSString, .{} },
        .{ "webFrame", WebFrame, .{} },
        .{ "webkitCancelFullScreen", void, .{} },
        .{ "xmlEncoding", objc.NSString, .{} },
        .{ "xmlStandalone", objc.BOOL, .{} },
        .{ "xmlVersion", objc.NSString, .{} },
    };

    pub fn send(self: DOMDocument, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMDocumentType = struct {
    obj: Object,

    pub const Super = DOMNode;
    pub const methods = .{
        .{ "entities", DOMNamedNodeMap, .{} },
        .{ "internalSubset", objc.NSString, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "notations", DOMNamedNodeMap, .{} },
        .{ "publicId", objc.NSString, .{} },
        .{ "setInternalSubset:", void, .{objc.NSString} },
        .{ "systemId", objc.NSString, .{} },
    };

    pub fn send(self: DOMDocumentType, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMElement = struct {
    obj: Object,

    pub const Super = DOMNode;
    pub const methods = .{
        .{ "blur", void, .{} },
        .{ "childElementCount", u32, .{} },
        .{ "className", objc.NSString, .{} },
        .{ "clientHeight", i32, .{} },
        .{ "clientLeft", i32, .{} },
        .{ "clientTop", i32, .{} },
        .{ "clientWidth", i32, .{} },
        .{ "firstElementChild", DOMElement, .{} },
        .{ "focus", void, .{} },
        .{ "getAttribute:", ?objc.NSString, .{objc.NSString} },
        .{ "getAttributeNS:localName:", ?objc.NSString, .{ objc.NSString, objc.NSString } },
        .{ "getAttributeNode:", ?DOMAttr, .{objc.NSString} },
        .{ "getAttributeNodeNS:localName:", ?DOMAttr, .{ objc.NSString, objc.NSString } },
        .{ "getElementsByClassName:", ?DOMNodeList, .{objc.NSString} },
        .{ "getElementsByTagName:", ?DOMNodeList, .{objc.NSString} },
        .{ "getElementsByTagNameNS:localName:", ?DOMNodeList, .{ objc.NSString, objc.NSString } },
        .{ "hasAttribute:", objc.BOOL, .{objc.NSString} },
        .{ "hasAttributeNS:localName:", objc.BOOL, .{ objc.NSString, objc.NSString } },
        .{ "image", ?AppKit.NSImage, .{} },
        .{ "innerHTML", objc.NSString, .{} },
        .{ "innerText", objc.NSString, .{} },
        .{ "lastElementChild", DOMElement, .{} },
        .{ "nextElementSibling", DOMElement, .{} },
        .{ "offsetHeight", i32, .{} },
        .{ "offsetLeft", i32, .{} },
        .{ "offsetParent", DOMElement, .{} },
        .{ "offsetTop", i32, .{} },
        .{ "offsetWidth", i32, .{} },
        .{ "outerHTML", objc.NSString, .{} },
        .{ "previousElementSibling", DOMElement, .{} },
        .{ "querySelector:", ?DOMElement, .{objc.NSString} },
        .{ "querySelectorAll:", ?DOMNodeList, .{objc.NSString} },
        .{ "removeAttribute:", void, .{objc.NSString} },
        .{ "removeAttributeNS:localName:", void, .{ objc.NSString, objc.NSString } },
        .{ "removeAttributeNode:", ?DOMAttr, .{DOMAttr} },
        .{ "scrollByLines:", void, .{i32} },
        .{ "scrollByPages:", void, .{i32} },
        .{ "scrollHeight", i32, .{} },
        .{ "scrollIntoView:", void, .{objc.BOOL} },
        .{ "scrollIntoViewIfNeeded:", void, .{objc.BOOL} },
        .{ "scrollLeft", i32, .{} },
        .{ "scrollTop", i32, .{} },
        .{ "scrollWidth", i32, .{} },
        .{ "setAttribute:value:", void, .{ objc.NSString, objc.NSString } },
        .{ "setAttributeNS:qualifiedName:value:", void, .{ objc.NSString, objc.NSString, objc.NSString } },
        .{ "setAttributeNode:", ?DOMAttr, .{DOMAttr} },
        .{ "setAttributeNodeNS:", ?DOMAttr, .{DOMAttr} },
        .{ "setClassName:", void, .{objc.NSString} },
        .{ "setInnerHTML:", void, .{objc.NSString} },
        .{ "setOffsetHeight:", void, .{i32} },
        .{ "setOffsetLeft:", void, .{i32} },
        .{ "setOffsetParent:", void, .{DOMElement} },
        .{ "setOffsetTop:", void, .{i32} },
        .{ "setOffsetWidth:", void, .{i32} },
        .{ "setOuterHTML:", void, .{objc.NSString} },
        .{ "setScrollLeft:", void, .{i32} },
        .{ "setScrollTop:", void, .{i32} },
        .{ "style", DOMCSSStyleDeclaration, .{} },
        .{ "tagName", objc.NSString, .{} },
        .{ "webkitRequestFullScreen:", void, .{u16} },
    };

    pub fn send(self: DOMElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMEntity = struct {
    obj: Object,

    pub const Super = DOMNode;
    pub const methods = .{
        .{ "notationName", objc.NSString, .{} },
        .{ "publicId", objc.NSString, .{} },
        .{ "systemId", objc.NSString, .{} },
    };

    pub fn send(self: DOMEntity, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMEvent = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "bubbles", objc.BOOL, .{} },
        .{ "cancelBubble", objc.BOOL, .{} },
        .{ "cancelable", objc.BOOL, .{} },
        .{ "currentTarget", DOMEventTarget, .{} },
        .{ "eventPhase", u16, .{} },
        .{ "initEvent:canBubbleArg:cancelableArg:", void, .{ objc.NSString, objc.BOOL, objc.BOOL } },
        .{ "preventDefault", void, .{} },
        .{ "returnValue", objc.BOOL, .{} },
        .{ "setCancelBubble:", void, .{objc.BOOL} },
        .{ "setReturnValue:", void, .{objc.BOOL} },
        .{ "srcElement", DOMEventTarget, .{} },
        .{ "stopPropagation", void, .{} },
        .{ "target", DOMEventTarget, .{} },
        .{ "timeStamp", u64, .{} },
        .{ "type", objc.NSString, .{} },
    };

    pub fn send(self: DOMEvent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMFile = struct {
    obj: Object,

    pub const Super = DOMBlob;
    pub const methods = .{
        .{ "name", objc.NSString, .{} },
    };

    pub fn send(self: DOMFile, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMFileList = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "item:", ?DOMFile, .{u32} },
        .{ "length", u32, .{} },
    };

    pub fn send(self: DOMFileList, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLAnchorElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "absoluteLinkURL", Foundation.NSURL, .{} },
        .{ "charset", objc.NSString, .{} },
        .{ "coords", objc.NSString, .{} },
        .{ "hashName", objc.NSString, .{} },
        .{ "host", objc.NSString, .{} },
        .{ "hostname", objc.NSString, .{} },
        .{ "href", objc.NSString, .{} },
        .{ "hreflang", objc.NSString, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "pathname", objc.NSString, .{} },
        .{ "port", objc.NSString, .{} },
        .{ "protocol", objc.NSString, .{} },
        .{ "rel", objc.NSString, .{} },
        .{ "rev", objc.NSString, .{} },
        .{ "search", objc.NSString, .{} },
        .{ "setCharset:", void, .{objc.NSString} },
        .{ "setCoords:", void, .{objc.NSString} },
        .{ "setHref:", void, .{objc.NSString} },
        .{ "setHreflang:", void, .{objc.NSString} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setRel:", void, .{objc.NSString} },
        .{ "setRev:", void, .{objc.NSString} },
        .{ "setShape:", void, .{objc.NSString} },
        .{ "setTarget:", void, .{objc.NSString} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "shape", objc.NSString, .{} },
        .{ "target", objc.NSString, .{} },
        .{ "text", objc.NSString, .{} },
        .{ "type", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLAnchorElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLAppletElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "alt", objc.NSString, .{} },
        .{ "archive", objc.NSString, .{} },
        .{ "code", objc.NSString, .{} },
        .{ "codeBase", objc.NSString, .{} },
        .{ "height", objc.NSString, .{} },
        .{ "hspace", i32, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "object", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
        .{ "setAlt:", void, .{objc.NSString} },
        .{ "setArchive:", void, .{objc.NSString} },
        .{ "setCode:", void, .{objc.NSString} },
        .{ "setCodeBase:", void, .{objc.NSString} },
        .{ "setHeight:", void, .{objc.NSString} },
        .{ "setHspace:", void, .{i32} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setObject:", void, .{objc.NSString} },
        .{ "setVspace:", void, .{i32} },
        .{ "setWidth:", void, .{objc.NSString} },
        .{ "vspace", i32, .{} },
        .{ "width", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLAppletElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLAreaElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "absoluteLinkURL", Foundation.NSURL, .{} },
        .{ "alt", objc.NSString, .{} },
        .{ "coords", objc.NSString, .{} },
        .{ "hashName", objc.NSString, .{} },
        .{ "host", objc.NSString, .{} },
        .{ "hostname", objc.NSString, .{} },
        .{ "href", objc.NSString, .{} },
        .{ "noHref", objc.BOOL, .{} },
        .{ "pathname", objc.NSString, .{} },
        .{ "port", objc.NSString, .{} },
        .{ "protocol", objc.NSString, .{} },
        .{ "search", objc.NSString, .{} },
        .{ "setAlt:", void, .{objc.NSString} },
        .{ "setCoords:", void, .{objc.NSString} },
        .{ "setHref:", void, .{objc.NSString} },
        .{ "setNoHref:", void, .{objc.BOOL} },
        .{ "setShape:", void, .{objc.NSString} },
        .{ "setTarget:", void, .{objc.NSString} },
        .{ "shape", objc.NSString, .{} },
        .{ "target", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLAreaElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLBRElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "clear", objc.NSString, .{} },
        .{ "setClear:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLBRElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLBaseElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "href", objc.NSString, .{} },
        .{ "setHref:", void, .{objc.NSString} },
        .{ "setTarget:", void, .{objc.NSString} },
        .{ "target", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLBaseElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLBaseFontElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "color", objc.NSString, .{} },
        .{ "face", objc.NSString, .{} },
        .{ "setColor:", void, .{objc.NSString} },
        .{ "setFace:", void, .{objc.NSString} },
        .{ "setSize:", void, .{objc.NSString} },
        .{ "size", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLBaseFontElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLBodyElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "aLink", objc.NSString, .{} },
        .{ "background", objc.NSString, .{} },
        .{ "bgColor", objc.NSString, .{} },
        .{ "link", objc.NSString, .{} },
        .{ "setALink:", void, .{objc.NSString} },
        .{ "setBackground:", void, .{objc.NSString} },
        .{ "setBgColor:", void, .{objc.NSString} },
        .{ "setLink:", void, .{objc.NSString} },
        .{ "setText:", void, .{objc.NSString} },
        .{ "setVLink:", void, .{objc.NSString} },
        .{ "text", objc.NSString, .{} },
        .{ "vLink", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLBodyElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLButtonElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "autofocus", objc.BOOL, .{} },
        .{ "click", void, .{} },
        .{ "disabled", objc.BOOL, .{} },
        .{ "form", DOMHTMLFormElement, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "setAutofocus:", void, .{objc.BOOL} },
        .{ "setDisabled:", void, .{objc.BOOL} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "setValue:", void, .{objc.NSString} },
        .{ "type", objc.NSString, .{} },
        .{ "value", objc.NSString, .{} },
        .{ "willValidate", objc.BOOL, .{} },
    };

    pub fn send(self: DOMHTMLButtonElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLCollection = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "item:", ?DOMNode, .{u32} },
        .{ "length", u32, .{} },
        .{ "namedItem:", ?DOMNode, .{objc.NSString} },
        .{ "tags:", ?DOMNodeList, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLCollection, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLDListElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "compact", objc.BOOL, .{} },
        .{ "setCompact:", void, .{objc.BOOL} },
    };

    pub fn send(self: DOMHTMLDListElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLDirectoryElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "compact", objc.BOOL, .{} },
        .{ "setCompact:", void, .{objc.BOOL} },
    };

    pub fn send(self: DOMHTMLDirectoryElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLDivElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLDivElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLDocument = struct {
    obj: Object,

    pub const Super = DOMDocument;
    pub const methods = .{
        .{ "alinkColor", objc.NSString, .{} },
        .{ "bgColor", objc.NSString, .{} },
        .{ "captureEvents", void, .{} },
        .{ "clear", void, .{} },
        .{ "close", void, .{} },
        .{ "compatMode", objc.NSString, .{} },
        .{ "createDocumentFragmentWithMarkupString:baseURL:", ?*anyopaque, .{ objc.NSString, Foundation.NSURL } },
        .{ "createDocumentFragmentWithText:", ?*anyopaque, .{objc.NSString} },
        .{ "designMode", objc.NSString, .{} },
        .{ "dir", objc.NSString, .{} },
        .{ "embeds", DOMHTMLCollection, .{} },
        .{ "fgColor", objc.NSString, .{} },
        .{ "height", i32, .{} },
        .{ "linkColor", objc.NSString, .{} },
        .{ "open", void, .{} },
        .{ "plugins", DOMHTMLCollection, .{} },
        .{ "releaseEvents", void, .{} },
        .{ "scripts", DOMHTMLCollection, .{} },
        .{ "setAlinkColor:", void, .{objc.NSString} },
        .{ "setBgColor:", void, .{objc.NSString} },
        .{ "setDesignMode:", void, .{objc.NSString} },
        .{ "setDir:", void, .{objc.NSString} },
        .{ "setFgColor:", void, .{objc.NSString} },
        .{ "setLinkColor:", void, .{objc.NSString} },
        .{ "setVlinkColor:", void, .{objc.NSString} },
        .{ "vlinkColor", objc.NSString, .{} },
        .{ "width", i32, .{} },
        .{ "write:", void, .{objc.NSString} },
        .{ "writeln:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLDocument, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLElement = struct {
    obj: Object,

    pub const Super = DOMElement;
    pub const methods = .{
        .{ "accessKey", objc.NSString, .{} },
        .{ "children", DOMHTMLCollection, .{} },
        .{ "click", void, .{} },
        .{ "contentEditable", objc.NSString, .{} },
        .{ "dir", objc.NSString, .{} },
        .{ "idName", objc.NSString, .{} },
        .{ "innerText", objc.NSString, .{} },
        .{ "isContentEditable", objc.BOOL, .{} },
        .{ "lang", objc.NSString, .{} },
        .{ "outerText", objc.NSString, .{} },
        .{ "setAccessKey:", void, .{objc.NSString} },
        .{ "setContentEditable:", void, .{objc.NSString} },
        .{ "setDir:", void, .{objc.NSString} },
        .{ "setIdName:", void, .{objc.NSString} },
        .{ "setInnerText:", void, .{objc.NSString} },
        .{ "setLang:", void, .{objc.NSString} },
        .{ "setOuterText:", void, .{objc.NSString} },
        .{ "setTabIndex:", void, .{i32} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "tabIndex", i32, .{} },
        .{ "title", objc.NSString, .{} },
        .{ "titleDisplayString", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLEmbedElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "height", i32, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
        .{ "setHeight:", void, .{i32} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setSrc:", void, .{objc.NSString} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "setWidth:", void, .{i32} },
        .{ "src", objc.NSString, .{} },
        .{ "type", objc.NSString, .{} },
        .{ "width", i32, .{} },
    };

    pub fn send(self: DOMHTMLEmbedElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLFieldSetElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "form", DOMHTMLFormElement, .{} },
    };

    pub fn send(self: DOMHTMLFieldSetElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLFontElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "color", objc.NSString, .{} },
        .{ "face", objc.NSString, .{} },
        .{ "setColor:", void, .{objc.NSString} },
        .{ "setFace:", void, .{objc.NSString} },
        .{ "setSize:", void, .{objc.NSString} },
        .{ "size", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLFontElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLFormElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "acceptCharset", objc.NSString, .{} },
        .{ "action", objc.NSString, .{} },
        .{ "elements", DOMHTMLCollection, .{} },
        .{ "encoding", objc.NSString, .{} },
        .{ "enctype", objc.NSString, .{} },
        .{ "length", i32, .{} },
        .{ "method", objc.NSString, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "reset", void, .{} },
        .{ "setAcceptCharset:", void, .{objc.NSString} },
        .{ "setAction:", void, .{objc.NSString} },
        .{ "setEncoding:", void, .{objc.NSString} },
        .{ "setEnctype:", void, .{objc.NSString} },
        .{ "setMethod:", void, .{objc.NSString} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setTarget:", void, .{objc.NSString} },
        .{ "submit", void, .{} },
        .{ "target", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLFormElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLFrameElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "contentDocument", DOMDocument, .{} },
        .{ "contentFrame", WebFrame, .{} },
        .{ "contentWindow", DOMAbstractView, .{} },
        .{ "frameBorder", objc.NSString, .{} },
        .{ "height", i32, .{} },
        .{ "location", objc.NSString, .{} },
        .{ "longDesc", objc.NSString, .{} },
        .{ "marginHeight", objc.NSString, .{} },
        .{ "marginWidth", objc.NSString, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "noResize", objc.BOOL, .{} },
        .{ "scrolling", objc.NSString, .{} },
        .{ "setFrameBorder:", void, .{objc.NSString} },
        .{ "setLocation:", void, .{objc.NSString} },
        .{ "setLongDesc:", void, .{objc.NSString} },
        .{ "setMarginHeight:", void, .{objc.NSString} },
        .{ "setMarginWidth:", void, .{objc.NSString} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setNoResize:", void, .{objc.BOOL} },
        .{ "setScrolling:", void, .{objc.NSString} },
        .{ "setSrc:", void, .{objc.NSString} },
        .{ "src", objc.NSString, .{} },
        .{ "width", i32, .{} },
    };

    pub fn send(self: DOMHTMLFrameElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLFrameSetElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "cols", objc.NSString, .{} },
        .{ "rows", objc.NSString, .{} },
        .{ "setCols:", void, .{objc.NSString} },
        .{ "setRows:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLFrameSetElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLHRElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "noShade", objc.BOOL, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
        .{ "setNoShade:", void, .{objc.BOOL} },
        .{ "setSize:", void, .{objc.NSString} },
        .{ "setWidth:", void, .{objc.NSString} },
        .{ "size", objc.NSString, .{} },
        .{ "width", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLHRElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLHeadElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "profile", objc.NSString, .{} },
        .{ "setProfile:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLHeadElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLHeadingElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLHeadingElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLHtmlElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "setVersion:", void, .{objc.NSString} },
        .{ "version", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLHtmlElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLIFrameElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "contentDocument", DOMDocument, .{} },
        .{ "contentFrame", WebFrame, .{} },
        .{ "contentWindow", DOMAbstractView, .{} },
        .{ "frameBorder", objc.NSString, .{} },
        .{ "height", objc.NSString, .{} },
        .{ "longDesc", objc.NSString, .{} },
        .{ "marginHeight", objc.NSString, .{} },
        .{ "marginWidth", objc.NSString, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "scrolling", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
        .{ "setFrameBorder:", void, .{objc.NSString} },
        .{ "setHeight:", void, .{objc.NSString} },
        .{ "setLongDesc:", void, .{objc.NSString} },
        .{ "setMarginHeight:", void, .{objc.NSString} },
        .{ "setMarginWidth:", void, .{objc.NSString} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setScrolling:", void, .{objc.NSString} },
        .{ "setSrc:", void, .{objc.NSString} },
        .{ "setWidth:", void, .{objc.NSString} },
        .{ "src", objc.NSString, .{} },
        .{ "width", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLIFrameElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLImageElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "absoluteImageURL", Foundation.NSURL, .{} },
        .{ "align", objc.NSString, .{} },
        .{ "alt", objc.NSString, .{} },
        .{ "altDisplayString", objc.NSString, .{} },
        .{ "border", objc.NSString, .{} },
        .{ "complete", objc.BOOL, .{} },
        .{ "height", i32, .{} },
        .{ "hspace", i32, .{} },
        .{ "isMap", objc.BOOL, .{} },
        .{ "longDesc", objc.NSString, .{} },
        .{ "lowsrc", objc.NSString, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "naturalHeight", i32, .{} },
        .{ "naturalWidth", i32, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
        .{ "setAlt:", void, .{objc.NSString} },
        .{ "setBorder:", void, .{objc.NSString} },
        .{ "setHeight:", void, .{i32} },
        .{ "setHspace:", void, .{i32} },
        .{ "setIsMap:", void, .{objc.BOOL} },
        .{ "setLongDesc:", void, .{objc.NSString} },
        .{ "setLowsrc:", void, .{objc.NSString} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setSrc:", void, .{objc.NSString} },
        .{ "setUseMap:", void, .{objc.NSString} },
        .{ "setVspace:", void, .{i32} },
        .{ "setWidth:", void, .{i32} },
        .{ "src", objc.NSString, .{} },
        .{ "useMap", objc.NSString, .{} },
        .{ "vspace", i32, .{} },
        .{ "width", i32, .{} },
        .{ "x", i32, .{} },
        .{ "y", i32, .{} },
    };

    pub fn send(self: DOMHTMLImageElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLInputElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "absoluteImageURL", Foundation.NSURL, .{} },
        .{ "accept", objc.NSString, .{} },
        .{ "align", objc.NSString, .{} },
        .{ "alt", objc.NSString, .{} },
        .{ "altDisplayString", objc.NSString, .{} },
        .{ "autofocus", objc.BOOL, .{} },
        .{ "checked", objc.BOOL, .{} },
        .{ "click", void, .{} },
        .{ "defaultChecked", objc.BOOL, .{} },
        .{ "defaultValue", objc.NSString, .{} },
        .{ "disabled", objc.BOOL, .{} },
        .{ "files", DOMFileList, .{} },
        .{ "form", DOMHTMLFormElement, .{} },
        .{ "indeterminate", objc.BOOL, .{} },
        .{ "maxLength", i32, .{} },
        .{ "multiple", objc.BOOL, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "readOnly", objc.BOOL, .{} },
        .{ "select", void, .{} },
        .{ "selectionEnd", i32, .{} },
        .{ "selectionStart", i32, .{} },
        .{ "setAccept:", void, .{objc.NSString} },
        .{ "setAlign:", void, .{objc.NSString} },
        .{ "setAlt:", void, .{objc.NSString} },
        .{ "setAutofocus:", void, .{objc.BOOL} },
        .{ "setChecked:", void, .{objc.BOOL} },
        .{ "setDefaultChecked:", void, .{objc.BOOL} },
        .{ "setDefaultValue:", void, .{objc.NSString} },
        .{ "setDisabled:", void, .{objc.BOOL} },
        .{ "setFiles:", void, .{DOMFileList} },
        .{ "setIndeterminate:", void, .{objc.BOOL} },
        .{ "setMaxLength:", void, .{i32} },
        .{ "setMultiple:", void, .{objc.BOOL} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setReadOnly:", void, .{objc.BOOL} },
        .{ "setSelectionEnd:", void, .{i32} },
        .{ "setSelectionRange:end:", void, .{ i32, i32 } },
        .{ "setSelectionStart:", void, .{i32} },
        .{ "setSize:", void, .{objc.NSString} },
        .{ "setSrc:", void, .{objc.NSString} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "setUseMap:", void, .{objc.NSString} },
        .{ "setValue:", void, .{objc.NSString} },
        .{ "size", objc.NSString, .{} },
        .{ "src", objc.NSString, .{} },
        .{ "type", objc.NSString, .{} },
        .{ "useMap", objc.NSString, .{} },
        .{ "value", objc.NSString, .{} },
        .{ "willValidate", objc.BOOL, .{} },
    };

    pub fn send(self: DOMHTMLInputElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLLIElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "setType:", void, .{objc.NSString} },
        .{ "setValue:", void, .{i32} },
        .{ "type", objc.NSString, .{} },
        .{ "value", i32, .{} },
    };

    pub fn send(self: DOMHTMLLIElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLLabelElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "form", DOMHTMLFormElement, .{} },
        .{ "htmlFor", objc.NSString, .{} },
        .{ "setHtmlFor:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLLabelElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLLegendElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "form", DOMHTMLFormElement, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLLegendElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLLinkElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "absoluteLinkURL", Foundation.NSURL, .{} },
        .{ "charset", objc.NSString, .{} },
        .{ "disabled", objc.BOOL, .{} },
        .{ "href", objc.NSString, .{} },
        .{ "hreflang", objc.NSString, .{} },
        .{ "media", objc.NSString, .{} },
        .{ "rel", objc.NSString, .{} },
        .{ "rev", objc.NSString, .{} },
        .{ "setCharset:", void, .{objc.NSString} },
        .{ "setDisabled:", void, .{objc.BOOL} },
        .{ "setHref:", void, .{objc.NSString} },
        .{ "setHreflang:", void, .{objc.NSString} },
        .{ "setMedia:", void, .{objc.NSString} },
        .{ "setRel:", void, .{objc.NSString} },
        .{ "setRev:", void, .{objc.NSString} },
        .{ "setTarget:", void, .{objc.NSString} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "sheet", DOMStyleSheet, .{} },
        .{ "target", objc.NSString, .{} },
        .{ "type", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLLinkElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLMapElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "areas", DOMHTMLCollection, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "setName:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLMapElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLMarqueeElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "start", void, .{} },
        .{ "stop", void, .{} },
    };

    pub fn send(self: DOMHTMLMarqueeElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLMenuElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "compact", objc.BOOL, .{} },
        .{ "setCompact:", void, .{objc.BOOL} },
    };

    pub fn send(self: DOMHTMLMenuElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLMetaElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "content", objc.NSString, .{} },
        .{ "httpEquiv", objc.NSString, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "scheme", objc.NSString, .{} },
        .{ "setContent:", void, .{objc.NSString} },
        .{ "setHttpEquiv:", void, .{objc.NSString} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setScheme:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLMetaElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLModElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "cite", objc.NSString, .{} },
        .{ "dateTime", objc.NSString, .{} },
        .{ "setCite:", void, .{objc.NSString} },
        .{ "setDateTime:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLModElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLOListElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "compact", objc.BOOL, .{} },
        .{ "setCompact:", void, .{objc.BOOL} },
        .{ "setStart:", void, .{i32} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "start", i32, .{} },
        .{ "type", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLOListElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLObjectElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "absoluteImageURL", Foundation.NSURL, .{} },
        .{ "align", objc.NSString, .{} },
        .{ "archive", objc.NSString, .{} },
        .{ "border", objc.NSString, .{} },
        .{ "code", objc.NSString, .{} },
        .{ "codeBase", objc.NSString, .{} },
        .{ "codeType", objc.NSString, .{} },
        .{ "contentDocument", DOMDocument, .{} },
        .{ "contentFrame", WebFrame, .{} },
        .{ "data", objc.NSString, .{} },
        .{ "declare", objc.BOOL, .{} },
        .{ "form", DOMHTMLFormElement, .{} },
        .{ "height", objc.NSString, .{} },
        .{ "hspace", i32, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
        .{ "setArchive:", void, .{objc.NSString} },
        .{ "setBorder:", void, .{objc.NSString} },
        .{ "setCode:", void, .{objc.NSString} },
        .{ "setCodeBase:", void, .{objc.NSString} },
        .{ "setCodeType:", void, .{objc.NSString} },
        .{ "setData:", void, .{objc.NSString} },
        .{ "setDeclare:", void, .{objc.BOOL} },
        .{ "setHeight:", void, .{objc.NSString} },
        .{ "setHspace:", void, .{i32} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setStandby:", void, .{objc.NSString} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "setUseMap:", void, .{objc.NSString} },
        .{ "setVspace:", void, .{i32} },
        .{ "setWidth:", void, .{objc.NSString} },
        .{ "standby", objc.NSString, .{} },
        .{ "type", objc.NSString, .{} },
        .{ "useMap", objc.NSString, .{} },
        .{ "vspace", i32, .{} },
        .{ "width", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLObjectElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLOptGroupElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "disabled", objc.BOOL, .{} },
        .{ "label", objc.NSString, .{} },
        .{ "setDisabled:", void, .{objc.BOOL} },
        .{ "setLabel:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLOptGroupElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLOptionElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "defaultSelected", objc.BOOL, .{} },
        .{ "disabled", objc.BOOL, .{} },
        .{ "form", DOMHTMLFormElement, .{} },
        .{ "index", i32, .{} },
        .{ "label", objc.NSString, .{} },
        .{ "selected", objc.BOOL, .{} },
        .{ "setDefaultSelected:", void, .{objc.BOOL} },
        .{ "setDisabled:", void, .{objc.BOOL} },
        .{ "setLabel:", void, .{objc.NSString} },
        .{ "setSelected:", void, .{objc.BOOL} },
        .{ "setValue:", void, .{objc.NSString} },
        .{ "text", objc.NSString, .{} },
        .{ "value", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLOptionElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLOptionsCollection = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "add:index:", void, .{ DOMHTMLOptionElement, u32 } },
        .{ "item:", ?DOMNode, .{u32} },
        .{ "length", u32, .{} },
        .{ "namedItem:", ?DOMNode, .{objc.NSString} },
        .{ "remove:", void, .{u32} },
        .{ "selectedIndex", i32, .{} },
        .{ "setLength:", void, .{u32} },
        .{ "setSelectedIndex:", void, .{i32} },
    };

    pub fn send(self: DOMHTMLOptionsCollection, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLParagraphElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLParagraphElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLParamElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "name", objc.NSString, .{} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "setValue:", void, .{objc.NSString} },
        .{ "setValueType:", void, .{objc.NSString} },
        .{ "type", objc.NSString, .{} },
        .{ "value", objc.NSString, .{} },
        .{ "valueType", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLParamElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLPreElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "setWidth:", void, .{i32} },
        .{ "setWrap:", void, .{objc.BOOL} },
        .{ "width", i32, .{} },
        .{ "wrap", objc.BOOL, .{} },
    };

    pub fn send(self: DOMHTMLPreElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLQuoteElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "cite", objc.NSString, .{} },
        .{ "setCite:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLQuoteElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLScriptElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "charset", objc.NSString, .{} },
        .{ "defer", objc.BOOL, .{} },
        .{ "event", objc.NSString, .{} },
        .{ "htmlFor", objc.NSString, .{} },
        .{ "setCharset:", void, .{objc.NSString} },
        .{ "setDefer:", void, .{objc.BOOL} },
        .{ "setEvent:", void, .{objc.NSString} },
        .{ "setHtmlFor:", void, .{objc.NSString} },
        .{ "setSrc:", void, .{objc.NSString} },
        .{ "setText:", void, .{objc.NSString} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "src", objc.NSString, .{} },
        .{ "text", objc.NSString, .{} },
        .{ "type", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLScriptElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLSelectElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "add:before:", void, .{ DOMHTMLElement, DOMHTMLElement } },
        .{ "autofocus", objc.BOOL, .{} },
        .{ "disabled", objc.BOOL, .{} },
        .{ "form", DOMHTMLFormElement, .{} },
        .{ "item:", ?DOMNode, .{u32} },
        .{ "length", i32, .{} },
        .{ "multiple", objc.BOOL, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "namedItem:", ?DOMNode, .{objc.NSString} },
        .{ "options", DOMHTMLOptionsCollection, .{} },
        .{ "remove:", void, .{i32} },
        .{ "selectedIndex", i32, .{} },
        .{ "setAutofocus:", void, .{objc.BOOL} },
        .{ "setDisabled:", void, .{objc.BOOL} },
        .{ "setMultiple:", void, .{objc.BOOL} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setSelectedIndex:", void, .{i32} },
        .{ "setSize:", void, .{i32} },
        .{ "setValue:", void, .{objc.NSString} },
        .{ "size", i32, .{} },
        .{ "type", objc.NSString, .{} },
        .{ "value", objc.NSString, .{} },
        .{ "willValidate", objc.BOOL, .{} },
    };

    pub fn send(self: DOMHTMLSelectElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLStyleElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "disabled", objc.BOOL, .{} },
        .{ "media", objc.NSString, .{} },
        .{ "setDisabled:", void, .{objc.BOOL} },
        .{ "setMedia:", void, .{objc.NSString} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "sheet", DOMStyleSheet, .{} },
        .{ "type", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLStyleElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLTableCaptionElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMHTMLTableCaptionElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLTableCellElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "abbr", objc.NSString, .{} },
        .{ "align", objc.NSString, .{} },
        .{ "axis", objc.NSString, .{} },
        .{ "bgColor", objc.NSString, .{} },
        .{ "cellIndex", i32, .{} },
        .{ "ch", objc.NSString, .{} },
        .{ "chOff", objc.NSString, .{} },
        .{ "colSpan", i32, .{} },
        .{ "headers", objc.NSString, .{} },
        .{ "height", objc.NSString, .{} },
        .{ "noWrap", objc.BOOL, .{} },
        .{ "rowSpan", i32, .{} },
        .{ "scope", objc.NSString, .{} },
        .{ "setAbbr:", void, .{objc.NSString} },
        .{ "setAlign:", void, .{objc.NSString} },
        .{ "setAxis:", void, .{objc.NSString} },
        .{ "setBgColor:", void, .{objc.NSString} },
        .{ "setCh:", void, .{objc.NSString} },
        .{ "setChOff:", void, .{objc.NSString} },
        .{ "setColSpan:", void, .{i32} },
        .{ "setHeaders:", void, .{objc.NSString} },
        .{ "setHeight:", void, .{objc.NSString} },
        .{ "setNoWrap:", void, .{objc.BOOL} },
        .{ "setRowSpan:", void, .{i32} },
        .{ "setScope:", void, .{objc.NSString} },
        .{ "setVAlign:", void, .{objc.NSString} },
        .{ "setWidth:", void, .{objc.NSString} },
        .{ "vAlign", objc.NSString, .{} },
        .{ "width", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLTableCellElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLTableColElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "ch", objc.NSString, .{} },
        .{ "chOff", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
        .{ "setCh:", void, .{objc.NSString} },
        .{ "setChOff:", void, .{objc.NSString} },
        .{ "setSpan:", void, .{i32} },
        .{ "setVAlign:", void, .{objc.NSString} },
        .{ "setWidth:", void, .{objc.NSString} },
        .{ "span", i32, .{} },
        .{ "vAlign", objc.NSString, .{} },
        .{ "width", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLTableColElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLTableElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "bgColor", objc.NSString, .{} },
        .{ "border", objc.NSString, .{} },
        .{ "caption", DOMHTMLTableCaptionElement, .{} },
        .{ "cellPadding", objc.NSString, .{} },
        .{ "cellSpacing", objc.NSString, .{} },
        .{ "createCaption", ?DOMHTMLElement, .{} },
        .{ "createTFoot", ?DOMHTMLElement, .{} },
        .{ "createTHead", ?DOMHTMLElement, .{} },
        .{ "deleteCaption", void, .{} },
        .{ "deleteRow:", void, .{i32} },
        .{ "deleteTFoot", void, .{} },
        .{ "deleteTHead", void, .{} },
        .{ "frameBorders", objc.NSString, .{} },
        .{ "insertRow:", ?DOMHTMLElement, .{i32} },
        .{ "rows", DOMHTMLCollection, .{} },
        .{ "rules", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
        .{ "setBgColor:", void, .{objc.NSString} },
        .{ "setBorder:", void, .{objc.NSString} },
        .{ "setCaption:", void, .{DOMHTMLTableCaptionElement} },
        .{ "setCellPadding:", void, .{objc.NSString} },
        .{ "setCellSpacing:", void, .{objc.NSString} },
        .{ "setFrameBorders:", void, .{objc.NSString} },
        .{ "setRules:", void, .{objc.NSString} },
        .{ "setSummary:", void, .{objc.NSString} },
        .{ "setTFoot:", void, .{DOMHTMLTableSectionElement} },
        .{ "setTHead:", void, .{DOMHTMLTableSectionElement} },
        .{ "setWidth:", void, .{objc.NSString} },
        .{ "summary", objc.NSString, .{} },
        .{ "tBodies", DOMHTMLCollection, .{} },
        .{ "tFoot", DOMHTMLTableSectionElement, .{} },
        .{ "tHead", DOMHTMLTableSectionElement, .{} },
        .{ "width", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLTableElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLTableRowElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "bgColor", objc.NSString, .{} },
        .{ "cells", DOMHTMLCollection, .{} },
        .{ "ch", objc.NSString, .{} },
        .{ "chOff", objc.NSString, .{} },
        .{ "deleteCell:", void, .{i32} },
        .{ "insertCell:", ?DOMHTMLElement, .{i32} },
        .{ "rowIndex", i32, .{} },
        .{ "sectionRowIndex", i32, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
        .{ "setBgColor:", void, .{objc.NSString} },
        .{ "setCh:", void, .{objc.NSString} },
        .{ "setChOff:", void, .{objc.NSString} },
        .{ "setVAlign:", void, .{objc.NSString} },
        .{ "vAlign", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLTableRowElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLTableSectionElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "ch", objc.NSString, .{} },
        .{ "chOff", objc.NSString, .{} },
        .{ "deleteRow:", void, .{i32} },
        .{ "insertRow:", ?DOMHTMLElement, .{i32} },
        .{ "rows", DOMHTMLCollection, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
        .{ "setCh:", void, .{objc.NSString} },
        .{ "setChOff:", void, .{objc.NSString} },
        .{ "setVAlign:", void, .{objc.NSString} },
        .{ "vAlign", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLTableSectionElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLTextAreaElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "autofocus", objc.BOOL, .{} },
        .{ "cols", i32, .{} },
        .{ "defaultValue", objc.NSString, .{} },
        .{ "disabled", objc.BOOL, .{} },
        .{ "form", DOMHTMLFormElement, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "readOnly", objc.BOOL, .{} },
        .{ "rows", i32, .{} },
        .{ "select", void, .{} },
        .{ "selectionEnd", i32, .{} },
        .{ "selectionStart", i32, .{} },
        .{ "setAutofocus:", void, .{objc.BOOL} },
        .{ "setCols:", void, .{i32} },
        .{ "setDefaultValue:", void, .{objc.NSString} },
        .{ "setDisabled:", void, .{objc.BOOL} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setReadOnly:", void, .{objc.BOOL} },
        .{ "setRows:", void, .{i32} },
        .{ "setSelectionEnd:", void, .{i32} },
        .{ "setSelectionRange:end:", void, .{ i32, i32 } },
        .{ "setSelectionStart:", void, .{i32} },
        .{ "setValue:", void, .{objc.NSString} },
        .{ "type", objc.NSString, .{} },
        .{ "value", objc.NSString, .{} },
        .{ "willValidate", objc.BOOL, .{} },
    };

    pub fn send(self: DOMHTMLTextAreaElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLTitleElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "setText:", void, .{objc.NSString} },
        .{ "text", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLTitleElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMHTMLUListElement = struct {
    obj: Object,

    pub const Super = DOMHTMLElement;
    pub const methods = .{
        .{ "compact", objc.BOOL, .{} },
        .{ "setCompact:", void, .{objc.BOOL} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "type", objc.NSString, .{} },
    };

    pub fn send(self: DOMHTMLUListElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMImplementation = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "createCSSStyleSheet:media:", ?DOMCSSStyleSheet, .{ objc.NSString, objc.NSString } },
        .{ "createDocument:qualifiedName:doctype:", ?DOMDocument, .{ objc.NSString, objc.NSString, DOMDocumentType } },
        .{ "createDocumentType:publicId:systemId:", ?DOMDocumentType, .{ objc.NSString, objc.NSString, objc.NSString } },
        .{ "createHTMLDocument:", ?DOMHTMLDocument, .{objc.NSString} },
        .{ "hasFeature:version:", objc.BOOL, .{ objc.NSString, objc.NSString } },
    };

    pub fn send(self: DOMImplementation, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMKeyboardEvent = struct {
    obj: Object,

    pub const Super = DOMUIEvent;
    pub const methods = .{
        .{ "altGraphKey", objc.BOOL, .{} },
        .{ "altKey", objc.BOOL, .{} },
        .{ "charCode", i32, .{} },
        .{ "ctrlKey", objc.BOOL, .{} },
        .{ "getModifierState:", objc.BOOL, .{objc.NSString} },
        .{ "initKeyboardEvent:canBubble:cancelable:view:keyIdentifier:location:ctrlKey:altKey:shiftKey:metaKey:", void, .{ objc.NSString, objc.BOOL, objc.BOOL, DOMAbstractView, objc.NSString, u32, objc.BOOL, objc.BOOL, objc.BOOL, objc.BOOL } },
        .{ "initKeyboardEvent:canBubble:cancelable:view:keyIdentifier:location:ctrlKey:altKey:shiftKey:metaKey:altGraphKey:", void, .{ objc.NSString, objc.BOOL, objc.BOOL, DOMAbstractView, objc.NSString, u32, objc.BOOL, objc.BOOL, objc.BOOL, objc.BOOL, objc.BOOL } },
        .{ "keyCode", i32, .{} },
        .{ "keyIdentifier", objc.NSString, .{} },
        .{ "location", u32, .{} },
        .{ "metaKey", objc.BOOL, .{} },
        .{ "shiftKey", objc.BOOL, .{} },
    };

    pub fn send(self: DOMKeyboardEvent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMMediaList = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "appendMedium:", void, .{objc.NSString} },
        .{ "deleteMedium:", void, .{objc.NSString} },
        .{ "item:", ?objc.NSString, .{u32} },
        .{ "length", u32, .{} },
        .{ "mediaText", objc.NSString, .{} },
        .{ "setMediaText:", void, .{objc.NSString} },
    };

    pub fn send(self: DOMMediaList, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMMouseEvent = struct {
    obj: Object,

    pub const Super = DOMUIEvent;
    pub const methods = .{
        .{ "altKey", objc.BOOL, .{} },
        .{ "button", i16, .{} },
        .{ "clientX", i32, .{} },
        .{ "clientY", i32, .{} },
        .{ "ctrlKey", objc.BOOL, .{} },
        .{ "fromElement", DOMNode, .{} },
        .{ "initMouseEvent:canBubble:cancelable:view:detail:screenX:screenY:clientX:clientY:ctrlKey:altKey:shiftKey:metaKey:button:relatedTarget:", void, .{ objc.NSString, objc.BOOL, objc.BOOL, DOMAbstractView, i32, i32, i32, i32, i32, objc.BOOL, objc.BOOL, objc.BOOL, objc.BOOL, u16, DOMEventTarget } },
        .{ "metaKey", objc.BOOL, .{} },
        .{ "offsetX", i32, .{} },
        .{ "offsetY", i32, .{} },
        .{ "relatedTarget", DOMEventTarget, .{} },
        .{ "screenX", i32, .{} },
        .{ "screenY", i32, .{} },
        .{ "setOffsetX:", void, .{i32} },
        .{ "setOffsetY:", void, .{i32} },
        .{ "shiftKey", objc.BOOL, .{} },
        .{ "toElement", DOMNode, .{} },
        .{ "x", i32, .{} },
        .{ "y", i32, .{} },
    };

    pub fn send(self: DOMMouseEvent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMMutationEvent = struct {
    obj: Object,

    pub const Super = DOMEvent;
    pub const methods = .{
        .{ "attrChange", u16, .{} },
        .{ "attrName", objc.NSString, .{} },
        .{ "initMutationEvent:canBubble:cancelable:relatedNode:prevValue:newValue:attrName:attrChange:", void, .{ objc.NSString, objc.BOOL, objc.BOOL, DOMNode, objc.NSString, objc.NSString, objc.NSString, u16 } },
        .{ "newValue", objc.NSString, .{} },
        .{ "prevValue", objc.NSString, .{} },
        .{ "relatedNode", DOMNode, .{} },
    };

    pub fn send(self: DOMMutationEvent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMNamedNodeMap = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "getNamedItem:", ?DOMNode, .{objc.NSString} },
        .{ "getNamedItemNS:localName:", ?DOMNode, .{ objc.NSString, objc.NSString } },
        .{ "item:", ?DOMNode, .{u32} },
        .{ "length", u32, .{} },
        .{ "removeNamedItem:", ?DOMNode, .{objc.NSString} },
        .{ "removeNamedItemNS:localName:", ?DOMNode, .{ objc.NSString, objc.NSString } },
        .{ "setNamedItem:", ?DOMNode, .{DOMNode} },
        .{ "setNamedItemNS:", ?DOMNode, .{DOMNode} },
    };

    pub fn send(self: DOMNamedNodeMap, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMNode = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "appendChild:", ?DOMNode, .{DOMNode} },
        .{ "attributes", DOMNamedNodeMap, .{} },
        .{ "baseURI", objc.NSString, .{} },
        .{ "boundingBox", NSRect, .{} },
        .{ "childNodes", DOMNodeList, .{} },
        .{ "cloneNode:", ?DOMNode, .{objc.BOOL} },
        .{ "compareDocumentPosition:", u16, .{DOMNode} },
        .{ "contains:", objc.BOOL, .{DOMNode} },
        .{ "firstChild", DOMNode, .{} },
        .{ "hasAttributes", objc.BOOL, .{} },
        .{ "hasChildNodes", objc.BOOL, .{} },
        .{ "insertBefore:refChild:", ?DOMNode, .{ DOMNode, DOMNode } },
        .{ "isContentEditable", objc.BOOL, .{} },
        .{ "isDefaultNamespace:", objc.BOOL, .{objc.NSString} },
        .{ "isEqualNode:", objc.BOOL, .{DOMNode} },
        .{ "isSameNode:", objc.BOOL, .{DOMNode} },
        .{ "isSupported:version:", objc.BOOL, .{ objc.NSString, objc.NSString } },
        .{ "lastChild", DOMNode, .{} },
        .{ "lineBoxRects", ?*anyopaque, .{} },
        .{ "localName", objc.NSString, .{} },
        .{ "lookupNamespaceURI:", ?objc.NSString, .{objc.NSString} },
        .{ "lookupPrefix:", ?objc.NSString, .{objc.NSString} },
        .{ "namespaceURI", objc.NSString, .{} },
        .{ "nextSibling", DOMNode, .{} },
        .{ "nodeName", objc.NSString, .{} },
        .{ "nodeType", u16, .{} },
        .{ "nodeValue", objc.NSString, .{} },
        .{ "normalize", void, .{} },
        .{ "ownerDocument", DOMDocument, .{} },
        .{ "parentElement", DOMElement, .{} },
        .{ "parentNode", DOMNode, .{} },
        .{ "prefix", objc.NSString, .{} },
        .{ "previousSibling", DOMNode, .{} },
        .{ "removeChild:", ?DOMNode, .{DOMNode} },
        .{ "replaceChild:oldChild:", ?DOMNode, .{ DOMNode, DOMNode } },
        .{ "setNodeValue:", void, .{objc.NSString} },
        .{ "setPrefix:", void, .{objc.NSString} },
        .{ "setTextContent:", void, .{objc.NSString} },
        .{ "textContent", objc.NSString, .{} },
        .{ "webArchive", WebArchive, .{} },
    };

    pub fn send(self: DOMNode, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMNodeIterator = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "detach", void, .{} },
        .{ "expandEntityReferences", objc.BOOL, .{} },
        .{ "filter", DOMNodeFilter, .{} },
        .{ "nextNode", ?DOMNode, .{} },
        .{ "pointerBeforeReferenceNode", objc.BOOL, .{} },
        .{ "previousNode", ?DOMNode, .{} },
        .{ "referenceNode", DOMNode, .{} },
        .{ "root", DOMNode, .{} },
        .{ "whatToShow", u32, .{} },
    };

    pub fn send(self: DOMNodeIterator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMNodeList = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "item:", ?DOMNode, .{u32} },
        .{ "length", u32, .{} },
    };

    pub fn send(self: DOMNodeList, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMObject = struct {
    obj: Object,

    pub const Super = WebScriptObject;
    pub const methods = .{
        .{ "sheet", DOMStyleSheet, .{} },
    };

    pub fn send(self: DOMObject, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMOverflowEvent = struct {
    obj: Object,

    pub const Super = DOMEvent;
    pub const methods = .{
        .{ "horizontalOverflow", objc.BOOL, .{} },
        .{ "initOverflowEvent:horizontalOverflow:verticalOverflow:", void, .{ u16, objc.BOOL, objc.BOOL } },
        .{ "orient", u16, .{} },
        .{ "verticalOverflow", objc.BOOL, .{} },
    };

    pub fn send(self: DOMOverflowEvent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMProcessingInstruction = struct {
    obj: Object,

    pub const Super = DOMCharacterData;
    pub const methods = .{
        .{ "sheet", DOMStyleSheet, .{} },
        .{ "target", objc.NSString, .{} },
    };

    pub fn send(self: DOMProcessingInstruction, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMProgressEvent = struct {
    obj: Object,

    pub const Super = DOMEvent;
    pub const methods = .{
        .{ "lengthComputable", objc.BOOL, .{} },
        .{ "loaded", u64, .{} },
        .{ "total", u64, .{} },
    };

    pub fn send(self: DOMProgressEvent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMRGBColor = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "alpha", DOMCSSPrimitiveValue, .{} },
        .{ "blue", DOMCSSPrimitiveValue, .{} },
        .{ "color", AppKit.NSColor, .{} },
        .{ "green", DOMCSSPrimitiveValue, .{} },
        .{ "red", DOMCSSPrimitiveValue, .{} },
    };

    pub fn send(self: DOMRGBColor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMRange = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "cloneContents", ?*anyopaque, .{} },
        .{ "cloneRange", ?DOMRange, .{} },
        .{ "collapse:", void, .{objc.BOOL} },
        .{ "collapsed", objc.BOOL, .{} },
        .{ "commonAncestorContainer", DOMNode, .{} },
        .{ "compareBoundaryPoints:sourceRange:", i16, .{ u16, DOMRange } },
        .{ "compareNode:", i16, .{DOMNode} },
        .{ "comparePoint:offset:", i16, .{ DOMNode, i32 } },
        .{ "createContextualFragment:", ?*anyopaque, .{objc.NSString} },
        .{ "deleteContents", void, .{} },
        .{ "detach", void, .{} },
        .{ "endContainer", DOMNode, .{} },
        .{ "endOffset", i32, .{} },
        .{ "extractContents", ?*anyopaque, .{} },
        .{ "insertNode:", void, .{DOMNode} },
        .{ "intersectsNode:", objc.BOOL, .{DOMNode} },
        .{ "isPointInRange:offset:", objc.BOOL, .{ DOMNode, i32 } },
        .{ "markupString", objc.NSString, .{} },
        .{ "selectNode:", void, .{DOMNode} },
        .{ "selectNodeContents:", void, .{DOMNode} },
        .{ "setEnd:offset:", void, .{ DOMNode, i32 } },
        .{ "setEndAfter:", void, .{DOMNode} },
        .{ "setEndBefore:", void, .{DOMNode} },
        .{ "setEndOffset:", void, .{i32} },
        .{ "setStart:offset:", void, .{ DOMNode, i32 } },
        .{ "setStartAfter:", void, .{DOMNode} },
        .{ "setStartBefore:", void, .{DOMNode} },
        .{ "setStartOffset:", void, .{i32} },
        .{ "startContainer", DOMNode, .{} },
        .{ "startOffset", i32, .{} },
        .{ "surroundContents:", void, .{DOMNode} },
        .{ "text", objc.NSString, .{} },
        .{ "toString", ?objc.NSString, .{} },
        .{ "webArchive", WebArchive, .{} },
    };

    pub fn send(self: DOMRange, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMRect = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "bottom", DOMCSSPrimitiveValue, .{} },
        .{ "left", DOMCSSPrimitiveValue, .{} },
        .{ "right", DOMCSSPrimitiveValue, .{} },
        .{ "top", DOMCSSPrimitiveValue, .{} },
    };

    pub fn send(self: DOMRect, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMStyleSheet = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "disabled", objc.BOOL, .{} },
        .{ "href", objc.NSString, .{} },
        .{ "media", DOMMediaList, .{} },
        .{ "ownerNode", DOMNode, .{} },
        .{ "parentStyleSheet", DOMStyleSheet, .{} },
        .{ "setDisabled:", void, .{objc.BOOL} },
        .{ "title", objc.NSString, .{} },
        .{ "type", objc.NSString, .{} },
    };

    pub fn send(self: DOMStyleSheet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMStyleSheetList = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "item:", ?DOMStyleSheet, .{u32} },
        .{ "length", u32, .{} },
    };

    pub fn send(self: DOMStyleSheetList, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMText = struct {
    obj: Object,

    pub const Super = DOMCharacterData;
    pub const methods = .{
        .{ "replaceWholeText:", ?DOMText, .{objc.NSString} },
        .{ "splitText:", ?DOMText, .{u32} },
        .{ "wholeText", objc.NSString, .{} },
    };

    pub fn send(self: DOMText, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMTreeWalker = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "currentNode", DOMNode, .{} },
        .{ "expandEntityReferences", objc.BOOL, .{} },
        .{ "filter", DOMNodeFilter, .{} },
        .{ "firstChild", ?DOMNode, .{} },
        .{ "lastChild", ?DOMNode, .{} },
        .{ "nextNode", ?DOMNode, .{} },
        .{ "nextSibling", ?DOMNode, .{} },
        .{ "parentNode", ?DOMNode, .{} },
        .{ "previousNode", ?DOMNode, .{} },
        .{ "previousSibling", ?DOMNode, .{} },
        .{ "root", DOMNode, .{} },
        .{ "setCurrentNode:", void, .{DOMNode} },
        .{ "whatToShow", u32, .{} },
    };

    pub fn send(self: DOMTreeWalker, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMUIEvent = struct {
    obj: Object,

    pub const Super = DOMEvent;
    pub const methods = .{
        .{ "charCode", i32, .{} },
        .{ "detail", i32, .{} },
        .{ "initUIEvent:canBubble:cancelable:view:detail:", void, .{ objc.NSString, objc.BOOL, objc.BOOL, DOMAbstractView, i32 } },
        .{ "keyCode", i32, .{} },
        .{ "pageX", i32, .{} },
        .{ "pageY", i32, .{} },
        .{ "view", DOMAbstractView, .{} },
        .{ "which", i32, .{} },
    };

    pub fn send(self: DOMUIEvent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMWheelEvent = struct {
    obj: Object,

    pub const Super = DOMMouseEvent;
    pub const methods = .{
        .{ "initWheelEvent:wheelDeltaY:view:screenX:screenY:clientX:clientY:ctrlKey:altKey:shiftKey:metaKey:", void, .{ i32, i32, DOMAbstractView, i32, i32, i32, i32, objc.BOOL, objc.BOOL, objc.BOOL, objc.BOOL } },
        .{ "isHorizontal", objc.BOOL, .{} },
        .{ "wheelDelta", i32, .{} },
        .{ "wheelDeltaX", i32, .{} },
        .{ "wheelDeltaY", i32, .{} },
    };

    pub fn send(self: DOMWheelEvent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMXPathExpression = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "evaluate:type:inResult:", ?DOMXPathResult, .{ DOMNode, u16, DOMXPathResult } },
    };

    pub fn send(self: DOMXPathExpression, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const DOMXPathResult = struct {
    obj: Object,

    pub const Super = DOMObject;
    pub const methods = .{
        .{ "booleanValue", objc.BOOL, .{} },
        .{ "invalidIteratorState", objc.BOOL, .{} },
        .{ "iterateNext", ?DOMNode, .{} },
        .{ "numberValue", f64, .{} },
        .{ "resultType", u16, .{} },
        .{ "singleNodeValue", DOMNode, .{} },
        .{ "snapshotItem:", ?DOMNode, .{u32} },
        .{ "snapshotLength", u32, .{} },
        .{ "stringValue", objc.NSString, .{} },
    };

    pub fn send(self: DOMXPathResult, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const WKBackForwardList = struct {
    obj: Object,

    pub const methods = .{
        .{ "backItem", ?WKBackForwardListItem, .{} },
        .{ "backList", Object, .{} },
        .{ "currentItem", ?WKBackForwardListItem, .{} },
        .{ "forwardItem", ?WKBackForwardListItem, .{} },
        .{ "forwardList", Object, .{} },
        .{ "itemAtIndex:", ?WKBackForwardListItem, .{objc.NSInteger} },
    };

    pub fn send(self: WKBackForwardList, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKBackForwardListItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "URL", Foundation.NSURL, .{} },
        .{ "initialURL", Foundation.NSURL, .{} },
        .{ "title", ?objc.NSString, .{} },
    };

    pub fn send(self: WKBackForwardListItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKContentRuleList = struct {
    obj: Object,

    pub const methods = .{
        .{ "identifier", objc.NSString, .{} },
    };

    pub fn send(self: WKContentRuleList, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKContentRuleListStore = struct {
    obj: Object,

    pub const methods = .{
        .{ "compileContentRuleListForIdentifier:encodedContentRuleList:completionHandler:", void, .{ objc.NSString, objc.NSString, ?*anyopaque } },
        .{ "getAvailableContentRuleListIdentifiers:", void, .{?*anyopaque} },
        .{ "lookUpContentRuleListForIdentifier:completionHandler:", void, .{ objc.NSString, ?*anyopaque } },
        .{ "removeContentRuleListForIdentifier:completionHandler:", void, .{ objc.NSString, ?*anyopaque } },
    };

    pub fn send(self: WKContentRuleListStore, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultStore", ?*anyopaque, .{} },
        .{ "storeWithURL:", Object, .{Foundation.NSURL} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WKContentRuleListStore", class_methods, selector, args);
    }
};

pub const WKContentWorld = struct {
    obj: Object,

    pub const methods = .{
        .{ "name", ?objc.NSString, .{} },
    };

    pub fn send(self: WKContentWorld, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultClientWorld", WKContentWorld, .{} },
        .{ "pageWorld", WKContentWorld, .{} },
        .{ "worldWithName:", WKContentWorld, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WKContentWorld", class_methods, selector, args);
    }
};

pub const WKDownload = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancel:", void, .{?*anyopaque} },
        .{ "delegate", ?WKDownloadDelegate, .{} },
        .{ "originalRequest", ?Foundation.NSURLRequest, .{} },
        .{ "originatingFrame", WKFrameInfo, .{} },
        .{ "setDelegate:", void, .{?WKDownloadDelegate} },
        .{ "userInitiated", objc.BOOL, .{} },
        .{ "webView", ?WKWebView, .{} },
    };

    pub fn send(self: WKDownload, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const PlaceholderPolicy = enum(i64) {
        disable = 0,
        enable = 1,
    };
    pub const RedirectPolicy = enum(i64) {
        cancel = 0,
        allow = 1,
    };
};

pub const WKFindConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "backwards", objc.BOOL, .{} },
        .{ "caseSensitive", objc.BOOL, .{} },
        .{ "setBackwards:", void, .{objc.BOOL} },
        .{ "setCaseSensitive:", void, .{objc.BOOL} },
        .{ "setWraps:", void, .{objc.BOOL} },
        .{ "wraps", objc.BOOL, .{} },
    };

    pub fn send(self: WKFindConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKFindResult = struct {
    obj: Object,

    pub const methods = .{
        .{ "matchFound", objc.BOOL, .{} },
    };

    pub fn send(self: WKFindResult, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKFrameInfo = struct {
    obj: Object,

    pub const methods = .{
        .{ "mainFrame", objc.BOOL, .{} },
        .{ "request", Foundation.NSURLRequest, .{} },
        .{ "securityOrigin", WKSecurityOrigin, .{} },
        .{ "webView", ?WKWebView, .{} },
    };

    pub fn send(self: WKFrameInfo, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKHTTPCookieStore = struct {
    obj: Object,

    pub const methods = .{
        .{ "addObserver:", void, .{WKHTTPCookieStoreObserver} },
        .{ "deleteCookie:completionHandler:", void, .{ Foundation.HTTPCookie, ?*anyopaque } },
        .{ "getAllCookies:", void, .{?*anyopaque} },
        .{ "getCookiePolicy:", void, .{?*anyopaque} },
        .{ "removeObserver:", void, .{WKHTTPCookieStoreObserver} },
        .{ "setCookie:completionHandler:", void, .{ Foundation.HTTPCookie, ?*anyopaque } },
        .{ "setCookiePolicy:completionHandler:", void, .{ WKHTTPCookieStore.CookiePolicy, ?*anyopaque } },
        .{ "setCookies:completionHandler:", void, .{ Object, ?*anyopaque } },
    };

    pub fn send(self: WKHTTPCookieStore, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const CookiePolicy = enum(i64) {
        allow = 0,
        disallow = 1,
    };
};

pub const WKNavigation = struct {
    obj: Object,

    pub const methods = .{
        .{ "effectiveContentMode", WKWebpagePreferences.ContentMode, .{} },
    };

    pub fn send(self: WKNavigation, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKNavigationAction = struct {
    obj: Object,

    pub const methods = .{
        .{ "buttonNumber", objc.NSInteger, .{} },
        .{ "isContentRuleListRedirect", objc.BOOL, .{} },
        .{ "modifierFlags", objc.NSInteger, .{} },
        .{ "navigationType", WKNavigationType, .{} },
        .{ "request", Foundation.NSURLRequest, .{} },
        .{ "shouldPerformDownload", objc.BOOL, .{} },
        .{ "sourceFrame", WKFrameInfo, .{} },
        .{ "targetFrame", ?WKFrameInfo, .{} },
    };

    pub fn send(self: WKNavigationAction, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKNavigationResponse = struct {
    obj: Object,

    pub const methods = .{
        .{ "canShowMIMEType", objc.BOOL, .{} },
        .{ "forMainFrame", objc.BOOL, .{} },
        .{ "response", Foundation.URLResponse, .{} },
    };

    pub fn send(self: WKNavigationResponse, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKOpenPanelParameters = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowsDirectories", objc.BOOL, .{} },
        .{ "allowsMultipleSelection", objc.BOOL, .{} },
    };

    pub fn send(self: WKOpenPanelParameters, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKPDFConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowTransparentBackground", objc.BOOL, .{} },
        .{ "setAllowTransparentBackground:", void, .{objc.BOOL} },
    };

    pub fn send(self: WKPDFConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKPreferences = struct {
    obj: Object,

    pub const methods = .{
        .{ "elementFullscreenEnabled", objc.BOOL, .{} },
        .{ "fraudulentWebsiteWarningEnabled", objc.BOOL, .{} },
        .{ "inactiveSchedulingPolicy", WKPreferences.InactiveSchedulingPolicy, .{} },
        .{ "javaEnabled", objc.BOOL, .{} },
        .{ "javaScriptCanOpenWindowsAutomatically", objc.BOOL, .{} },
        .{ "javaScriptEnabled", objc.BOOL, .{} },
        .{ "minimumFontSize", objc.CGFloat, .{} },
        .{ "plugInsEnabled", objc.BOOL, .{} },
        .{ "setElementFullscreenEnabled:", void, .{objc.BOOL} },
        .{ "setFraudulentWebsiteWarningEnabled:", void, .{objc.BOOL} },
        .{ "setInactiveSchedulingPolicy:", void, .{WKPreferences.InactiveSchedulingPolicy} },
        .{ "setJavaEnabled:", void, .{objc.BOOL} },
        .{ "setJavaScriptCanOpenWindowsAutomatically:", void, .{objc.BOOL} },
        .{ "setJavaScriptEnabled:", void, .{objc.BOOL} },
        .{ "setMinimumFontSize:", void, .{objc.CGFloat} },
        .{ "setPlugInsEnabled:", void, .{objc.BOOL} },
        .{ "setShouldPrintBackgrounds:", void, .{objc.BOOL} },
        .{ "setSiteSpecificQuirksModeEnabled:", void, .{objc.BOOL} },
        .{ "setTabFocusesLinks:", void, .{objc.BOOL} },
        .{ "setTextInteractionEnabled:", void, .{objc.BOOL} },
        .{ "shouldPrintBackgrounds", objc.BOOL, .{} },
        .{ "siteSpecificQuirksModeEnabled", objc.BOOL, .{} },
        .{ "tabFocusesLinks", objc.BOOL, .{} },
        .{ "textInteractionEnabled", objc.BOOL, .{} },
    };

    pub fn send(self: WKPreferences, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const InactiveSchedulingPolicy = enum(i64) {
        @"suspend" = 0,
        throttle = 1,
        none = 2,
    };
};

pub const WKScriptMessage = struct {
    obj: Object,

    pub const methods = .{
        .{ "body", Any, .{} },
        .{ "frameInfo", WKFrameInfo, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "webView", ?WKWebView, .{} },
        .{ "world", WKContentWorld, .{} },
    };

    pub fn send(self: WKScriptMessage, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKSecurityOrigin = struct {
    obj: Object,

    pub const methods = .{
        .{ "host", objc.NSString, .{} },
        .{ "port", objc.NSInteger, .{} },
        .{ "protocol", objc.NSString, .{} },
    };

    pub fn send(self: WKSecurityOrigin, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKSnapshotConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "afterScreenUpdates", objc.BOOL, .{} },
        .{ "rect", NSRect, .{} },
        .{ "setAfterScreenUpdates:", void, .{objc.BOOL} },
        .{ "setRect:", void, .{NSRect} },
        .{ "setSnapshotWidth:", void, .{?Foundation.NSNumber} },
        .{ "snapshotWidth", ?Foundation.NSNumber, .{} },
    };

    pub fn send(self: WKSnapshotConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKUserContentController = struct {
    obj: Object,

    pub const methods = .{
        .{ "addContentRuleList:", void, .{WKContentRuleList} },
        .{ "addScriptMessageHandler:contentWorld:name:", void, .{ WKScriptMessageHandler, WKContentWorld, objc.NSString } },
        .{ "addScriptMessageHandler:name:", void, .{ WKScriptMessageHandler, objc.NSString } },
        .{ "addScriptMessageHandlerWithReply:contentWorld:name:", void, .{ WKScriptMessageHandlerWithReply, WKContentWorld, objc.NSString } },
        .{ "addUserScript:", void, .{WKUserScript} },
        .{ "removeAllContentRuleLists", void, .{} },
        .{ "removeAllScriptMessageHandlers", void, .{} },
        .{ "removeAllScriptMessageHandlersFromContentWorld:", void, .{WKContentWorld} },
        .{ "removeAllUserScripts", void, .{} },
        .{ "removeContentRuleList:", void, .{WKContentRuleList} },
        .{ "removeScriptMessageHandlerForName:", void, .{objc.NSString} },
        .{ "removeScriptMessageHandlerForName:contentWorld:", void, .{ objc.NSString, WKContentWorld } },
        .{ "userScripts", Object, .{} },
    };

    pub fn send(self: WKUserContentController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKUserScript = struct {
    obj: Object,

    pub const methods = .{
        .{ "forMainFrameOnly", objc.BOOL, .{} },
        .{ "injectionTime", WKUserScriptInjectionTime, .{} },
        .{ "source", objc.NSString, .{} },
    };

    pub fn send(self: WKUserScript, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithSource:injectionTime:forMainFrameOnly:", Object, .{ objc.NSString, WKUserScriptInjectionTime, objc.BOOL } },
        .{ "initWithSource:injectionTime:forMainFrameOnly:inContentWorld:", Object, .{ objc.NSString, WKUserScriptInjectionTime, objc.BOOL, WKContentWorld } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WKUserScript", class_methods, selector, args);
    }
};

pub const WKWebExtension = struct {
    obj: Object,

    pub const methods = .{
        .{ "actionIconForSize:", ?AppKit.NSImage, .{NSSize} },
        .{ "allRequestedMatchPatterns", WKWebExtensionMatchPattern, .{} },
        .{ "defaultLocale", ?Foundation.NSLocale, .{} },
        .{ "displayActionLabel", ?objc.NSString, .{} },
        .{ "displayDescription", ?objc.NSString, .{} },
        .{ "displayName", ?objc.NSString, .{} },
        .{ "displayShortName", ?objc.NSString, .{} },
        .{ "displayVersion", ?objc.NSString, .{} },
        .{ "errors", Object, .{} },
        .{ "hasBackgroundContent", objc.BOOL, .{} },
        .{ "hasCommands", objc.BOOL, .{} },
        .{ "hasContentModificationRules", objc.BOOL, .{} },
        .{ "hasInjectedContent", objc.BOOL, .{} },
        .{ "hasOptionsPage", objc.BOOL, .{} },
        .{ "hasOverrideNewTabPage", objc.BOOL, .{} },
        .{ "hasPersistentBackgroundContent", objc.BOOL, .{} },
        .{ "iconForSize:", ?AppKit.NSImage, .{NSSize} },
        .{ "manifest", Object, .{} },
        .{ "manifestVersion", f64, .{} },
        .{ "optionalPermissionMatchPatterns", WKWebExtensionMatchPattern, .{} },
        .{ "optionalPermissions", objc.NSString, .{} },
        .{ "requestedPermissionMatchPatterns", WKWebExtensionMatchPattern, .{} },
        .{ "requestedPermissions", objc.NSString, .{} },
        .{ "supportsManifestVersion:", objc.BOOL, .{f64} },
        .{ "version", ?objc.NSString, .{} },
    };

    pub fn send(self: WKWebExtension, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const WindowState = enum(i64) {
        normal = 0,
        minimized = 1,
        maximized = 2,
        fullscreen = 3,
    };
    pub const WindowType = enum(i64) {
        normal = 0,
        popup = 1,
    };
};

pub const WKWebExtensionAction = struct {
    obj: Object,

    pub const methods = .{
        .{ "associatedTab", ?WKWebExtensionTab, .{} },
        .{ "badgeText", objc.NSString, .{} },
        .{ "closePopup", void, .{} },
        .{ "enabled", objc.BOOL, .{} },
        .{ "hasUnreadBadgeText", objc.BOOL, .{} },
        .{ "iconForSize:", ?AppKit.NSImage, .{NSSize} },
        .{ "inspectionName", ?objc.NSString, .{} },
        .{ "label", objc.NSString, .{} },
        .{ "menuItems", Object, .{} },
        .{ "popupPopover", ?AppKit.NSPopover, .{} },
        .{ "popupWebView", ?WKWebView, .{} },
        .{ "presentsPopup", objc.BOOL, .{} },
        .{ "setHasUnreadBadgeText:", void, .{objc.BOOL} },
        .{ "setInspectionName:", void, .{?objc.NSString} },
        .{ "webExtensionContext", ?WKWebExtensionContext, .{} },
    };

    pub fn send(self: WKWebExtensionAction, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKWebExtensionCommand = struct {
    obj: Object,

    pub const methods = .{
        .{ "activationKey", ?objc.NSString, .{} },
        .{ "identifier", objc.NSString, .{} },
        .{ "menuItem", AppKit.NSMenuItem, .{} },
        .{ "modifierFlags", objc.NSInteger, .{} },
        .{ "setActivationKey:", void, .{?objc.NSString} },
        .{ "setModifierFlags:", void, .{objc.NSInteger} },
        .{ "title", objc.NSString, .{} },
        .{ "webExtensionContext", ?WKWebExtensionContext, .{} },
    };

    pub fn send(self: WKWebExtensionCommand, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKWebExtensionContext = struct {
    obj: Object,

    pub const methods = .{
        .{ "actionForTab:", ?WKWebExtensionAction, .{?WKWebExtensionTab} },
        .{ "baseURL", Foundation.NSURL, .{} },
        .{ "clearUserGestureInTab:", void, .{WKWebExtensionTab} },
        .{ "commandForEvent:", ?WKWebExtensionCommand, .{AppKit.NSEvent} },
        .{ "commands", Object, .{} },
        .{ "currentPermissionMatchPatterns", WKWebExtensionMatchPattern, .{} },
        .{ "currentPermissions", objc.NSString, .{} },
        .{ "deniedPermissionMatchPatterns", Object, .{} },
        .{ "deniedPermissions", Object, .{} },
        .{ "didChangeTabProperties:forTab:", void, .{ objc.NSInteger, WKWebExtensionTab } },
        .{ "didCloseWindow:", void, .{WKWebExtensionWindow} },
        .{ "didDeselectTabs:", void, .{Object} },
        .{ "didFocusWindow:", void, .{?WKWebExtensionWindow} },
        .{ "didOpenTab:", void, .{WKWebExtensionTab} },
        .{ "didOpenWindow:", void, .{WKWebExtensionWindow} },
        .{ "didReplaceTab:withTab:", void, .{ WKWebExtensionTab, WKWebExtensionTab } },
        .{ "didSelectTabs:", void, .{Object} },
        .{ "errors", Object, .{} },
        .{ "focusedWindow", ?WKWebExtensionWindow, .{} },
        .{ "grantedPermissionMatchPatterns", Object, .{} },
        .{ "grantedPermissions", Object, .{} },
        .{ "hasAccessToAllHosts", objc.BOOL, .{} },
        .{ "hasAccessToAllURLs", objc.BOOL, .{} },
        .{ "hasAccessToPrivateData", objc.BOOL, .{} },
        .{ "hasAccessToURL:", objc.BOOL, .{Foundation.NSURL} },
        .{ "hasAccessToURL:inTab:", objc.BOOL, .{ Foundation.NSURL, ?WKWebExtensionTab } },
        .{ "hasActiveUserGestureInTab:", objc.BOOL, .{WKWebExtensionTab} },
        .{ "hasContentModificationRules", objc.BOOL, .{} },
        .{ "hasInjectedContent", objc.BOOL, .{} },
        .{ "hasInjectedContentForURL:", objc.BOOL, .{Foundation.NSURL} },
        .{ "hasPermission:", objc.BOOL, .{objc.NSString} },
        .{ "hasPermission:inTab:", objc.BOOL, .{ objc.NSString, ?WKWebExtensionTab } },
        .{ "hasRequestedOptionalAccessToAllHosts", objc.BOOL, .{} },
        .{ "inspectable", objc.BOOL, .{} },
        .{ "inspectionName", ?objc.NSString, .{} },
        .{ "loadBackgroundContentWithCompletionHandler:", void, .{?*anyopaque} },
        .{ "loaded", objc.BOOL, .{} },
        .{ "menuItemsForTab:", Object, .{WKWebExtensionTab} },
        .{ "openTabs", ?*anyopaque, .{} },
        .{ "openWindows", Object, .{} },
        .{ "optionsPageURL", ?Foundation.NSURL, .{} },
        .{ "overrideNewTabPageURL", ?Foundation.NSURL, .{} },
        .{ "performActionForTab:", void, .{?WKWebExtensionTab} },
        .{ "performCommand:", void, .{WKWebExtensionCommand} },
        .{ "performCommandForEvent:", objc.BOOL, .{AppKit.NSEvent} },
        .{ "permissionStatusForMatchPattern:", WKWebExtensionContext.PermissionStatus, .{WKWebExtensionMatchPattern} },
        .{ "permissionStatusForMatchPattern:inTab:", WKWebExtensionContext.PermissionStatus, .{ WKWebExtensionMatchPattern, ?WKWebExtensionTab } },
        .{ "permissionStatusForPermission:", WKWebExtensionContext.PermissionStatus, .{objc.NSString} },
        .{ "permissionStatusForPermission:inTab:", WKWebExtensionContext.PermissionStatus, .{ objc.NSString, ?WKWebExtensionTab } },
        .{ "permissionStatusForURL:", WKWebExtensionContext.PermissionStatus, .{Foundation.NSURL} },
        .{ "permissionStatusForURL:inTab:", WKWebExtensionContext.PermissionStatus, .{ Foundation.NSURL, ?WKWebExtensionTab } },
        .{ "setBaseURL:", void, .{Foundation.NSURL} },
        .{ "setDeniedPermissionMatchPatterns:", void, .{Object} },
        .{ "setDeniedPermissions:", void, .{Object} },
        .{ "setGrantedPermissionMatchPatterns:", void, .{Object} },
        .{ "setGrantedPermissions:", void, .{Object} },
        .{ "setHasAccessToPrivateData:", void, .{objc.BOOL} },
        .{ "setHasRequestedOptionalAccessToAllHosts:", void, .{objc.BOOL} },
        .{ "setInspectable:", void, .{objc.BOOL} },
        .{ "setInspectionName:", void, .{?objc.NSString} },
        .{ "setPermissionStatus:forMatchPattern:", void, .{ WKWebExtensionContext.PermissionStatus, WKWebExtensionMatchPattern } },
        .{ "setPermissionStatus:forMatchPattern:expirationDate:", void, .{ WKWebExtensionContext.PermissionStatus, WKWebExtensionMatchPattern, ?Foundation.NSDate } },
        .{ "setPermissionStatus:forPermission:", void, .{ WKWebExtensionContext.PermissionStatus, objc.NSString } },
        .{ "setPermissionStatus:forPermission:expirationDate:", void, .{ WKWebExtensionContext.PermissionStatus, objc.NSString, ?Foundation.NSDate } },
        .{ "setPermissionStatus:forURL:", void, .{ WKWebExtensionContext.PermissionStatus, Foundation.NSURL } },
        .{ "setPermissionStatus:forURL:expirationDate:", void, .{ WKWebExtensionContext.PermissionStatus, Foundation.NSURL, ?Foundation.NSDate } },
        .{ "setUniqueIdentifier:", void, .{objc.NSString} },
        .{ "setUnsupportedAPIs:", void, .{objc.NSString} },
        .{ "uniqueIdentifier", objc.NSString, .{} },
        .{ "unsupportedAPIs", objc.NSString, .{} },
        .{ "userGesturePerformedInTab:", void, .{WKWebExtensionTab} },
        .{ "webExtension", WKWebExtension, .{} },
        .{ "webExtensionController", ?WKWebExtensionController, .{} },
        .{ "webViewConfiguration", ?WKWebViewConfiguration, .{} },
    };

    pub fn send(self: WKWebExtensionContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initForExtension:", Object, .{WKWebExtension} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WKWebExtensionContext", class_methods, selector, args);
    }

    pub const PermissionStatus = enum(i64) {
        deniedExplicitly = -3,
        deniedImplicitly = -2,
        requestedImplicitly = -1,
        unknown = 0,
        requestedExplicitly = 1,
        grantedImplicitly = 2,
        grantedExplicitly = 3,
    };
};

pub const WKWebExtensionController = struct {
    obj: Object,

    pub const methods = .{
        .{ "configuration", WKWebExtensionControllerConfiguration, .{} },
        .{ "delegate", ?WKWebExtensionControllerDelegate, .{} },
        .{ "didChangeTabProperties:forTab:", void, .{ objc.NSInteger, WKWebExtensionTab } },
        .{ "didCloseWindow:", void, .{WKWebExtensionWindow} },
        .{ "didDeselectTabs:", void, .{Object} },
        .{ "didFocusWindow:", void, .{?WKWebExtensionWindow} },
        .{ "didOpenTab:", void, .{WKWebExtensionTab} },
        .{ "didOpenWindow:", void, .{WKWebExtensionWindow} },
        .{ "didReplaceTab:withTab:", void, .{ WKWebExtensionTab, WKWebExtensionTab } },
        .{ "didSelectTabs:", void, .{Object} },
        .{ "extensionContextForExtension:", ?WKWebExtensionContext, .{WKWebExtension} },
        .{ "extensionContextForURL:", ?WKWebExtensionContext, .{Foundation.NSURL} },
        .{ "extensionContexts", WKWebExtensionContext, .{} },
        .{ "extensions", WKWebExtension, .{} },
        .{ "fetchDataRecordOfTypes:forExtensionContext:completionHandler:", void, .{ objc.NSString, WKWebExtensionContext, ?*anyopaque } },
        .{ "fetchDataRecordsOfTypes:completionHandler:", void, .{ objc.NSString, ?*anyopaque } },
        .{ "loadExtensionContext:error:", void, .{WKWebExtensionContext} },
        .{ "removeDataOfTypes:fromDataRecords:completionHandler:", void, .{ objc.NSString, Object, ?*anyopaque } },
        .{ "setDelegate:", void, .{?WKWebExtensionControllerDelegate} },
        .{ "unloadExtensionContext:error:", void, .{WKWebExtensionContext} },
    };

    pub fn send(self: WKWebExtensionController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "allExtensionDataTypes", objc.NSString, .{} },
        .{ "init", Object, .{} },
        .{ "initWithConfiguration:", Object, .{WKWebExtensionControllerConfiguration} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WKWebExtensionController", class_methods, selector, args);
    }
};

pub const WKWebExtensionControllerConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "defaultWebsiteDataStore", WKWebsiteDataStore, .{} },
        .{ "identifier", ?Foundation.NSUUID, .{} },
        .{ "persistent", objc.BOOL, .{} },
        .{ "setDefaultWebsiteDataStore:", void, .{WKWebsiteDataStore} },
        .{ "setWebViewConfiguration:", void, .{WKWebViewConfiguration} },
        .{ "webViewConfiguration", WKWebViewConfiguration, .{} },
    };

    pub fn send(self: WKWebExtensionControllerConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "configurationWithIdentifier:", Object, .{Foundation.NSUUID} },
        .{ "defaultConfiguration", ?*anyopaque, .{} },
        .{ "nonPersistentConfiguration", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WKWebExtensionControllerConfiguration", class_methods, selector, args);
    }
};

pub const WKWebExtensionDataRecord = struct {
    obj: Object,

    pub const methods = .{
        .{ "containedDataTypes", objc.NSString, .{} },
        .{ "displayName", objc.NSString, .{} },
        .{ "errors", Object, .{} },
        .{ "sizeInBytesOfTypes:", objc.NSInteger, .{objc.NSString} },
        .{ "totalSizeInBytes", objc.NSInteger, .{} },
        .{ "uniqueIdentifier", objc.NSString, .{} },
    };

    pub fn send(self: WKWebExtensionDataRecord, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKWebExtensionMatchPattern = struct {
    obj: Object,

    pub const methods = .{
        .{ "host", ?objc.NSString, .{} },
        .{ "matchesAllHosts", objc.BOOL, .{} },
        .{ "matchesAllURLs", objc.BOOL, .{} },
        .{ "matchesPattern:", objc.BOOL, .{?WKWebExtensionMatchPattern} },
        .{ "matchesPattern:options:", objc.BOOL, .{ ?WKWebExtensionMatchPattern, objc.NSInteger } },
        .{ "matchesURL:", objc.BOOL, .{?Foundation.NSURL} },
        .{ "matchesURL:options:", objc.BOOL, .{ ?Foundation.NSURL, objc.NSInteger } },
        .{ "path", ?objc.NSString, .{} },
        .{ "scheme", ?objc.NSString, .{} },
        .{ "string", objc.NSString, .{} },
    };

    pub fn send(self: WKWebExtensionMatchPattern, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "allHostsAndSchemesMatchPattern", ?*anyopaque, .{} },
        .{ "allURLsMatchPattern", ?*anyopaque, .{} },
        .{ "initWithScheme:host:path:error:", Object, .{ objc.NSString, objc.NSString, objc.NSString } },
        .{ "initWithString:error:", Object, .{objc.NSString} },
        .{ "registerCustomURLScheme:", void, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WKWebExtensionMatchPattern", class_methods, selector, args);
    }
};

pub const WKWebExtensionMessagePort = struct {
    obj: Object,

    pub const methods = .{
        .{ "applicationIdentifier", ?objc.NSString, .{} },
        .{ "disconnect", void, .{} },
        .{ "disconnectHandler", void, .{} },
        .{ "disconnectWithError:", void, .{?*anyopaque} },
        .{ "disconnected", objc.BOOL, .{} },
        .{ "messageHandler", void, .{} },
        .{ "sendMessage:completionHandler:", void, .{ ?Any, ?*anyopaque } },
        .{ "setDisconnectHandler:", void, .{void} },
        .{ "setMessageHandler:", void, .{void} },
    };

    pub fn send(self: WKWebExtensionMessagePort, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKWebExtensionTabConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "index", objc.NSInteger, .{} },
        .{ "parentTab", ?WKWebExtensionTab, .{} },
        .{ "shouldAddToSelection", objc.BOOL, .{} },
        .{ "shouldBeActive", objc.BOOL, .{} },
        .{ "shouldBeMuted", objc.BOOL, .{} },
        .{ "shouldBePinned", objc.BOOL, .{} },
        .{ "shouldReaderModeBeActive", objc.BOOL, .{} },
        .{ "url", ?Foundation.NSURL, .{} },
        .{ "window", ?WKWebExtensionWindow, .{} },
    };

    pub fn send(self: WKWebExtensionTabConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKWebExtensionWindowConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "frame", NSRect, .{} },
        .{ "shouldBeFocused", objc.BOOL, .{} },
        .{ "shouldBePrivate", objc.BOOL, .{} },
        .{ "tabURLs", Object, .{} },
        .{ "tabs", Object, .{} },
        .{ "windowState", WKWebExtension.WindowState, .{} },
        .{ "windowType", WKWebExtension.WindowType, .{} },
    };

    pub fn send(self: WKWebExtensionWindowConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKWebView = struct {
    obj: Object,

    pub const Super = AppKit.NSView;
    pub const methods = .{
        .{ "UIDelegate", ?WKUIDelegate, .{} },
        .{ "URL", ?Foundation.NSURL, .{} },
        .{ "allowsBackForwardNavigationGestures", objc.BOOL, .{} },
        .{ "allowsLinkPreview", objc.BOOL, .{} },
        .{ "allowsMagnification", objc.BOOL, .{} },
        .{ "backForwardList", WKBackForwardList, .{} },
        .{ "cameraCaptureState", WKMediaCaptureState, .{} },
        .{ "canGoBack", objc.BOOL, .{} },
        .{ "canGoForward", objc.BOOL, .{} },
        .{ "certificateChain", Object, .{} },
        .{ "closeAllMediaPresentations", void, .{} },
        .{ "closeAllMediaPresentationsWithCompletionHandler:", void, .{?*anyopaque} },
        .{ "configuration", WKWebViewConfiguration, .{} },
        .{ "customUserAgent", ?objc.NSString, .{} },
        .{ "estimatedProgress", f64, .{} },
        .{ "evaluateJavaScript:completionHandler:", void, .{ objc.NSString, ?*anyopaque } },
        .{ "fetchDataOfTypes:completionHandler:", void, .{ objc.NSInteger, ?*anyopaque } },
        .{ "fullscreenState", WKWebView.FullscreenState, .{} },
        .{ "goBack", ?WKNavigation, .{} },
        .{ "goBack:", void, .{?Any} },
        .{ "goForward", ?WKNavigation, .{} },
        .{ "goForward:", void, .{?Any} },
        .{ "goToBackForwardListItem:", ?WKNavigation, .{WKBackForwardListItem} },
        .{ "hasOnlySecureContent", objc.BOOL, .{} },
        .{ "inspectable", objc.BOOL, .{} },
        .{ "interactionState", ?Any, .{} },
        .{ "isBlockedByScreenTime", objc.BOOL, .{} },
        .{ "loadData:MIMEType:characterEncodingName:baseURL:", ?WKNavigation, .{ Foundation.NSData, objc.NSString, objc.NSString, Foundation.NSURL } },
        .{ "loadFileRequest:allowingReadAccessToURL:", WKNavigation, .{ Foundation.NSURLRequest, Foundation.NSURL } },
        .{ "loadFileURL:allowingReadAccessToURL:", ?WKNavigation, .{ Foundation.NSURL, Foundation.NSURL } },
        .{ "loadHTMLString:baseURL:", ?WKNavigation, .{ objc.NSString, ?Foundation.NSURL } },
        .{ "loadRequest:", ?WKNavigation, .{Foundation.NSURLRequest} },
        .{ "loadSimulatedRequest:response:responseData:", WKNavigation, .{ Foundation.NSURLRequest, Foundation.URLResponse, Foundation.NSData } },
        .{ "loadSimulatedRequest:responseHTMLString:", WKNavigation, .{ Foundation.NSURLRequest, objc.NSString } },
        .{ "loadSimulatedRequest:withResponse:responseData:", WKNavigation, .{ Foundation.NSURLRequest, Foundation.URLResponse, Foundation.NSData } },
        .{ "loadSimulatedRequest:withResponseHTMLString:", WKNavigation, .{ Foundation.NSURLRequest, objc.NSString } },
        .{ "loading", objc.BOOL, .{} },
        .{ "magnification", objc.CGFloat, .{} },
        .{ "maximumViewportInset", NSEdgeInsets, .{} },
        .{ "mediaType", ?objc.NSString, .{} },
        .{ "microphoneCaptureState", WKMediaCaptureState, .{} },
        .{ "minimumViewportInset", NSEdgeInsets, .{} },
        .{ "navigationDelegate", ?WKNavigationDelegate, .{} },
        .{ "obscuredContentInsets", NSEdgeInsets, .{} },
        .{ "pageZoom", objc.CGFloat, .{} },
        .{ "pauseAllMediaPlaybackWithCompletionHandler:", void, .{?*anyopaque} },
        .{ "printOperationWithPrintInfo:", AppKit.NSPrintOperation, .{AppKit.NSPrintInfo} },
        .{ "reload", ?WKNavigation, .{} },
        .{ "reload:", void, .{?Any} },
        .{ "reloadFromOrigin", ?WKNavigation, .{} },
        .{ "reloadFromOrigin:", void, .{?Any} },
        .{ "requestMediaPlaybackStateWithCompletionHandler:", void, .{?*anyopaque} },
        .{ "restoreData:completionHandler:", void, .{ Foundation.NSData, ?*anyopaque } },
        .{ "resumeDownloadFromResumeData:completionHandler:", void, .{ Foundation.NSData, ?*anyopaque } },
        .{ "serverTrust", ?*anyopaque, .{} },
        .{ "setAllMediaPlaybackSuspended:completionHandler:", void, .{ objc.BOOL, ?*anyopaque } },
        .{ "setAllowsBackForwardNavigationGestures:", void, .{objc.BOOL} },
        .{ "setAllowsLinkPreview:", void, .{objc.BOOL} },
        .{ "setAllowsMagnification:", void, .{objc.BOOL} },
        .{ "setCameraCaptureState:completionHandler:", void, .{ WKMediaCaptureState, ?*anyopaque } },
        .{ "setCustomUserAgent:", void, .{?objc.NSString} },
        .{ "setInspectable:", void, .{objc.BOOL} },
        .{ "setInteractionState:", void, .{?Any} },
        .{ "setMagnification:", void, .{objc.CGFloat} },
        .{ "setMagnification:centeredAtPoint:", void, .{ objc.CGFloat, NSPoint } },
        .{ "setMaximumViewportInset:", void, .{NSEdgeInsets} },
        .{ "setMediaType:", void, .{?objc.NSString} },
        .{ "setMicrophoneCaptureState:completionHandler:", void, .{ WKMediaCaptureState, ?*anyopaque } },
        .{ "setMinimumViewportInset:", void, .{NSEdgeInsets} },
        .{ "setMinimumViewportInset:maximumViewportInset:", void, .{ NSEdgeInsets, NSEdgeInsets } },
        .{ "setNavigationDelegate:", void, .{?WKNavigationDelegate} },
        .{ "setObscuredContentInsets:", void, .{NSEdgeInsets} },
        .{ "setPageZoom:", void, .{objc.CGFloat} },
        .{ "setUIDelegate:", void, .{?WKUIDelegate} },
        .{ "setUnderPageBackgroundColor:", void, .{AppKit.NSColor} },
        .{ "startDownloadUsingRequest:completionHandler:", void, .{ Foundation.NSURLRequest, ?*anyopaque } },
        .{ "stopLoading", void, .{} },
        .{ "stopLoading:", void, .{?Any} },
        .{ "takeSnapshotWithConfiguration:completionHandler:", void, .{ ?WKSnapshotConfiguration, ?*anyopaque } },
        .{ "themeColor", ?AppKit.NSColor, .{} },
        .{ "title", ?objc.NSString, .{} },
        .{ "underPageBackgroundColor", AppKit.NSColor, .{} },
        .{ "writingToolsActive", objc.BOOL, .{} },
    };

    pub fn send(self: WKWebView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "handlesURLScheme:", objc.BOOL, .{objc.NSString} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithFrame:configuration:", Object, .{ NSRect, WKWebViewConfiguration } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WKWebView", class_methods, selector, args);
    }

    pub const FullscreenState = enum(i64) {
        notInFullscreen = 0,
        enteringFullscreen = 1,
        inFullscreen = 2,
        exitingFullscreen = 3,
    };
};

pub const WKWebViewConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowsAirPlayForMediaPlayback", objc.BOOL, .{} },
        .{ "allowsInlinePredictions", objc.BOOL, .{} },
        .{ "applicationNameForUserAgent", ?objc.NSString, .{} },
        .{ "defaultWebpagePreferences", WKWebpagePreferences, .{} },
        .{ "limitsNavigationsToAppBoundDomains", objc.BOOL, .{} },
        .{ "mediaTypesRequiringUserActionForPlayback", objc.NSInteger, .{} },
        .{ "preferences", WKPreferences, .{} },
        .{ "processPool", Object, .{} },
        .{ "setAllowsAirPlayForMediaPlayback:", void, .{objc.BOOL} },
        .{ "setAllowsInlinePredictions:", void, .{objc.BOOL} },
        .{ "setApplicationNameForUserAgent:", void, .{?objc.NSString} },
        .{ "setDefaultWebpagePreferences:", void, .{WKWebpagePreferences} },
        .{ "setLimitsNavigationsToAppBoundDomains:", void, .{objc.BOOL} },
        .{ "setMediaTypesRequiringUserActionForPlayback:", void, .{objc.NSInteger} },
        .{ "setPreferences:", void, .{WKPreferences} },
        .{ "setProcessPool:", void, .{Object} },
        .{ "setShowsSystemScreenTimeBlockingView:", void, .{objc.BOOL} },
        .{ "setSupportsAdaptiveImageGlyph:", void, .{objc.BOOL} },
        .{ "setSuppressesIncrementalRendering:", void, .{objc.BOOL} },
        .{ "setURLSchemeHandler:forURLScheme:", void, .{ ?WKURLSchemeHandler, objc.NSString } },
        .{ "setUpgradeKnownHostsToHTTPS:", void, .{objc.BOOL} },
        .{ "setUserContentController:", void, .{WKUserContentController} },
        .{ "setUserInterfaceDirectionPolicy:", void, .{WKUserInterfaceDirectionPolicy} },
        .{ "setWebExtensionController:", void, .{?WKWebExtensionController} },
        .{ "setWebsiteDataStore:", void, .{WKWebsiteDataStore} },
        .{ "showsSystemScreenTimeBlockingView", objc.BOOL, .{} },
        .{ "supportsAdaptiveImageGlyph", objc.BOOL, .{} },
        .{ "suppressesIncrementalRendering", objc.BOOL, .{} },
        .{ "upgradeKnownHostsToHTTPS", objc.BOOL, .{} },
        .{ "urlSchemeHandlerForURLScheme:", ?WKURLSchemeHandler, .{objc.NSString} },
        .{ "userContentController", WKUserContentController, .{} },
        .{ "userInterfaceDirectionPolicy", WKUserInterfaceDirectionPolicy, .{} },
        .{ "webExtensionController", ?WKWebExtensionController, .{} },
        .{ "websiteDataStore", WKWebsiteDataStore, .{} },
    };

    pub fn send(self: WKWebViewConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKWebpagePreferences = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowsContentJavaScript", objc.BOOL, .{} },
        .{ "lockdownModeEnabled", objc.BOOL, .{} },
        .{ "preferredContentMode", WKWebpagePreferences.ContentMode, .{} },
        .{ "preferredHTTPSNavigationPolicy", WKWebpagePreferences.UpgradeToHTTPSPolicy, .{} },
        .{ "setAllowsContentJavaScript:", void, .{objc.BOOL} },
        .{ "setLockdownModeEnabled:", void, .{objc.BOOL} },
        .{ "setPreferredContentMode:", void, .{WKWebpagePreferences.ContentMode} },
        .{ "setPreferredHTTPSNavigationPolicy:", void, .{WKWebpagePreferences.UpgradeToHTTPSPolicy} },
    };

    pub fn send(self: WKWebpagePreferences, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const ContentMode = enum(i64) {
        recommended = 0,
        mobile = 1,
        desktop = 2,
    };
    pub const UpgradeToHTTPSPolicy = enum(i64) {
        keepAsRequested = 0,
        automaticFallbackToHTTP = 1,
        userMediatedFallbackToHTTP = 2,
        errorOnFailure = 3,
    };
};

pub const WKWebsiteDataRecord = struct {
    obj: Object,

    pub const methods = .{
        .{ "dataTypes", objc.NSString, .{} },
        .{ "displayName", objc.NSString, .{} },
    };

    pub fn send(self: WKWebsiteDataRecord, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WKWebsiteDataStore = struct {
    obj: Object,

    pub const methods = .{
        .{ "fetchDataOfTypes:completionHandler:", void, .{ objc.NSString, ?*anyopaque } },
        .{ "fetchDataRecordsOfTypes:completionHandler:", void, .{ objc.NSString, ?*anyopaque } },
        .{ "httpCookieStore", WKHTTPCookieStore, .{} },
        .{ "identifier", ?Foundation.NSUUID, .{} },
        .{ "persistent", objc.BOOL, .{} },
        .{ "removeDataOfTypes:forDataRecords:completionHandler:", void, .{ objc.NSString, Object, ?*anyopaque } },
        .{ "removeDataOfTypes:modifiedSince:completionHandler:", void, .{ objc.NSString, Foundation.NSDate, ?*anyopaque } },
        .{ "restoreData:completionHandler:", void, .{ Foundation.NSData, ?*anyopaque } },
    };

    pub fn send(self: WKWebsiteDataStore, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "allWebsiteDataTypes", objc.NSString, .{} },
        .{ "dataStoreForIdentifier:", Object, .{Foundation.NSUUID} },
        .{ "defaultDataStore", WKWebsiteDataStore, .{} },
        .{ "fetchAllDataStoreIdentifiers:", void, .{?*anyopaque} },
        .{ "nonPersistentDataStore", WKWebsiteDataStore, .{} },
        .{ "removeDataStoreForIdentifier:completionHandler:", void, .{ Foundation.NSUUID, ?*anyopaque } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WKWebsiteDataStore", class_methods, selector, args);
    }
};

pub const WKWindowFeatures = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowsResizing", ?Foundation.NSNumber, .{} },
        .{ "height", ?Foundation.NSNumber, .{} },
        .{ "menuBarVisibility", ?Foundation.NSNumber, .{} },
        .{ "statusBarVisibility", ?Foundation.NSNumber, .{} },
        .{ "toolbarsVisibility", ?Foundation.NSNumber, .{} },
        .{ "width", ?Foundation.NSNumber, .{} },
        .{ "x", ?Foundation.NSNumber, .{} },
        .{ "y", ?Foundation.NSNumber, .{} },
    };

    pub fn send(self: WKWindowFeatures, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WebArchive = struct {
    obj: Object,

    pub const methods = .{
        .{ "data", Foundation.NSData, .{} },
        .{ "mainResource", WebResource, .{} },
        .{ "subframeArchives", Object, .{} },
        .{ "subresources", Object, .{} },
    };

    pub fn send(self: WebArchive, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithData:", Object, .{Foundation.NSData} },
        .{ "initWithMainResource:subresources:subframeArchives:", Object, .{ WebResource, Object, Object } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WebArchive", class_methods, selector, args);
    }
};

pub const WebBackForwardList = struct {
    obj: Object,

    pub const methods = .{
        .{ "addItem:", void, .{WebHistoryItem} },
        .{ "backItem", WebHistoryItem, .{} },
        .{ "backListCount", i32, .{} },
        .{ "backListWithLimit:", ?*anyopaque, .{i32} },
        .{ "capacity", i32, .{} },
        .{ "containsItem:", objc.BOOL, .{WebHistoryItem} },
        .{ "currentItem", WebHistoryItem, .{} },
        .{ "forwardItem", WebHistoryItem, .{} },
        .{ "forwardListCount", i32, .{} },
        .{ "forwardListWithLimit:", ?*anyopaque, .{i32} },
        .{ "goBack", void, .{} },
        .{ "goForward", void, .{} },
        .{ "goToItem:", void, .{WebHistoryItem} },
        .{ "itemAtIndex:", ?WebHistoryItem, .{i32} },
        .{ "pageCacheSize", objc.NSInteger, .{} },
        .{ "setCapacity:", void, .{i32} },
        .{ "setPageCacheSize:", void, .{objc.NSInteger} },
    };

    pub fn send(self: WebBackForwardList, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const WebDataSource = struct {
    obj: Object,

    pub const methods = .{
        .{ "addSubresource:", void, .{WebResource} },
        .{ "data", Foundation.NSData, .{} },
        .{ "initialRequest", Foundation.NSURLRequest, .{} },
        .{ "loading", objc.BOOL, .{} },
        .{ "mainResource", WebResource, .{} },
        .{ "pageTitle", objc.NSString, .{} },
        .{ "representation", WebDocumentRepresentation, .{} },
        .{ "request", Foundation.NSMutableURLRequest, .{} },
        .{ "response", Foundation.URLResponse, .{} },
        .{ "subresourceForURL:", ?WebResource, .{Foundation.NSURL} },
        .{ "subresources", Object, .{} },
        .{ "textEncodingName", objc.NSString, .{} },
        .{ "unreachableURL", Foundation.NSURL, .{} },
        .{ "webArchive", WebArchive, .{} },
        .{ "webFrame", WebFrame, .{} },
    };

    pub fn send(self: WebDataSource, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithRequest:", Object, .{Foundation.NSURLRequest} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WebDataSource", class_methods, selector, args);
    }
};

pub const WebFrame = struct {
    obj: Object,

    pub const methods = .{
        .{ "DOMDocument", DOMDocument, .{} },
        .{ "childFrames", Object, .{} },
        .{ "dataSource", ?WebDataSource, .{} },
        .{ "findFrameNamed:", ?WebFrame, .{objc.NSString} },
        .{ "frameElement", DOMHTMLElement, .{} },
        .{ "frameView", WebFrameView, .{} },
        .{ "globalContext", objc.NSString, .{} },
        .{ "javaScriptContext", Object, .{} },
        .{ "loadAlternateHTMLString:baseURL:forUnreachableURL:", void, .{ objc.NSString, Foundation.NSURL, Foundation.NSURL } },
        .{ "loadArchive:", void, .{WebArchive} },
        .{ "loadData:MIMEType:textEncodingName:baseURL:", void, .{ Foundation.NSData, objc.NSString, objc.NSString, Foundation.NSURL } },
        .{ "loadHTMLString:baseURL:", void, .{ objc.NSString, Foundation.NSURL } },
        .{ "loadRequest:", void, .{Foundation.NSURLRequest} },
        .{ "name", objc.NSString, .{} },
        .{ "parentFrame", WebFrame, .{} },
        .{ "provisionalDataSource", WebDataSource, .{} },
        .{ "reload", void, .{} },
        .{ "reloadFromOrigin", void, .{} },
        .{ "stopLoading", void, .{} },
        .{ "webView", WebView, .{} },
        .{ "windowObject", WebScriptObject, .{} },
    };

    pub fn send(self: WebFrame, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithName:webFrameView:webView:", Object, .{ objc.NSString, WebFrameView, WebView } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WebFrame", class_methods, selector, args);
    }
};

pub const WebFrameView = struct {
    obj: Object,

    pub const Super = AppKit.NSView;
    pub const methods = .{
        .{ "allowsScrolling", objc.BOOL, .{} },
        .{ "canPrintHeadersAndFooters", objc.BOOL, .{} },
        .{ "documentView", WebDocumentView, .{} },
        .{ "documentViewShouldHandlePrint", objc.BOOL, .{} },
        .{ "printDocumentView", void, .{} },
        .{ "printOperationWithPrintInfo:", ?AppKit.NSPrintOperation, .{AppKit.NSPrintInfo} },
        .{ "setAllowsScrolling:", void, .{objc.BOOL} },
        .{ "webFrame", WebFrame, .{} },
    };

    pub fn send(self: WebFrameView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const WebHistory = struct {
    obj: Object,

    pub const methods = .{
        .{ "addItems:", void, .{Object} },
        .{ "historyAgeInDaysLimit", i32, .{} },
        .{ "historyItemLimit", i32, .{} },
        .{ "itemForURL:", ?WebHistoryItem, .{Foundation.NSURL} },
        .{ "loadFromURL:error:", void, .{Foundation.NSURL} },
        .{ "orderedItemsLastVisitedOnDay:", ?*anyopaque, .{Object} },
        .{ "orderedLastVisitedDays", Object, .{} },
        .{ "removeAllItems", void, .{} },
        .{ "removeItems:", void, .{Object} },
        .{ "saveToURL:error:", void, .{Foundation.NSURL} },
        .{ "setHistoryAgeInDaysLimit:", void, .{i32} },
        .{ "setHistoryItemLimit:", void, .{i32} },
    };

    pub fn send(self: WebHistory, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "optionalSharedHistory", ?WebHistory, .{} },
        .{ "setOptionalSharedHistory:", void, .{WebHistory} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WebHistory", class_methods, selector, args);
    }
};

pub const WebHistoryItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "URLString", objc.NSString, .{} },
        .{ "alternateTitle", objc.NSString, .{} },
        .{ "icon", AppKit.NSImage, .{} },
        .{ "lastVisitedTimeInterval", TimeInterval, .{} },
        .{ "originalURLString", objc.NSString, .{} },
        .{ "setAlternateTitle:", void, .{objc.NSString} },
        .{ "title", objc.NSString, .{} },
    };

    pub fn send(self: WebHistoryItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithURLString:title:lastVisitedTimeInterval:", Object, .{ objc.NSString, objc.NSString, TimeInterval } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WebHistoryItem", class_methods, selector, args);
    }
};

pub const WebPreferences = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowsAirPlayForMediaPlayback", objc.BOOL, .{} },
        .{ "allowsAnimatedImageLooping", objc.BOOL, .{} },
        .{ "allowsAnimatedImages", objc.BOOL, .{} },
        .{ "autosaves", objc.BOOL, .{} },
        .{ "cacheModel", WebCacheModel, .{} },
        .{ "cursiveFontFamily", objc.NSString, .{} },
        .{ "defaultFixedFontSize", i32, .{} },
        .{ "defaultFontSize", i32, .{} },
        .{ "defaultTextEncodingName", objc.NSString, .{} },
        .{ "fantasyFontFamily", objc.NSString, .{} },
        .{ "fixedFontFamily", objc.NSString, .{} },
        .{ "identifier", objc.NSString, .{} },
        .{ "javaEnabled", objc.BOOL, .{} },
        .{ "javaScriptCanOpenWindowsAutomatically", objc.BOOL, .{} },
        .{ "javaScriptEnabled", objc.BOOL, .{} },
        .{ "loadsImagesAutomatically", objc.BOOL, .{} },
        .{ "minimumFontSize", i32, .{} },
        .{ "minimumLogicalFontSize", i32, .{} },
        .{ "plugInsEnabled", objc.BOOL, .{} },
        .{ "privateBrowsingEnabled", objc.BOOL, .{} },
        .{ "sansSerifFontFamily", objc.NSString, .{} },
        .{ "serifFontFamily", objc.NSString, .{} },
        .{ "setAllowsAirPlayForMediaPlayback:", void, .{objc.BOOL} },
        .{ "setAllowsAnimatedImageLooping:", void, .{objc.BOOL} },
        .{ "setAllowsAnimatedImages:", void, .{objc.BOOL} },
        .{ "setAutosaves:", void, .{objc.BOOL} },
        .{ "setCacheModel:", void, .{WebCacheModel} },
        .{ "setCursiveFontFamily:", void, .{objc.NSString} },
        .{ "setDefaultFixedFontSize:", void, .{i32} },
        .{ "setDefaultFontSize:", void, .{i32} },
        .{ "setDefaultTextEncodingName:", void, .{objc.NSString} },
        .{ "setFantasyFontFamily:", void, .{objc.NSString} },
        .{ "setFixedFontFamily:", void, .{objc.NSString} },
        .{ "setJavaEnabled:", void, .{objc.BOOL} },
        .{ "setJavaScriptCanOpenWindowsAutomatically:", void, .{objc.BOOL} },
        .{ "setJavaScriptEnabled:", void, .{objc.BOOL} },
        .{ "setLoadsImagesAutomatically:", void, .{objc.BOOL} },
        .{ "setMinimumFontSize:", void, .{i32} },
        .{ "setMinimumLogicalFontSize:", void, .{i32} },
        .{ "setPlugInsEnabled:", void, .{objc.BOOL} },
        .{ "setPrivateBrowsingEnabled:", void, .{objc.BOOL} },
        .{ "setSansSerifFontFamily:", void, .{objc.NSString} },
        .{ "setSerifFontFamily:", void, .{objc.NSString} },
        .{ "setShouldPrintBackgrounds:", void, .{objc.BOOL} },
        .{ "setStandardFontFamily:", void, .{objc.NSString} },
        .{ "setSuppressesIncrementalRendering:", void, .{objc.BOOL} },
        .{ "setTabsToLinks:", void, .{objc.BOOL} },
        .{ "setUserStyleSheetEnabled:", void, .{objc.BOOL} },
        .{ "setUserStyleSheetLocation:", void, .{Foundation.NSURL} },
        .{ "setUsesPageCache:", void, .{objc.BOOL} },
        .{ "shouldPrintBackgrounds", objc.BOOL, .{} },
        .{ "standardFontFamily", objc.NSString, .{} },
        .{ "suppressesIncrementalRendering", objc.BOOL, .{} },
        .{ "tabsToLinks", objc.BOOL, .{} },
        .{ "userStyleSheetEnabled", objc.BOOL, .{} },
        .{ "userStyleSheetLocation", Foundation.NSURL, .{} },
        .{ "usesPageCache", objc.BOOL, .{} },
    };

    pub fn send(self: WebPreferences, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithIdentifier:", Object, .{objc.NSString} },
        .{ "standardPreferences", ?WebPreferences, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WebPreferences", class_methods, selector, args);
    }
};

pub const WebResource = struct {
    obj: Object,

    pub const methods = .{
        .{ "MIMEType", objc.NSString, .{} },
        .{ "URL", Foundation.NSURL, .{} },
        .{ "data", Foundation.NSData, .{} },
        .{ "frameName", objc.NSString, .{} },
        .{ "textEncodingName", objc.NSString, .{} },
    };

    pub fn send(self: WebResource, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithData:URL:MIMEType:textEncodingName:frameName:", Object, .{ Foundation.NSData, Foundation.NSURL, objc.NSString, objc.NSString, objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WebResource", class_methods, selector, args);
    }
};

pub const WebScriptObject = struct {
    obj: Object,

    pub const methods = .{
        .{ "JSObject", ?*anyopaque, .{} },
        .{ "JSValue", ?*anyopaque, .{} },
        .{ "callWebScriptMethod:withArguments:", ?Any, .{ objc.NSString, Object } },
        .{ "evaluateWebScript:", ?Any, .{objc.NSString} },
        .{ "removeWebScriptKey:", void, .{objc.NSString} },
        .{ "setException:", void, .{objc.NSString} },
        .{ "setWebScriptValueAtIndex:value:", void, .{ u32, Any } },
        .{ "stringRepresentation", ?objc.NSString, .{} },
        .{ "webScriptValueAtIndex:", ?Any, .{u32} },
    };

    pub fn send(self: WebScriptObject, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "throwException:", objc.BOOL, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WebScriptObject", class_methods, selector, args);
    }
};

pub const WebView = struct {
    obj: Object,

    pub const Super = AppKit.NSView;
    pub const methods = .{
        .{ "UIDelegate", WebUIDelegate, .{} },
        .{ "alignCenter:", void, .{?Any} },
        .{ "alignJustified:", void, .{?Any} },
        .{ "alignLeft:", void, .{?Any} },
        .{ "alignRight:", void, .{?Any} },
        .{ "applicationNameForUserAgent", objc.NSString, .{} },
        .{ "applyStyle:", void, .{DOMCSSStyleDeclaration} },
        .{ "backForwardList", WebBackForwardList, .{} },
        .{ "canGoBack", objc.BOOL, .{} },
        .{ "canGoForward", objc.BOOL, .{} },
        .{ "canMakeTextLarger", objc.BOOL, .{} },
        .{ "canMakeTextSmaller", objc.BOOL, .{} },
        .{ "canMakeTextStandardSize", objc.BOOL, .{} },
        .{ "changeAttributes:", void, .{?Any} },
        .{ "changeColor:", void, .{?Any} },
        .{ "changeDocumentBackgroundColor:", void, .{?Any} },
        .{ "changeFont:", void, .{?Any} },
        .{ "checkSpelling:", void, .{?Any} },
        .{ "close", void, .{} },
        .{ "computedStyleForElement:pseudoElement:", ?DOMCSSStyleDeclaration, .{ DOMElement, objc.NSString } },
        .{ "continuousSpellCheckingEnabled", objc.BOOL, .{} },
        .{ "copy:", void, .{?Any} },
        .{ "copyFont:", void, .{?Any} },
        .{ "customTextEncodingName", objc.NSString, .{} },
        .{ "customUserAgent", objc.NSString, .{} },
        .{ "cut:", void, .{?Any} },
        .{ "delete:", void, .{?Any} },
        .{ "deleteSelection", void, .{} },
        .{ "downloadDelegate", WebDownloadDelegate, .{} },
        .{ "drawsBackground", objc.BOOL, .{} },
        .{ "editable", objc.BOOL, .{} },
        .{ "editableDOMRangeForPoint:", ?DOMRange, .{NSPoint} },
        .{ "editingDelegate", WebEditingDelegate, .{} },
        .{ "elementAtPoint:", ?*anyopaque, .{NSPoint} },
        .{ "estimatedProgress", f64, .{} },
        .{ "frameLoadDelegate", WebFrameLoadDelegate, .{} },
        .{ "goBack", objc.BOOL, .{} },
        .{ "goBack:", void, .{?Any} },
        .{ "goForward", objc.BOOL, .{} },
        .{ "goForward:", void, .{?Any} },
        .{ "goToBackForwardItem:", objc.BOOL, .{WebHistoryItem} },
        .{ "groupName", objc.NSString, .{} },
        .{ "hostWindow", AppKit.NSWindow, .{} },
        .{ "loading", objc.BOOL, .{} },
        .{ "mainFrame", WebFrame, .{} },
        .{ "mainFrameDocument", DOMDocument, .{} },
        .{ "mainFrameIcon", AppKit.NSImage, .{} },
        .{ "mainFrameTitle", objc.NSString, .{} },
        .{ "mainFrameURL", objc.NSString, .{} },
        .{ "maintainsInactiveSelection", objc.BOOL, .{} },
        .{ "makeTextLarger:", void, .{?Any} },
        .{ "makeTextSmaller:", void, .{?Any} },
        .{ "makeTextStandardSize:", void, .{?Any} },
        .{ "mediaStyle", objc.NSString, .{} },
        .{ "moveDragCaretToPoint:", void, .{NSPoint} },
        .{ "moveToBeginningOfSentence:", void, .{?Any} },
        .{ "moveToBeginningOfSentenceAndModifySelection:", void, .{?Any} },
        .{ "moveToEndOfSentence:", void, .{?Any} },
        .{ "moveToEndOfSentenceAndModifySelection:", void, .{?Any} },
        .{ "overWrite:", void, .{?Any} },
        .{ "paste:", void, .{?Any} },
        .{ "pasteAsPlainText:", void, .{?Any} },
        .{ "pasteAsRichText:", void, .{?Any} },
        .{ "pasteFont:", void, .{?Any} },
        .{ "pasteboardTypesForElement:", ?*anyopaque, .{Object} },
        .{ "pasteboardTypesForSelection", Object, .{} },
        .{ "performFindPanelAction:", void, .{?Any} },
        .{ "policyDelegate", WebPolicyDelegate, .{} },
        .{ "preferences", WebPreferences, .{} },
        .{ "preferencesIdentifier", objc.NSString, .{} },
        .{ "reload:", void, .{?Any} },
        .{ "reloadFromOrigin:", void, .{?Any} },
        .{ "removeDragCaret", void, .{} },
        .{ "replaceSelectionWithArchive:", void, .{WebArchive} },
        .{ "replaceSelectionWithMarkupString:", void, .{objc.NSString} },
        .{ "replaceSelectionWithNode:", void, .{DOMNode} },
        .{ "replaceSelectionWithText:", void, .{objc.NSString} },
        .{ "resourceLoadDelegate", WebResourceLoadDelegate, .{} },
        .{ "searchFor:direction:caseSensitive:wrap:", objc.BOOL, .{ objc.NSString, objc.BOOL, objc.BOOL, objc.BOOL } },
        .{ "selectSentence:", void, .{?Any} },
        .{ "selectedDOMRange", DOMRange, .{} },
        .{ "selectedFrame", WebFrame, .{} },
        .{ "selectionAffinity", AppKit.NSSelectionAffinity, .{} },
        .{ "setApplicationNameForUserAgent:", void, .{objc.NSString} },
        .{ "setContinuousSpellCheckingEnabled:", void, .{objc.BOOL} },
        .{ "setCustomTextEncodingName:", void, .{objc.NSString} },
        .{ "setCustomUserAgent:", void, .{objc.NSString} },
        .{ "setDownloadDelegate:", void, .{WebDownloadDelegate} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "setEditable:", void, .{objc.BOOL} },
        .{ "setEditingDelegate:", void, .{WebEditingDelegate} },
        .{ "setFrameLoadDelegate:", void, .{WebFrameLoadDelegate} },
        .{ "setGroupName:", void, .{objc.NSString} },
        .{ "setHostWindow:", void, .{AppKit.NSWindow} },
        .{ "setMainFrameURL:", void, .{objc.NSString} },
        .{ "setMaintainsBackForwardList:", void, .{objc.BOOL} },
        .{ "setMediaStyle:", void, .{objc.NSString} },
        .{ "setPolicyDelegate:", void, .{WebPolicyDelegate} },
        .{ "setPreferences:", void, .{WebPreferences} },
        .{ "setPreferencesIdentifier:", void, .{objc.NSString} },
        .{ "setResourceLoadDelegate:", void, .{WebResourceLoadDelegate} },
        .{ "setSelectedDOMRange:affinity:", void, .{ DOMRange, AppKit.NSSelectionAffinity } },
        .{ "setShouldCloseWithWindow:", void, .{objc.BOOL} },
        .{ "setShouldUpdateWhileOffscreen:", void, .{objc.BOOL} },
        .{ "setSmartInsertDeleteEnabled:", void, .{objc.BOOL} },
        .{ "setTextSizeMultiplier:", void, .{f32} },
        .{ "setTypingStyle:", void, .{DOMCSSStyleDeclaration} },
        .{ "setUIDelegate:", void, .{WebUIDelegate} },
        .{ "shouldCloseWithWindow", objc.BOOL, .{} },
        .{ "shouldUpdateWhileOffscreen", objc.BOOL, .{} },
        .{ "showGuessPanel:", void, .{?Any} },
        .{ "smartInsertDeleteEnabled", objc.BOOL, .{} },
        .{ "spellCheckerDocumentTag", objc.NSInteger, .{} },
        .{ "startSpeaking:", void, .{?Any} },
        .{ "stopLoading:", void, .{?Any} },
        .{ "stopSpeaking:", void, .{?Any} },
        .{ "stringByEvaluatingJavaScriptFromString:", ?objc.NSString, .{objc.NSString} },
        .{ "styleDeclarationWithText:", ?DOMCSSStyleDeclaration, .{objc.NSString} },
        .{ "supportsTextEncoding", objc.BOOL, .{} },
        .{ "takeStringURLFrom:", void, .{?Any} },
        .{ "textSizeMultiplier", f32, .{} },
        .{ "toggleContinuousSpellChecking:", void, .{?Any} },
        .{ "toggleSmartInsertDelete:", void, .{?Any} },
        .{ "typingStyle", DOMCSSStyleDeclaration, .{} },
        .{ "undoManager", Foundation.UndoManager, .{} },
        .{ "userAgentForURL:", ?objc.NSString, .{Foundation.NSURL} },
        .{ "windowScriptObject", WebScriptObject, .{} },
        .{ "writeElement:withPasteboardTypes:toPasteboard:", void, .{ Object, Object, AppKit.NSPasteboard } },
        .{ "writeSelectionWithPasteboardTypes:toPasteboard:", void, .{ Object, AppKit.NSPasteboard } },
    };

    pub fn send(self: WebView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "MIMETypesShownAsHTML", ?*anyopaque, .{} },
        .{ "URLFromPasteboard:", ?Foundation.NSURL, .{AppKit.NSPasteboard} },
        .{ "URLTitleFromPasteboard:", ?objc.NSString, .{AppKit.NSPasteboard} },
        .{ "canShowMIMEType:", objc.BOOL, .{objc.NSString} },
        .{ "canShowMIMETypeAsHTML:", objc.BOOL, .{objc.NSString} },
        .{ "initWithFrame:frameName:groupName:", Object, .{ NSRect, objc.NSString, objc.NSString } },
        .{ "registerURLSchemeAsLocal:", void, .{objc.NSString} },
        .{ "registerViewClass:representationClass:forMIMEType:", void, .{ AnyClass, AnyClass, objc.NSString } },
        .{ "setMIMETypesShownAsHTML:", void, .{Object} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("WebView", class_methods, selector, args);
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
