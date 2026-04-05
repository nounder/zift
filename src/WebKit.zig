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

pub const WKAudiovisualMediaTypes = struct {
    pub const audio: i64 = 1;
    pub const video: i64 = 2;
    pub const all: i64 = 18446744073709551615;
};

pub const WKWebViewDataType = struct {
    pub const sessionStorage: i64 = 1;
};

pub const WebDragDestinationAction = struct {
    pub const DHTML: i64 = 1;
    pub const edit: i64 = 2;
    pub const load: i64 = 4;
    pub const any: i64 = 4294967295;
};

pub const WebDragSourceAction = struct {
    pub const DHTML: i64 = 1;
    pub const image: i64 = 2;
    pub const link: i64 = 4;
    pub const selection: i64 = 8;
    pub const any: i64 = 4294967295;
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
    pub const Super = DOMObject;
    pub const class = objc.class("DOMAbstractView");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "document", DOMDocument, .{} },
    };
};

pub const DOMAttr = struct {
    pub const Super = DOMNode;
    pub const class = objc.class("DOMAttr");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "name", objc.NSString, .{} },
        .{ "ownerElement", DOMElement, .{} },
        .{ "setValue:", void, .{objc.NSString} },
        .{ "specified", objc.BOOL, .{} },
        .{ "style", DOMCSSStyleDeclaration, .{} },
        .{ "value", objc.NSString, .{} },
    };
};

pub const DOMBlob = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMBlob");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "size", u64, .{} },
    };
};

pub const DOMCSSCharsetRule = struct {
    pub const Super = DOMCSSRule;
    pub const class = objc.class("DOMCSSCharsetRule");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "encoding", objc.NSString, .{} },
    };
};

pub const DOMCSSFontFaceRule = struct {
    pub const Super = DOMCSSRule;
    pub const class = objc.class("DOMCSSFontFaceRule");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "style", DOMCSSStyleDeclaration, .{} },
    };
};

pub const DOMCSSImportRule = struct {
    pub const Super = DOMCSSRule;
    pub const class = objc.class("DOMCSSImportRule");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "href", objc.NSString, .{} },
        .{ "media", DOMMediaList, .{} },
        .{ "styleSheet", DOMCSSStyleSheet, .{} },
    };
};

pub const DOMCSSMediaRule = struct {
    pub const Super = DOMCSSRule;
    pub const class = objc.class("DOMCSSMediaRule");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "cssRules", DOMCSSRuleList, .{} },
        .{ "deleteRule:", void, .{u32} },
        .{ "insertRule:index:", u32, .{ objc.NSString, u32 } },
        .{ "media", DOMMediaList, .{} },
    };
};

pub const DOMCSSPageRule = struct {
    pub const Super = DOMCSSRule;
    pub const class = objc.class("DOMCSSPageRule");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "selectorText", objc.NSString, .{} },
        .{ "setSelectorText:", void, .{objc.NSString} },
        .{ "style", DOMCSSStyleDeclaration, .{} },
    };
};

pub const DOMCSSPrimitiveValue = struct {
    pub const Super = DOMCSSValue;
    pub const class = objc.class("DOMCSSPrimitiveValue");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMCSSRule = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMCSSRule");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "cssText", objc.NSString, .{} },
        .{ "parentRule", DOMCSSRule, .{} },
        .{ "parentStyleSheet", DOMCSSStyleSheet, .{} },
        .{ "setCssText:", void, .{objc.NSString} },
        .{ "type", u16, .{} },
    };
};

pub const DOMCSSRuleList = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMCSSRuleList");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "item:", ?DOMCSSRule, .{u32} },
        .{ "length", u32, .{} },
    };
};

pub const DOMCSSStyleDeclaration = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMCSSStyleDeclaration");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMCSSStyleRule = struct {
    pub const Super = DOMCSSRule;
    pub const class = objc.class("DOMCSSStyleRule");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "selectorText", objc.NSString, .{} },
        .{ "setSelectorText:", void, .{objc.NSString} },
        .{ "style", DOMCSSStyleDeclaration, .{} },
    };
};

pub const DOMCSSStyleSheet = struct {
    pub const Super = DOMStyleSheet;
    pub const class = objc.class("DOMCSSStyleSheet");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "addRule:style:index:", i32, .{ objc.NSString, objc.NSString, u32 } },
        .{ "cssRules", DOMCSSRuleList, .{} },
        .{ "deleteRule:", void, .{u32} },
        .{ "insertRule:index:", u32, .{ objc.NSString, u32 } },
        .{ "ownerRule", DOMCSSRule, .{} },
        .{ "removeRule:", void, .{u32} },
        .{ "rules", DOMCSSRuleList, .{} },
    };
};

pub const DOMCSSValue = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMCSSValue");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "cssText", objc.NSString, .{} },
        .{ "cssValueType", u16, .{} },
        .{ "setCssText:", void, .{objc.NSString} },
    };
};

pub const DOMCSSValueList = struct {
    pub const Super = DOMCSSValue;
    pub const class = objc.class("DOMCSSValueList");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "item:", ?DOMCSSValue, .{u32} },
        .{ "length", u32, .{} },
    };
};

pub const DOMCharacterData = struct {
    pub const Super = DOMNode;
    pub const class = objc.class("DOMCharacterData");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMCounter = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMCounter");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "identifier", objc.NSString, .{} },
        .{ "listStyle", objc.NSString, .{} },
        .{ "separator", objc.NSString, .{} },
    };
};

pub const DOMDocument = struct {
    pub const Super = DOMNode;
    pub const class = objc.class("DOMDocument");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMDocumentType = struct {
    pub const Super = DOMNode;
    pub const class = objc.class("DOMDocumentType");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "entities", DOMNamedNodeMap, .{} },
        .{ "internalSubset", objc.NSString, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "notations", DOMNamedNodeMap, .{} },
        .{ "publicId", objc.NSString, .{} },
        .{ "setInternalSubset:", void, .{objc.NSString} },
        .{ "systemId", objc.NSString, .{} },
    };
};

pub const DOMElement = struct {
    pub const Super = DOMNode;
    pub const class = objc.class("DOMElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMEntity = struct {
    pub const Super = DOMNode;
    pub const class = objc.class("DOMEntity");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "notationName", objc.NSString, .{} },
        .{ "publicId", objc.NSString, .{} },
        .{ "systemId", objc.NSString, .{} },
    };
};

pub const DOMEvent = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMEvent");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMFile = struct {
    pub const Super = DOMBlob;
    pub const class = objc.class("DOMFile");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "name", objc.NSString, .{} },
    };
};

pub const DOMFileList = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMFileList");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "item:", ?DOMFile, .{u32} },
        .{ "length", u32, .{} },
    };
};

pub const DOMHTMLAnchorElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLAnchorElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLAppletElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLAppletElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLAreaElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLAreaElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLBRElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLBRElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "clear", objc.NSString, .{} },
        .{ "setClear:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLBaseElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLBaseElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "href", objc.NSString, .{} },
        .{ "setHref:", void, .{objc.NSString} },
        .{ "setTarget:", void, .{objc.NSString} },
        .{ "target", objc.NSString, .{} },
    };
};

pub const DOMHTMLBaseFontElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLBaseFontElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "color", objc.NSString, .{} },
        .{ "face", objc.NSString, .{} },
        .{ "setColor:", void, .{objc.NSString} },
        .{ "setFace:", void, .{objc.NSString} },
        .{ "setSize:", void, .{objc.NSString} },
        .{ "size", objc.NSString, .{} },
    };
};

pub const DOMHTMLBodyElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLBodyElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLButtonElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLButtonElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLCollection = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMHTMLCollection");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "item:", ?DOMNode, .{u32} },
        .{ "length", u32, .{} },
        .{ "namedItem:", ?DOMNode, .{objc.NSString} },
        .{ "tags:", ?DOMNodeList, .{objc.NSString} },
    };
};

pub const DOMHTMLDListElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLDListElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "compact", objc.BOOL, .{} },
        .{ "setCompact:", void, .{objc.BOOL} },
    };
};

pub const DOMHTMLDirectoryElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLDirectoryElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "compact", objc.BOOL, .{} },
        .{ "setCompact:", void, .{objc.BOOL} },
    };
};

pub const DOMHTMLDivElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLDivElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLDocument = struct {
    pub const Super = DOMDocument;
    pub const class = objc.class("DOMHTMLDocument");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLElement = struct {
    pub const Super = DOMElement;
    pub const class = objc.class("DOMHTMLElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLEmbedElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLEmbedElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLFieldSetElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLFieldSetElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "form", DOMHTMLFormElement, .{} },
    };
};

pub const DOMHTMLFontElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLFontElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "color", objc.NSString, .{} },
        .{ "face", objc.NSString, .{} },
        .{ "setColor:", void, .{objc.NSString} },
        .{ "setFace:", void, .{objc.NSString} },
        .{ "setSize:", void, .{objc.NSString} },
        .{ "size", objc.NSString, .{} },
    };
};

pub const DOMHTMLFormElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLFormElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLFrameElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLFrameElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLFrameSetElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLFrameSetElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "cols", objc.NSString, .{} },
        .{ "rows", objc.NSString, .{} },
        .{ "setCols:", void, .{objc.NSString} },
        .{ "setRows:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLHRElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLHRElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLHeadElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLHeadElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "profile", objc.NSString, .{} },
        .{ "setProfile:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLHeadingElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLHeadingElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLHtmlElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLHtmlElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "setVersion:", void, .{objc.NSString} },
        .{ "version", objc.NSString, .{} },
    };
};

pub const DOMHTMLIFrameElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLIFrameElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLImageElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLImageElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLInputElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLInputElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLLIElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLLIElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "setType:", void, .{objc.NSString} },
        .{ "setValue:", void, .{i32} },
        .{ "type", objc.NSString, .{} },
        .{ "value", i32, .{} },
    };
};

pub const DOMHTMLLabelElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLLabelElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "form", DOMHTMLFormElement, .{} },
        .{ "htmlFor", objc.NSString, .{} },
        .{ "setHtmlFor:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLLegendElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLLegendElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "form", DOMHTMLFormElement, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLLinkElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLLinkElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLMapElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLMapElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "areas", DOMHTMLCollection, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "setName:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLMarqueeElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLMarqueeElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "start", void, .{} },
        .{ "stop", void, .{} },
    };
};

pub const DOMHTMLMenuElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLMenuElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "compact", objc.BOOL, .{} },
        .{ "setCompact:", void, .{objc.BOOL} },
    };
};

pub const DOMHTMLMetaElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLMetaElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLModElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLModElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "cite", objc.NSString, .{} },
        .{ "dateTime", objc.NSString, .{} },
        .{ "setCite:", void, .{objc.NSString} },
        .{ "setDateTime:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLOListElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLOListElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "compact", objc.BOOL, .{} },
        .{ "setCompact:", void, .{objc.BOOL} },
        .{ "setStart:", void, .{i32} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "start", i32, .{} },
        .{ "type", objc.NSString, .{} },
    };
};

pub const DOMHTMLObjectElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLObjectElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLOptGroupElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLOptGroupElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "disabled", objc.BOOL, .{} },
        .{ "label", objc.NSString, .{} },
        .{ "setDisabled:", void, .{objc.BOOL} },
        .{ "setLabel:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLOptionElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLOptionElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLOptionsCollection = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMHTMLOptionsCollection");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLParagraphElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLParagraphElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLParamElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLParamElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLPreElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLPreElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "setWidth:", void, .{i32} },
        .{ "setWrap:", void, .{objc.BOOL} },
        .{ "width", i32, .{} },
        .{ "wrap", objc.BOOL, .{} },
    };
};

pub const DOMHTMLQuoteElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLQuoteElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "cite", objc.NSString, .{} },
        .{ "setCite:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLScriptElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLScriptElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLSelectElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLSelectElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLStyleElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLStyleElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "disabled", objc.BOOL, .{} },
        .{ "media", objc.NSString, .{} },
        .{ "setDisabled:", void, .{objc.BOOL} },
        .{ "setMedia:", void, .{objc.NSString} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "sheet", DOMStyleSheet, .{} },
        .{ "type", objc.NSString, .{} },
    };
};

pub const DOMHTMLTableCaptionElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLTableCaptionElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "align", objc.NSString, .{} },
        .{ "setAlign:", void, .{objc.NSString} },
    };
};

pub const DOMHTMLTableCellElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLTableCellElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLTableColElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLTableColElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLTableElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLTableElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLTableRowElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLTableRowElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLTableSectionElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLTableSectionElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLTextAreaElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLTextAreaElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMHTMLTitleElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLTitleElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "setText:", void, .{objc.NSString} },
        .{ "text", objc.NSString, .{} },
    };
};

pub const DOMHTMLUListElement = struct {
    pub const Super = DOMHTMLElement;
    pub const class = objc.class("DOMHTMLUListElement");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "compact", objc.BOOL, .{} },
        .{ "setCompact:", void, .{objc.BOOL} },
        .{ "setType:", void, .{objc.NSString} },
        .{ "type", objc.NSString, .{} },
    };
};

pub const DOMImplementation = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMImplementation");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "createCSSStyleSheet:media:", ?DOMCSSStyleSheet, .{ objc.NSString, objc.NSString } },
        .{ "createDocument:qualifiedName:doctype:", ?DOMDocument, .{ objc.NSString, objc.NSString, DOMDocumentType } },
        .{ "createDocumentType:publicId:systemId:", ?DOMDocumentType, .{ objc.NSString, objc.NSString, objc.NSString } },
        .{ "createHTMLDocument:", ?DOMHTMLDocument, .{objc.NSString} },
        .{ "hasFeature:version:", objc.BOOL, .{ objc.NSString, objc.NSString } },
    };
};

pub const DOMKeyboardEvent = struct {
    pub const Super = DOMUIEvent;
    pub const class = objc.class("DOMKeyboardEvent");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMMediaList = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMMediaList");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "appendMedium:", void, .{objc.NSString} },
        .{ "deleteMedium:", void, .{objc.NSString} },
        .{ "item:", ?objc.NSString, .{u32} },
        .{ "length", u32, .{} },
        .{ "mediaText", objc.NSString, .{} },
        .{ "setMediaText:", void, .{objc.NSString} },
    };
};

pub const DOMMouseEvent = struct {
    pub const Super = DOMUIEvent;
    pub const class = objc.class("DOMMouseEvent");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMMutationEvent = struct {
    pub const Super = DOMEvent;
    pub const class = objc.class("DOMMutationEvent");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "attrChange", u16, .{} },
        .{ "attrName", objc.NSString, .{} },
        .{ "initMutationEvent:canBubble:cancelable:relatedNode:prevValue:newValue:attrName:attrChange:", void, .{ objc.NSString, objc.BOOL, objc.BOOL, DOMNode, objc.NSString, objc.NSString, objc.NSString, u16 } },
        .{ "newValue", objc.NSString, .{} },
        .{ "prevValue", objc.NSString, .{} },
        .{ "relatedNode", DOMNode, .{} },
    };
};

pub const DOMNamedNodeMap = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMNamedNodeMap");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMNode = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMNode");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMNodeIterator = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMNodeIterator");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMNodeList = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMNodeList");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "item:", ?DOMNode, .{u32} },
        .{ "length", u32, .{} },
    };
};

pub const DOMObject = struct {
    pub const Super = WebScriptObject;
    pub const class = objc.class("DOMObject");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "sheet", DOMStyleSheet, .{} },
    };
};

pub const DOMOverflowEvent = struct {
    pub const Super = DOMEvent;
    pub const class = objc.class("DOMOverflowEvent");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "horizontalOverflow", objc.BOOL, .{} },
        .{ "initOverflowEvent:horizontalOverflow:verticalOverflow:", void, .{ u16, objc.BOOL, objc.BOOL } },
        .{ "orient", u16, .{} },
        .{ "verticalOverflow", objc.BOOL, .{} },
    };
};

pub const DOMProcessingInstruction = struct {
    pub const Super = DOMCharacterData;
    pub const class = objc.class("DOMProcessingInstruction");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "sheet", DOMStyleSheet, .{} },
        .{ "target", objc.NSString, .{} },
    };
};

pub const DOMProgressEvent = struct {
    pub const Super = DOMEvent;
    pub const class = objc.class("DOMProgressEvent");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "lengthComputable", objc.BOOL, .{} },
        .{ "loaded", u64, .{} },
        .{ "total", u64, .{} },
    };
};

pub const DOMRGBColor = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMRGBColor");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "alpha", DOMCSSPrimitiveValue, .{} },
        .{ "blue", DOMCSSPrimitiveValue, .{} },
        .{ "color", AppKit.NSColor, .{} },
        .{ "green", DOMCSSPrimitiveValue, .{} },
        .{ "red", DOMCSSPrimitiveValue, .{} },
    };
};

pub const DOMRange = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMRange");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMRect = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMRect");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "bottom", DOMCSSPrimitiveValue, .{} },
        .{ "left", DOMCSSPrimitiveValue, .{} },
        .{ "right", DOMCSSPrimitiveValue, .{} },
        .{ "top", DOMCSSPrimitiveValue, .{} },
    };
};

pub const DOMStyleSheet = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMStyleSheet");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMStyleSheetList = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMStyleSheetList");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "item:", ?DOMStyleSheet, .{u32} },
        .{ "length", u32, .{} },
    };
};

pub const DOMText = struct {
    pub const Super = DOMCharacterData;
    pub const class = objc.class("DOMText");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "replaceWholeText:", ?DOMText, .{objc.NSString} },
        .{ "splitText:", ?DOMText, .{u32} },
        .{ "wholeText", objc.NSString, .{} },
    };
};

pub const DOMTreeWalker = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMTreeWalker");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMUIEvent = struct {
    pub const Super = DOMEvent;
    pub const class = objc.class("DOMUIEvent");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const DOMWheelEvent = struct {
    pub const Super = DOMMouseEvent;
    pub const class = objc.class("DOMWheelEvent");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "initWheelEvent:wheelDeltaY:view:screenX:screenY:clientX:clientY:ctrlKey:altKey:shiftKey:metaKey:", void, .{ i32, i32, DOMAbstractView, i32, i32, i32, i32, objc.BOOL, objc.BOOL, objc.BOOL, objc.BOOL } },
        .{ "isHorizontal", objc.BOOL, .{} },
        .{ "wheelDelta", i32, .{} },
        .{ "wheelDeltaX", i32, .{} },
        .{ "wheelDeltaY", i32, .{} },
    };
};

pub const DOMXPathExpression = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMXPathExpression");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "evaluate:type:inResult:", ?DOMXPathResult, .{ DOMNode, u16, DOMXPathResult } },
    };
};

pub const DOMXPathResult = struct {
    pub const Super = DOMObject;
    pub const class = objc.class("DOMXPathResult");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const WKBackForwardList = struct {
    pub const class = objc.class("WKBackForwardList");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "backItem", ?WKBackForwardListItem, .{} },
        .{ "backList", Object, .{} },
        .{ "currentItem", ?WKBackForwardListItem, .{} },
        .{ "forwardItem", ?WKBackForwardListItem, .{} },
        .{ "forwardList", Object, .{} },
        .{ "itemAtIndex:", ?WKBackForwardListItem, .{objc.NSInteger} },
    };
};

pub const WKBackForwardListItem = struct {
    pub const class = objc.class("WKBackForwardListItem");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "URL", Foundation.NSURL, .{} },
        .{ "initialURL", Foundation.NSURL, .{} },
        .{ "title", ?objc.NSString, .{} },
    };
};

pub const WKContentRuleList = struct {
    pub const class = objc.class("WKContentRuleList");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "identifier", objc.NSString, .{} },
    };
};

pub const WKContentRuleListStore = struct {
    pub const class = objc.class("WKContentRuleListStore");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "compileContentRuleListForIdentifier:encodedContentRuleList:completionHandler:", void, .{ objc.NSString, objc.NSString, ?*anyopaque } },
        .{ "getAvailableContentRuleListIdentifiers:", void, .{?*anyopaque} },
        .{ "lookUpContentRuleListForIdentifier:completionHandler:", void, .{ objc.NSString, ?*anyopaque } },
        .{ "removeContentRuleListForIdentifier:completionHandler:", void, .{ objc.NSString, ?*anyopaque } },
    };

    pub const class_methods = .{
        .{ "defaultStore", ?*anyopaque, .{} },
        .{ "storeWithURL:", Object, .{Foundation.NSURL} },
    };
};

pub const WKContentWorld = struct {
    pub const class = objc.class("WKContentWorld");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "name", ?objc.NSString, .{} },
    };

    pub const class_methods = .{
        .{ "defaultClientWorld", WKContentWorld, .{} },
        .{ "pageWorld", WKContentWorld, .{} },
        .{ "worldWithName:", WKContentWorld, .{objc.NSString} },
    };
};

pub const WKDownload = struct {
    pub const class = objc.class("WKDownload");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "cancel:", void, .{?*anyopaque} },
        .{ "delegate", ?WKDownloadDelegate, .{} },
        .{ "originalRequest", ?Foundation.NSURLRequest, .{} },
        .{ "originatingFrame", WKFrameInfo, .{} },
        .{ "setDelegate:", void, .{?WKDownloadDelegate} },
        .{ "userInitiated", objc.BOOL, .{} },
        .{ "webView", ?WKWebView, .{} },
    };

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
    pub const class = objc.class("WKFindConfiguration");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "backwards", objc.BOOL, .{} },
        .{ "caseSensitive", objc.BOOL, .{} },
        .{ "setBackwards:", void, .{objc.BOOL} },
        .{ "setCaseSensitive:", void, .{objc.BOOL} },
        .{ "setWraps:", void, .{objc.BOOL} },
        .{ "wraps", objc.BOOL, .{} },
    };
};

pub const WKFindResult = struct {
    pub const class = objc.class("WKFindResult");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "matchFound", objc.BOOL, .{} },
    };
};

pub const WKFrameInfo = struct {
    pub const class = objc.class("WKFrameInfo");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "mainFrame", objc.BOOL, .{} },
        .{ "request", Foundation.NSURLRequest, .{} },
        .{ "securityOrigin", WKSecurityOrigin, .{} },
        .{ "webView", ?WKWebView, .{} },
    };
};

pub const WKHTTPCookieStore = struct {
    pub const class = objc.class("WKHTTPCookieStore");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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

    pub const CookiePolicy = enum(i64) {
        allow = 0,
        disallow = 1,
    };
};

pub const WKNavigation = struct {
    pub const class = objc.class("WKNavigation");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "effectiveContentMode", WKWebpagePreferences.ContentMode, .{} },
    };
};

pub const WKNavigationAction = struct {
    pub const class = objc.class("WKNavigationAction");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const WKNavigationResponse = struct {
    pub const class = objc.class("WKNavigationResponse");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "canShowMIMEType", objc.BOOL, .{} },
        .{ "forMainFrame", objc.BOOL, .{} },
        .{ "response", Foundation.URLResponse, .{} },
    };
};

pub const WKOpenPanelParameters = struct {
    pub const class = objc.class("WKOpenPanelParameters");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "allowsDirectories", objc.BOOL, .{} },
        .{ "allowsMultipleSelection", objc.BOOL, .{} },
    };
};

pub const WKPDFConfiguration = struct {
    pub const class = objc.class("WKPDFConfiguration");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "allowTransparentBackground", objc.BOOL, .{} },
        .{ "setAllowTransparentBackground:", void, .{objc.BOOL} },
    };
};

pub const WKPreferences = struct {
    pub const class = objc.class("WKPreferences");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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

    pub const InactiveSchedulingPolicy = enum(i64) {
        @"suspend" = 0,
        throttle = 1,
        none = 2,
    };
};

pub const WKScriptMessage = struct {
    pub const class = objc.class("WKScriptMessage");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "body", Any, .{} },
        .{ "frameInfo", WKFrameInfo, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "webView", ?WKWebView, .{} },
        .{ "world", WKContentWorld, .{} },
    };
};

pub const WKSecurityOrigin = struct {
    pub const class = objc.class("WKSecurityOrigin");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "host", objc.NSString, .{} },
        .{ "port", objc.NSInteger, .{} },
        .{ "protocol", objc.NSString, .{} },
    };
};

pub const WKSnapshotConfiguration = struct {
    pub const class = objc.class("WKSnapshotConfiguration");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "afterScreenUpdates", objc.BOOL, .{} },
        .{ "rect", NSRect, .{} },
        .{ "setAfterScreenUpdates:", void, .{objc.BOOL} },
        .{ "setRect:", void, .{NSRect} },
        .{ "setSnapshotWidth:", void, .{?Foundation.NSNumber} },
        .{ "snapshotWidth", ?Foundation.NSNumber, .{} },
    };
};

pub const WKUserContentController = struct {
    pub const class = objc.class("WKUserContentController");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const WKUserScript = struct {
    pub const class = objc.class("WKUserScript");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "forMainFrameOnly", objc.BOOL, .{} },
        .{ "initWithSource:injectionTime:forMainFrameOnly:", WKUserScript, .{ objc.NSString, WKUserScriptInjectionTime, objc.BOOL } },
        .{ "initWithSource:injectionTime:forMainFrameOnly:inContentWorld:", WKUserScript, .{ objc.NSString, WKUserScriptInjectionTime, objc.BOOL, WKContentWorld } },
        .{ "injectionTime", WKUserScriptInjectionTime, .{} },
        .{ "source", objc.NSString, .{} },
    };
};

pub const WKWebExtension = struct {
    pub const class = objc.class("WKWebExtension");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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

    pub const TabChangedProperties = struct {
        pub const loading: i64 = 2;
        pub const muted: i64 = 4;
        pub const pinned: i64 = 8;
        pub const playingAudio: i64 = 16;
        pub const readerMode: i64 = 32;
        pub const size: i64 = 64;
        pub const title: i64 = 128;
        pub const URL: i64 = 256;
        pub const zoomFactor: i64 = 512;
    };
};

pub const WKWebExtensionAction = struct {
    pub const class = objc.class("WKWebExtensionAction");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const WKWebExtensionCommand = struct {
    pub const class = objc.class("WKWebExtensionCommand");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const WKWebExtensionContext = struct {
    pub const class = objc.class("WKWebExtensionContext");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
        .{ "initForExtension:", WKWebExtensionContext, .{WKWebExtension} },
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
    pub const class = objc.class("WKWebExtensionController");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
        .{ "initWithConfiguration:", WKWebExtensionController, .{WKWebExtensionControllerConfiguration} },
        .{ "loadExtensionContext:error:", void, .{WKWebExtensionContext} },
        .{ "removeDataOfTypes:fromDataRecords:completionHandler:", void, .{ objc.NSString, Object, ?*anyopaque } },
        .{ "setDelegate:", void, .{?WKWebExtensionControllerDelegate} },
        .{ "unloadExtensionContext:error:", void, .{WKWebExtensionContext} },
    };

    pub const class_methods = .{
        .{ "allExtensionDataTypes", objc.NSString, .{} },
    };
};

pub const WKWebExtensionControllerConfiguration = struct {
    pub const class = objc.class("WKWebExtensionControllerConfiguration");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "defaultWebsiteDataStore", WKWebsiteDataStore, .{} },
        .{ "identifier", ?Foundation.NSUUID, .{} },
        .{ "persistent", objc.BOOL, .{} },
        .{ "setDefaultWebsiteDataStore:", void, .{WKWebsiteDataStore} },
        .{ "setWebViewConfiguration:", void, .{WKWebViewConfiguration} },
        .{ "webViewConfiguration", WKWebViewConfiguration, .{} },
    };

    pub const class_methods = .{
        .{ "configurationWithIdentifier:", Object, .{Foundation.NSUUID} },
        .{ "defaultConfiguration", ?*anyopaque, .{} },
        .{ "nonPersistentConfiguration", ?*anyopaque, .{} },
    };
};

pub const WKWebExtensionDataRecord = struct {
    pub const class = objc.class("WKWebExtensionDataRecord");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "containedDataTypes", objc.NSString, .{} },
        .{ "displayName", objc.NSString, .{} },
        .{ "errors", Object, .{} },
        .{ "sizeInBytesOfTypes:", objc.NSInteger, .{objc.NSString} },
        .{ "totalSizeInBytes", objc.NSInteger, .{} },
        .{ "uniqueIdentifier", objc.NSString, .{} },
    };
};

pub const WKWebExtensionMatchPattern = struct {
    pub const class = objc.class("WKWebExtensionMatchPattern");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "host", ?objc.NSString, .{} },
        .{ "initWithScheme:host:path:error:", WKWebExtensionMatchPattern, .{ objc.NSString, objc.NSString, objc.NSString } },
        .{ "initWithString:error:", WKWebExtensionMatchPattern, .{objc.NSString} },
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

    pub const class_methods = .{
        .{ "allHostsAndSchemesMatchPattern", ?*anyopaque, .{} },
        .{ "allURLsMatchPattern", ?*anyopaque, .{} },
        .{ "registerCustomURLScheme:", void, .{objc.NSString} },
    };

    pub const Options = struct {
        pub const ignoreSchemes: i64 = 1;
        pub const ignorePaths: i64 = 2;
        pub const matchBidirectionally: i64 = 4;
    };
};

pub const WKWebExtensionMessagePort = struct {
    pub const class = objc.class("WKWebExtensionMessagePort");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const WKWebExtensionTabConfiguration = struct {
    pub const class = objc.class("WKWebExtensionTabConfiguration");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const WKWebExtensionWindowConfiguration = struct {
    pub const class = objc.class("WKWebExtensionWindowConfiguration");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "frame", NSRect, .{} },
        .{ "shouldBeFocused", objc.BOOL, .{} },
        .{ "shouldBePrivate", objc.BOOL, .{} },
        .{ "tabURLs", Object, .{} },
        .{ "tabs", Object, .{} },
        .{ "windowState", WKWebExtension.WindowState, .{} },
        .{ "windowType", WKWebExtension.WindowType, .{} },
    };
};

pub const WKWebView = struct {
    pub const Super = AppKit.NSView;
    pub const class = objc.class("WKWebView");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
        .{ "initWithCoder:", WKWebView, .{Foundation.NSCoder} },
        .{ "initWithFrame:configuration:", WKWebView, .{ NSRect, WKWebViewConfiguration } },
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

    pub const class_methods = .{
        .{ "handlesURLScheme:", objc.BOOL, .{objc.NSString} },
    };

    pub const FullscreenState = enum(i64) {
        notInFullscreen = 0,
        enteringFullscreen = 1,
        inFullscreen = 2,
        exitingFullscreen = 3,
    };
};

pub const WKWebViewConfiguration = struct {
    pub const class = objc.class("WKWebViewConfiguration");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const WKWebpagePreferences = struct {
    pub const class = objc.class("WKWebpagePreferences");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
    pub const class = objc.class("WKWebsiteDataRecord");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "dataTypes", objc.NSString, .{} },
        .{ "displayName", objc.NSString, .{} },
    };
};

pub const WKWebsiteDataStore = struct {
    pub const class = objc.class("WKWebsiteDataStore");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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

    pub const class_methods = .{
        .{ "allWebsiteDataTypes", objc.NSString, .{} },
        .{ "dataStoreForIdentifier:", Object, .{Foundation.NSUUID} },
        .{ "defaultDataStore", WKWebsiteDataStore, .{} },
        .{ "fetchAllDataStoreIdentifiers:", void, .{?*anyopaque} },
        .{ "nonPersistentDataStore", WKWebsiteDataStore, .{} },
        .{ "removeDataStoreForIdentifier:completionHandler:", void, .{ Foundation.NSUUID, ?*anyopaque } },
    };
};

pub const WKWindowFeatures = struct {
    pub const class = objc.class("WKWindowFeatures");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const WebArchive = struct {
    pub const class = objc.class("WebArchive");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "data", Foundation.NSData, .{} },
        .{ "initWithData:", WebArchive, .{Foundation.NSData} },
        .{ "initWithMainResource:subresources:subframeArchives:", WebArchive, .{ WebResource, Object, Object } },
        .{ "mainResource", WebResource, .{} },
        .{ "subframeArchives", Object, .{} },
        .{ "subresources", Object, .{} },
    };
};

pub const WebBackForwardList = struct {
    pub const class = objc.class("WebBackForwardList");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const WebDataSource = struct {
    pub const class = objc.class("WebDataSource");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "addSubresource:", void, .{WebResource} },
        .{ "data", Foundation.NSData, .{} },
        .{ "initWithRequest:", WebDataSource, .{Foundation.NSURLRequest} },
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
};

pub const WebFrame = struct {
    pub const class = objc.class("WebFrame");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "DOMDocument", DOMDocument, .{} },
        .{ "childFrames", Object, .{} },
        .{ "dataSource", ?WebDataSource, .{} },
        .{ "findFrameNamed:", ?WebFrame, .{objc.NSString} },
        .{ "frameElement", DOMHTMLElement, .{} },
        .{ "frameView", WebFrameView, .{} },
        .{ "globalContext", objc.NSString, .{} },
        .{ "initWithName:webFrameView:webView:", WebFrame, .{ objc.NSString, WebFrameView, WebView } },
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
};

pub const WebFrameView = struct {
    pub const Super = AppKit.NSView;
    pub const class = objc.class("WebFrameView");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
};

pub const WebHistory = struct {
    pub const class = objc.class("WebHistory");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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

    pub const class_methods = .{
        .{ "optionalSharedHistory", ?WebHistory, .{} },
        .{ "setOptionalSharedHistory:", void, .{WebHistory} },
    };
};

pub const WebHistoryItem = struct {
    pub const class = objc.class("WebHistoryItem");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "URLString", objc.NSString, .{} },
        .{ "alternateTitle", objc.NSString, .{} },
        .{ "icon", AppKit.NSImage, .{} },
        .{ "initWithURLString:title:lastVisitedTimeInterval:", WebHistoryItem, .{ objc.NSString, objc.NSString, TimeInterval } },
        .{ "lastVisitedTimeInterval", TimeInterval, .{} },
        .{ "originalURLString", objc.NSString, .{} },
        .{ "setAlternateTitle:", void, .{objc.NSString} },
        .{ "title", objc.NSString, .{} },
    };
};

pub const WebPreferences = struct {
    pub const class = objc.class("WebPreferences");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
        .{ "initWithIdentifier:", WebPreferences, .{objc.NSString} },
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

    pub const class_methods = .{
        .{ "standardPreferences", ?WebPreferences, .{} },
    };
};

pub const WebResource = struct {
    pub const class = objc.class("WebResource");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

    pub const methods = .{
        .{ "MIMEType", objc.NSString, .{} },
        .{ "URL", Foundation.NSURL, .{} },
        .{ "data", Foundation.NSData, .{} },
        .{ "frameName", objc.NSString, .{} },
        .{ "initWithData:URL:MIMEType:textEncodingName:frameName:", WebResource, .{ Foundation.NSData, Foundation.NSURL, objc.NSString, objc.NSString, objc.NSString } },
        .{ "textEncodingName", objc.NSString, .{} },
    };
};

pub const WebScriptObject = struct {
    pub const class = objc.class("WebScriptObject");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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

    pub const class_methods = .{
        .{ "throwException:", objc.BOOL, .{objc.NSString} },
    };
};

pub const WebView = struct {
    pub const Super = AppKit.NSView;
    pub const class = objc.class("WebView");
    pub const send = objc.InstanceDispatch(@This()).invoke;
    pub const static = objc.StaticDispatch(@This()).invoke;
    id: Object,

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
        .{ "initWithFrame:frameName:groupName:", WebView, .{ NSRect, objc.NSString, objc.NSString } },
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

    pub const class_methods = .{
        .{ "MIMETypesShownAsHTML", ?*anyopaque, .{} },
        .{ "URLFromPasteboard:", ?Foundation.NSURL, .{AppKit.NSPasteboard} },
        .{ "URLTitleFromPasteboard:", ?objc.NSString, .{AppKit.NSPasteboard} },
        .{ "canShowMIMEType:", objc.BOOL, .{objc.NSString} },
        .{ "canShowMIMETypeAsHTML:", objc.BOOL, .{objc.NSString} },
        .{ "registerURLSchemeAsLocal:", void, .{objc.NSString} },
        .{ "registerViewClass:representationClass:forMIMEType:", void, .{ AnyClass, AnyClass, objc.NSString } },
        .{ "setMIMETypesShownAsHTML:", void, .{Object} },
    };
};

pub fn viewObj(val: anytype) Object {
    const T = @TypeOf(val);
    if (T == Object) return val;
    if (@hasField(T, "id")) return val.id;
    @compileError("cannot extract obj from " ++ @typeName(T));
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
