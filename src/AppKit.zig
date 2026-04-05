//! AppKit bindings for Zig — AUTO-GENERATED from Swift symbol graph
//! Run: python3 scripts/gen_framework.py AppKit

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

pub const NSAccessibilityAnnotationPosition = enum(i64) {
    fullRange = 0,
    start = 1,
    end = 2,
};

pub const NSAccessibilityOrientation = enum(i64) {
    unknown = 0,
    vertical = 1,
    horizontal = 2,
};

pub const NSAccessibilityPriorityLevel = enum(i64) {
    low = 10,
    medium = 50,
    high = 90,
};

pub const NSAccessibilityRulerMarkerType = enum(i64) {
    unknown = 0,
    tabStopLeft = 1,
    tabStopRight = 2,
    tabStopCenter = 3,
    tabStopDecimal = 4,
    indentHead = 5,
    indentTail = 6,
    indentFirstLine = 7,
};

pub const NSAccessibilitySortDirection = enum(i64) {
    unknown = 0,
    ascending = 1,
    descending = 2,
};

pub const NSAccessibilityUnits = enum(i64) {
    unknown = 0,
    inches = 1,
    centimeters = 2,
    points = 3,
    picas = 4,
};

pub const NSAnimationEffect = enum(i64) {
    disappearingItemDefault = 0,
    poof = 10,
};

pub const NSBorderType = enum(i64) {
    noBorder = 0,
    lineBorder = 1,
    bezelBorder = 2,
    grooveBorder = 3,
};

pub const NSCharacterCollection = enum(i64) {
    identityMappingCharacterCollection = 0,
    adobeCNS1CharacterCollection = 1,
    adobeGB1CharacterCollection = 2,
    adobeJapan1CharacterCollection = 3,
    adobeJapan2CharacterCollection = 4,
    adobeKorea1CharacterCollection = 5,
};

pub const NSCollectionElementCategory = enum(i64) {
    item = 0,
    supplementaryView = 1,
    decorationView = 2,
    interItemGap = 3,
};

pub const NSCollectionLayoutSectionOrthogonalScrollingBehavior = enum(i64) {
    none = 0,
    continuous = 1,
    continuousGroupLeadingBoundary = 2,
    paging = 3,
    groupPaging = 4,
    groupPagingCentered = 5,
};

pub const NSColorRenderingIntent = enum(i64) {
    default = 0,
    absoluteColorimetric = 1,
    relativeColorimetric = 2,
    perceptual = 3,
    saturation = 4,
};

pub const NSCompositingOperation = enum(i64) {
    clear = 0,
    copy = 1,
    sourceOver = 2,
    sourceIn = 3,
    sourceOut = 4,
    sourceAtop = 5,
    destinationOver = 6,
    destinationIn = 7,
    destinationOut = 8,
    destinationAtop = 9,
    xor = 10,
    plusDarker = 11,
    plusLighter = 13,
    multiply = 14,
    screen = 15,
    overlay = 16,
    darken = 17,
    lighten = 18,
    colorDodge = 19,
    colorBurn = 20,
    softLight = 21,
    hardLight = 22,
    difference = 23,
    exclusion = 24,
    hue = 25,
    saturation = 26,
    color = 27,
    luminosity = 28,
};

pub const NSControlTint = enum(i64) {
    defaultControlTint = 0,
    blueControlTint = 1,
    graphiteControlTint = 6,
    clearControlTint = 7,
};

pub const NSDisplayGamut = enum(i64) {
    sRGB = 1,
    p3 = 2,
};

pub const NSDraggingContext = enum(i64) {
    outsideApplication = 0,
    withinApplication = 1,
};

pub const NSDraggingFormation = enum(i64) {
    default = 0,
    none = 1,
    pile = 2,
    list = 3,
    stack = 4,
};

pub const NSFindPanelAction = enum(i64) {
    showFindPanel = 1,
    next = 2,
    previous = 3,
    replaceAll = 4,
    replace = 5,
    replaceAndFind = 6,
    setFindString = 7,
    replaceAllInSelection = 8,
    selectAll = 9,
    selectAllInSelection = 10,
};

pub const NSFindPanelSubstringMatchType = enum(i64) {
    contains = 0,
    startsWith = 1,
    fullWord = 2,
    endsWith = 3,
};

pub const NSFocusRingPlacement = enum(i64) {
    only = 0,
    below = 1,
    above = 2,
};

pub const NSFocusRingType = enum(i64) {
    default = 0,
    none = 1,
    exterior = 2,
};

pub const NSFontAction = enum(i64) {
    noFontChangeAction = 0,
    viaPanelFontAction = 1,
    addTraitFontAction = 2,
    sizeUpFontAction = 3,
    sizeDownFontAction = 4,
    heavierFontAction = 5,
    lighterFontAction = 6,
    removeTraitFontAction = 7,
};

pub const NSFontRenderingMode = enum(i64) {
    defaultRenderingMode = 0,
    antialiasedRenderingMode = 1,
    integerAdvancementsRenderingMode = 2,
    antialiasedIntegerAdvancementsRenderingMode = 3,
};

pub const NSImageAlignment = enum(i64) {
    alignCenter = 0,
    alignTop = 1,
    alignTopLeft = 2,
    alignTopRight = 3,
    alignLeft = 4,
    alignBottom = 5,
    alignBottomLeft = 6,
    alignBottomRight = 7,
    alignRight = 8,
};

pub const NSImageInterpolation = enum(i64) {
    default = 0,
    none = 1,
    low = 2,
    high = 3,
    medium = 4,
};

pub const NSImageScaling = enum(i64) {
    scaleProportionallyDown = 0,
    scaleAxesIndependently = 1,
    scaleNone = 2,
    scaleProportionallyUpOrDown = 3,
};

pub const NSLineBreakMode = enum(i64) {
    byWordWrapping = 0,
    byCharWrapping = 1,
    byClipping = 2,
    byTruncatingHead = 3,
    byTruncatingTail = 4,
    byTruncatingMiddle = 5,
};

pub const NSMultibyteGlyphPacking = enum(i64) {
    nativeShortGlyphPacking = 5,
};

pub const NSOpenGLGlobalOption = enum(i64) {
    formatCacheSize = 501,
    clearFormatCache = 502,
    retainRenderers = 503,
    useBuildCache = 506,
};

pub const NSRectAlignment = enum(i64) {
    none = 0,
    top = 1,
    topLeading = 2,
    leading = 3,
    bottomLeading = 4,
    bottom = 5,
    bottomTrailing = 6,
    trailing = 7,
    topTrailing = 8,
};

pub const NSSelectionAffinity = enum(i64) {
    upstream = 0,
    downstream = 1,
};

pub const NSSelectionGranularity = enum(i64) {
    selectByCharacter = 0,
    selectByWord = 1,
    selectByParagraph = 2,
};

pub const NSSharingCollaborationMode = enum(i64) {
    sendCopy = 0,
    collaborate = 1,
};

pub const NSSpringLoadingHighlight = enum(i64) {
    none = 0,
    standard = 1,
    emphasized = 2,
};

pub const NSTextAlignment = enum(i64) {
    left = 0,
    center = 1,
    right = 2,
    justified = 3,
    natural = 4,
};

pub const NSTextCursorAccessoryPlacement = enum(i64) {
    unspecified = 0,
    backward = 1,
    forward = 2,
    invisible = 3,
    center = 4,
    offscreenLeft = 5,
    offscreenTop = 6,
    offscreenRight = 7,
    offscreenBottom = 8,
};

pub const NSTextInputTraitType = enum(i64) {
    default = 0,
    no = 1,
    yes = 2,
};

pub const NSTextMovement = enum(i64) {
    other = 0,
    @"return" = 16,
    tab = 17,
    backtab = 18,
    left = 19,
    right = 20,
    up = 21,
    down = 22,
    cancel = 23,
};

pub const NSTextScalingType = enum(i64) {
    standard = 0,
    iOS = 1,
};

pub const NSTintProminence = enum(i64) {
    automatic = 0,
    none = 1,
    primary = 2,
    secondary = 3,
};

pub const NSTitlebarSeparatorStyle = enum(i64) {
    automatic = 0,
    none = 1,
    line = 2,
    shadow = 3,
};

pub const NSUserInterfaceLayoutDirection = enum(i64) {
    leftToRight = 0,
    rightToLeft = 1,
};

pub const NSUserInterfaceLayoutOrientation = enum(i64) {
    horizontal = 0,
    vertical = 1,
};

pub const NSWritingDirection = enum(i64) {
    natural = -1,
    leftToRight = 0,
    rightToLeft = 1,
};

pub const NSWritingDirectionFormatType = enum(i64) {
    embedding = 0,
    override = 2,
};

pub const NSWritingToolsBehavior = enum(i64) {
    none = -1,
    default = 0,
    complete = 1,
    limited = 2,
};

pub const NSAccessibilityProtocol = *anyopaque;
pub const NSAccessibilityButton = *anyopaque;
pub const NSAccessibilityCheckBox = *anyopaque;
pub const NSAccessibilityColor = *anyopaque;
pub const NSAccessibilityContainsTransientUI = *anyopaque;
pub const NSAccessibilityCustomRotorItemSearchDelegate = *anyopaque;
pub const NSAccessibilityElementProtocol = *anyopaque;
pub const NSAccessibilityElementLoading = *anyopaque;
pub const NSAccessibilityGroup = *anyopaque;
pub const NSAccessibilityImage = *anyopaque;
pub const NSAccessibilityLayoutArea = *anyopaque;
pub const NSAccessibilityLayoutItem = *anyopaque;
pub const NSAccessibilityList = *anyopaque;
pub const NSAccessibilityNavigableStaticText = *anyopaque;
pub const NSAccessibilityOutline = *anyopaque;
pub const NSAccessibilityProgressIndicator = *anyopaque;
pub const NSAccessibilityRadioButton = *anyopaque;
pub const NSAccessibilityRow = *anyopaque;
pub const NSAccessibilitySlider = *anyopaque;
pub const NSAccessibilityStaticText = *anyopaque;
pub const NSAccessibilityStepper = *anyopaque;
pub const NSAccessibilitySwitch = *anyopaque;
pub const NSAccessibilityTable = *anyopaque;
pub const NSAlertDelegate = *anyopaque;
pub const NSAlignmentFeedbackToken = *anyopaque;
pub const NSAnimatablePropertyContainer = *anyopaque;
pub const NSAnimationDelegate = *anyopaque;
pub const NSAppearanceCustomization = *anyopaque;
pub const NSApplicationDelegate = *anyopaque;
pub const NSBrowserDelegate = *anyopaque;
pub const NSCandidateListTouchBarItemDelegate = *anyopaque;
pub const NSChangeSpelling = *anyopaque;
pub const NSCloudSharingServiceDelegate = *anyopaque;
pub const NSCloudSharingValidation = *anyopaque;
pub const NSCollectionLayoutContainer = *anyopaque;
pub const NSCollectionLayoutEnvironment = *anyopaque;
pub const NSCollectionLayoutVisibleItem = *anyopaque;
pub const NSCollectionViewDataSource = *anyopaque;
pub const NSCollectionViewDelegate = *anyopaque;
pub const NSCollectionViewDelegateFlowLayout = *anyopaque;
pub const NSCollectionViewElement = *anyopaque;
pub const NSCollectionViewPrefetching = *anyopaque;
pub const NSCollectionViewSectionHeaderView = *anyopaque;
pub const NSColorChanging = *anyopaque;
pub const NSColorPickingCustom = *anyopaque;
pub const NSColorPickingDefault = *anyopaque;
pub const NSComboBoxCellDataSource = *anyopaque;
pub const NSComboBoxDataSource = *anyopaque;
pub const NSComboBoxDelegate = *anyopaque;
pub const NSControlTextEditingDelegate = *anyopaque;
pub const NSCopying = *anyopaque;
pub const NSDatePickerCellDelegate = *anyopaque;
pub const NSDockTilePlugIn = *anyopaque;
pub const NSDraggingDestination = *anyopaque;
pub const NSDraggingInfo = *anyopaque;
pub const NSDraggingSource = *anyopaque;
pub const NSDrawerDelegate = *anyopaque;
pub const NSEditor = *anyopaque;
pub const NSEditorRegistration = *anyopaque;
pub const NSFetchRequestResult = *anyopaque;
pub const NSFilePromiseProviderDelegate = *anyopaque;
pub const NSFontChanging = *anyopaque;
pub const NSGestureRecognizerDelegate = *anyopaque;
pub const NSGlyphStorage = *anyopaque;
pub const NSHapticFeedbackPerformer = *anyopaque;
pub const NSIgnoreMisspelledWords = *anyopaque;
pub const NSImageDelegate = *anyopaque;
pub const NSInputServerMouseTracker = *anyopaque;
pub const NSInputServiceProvider = *anyopaque;
pub const NSLayoutManagerDelegate = *anyopaque;
pub const NSMatrixDelegate = *anyopaque;
pub const NSMenuDelegate = *anyopaque;
pub const NSMenuItemValidation = *anyopaque;
pub const NSObjectProtocol = *anyopaque;
pub const NSOpenSavePanelDelegate = *anyopaque;
pub const NSOutlineViewDataSource = *anyopaque;
pub const NSOutlineViewDelegate = *anyopaque;
pub const NSPageControllerDelegate = *anyopaque;
pub const NSPasteboardItemDataProvider = *anyopaque;
pub const NSPasteboardReading = *anyopaque;
pub const NSPasteboardTypeOwner = *anyopaque;
pub const NSPasteboardWriting = *anyopaque;
pub const NSPathCellDelegate = *anyopaque;
pub const NSPathControlDelegate = *anyopaque;
pub const NSPopoverDelegate = *anyopaque;
pub const NSPreviewRepresentableActivityItem = *anyopaque;
pub const NSPrintPanelAccessorizing = *anyopaque;
pub const NSRuleEditorDelegate = *anyopaque;
pub const NSScrubberDataSource = *anyopaque;
pub const NSScrubberDelegate = *anyopaque;
pub const NSScrubberFlowLayoutDelegate = *anyopaque;
pub const NSSearchFieldDelegate = *anyopaque;
pub const NSSecureCoding = *anyopaque;
pub const NSSeguePerforming = *anyopaque;
pub const NSServicesMenuRequestor = *anyopaque;
pub const NSSharingServiceDelegate = *anyopaque;
pub const NSSharingServicePickerDelegate = *anyopaque;
pub const NSSharingServicePickerToolbarItemDelegate = *anyopaque;
pub const NSSharingServicePickerTouchBarItemDelegate = *anyopaque;
pub const NSSoundDelegate = *anyopaque;
pub const NSSpeechRecognizerDelegate = *anyopaque;
pub const NSSpeechSynthesizerDelegate = *anyopaque;
pub const NSSplitViewDelegate = *anyopaque;
pub const NSSpringLoadingDestination = *anyopaque;
pub const NSStackViewDelegate = *anyopaque;
pub const NSStandardKeyBindingResponding = *anyopaque;
pub const NSTabViewDelegate = *anyopaque;
pub const NSTableViewDataSource = *anyopaque;
pub const NSTableViewDelegate = *anyopaque;
pub const NSTextAttachmentCellProtocol = *anyopaque;
pub const NSTextAttachmentContainer = *anyopaque;
pub const NSTextAttachmentLayout = *anyopaque;
pub const NSTextCheckingClient = *anyopaque;
pub const NSTextContent = *anyopaque;
pub const NSTextContentManagerDelegate = *anyopaque;
pub const NSTextContentStorageDelegate = *anyopaque;
pub const NSTextDelegate = *anyopaque;
pub const NSTextElementProvider = *anyopaque;
pub const NSTextFieldDelegate = *anyopaque;
pub const NSTextFinderBarContainer = *anyopaque;
pub const NSTextFinderClient = *anyopaque;
pub const NSTextInput = *anyopaque;
pub const NSTextInputClient = *anyopaque;
pub const NSTextInputTraits = *anyopaque;
pub const NSTextLayoutManagerDelegate = *anyopaque;
pub const NSTextLayoutOrientationProvider = *anyopaque;
pub const NSTextLocation = *anyopaque;
pub const NSTextSelectionDataSource = *anyopaque;
pub const NSTextStorageDelegate = *anyopaque;
pub const NSTextStorageObserving = *anyopaque;
pub const NSTextViewDelegate = *anyopaque;
pub const NSTextViewportLayoutControllerDelegate = *anyopaque;
pub const NSTokenFieldCellDelegate = *anyopaque;
pub const NSTokenFieldDelegate = *anyopaque;
pub const NSToolbarDelegate = *anyopaque;
pub const NSToolbarItemValidation = *anyopaque;
pub const NSTouchBarDelegate = *anyopaque;
pub const NSTouchBarProvider = *anyopaque;
pub const NSUserActivityRestoring = *anyopaque;
pub const NSUserInterfaceCompression = *anyopaque;
pub const NSUserInterfaceItemIdentification = *anyopaque;
pub const NSUserInterfaceItemSearching = *anyopaque;
pub const NSUserInterfaceValidations = *anyopaque;
pub const NSValidatedUserInterfaceItem = *anyopaque;
pub const NSViewContentSelectionInfo = *anyopaque;
pub const NSViewControllerPresentationAnimator = *anyopaque;
pub const NSViewLayerContentScaleDelegate = *anyopaque;
pub const NSViewToolTipOwner = *anyopaque;
pub const NSWindowDelegate = *anyopaque;
pub const NSWindowRestoration = *anyopaque;
pub const QLPreviewItem = *anyopaque;

pub const NSATSTypesetter = struct {
    obj: Object,

    pub const Super = NSTypesetter;
    pub const methods = .{
        .{ "attributedString", ?Foundation.NSAttributedString, .{} },
        .{ "bidiProcessingEnabled", objc.BOOL, .{} },
        .{ "boundingBoxForControlGlyphAtIndex:forTextContainer:proposedLineFragment:glyphPosition:characterIndex:", NSRect, .{ objc.NSInteger, NSTextContainer, NSRect, NSPoint, objc.NSInteger } },
        .{ "currentTextContainer", ?NSTextContainer, .{} },
        .{ "getGlyphsInRange:glyphs:characterIndexes:glyphInscriptions:elasticBits:", objc.NSInteger, .{ NSRange, u32, objc.NSInteger, objc.NSInteger, ?*anyopaque } },
        .{ "getLineFragmentRect:usedRect:forParagraphSeparatorGlyphRange:atProposedOrigin:", void, .{ NSRect, NSRect, NSRange, NSPoint } },
        .{ "hyphenCharacterForGlyphAtIndex:", objc.NSString, .{objc.NSInteger} },
        .{ "hyphenationFactor", f32, .{} },
        .{ "hyphenationFactorForGlyphAtIndex:", f32, .{objc.NSInteger} },
        .{ "layoutManager", ?NSLayoutManager, .{} },
        .{ "layoutParagraphAtPoint:", objc.NSInteger, .{NSPoint} },
        .{ "lineFragmentPadding", objc.CGFloat, .{} },
        .{ "lineSpacingAfterGlyphAtIndex:withProposedLineFragmentRect:", objc.CGFloat, .{ objc.NSInteger, NSRect } },
        .{ "paragraphGlyphRange", NSRange, .{} },
        .{ "paragraphSeparatorGlyphRange", NSRange, .{} },
        .{ "paragraphSpacingAfterGlyphAtIndex:withProposedLineFragmentRect:", objc.CGFloat, .{ objc.NSInteger, NSRect } },
        .{ "paragraphSpacingBeforeGlyphAtIndex:withProposedLineFragmentRect:", objc.CGFloat, .{ objc.NSInteger, NSRect } },
        .{ "setAttributedString:", void, .{?Foundation.NSAttributedString} },
        .{ "setBidiProcessingEnabled:", void, .{objc.BOOL} },
        .{ "setHardInvalidation:forGlyphRange:", void, .{ objc.BOOL, NSRange } },
        .{ "setHyphenationFactor:", void, .{f32} },
        .{ "setLineFragmentPadding:", void, .{objc.CGFloat} },
        .{ "setParagraphGlyphRange:separatorGlyphRange:", void, .{ NSRange, NSRange } },
        .{ "setTypesetterBehavior:", void, .{NSLayoutManager.TypesetterBehavior} },
        .{ "setUsesFontLeading:", void, .{objc.BOOL} },
        .{ "shouldBreakLineByHyphenatingBeforeCharacterAtIndex:", objc.BOOL, .{objc.NSInteger} },
        .{ "shouldBreakLineByWordBeforeCharacterAtIndex:", objc.BOOL, .{objc.NSInteger} },
        .{ "substituteFontForFont:", NSFont, .{NSFont} },
        .{ "textTabForGlyphLocation:writingDirection:maxLocation:", ?NSTextTab, .{ objc.CGFloat, NSWritingDirection, objc.CGFloat } },
        .{ "typesetterBehavior", NSLayoutManager.TypesetterBehavior, .{} },
        .{ "usesFontLeading", objc.BOOL, .{} },
        .{ "willSetLineFragmentRect:forGlyphRange:usedRect:baselineOffset:", void, .{ NSRect, NSRange, NSRect, objc.CGFloat } },
    };

    pub fn send(self: NSATSTypesetter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "setSharedTypesetter:", void, .{NSATSTypesetter} },
        .{ "sharedTypesetter", NSATSTypesetter, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSATSTypesetter", class_methods, selector, args);
    }
};

pub const NSAccessibilityCustomAction = struct {
    obj: Object,

    pub const methods = .{
        .{ "handler", objc.BOOL, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "selector", Selector, .{} },
        .{ "setHandler:", void, .{objc.BOOL} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setSelector:", void, .{Selector} },
        .{ "setTarget:", void, .{?NSObjectProtocol} },
        .{ "target", ?NSObjectProtocol, .{} },
    };

    pub fn send(self: NSAccessibilityCustomAction, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithName:handler:", Object, .{ objc.NSString, void } },
        .{ "initWithName:target:selector:", Object, .{ objc.NSString, void, Selector } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAccessibilityCustomAction", class_methods, selector, args);
    }
};

pub const NSAccessibilityCustomRotor = struct {
    obj: Object,

    pub const methods = .{
        .{ "itemLoadingDelegate", ?NSAccessibilityElementLoading, .{} },
        .{ "itemSearchDelegate", ?NSAccessibilityCustomRotorItemSearchDelegate, .{} },
        .{ "label", objc.NSString, .{} },
        .{ "setItemLoadingDelegate:", void, .{?NSAccessibilityElementLoading} },
        .{ "setItemSearchDelegate:", void, .{?NSAccessibilityCustomRotorItemSearchDelegate} },
        .{ "setLabel:", void, .{objc.NSString} },
        .{ "setType:", void, .{NSAccessibilityCustomRotor.RotorType} },
        .{ "type", NSAccessibilityCustomRotor.RotorType, .{} },
    };

    pub fn send(self: NSAccessibilityCustomRotor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithLabel:itemSearchDelegate:", Object, .{ objc.NSString, void } },
        .{ "initWithRotorType:itemSearchDelegate:", Object, .{ NSAccessibilityCustomRotor.RotorType, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAccessibilityCustomRotor", class_methods, selector, args);
    }

    pub const RotorType = enum(i64) {
        custom = 0,
        any = 1,
        annotation = 2,
        boldText = 3,
        heading = 4,
        headingLevel1 = 5,
        headingLevel2 = 6,
        headingLevel3 = 7,
        headingLevel4 = 8,
        headingLevel5 = 9,
        headingLevel6 = 10,
        image = 11,
        italicText = 12,
        landmark = 13,
        link = 14,
        list = 15,
        misspelledWord = 16,
        table = 17,
        textField = 18,
        underlinedText = 19,
        visitedLink = 20,
        audiograph = 21,
    };
    pub const SearchDirection = enum(i64) {
        previous = 0,
        next = 1,
    };
};

pub const NSAccessibilityCustomRotorItemResult = struct {
    obj: Object,

    pub const methods = .{
        .{ "customLabel", ?objc.NSString, .{} },
        .{ "itemLoadingToken", ?*anyopaque, .{} },
        .{ "setCustomLabel:", void, .{?objc.NSString} },
        .{ "setTargetRange:", void, .{NSRange} },
        .{ "targetElement", ?NSAccessibilityElementProtocol, .{} },
        .{ "targetRange", NSRange, .{} },
    };

    pub fn send(self: NSAccessibilityCustomRotorItemResult, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithItemLoadingToken:customLabel:", Object, .{ objc.NSString, objc.NSString } },
        .{ "initWithTargetElement:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAccessibilityCustomRotorItemResult", class_methods, selector, args);
    }
};

pub const NSAccessibilityCustomRotorSearchParameters = struct {
    obj: Object,

    pub const methods = .{
        .{ "currentItem", ?NSAccessibilityCustomRotorItemResult, .{} },
        .{ "filterString", objc.NSString, .{} },
        .{ "searchDirection", NSAccessibilityCustomRotor.SearchDirection, .{} },
        .{ "setCurrentItem:", void, .{?NSAccessibilityCustomRotorItemResult} },
        .{ "setFilterString:", void, .{objc.NSString} },
        .{ "setSearchDirection:", void, .{NSAccessibilityCustomRotor.SearchDirection} },
    };

    pub fn send(self: NSAccessibilityCustomRotorSearchParameters, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSAccessibilityElement = struct {
    obj: Object,

    pub const methods = .{
        .{ "accessibilityAddChildElement:", void, .{NSAccessibilityElement} },
        .{ "accessibilityFrameInParentSpace", NSRect, .{} },
        .{ "setAccessibilityFrameInParentSpace:", void, .{NSRect} },
    };

    pub fn send(self: NSAccessibilityElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "accessibilityElementWithRole:frame:label:parent:", Any, .{ objc.NSString, NSRect, ?objc.NSString, ?Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAccessibilityElement", class_methods, selector, args);
    }
};

pub const NSActionCell = struct {
    obj: Object,

    pub const Super = NSCell;
    pub const methods = .{
        .{ "action", Selector, .{} },
        .{ "setAction:", void, .{Selector} },
        .{ "setTag:", void, .{objc.NSInteger} },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "tag", objc.NSInteger, .{} },
        .{ "target", ?AnyObject, .{} },
    };

    pub fn send(self: NSActionCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSAdaptiveImageGlyph = struct {
    obj: Object,

    pub const methods = .{
        .{ "contentDescription", objc.NSString, .{} },
        .{ "contentIdentifier", objc.NSString, .{} },
        .{ "imageContent", Foundation.NSData, .{} },
    };

    pub fn send(self: NSAdaptiveImageGlyph, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "contentType", ?*anyopaque, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithImageContent:", Object, .{Foundation.NSData} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAdaptiveImageGlyph", class_methods, selector, args);
    }
};

pub const NSAlert = struct {
    obj: Object,

    pub const methods = .{
        .{ "accessoryView", ?NSView, .{} },
        .{ "addButtonWithTitle:", NSButton, .{objc.NSString} },
        .{ "alertStyle", NSAlert.Style, .{} },
        .{ "beginSheetModalForWindow:completionHandler:", void, .{ NSWindow, void } },
        .{ "beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:", void, .{ NSWindow, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "buttons", Object, .{} },
        .{ "delegate", ?NSAlertDelegate, .{} },
        .{ "helpAnchor", objc.NSString, .{} },
        .{ "icon", NSImage, .{} },
        .{ "informativeText", objc.NSString, .{} },
        .{ "layout", void, .{} },
        .{ "messageText", objc.NSString, .{} },
        .{ "runModal", objc.NSInteger, .{} },
        .{ "setAccessoryView:", void, .{?NSView} },
        .{ "setAlertStyle:", void, .{NSAlert.Style} },
        .{ "setDelegate:", void, .{?NSAlertDelegate} },
        .{ "setHelpAnchor:", void, .{objc.NSString} },
        .{ "setIcon:", void, .{NSImage} },
        .{ "setInformativeText:", void, .{objc.NSString} },
        .{ "setMessageText:", void, .{objc.NSString} },
        .{ "setShowsHelp:", void, .{objc.BOOL} },
        .{ "setShowsSuppressionButton:", void, .{objc.BOOL} },
        .{ "showsHelp", objc.BOOL, .{} },
        .{ "showsSuppressionButton", objc.BOOL, .{} },
        .{ "suppressionButton", ?NSButton, .{} },
        .{ "window", NSWindow, .{} },
    };

    pub fn send(self: NSAlert, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "alertWithError:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAlert", class_methods, selector, args);
    }

    pub const Style = enum(i64) {
        warning = 0,
        informational = 1,
        critical = 2,
    };

    pub fn create() NSAlert {
        return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSAlert", "alloc", .{}), "init", .{}) };
    }
};

pub const NSAlignmentFeedbackFilter = struct {
    obj: Object,

    pub const methods = .{
        .{ "alignmentFeedbackTokenForHorizontalMovementInView:previousX:alignedX:defaultX:", ?NSAlignmentFeedbackToken, .{ ?NSView, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "alignmentFeedbackTokenForMovementInView:previousPoint:alignedPoint:defaultPoint:", ?NSAlignmentFeedbackToken, .{ ?NSView, NSPoint, NSPoint, NSPoint } },
        .{ "alignmentFeedbackTokenForVerticalMovementInView:previousY:alignedY:defaultY:", ?NSAlignmentFeedbackToken, .{ ?NSView, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "performFeedback:performanceTime:", void, .{ void, NSHapticFeedbackManager.PerformanceTime } },
        .{ "updateWithEvent:", void, .{NSEvent} },
        .{ "updateWithPanRecognizer:", void, .{NSPanGestureRecognizer} },
    };

    pub fn send(self: NSAlignmentFeedbackFilter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "inputEventMask", objc.NSInteger, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAlignmentFeedbackFilter", class_methods, selector, args);
    }
};

pub const NSAnimation = struct {
    obj: Object,

    pub const methods = .{
        .{ "addProgressMark:", void, .{f32} },
        .{ "animating", objc.BOOL, .{} },
        .{ "animationBlockingMode", NSAnimation.BlockingMode, .{} },
        .{ "animationCurve", NSAnimation.Curve, .{} },
        .{ "clearStartAnimation", void, .{} },
        .{ "clearStopAnimation", void, .{} },
        .{ "currentProgress", f32, .{} },
        .{ "currentValue", f32, .{} },
        .{ "delegate", ?NSAnimationDelegate, .{} },
        .{ "duration", TimeInterval, .{} },
        .{ "frameRate", f32, .{} },
        .{ "progressMarks", Object, .{} },
        .{ "removeProgressMark:", void, .{f32} },
        .{ "runLoopModesForAnimating", ?*anyopaque, .{} },
        .{ "setAnimationBlockingMode:", void, .{NSAnimation.BlockingMode} },
        .{ "setAnimationCurve:", void, .{NSAnimation.Curve} },
        .{ "setCurrentProgress:", void, .{f32} },
        .{ "setDelegate:", void, .{?NSAnimationDelegate} },
        .{ "setDuration:", void, .{TimeInterval} },
        .{ "setFrameRate:", void, .{f32} },
        .{ "setProgressMarks:", void, .{Object} },
        .{ "startAnimation", void, .{} },
        .{ "startWhenAnimation:reachesProgress:", void, .{ NSAnimation, f32 } },
        .{ "stopAnimation", void, .{} },
        .{ "stopWhenAnimation:reachesProgress:", void, .{ NSAnimation, f32 } },
    };

    pub fn send(self: NSAnimation, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithDuration:animationCurve:", Object, .{ TimeInterval, NSAnimation.Curve } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAnimation", class_methods, selector, args);
    }

    pub const BlockingMode = enum(i64) {
        blocking = 0,
        nonblocking = 1,
        nonblockingThreaded = 2,
    };
    pub const Curve = enum(i64) {
        easeInOut = 0,
        easeIn = 1,
        easeOut = 2,
        linear = 3,
    };
};

pub const NSAnimationContext = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowsImplicitAnimation", objc.BOOL, .{} },
        .{ "completionHandler", void, .{} },
        .{ "duration", TimeInterval, .{} },
        .{ "setAllowsImplicitAnimation:", void, .{objc.BOOL} },
        .{ "setCompletionHandler:", void, .{void} },
        .{ "setDuration:", void, .{TimeInterval} },
        .{ "setTimingFunction:", void, .{?*anyopaque} },
        .{ "timingFunction", ?*anyopaque, .{} },
    };

    pub fn send(self: NSAnimationContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "beginGrouping", void, .{} },
        .{ "currentContext", NSAnimationContext, .{} },
        .{ "endGrouping", void, .{} },
        .{ "runAnimationGroup:", void, .{void} },
        .{ "runAnimationGroup:completionHandler:", void, .{ void, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAnimationContext", class_methods, selector, args);
    }
};

pub const NSAppearance = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowsVibrancy", objc.BOOL, .{} },
        .{ "bestMatchFromAppearancesWithNames:", objc.NSString, .{void} },
        .{ "name", objc.NSString, .{} },
        .{ "performAsCurrentDrawingAppearance:", void, .{void} },
    };

    pub fn send(self: NSAppearance, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "appearanceNamed:", Object, .{objc.NSString} },
        .{ "currentAppearance", NSAppearance, .{} },
        .{ "currentDrawingAppearance", NSAppearance, .{} },
        .{ "initWithAppearanceNamed:bundle:", Object, .{ objc.NSString, ?Foundation.NSBundle } },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "setCurrentAppearance:", void, .{NSAppearance} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAppearance", class_methods, selector, args);
    }
};

pub const NSApplication = struct {
    obj: Object,

    pub const Super = NSResponder;
    pub const methods = .{
        .{ "abortModal", void, .{} },
        .{ "activate", void, .{} },
        .{ "activateContextHelpMode:", void, .{?Any} },
        .{ "activateIgnoringOtherApps:", void, .{objc.BOOL} },
        .{ "activationPolicy", NSApplication.ActivationPolicy, .{} },
        .{ "active", objc.BOOL, .{} },
        .{ "addWindowsItem:title:filename:", void, .{ NSWindow, objc.NSString, objc.BOOL } },
        .{ "appearance", ?NSAppearance, .{} },
        .{ "applicationIconImage", NSImage, .{} },
        .{ "applicationShouldSuppressHighDynamicRangeContent", objc.BOOL, .{} },
        .{ "arrangeInFront:", void, .{?Any} },
        .{ "automaticCustomizeTouchBarMenuItemEnabled", objc.BOOL, .{} },
        .{ "beginModalSessionForWindow:", OpaquePointer, .{NSWindow} },
        .{ "beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:", void, .{ NSWindow, NSWindow, ?Any, Selector, UnsafeMutableRawPointer } },
        .{ "cancelUserAttentionRequest:", void, .{objc.NSInteger} },
        .{ "changeWindowsItem:title:filename:", void, .{ NSWindow, objc.NSString, objc.BOOL } },
        .{ "completeStateRestoration", void, .{} },
        .{ "context", ?NSGraphicsContext, .{} },
        .{ "currentEvent", ?NSEvent, .{} },
        .{ "currentSystemPresentationOptions", objc.NSInteger, .{} },
        .{ "deactivate", void, .{} },
        .{ "delegate", ?NSApplicationDelegate, .{} },
        .{ "disableRelaunchOnLogin", void, .{} },
        .{ "discardEventsMatchingMask:beforeEvent:", void, .{ objc.NSInteger, ?NSEvent } },
        .{ "dockTile", NSDockTile, .{} },
        .{ "effectiveAppearance", NSAppearance, .{} },
        .{ "enableRelaunchOnLogin", void, .{} },
        .{ "enabledRemoteNotificationTypes", objc.NSInteger, .{} },
        .{ "endModalSession:", void, .{OpaquePointer} },
        .{ "endSheet:", void, .{NSWindow} },
        .{ "endSheet:returnCode:", void, .{ NSWindow, objc.NSInteger } },
        .{ "enumerateWindowsWithOptions:usingBlock:", void, .{ objc.NSInteger, void } },
        .{ "extendStateRestoration", void, .{} },
        .{ "finishLaunching", void, .{} },
        .{ "fullKeyboardAccessEnabled", objc.BOOL, .{} },
        .{ "helpMenu", ?NSMenu, .{} },
        .{ "hidden", objc.BOOL, .{} },
        .{ "hide:", void, .{?Any} },
        .{ "hideOtherApplications:", void, .{?Any} },
        .{ "keyWindow", ?NSWindow, .{} },
        .{ "mainMenu", ?NSMenu, .{} },
        .{ "mainWindow", ?NSWindow, .{} },
        .{ "makeWindowsPerform:inOrder:", ?NSWindow, .{ Selector, objc.BOOL } },
        .{ "miniaturizeAll:", void, .{?Any} },
        .{ "modalWindow", ?NSWindow, .{} },
        .{ "nextEventMatchingMask:untilDate:inMode:dequeue:", ?NSEvent, .{ objc.NSInteger, ?Foundation.NSDate, objc.NSString, objc.BOOL } },
        .{ "occlusionState", objc.NSInteger, .{} },
        .{ "orderFrontCharacterPalette:", void, .{?Any} },
        .{ "orderFrontColorPanel:", void, .{?Any} },
        .{ "orderFrontStandardAboutPanel:", void, .{?Any} },
        .{ "orderFrontStandardAboutPanelWithOptions:", void, .{Any} },
        .{ "orderedDocuments", Object, .{} },
        .{ "orderedWindows", Object, .{} },
        .{ "postEvent:atStart:", void, .{ NSEvent, objc.BOOL } },
        .{ "presentationOptions", objc.NSInteger, .{} },
        .{ "preventWindowOrdering", void, .{} },
        .{ "protectedDataAvailable", objc.BOOL, .{} },
        .{ "registerForRemoteNotificationTypes:", void, .{objc.NSInteger} },
        .{ "registerForRemoteNotifications", void, .{} },
        .{ "registerServicesMenuSendTypes:returnTypes:", void, .{ void, void } },
        .{ "registerUserInterfaceItemSearchHandler:", void, .{void} },
        .{ "registeredForRemoteNotifications", objc.BOOL, .{} },
        .{ "removeWindowsItem:", void, .{NSWindow} },
        .{ "replyToApplicationShouldTerminate:", void, .{objc.BOOL} },
        .{ "replyToOpenOrPrint:", void, .{NSApplication.DelegateReply} },
        .{ "reportException:", void, .{Foundation.NSException} },
        .{ "requestUserAttention:", objc.NSInteger, .{NSApplication.RequestUserAttentionType} },
        .{ "restoreWindowWithIdentifier:state:completionHandler:", objc.BOOL, .{ objc.NSString, Foundation.NSCoder, void } },
        .{ "run", void, .{} },
        .{ "runModalForWindow:", objc.NSInteger, .{NSWindow} },
        .{ "runModalSession:", objc.NSInteger, .{OpaquePointer} },
        .{ "runPageLayout:", void, .{?Any} },
        .{ "running", objc.BOOL, .{} },
        .{ "searchString:inUserInterfaceItemString:searchRange:foundRange:", objc.BOOL, .{ objc.NSString, objc.NSString, NSRange, NSRange } },
        .{ "sendAction:to:from:", objc.BOOL, .{ Selector, ?Any, ?Any } },
        .{ "sendEvent:", void, .{NSEvent} },
        .{ "servicesMenu", ?NSMenu, .{} },
        .{ "servicesProvider", ?Any, .{} },
        .{ "setActivationPolicy:", objc.BOOL, .{NSApplication.ActivationPolicy} },
        .{ "setAppearance:", void, .{?NSAppearance} },
        .{ "setApplicationIconImage:", void, .{NSImage} },
        .{ "setAutomaticCustomizeTouchBarMenuItemEnabled:", void, .{objc.BOOL} },
        .{ "setDelegate:", void, .{?NSApplicationDelegate} },
        .{ "setHelpMenu:", void, .{?NSMenu} },
        .{ "setMainMenu:", void, .{?NSMenu} },
        .{ "setPresentationOptions:", void, .{objc.NSInteger} },
        .{ "setServicesMenu:", void, .{?NSMenu} },
        .{ "setServicesProvider:", void, .{?Any} },
        .{ "setWindowsMenu:", void, .{?NSMenu} },
        .{ "setWindowsNeedUpdate:", void, .{objc.BOOL} },
        .{ "showHelp:", void, .{?Any} },
        .{ "stop:", void, .{?Any} },
        .{ "stopModal", void, .{} },
        .{ "stopModalWithCode:", void, .{objc.NSInteger} },
        .{ "targetForAction:", ?Any, .{Selector} },
        .{ "targetForAction:to:from:", ?Any, .{ Selector, ?Any, ?Any } },
        .{ "terminate:", void, .{?Any} },
        .{ "toggleTouchBarCustomizationPalette:", void, .{?Any} },
        .{ "tryToPerform:with:", objc.BOOL, .{ Selector, ?Any } },
        .{ "unhide:", void, .{?Any} },
        .{ "unhideAllApplications:", void, .{?Any} },
        .{ "unhideWithoutActivation", void, .{} },
        .{ "unregisterForRemoteNotifications", void, .{} },
        .{ "unregisterUserInterfaceItemSearchHandler:", void, .{void} },
        .{ "updateWindows", void, .{} },
        .{ "updateWindowsItem:", void, .{NSWindow} },
        .{ "userInterfaceLayoutDirection", NSUserInterfaceLayoutDirection, .{} },
        .{ "validRequestorForSendType:returnType:", ?Any, .{ objc.NSString, objc.NSString } },
        .{ "windowWithWindowNumber:", ?NSWindow, .{objc.NSInteger} },
        .{ "windows", Object, .{} },
        .{ "windowsMenu", ?NSMenu, .{} },
        .{ "yieldActivationToApplication:", void, .{NSRunningApplication} },
        .{ "yieldActivationToApplicationWithBundleIdentifier:", void, .{objc.NSString} },
    };

    pub fn send(self: NSApplication, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "detachDrawingThread:toTarget:withObject:", void, .{ Selector, Any, ?Any } },
        .{ "sharedApplication", NSApplication, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSApplication", class_methods, selector, args);
    }

    pub const ActivationPolicy = enum(i64) {
        regular = 0,
        accessory = 1,
        prohibited = 2,
    };
    pub const DelegateReply = enum(i64) {
        success = 0,
        cancel = 1,
        failure = 2,
    };
    pub const PrintReply = enum(i64) {
        printingCancelled = 0,
        printingSuccess = 1,
        printingReplyLater = 2,
        printingFailure = 3,
    };
    pub const RequestUserAttentionType = enum(i64) {
        criticalRequest = 0,
        informationalRequest = 10,
    };
    pub const TerminateReply = enum(i64) {
        terminateCancel = 0,
        terminateNow = 1,
        terminateLater = 2,
    };

    pub fn shared() NSApplication {
        return .{ .obj = objc.msgSendClass(Object, "NSApplication", "sharedApplication", .{}) };
    }
};

pub const NSArrayController = struct {
    obj: Object,

    pub const Super = NSObjectController;
    pub const methods = .{
        .{ "add:", void, .{?Any} },
        .{ "addObject:", void, .{Any} },
        .{ "addObjects:", void, .{void} },
        .{ "addSelectedObjects:", objc.BOOL, .{void} },
        .{ "addSelectionIndexes:", objc.BOOL, .{Foundation.NSIndexSet} },
        .{ "alwaysUsesMultipleValuesMarker", objc.BOOL, .{} },
        .{ "arrangeObjects:", Object, .{void} },
        .{ "arrangedObjects", Any, .{} },
        .{ "automaticRearrangementKeyPaths", ?*anyopaque, .{} },
        .{ "automaticallyRearrangesObjects", objc.BOOL, .{} },
        .{ "avoidsEmptySelection", objc.BOOL, .{} },
        .{ "canInsert", objc.BOOL, .{} },
        .{ "canSelectNext", objc.BOOL, .{} },
        .{ "canSelectPrevious", objc.BOOL, .{} },
        .{ "clearsFilterPredicateOnInsertion", objc.BOOL, .{} },
        .{ "didChangeArrangementCriteria", void, .{} },
        .{ "filterPredicate", ?Foundation.NSPredicate, .{} },
        .{ "insert:", void, .{?Any} },
        .{ "insertObject:atArrangedObjectIndex:", void, .{ Any, objc.NSInteger } },
        .{ "insertObjects:atArrangedObjectIndexes:", void, .{ void, Foundation.NSIndexSet } },
        .{ "preservesSelection", objc.BOOL, .{} },
        .{ "rearrangeObjects", void, .{} },
        .{ "remove:", void, .{?Any} },
        .{ "removeObject:", void, .{Any} },
        .{ "removeObjectAtArrangedObjectIndex:", void, .{objc.NSInteger} },
        .{ "removeObjects:", void, .{void} },
        .{ "removeObjectsAtArrangedObjectIndexes:", void, .{Foundation.NSIndexSet} },
        .{ "removeSelectedObjects:", objc.BOOL, .{void} },
        .{ "removeSelectionIndexes:", objc.BOOL, .{Foundation.NSIndexSet} },
        .{ "selectNext:", void, .{?Any} },
        .{ "selectPrevious:", void, .{?Any} },
        .{ "selectedObjects", Object, .{} },
        .{ "selectionIndex", objc.NSInteger, .{} },
        .{ "selectionIndexes", Foundation.NSIndexSet, .{} },
        .{ "selectsInsertedObjects", objc.BOOL, .{} },
        .{ "setAlwaysUsesMultipleValuesMarker:", void, .{objc.BOOL} },
        .{ "setAutomaticallyRearrangesObjects:", void, .{objc.BOOL} },
        .{ "setAvoidsEmptySelection:", void, .{objc.BOOL} },
        .{ "setClearsFilterPredicateOnInsertion:", void, .{objc.BOOL} },
        .{ "setFilterPredicate:", void, .{?Foundation.NSPredicate} },
        .{ "setPreservesSelection:", void, .{objc.BOOL} },
        .{ "setSelectedObjects:", objc.BOOL, .{void} },
        .{ "setSelectionIndex:", objc.BOOL, .{objc.NSInteger} },
        .{ "setSelectionIndexes:", objc.BOOL, .{Foundation.NSIndexSet} },
        .{ "setSelectsInsertedObjects:", void, .{objc.BOOL} },
        .{ "setSortDescriptors:", void, .{Object} },
        .{ "sortDescriptors", Object, .{} },
    };

    pub fn send(self: NSArrayController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSBackgroundExtensionView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "automaticallyPlacesContentView", objc.BOOL, .{} },
        .{ "contentView", ?NSView, .{} },
        .{ "setAutomaticallyPlacesContentView:", void, .{objc.BOOL} },
        .{ "setContentView:", void, .{?NSView} },
    };

    pub fn send(self: NSBackgroundExtensionView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSBezierPath = struct {
    obj: Object,

    pub const methods = .{
        .{ "CGPath", ?*anyopaque, .{} },
        .{ "addClip", void, .{} },
        .{ "appendBezierPath:", void, .{NSBezierPath} },
        .{ "appendBezierPathWithArcFromPoint:toPoint:radius:", void, .{ NSPoint, NSPoint, objc.CGFloat } },
        .{ "appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:", void, .{ NSPoint, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:", void, .{ NSPoint, objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.BOOL } },
        .{ "appendBezierPathWithCGGlyph:inFont:", void, .{ objc.NSString, NSFont } },
        .{ "appendBezierPathWithCGGlyphs:count:inFont:", void, .{ objc.NSString, objc.NSInteger, NSFont } },
        .{ "appendBezierPathWithGlyph:inFont:", void, .{ u32, NSFont } },
        .{ "appendBezierPathWithGlyphs:count:inFont:", void, .{ u32, objc.NSInteger, NSFont } },
        .{ "appendBezierPathWithOvalInRect:", void, .{NSRect} },
        .{ "appendBezierPathWithPackedGlyphs:", void, .{?*anyopaque} },
        .{ "appendBezierPathWithPoints:count:", void, .{ NSPoint, objc.NSInteger } },
        .{ "appendBezierPathWithRect:", void, .{NSRect} },
        .{ "appendBezierPathWithRoundedRect:xRadius:yRadius:", void, .{ NSRect, objc.CGFloat, objc.CGFloat } },
        .{ "bezierPathByFlatteningPath", NSBezierPath, .{} },
        .{ "bezierPathByReversingPath", NSBezierPath, .{} },
        .{ "bounds", NSRect, .{} },
        .{ "closePath", void, .{} },
        .{ "containsPoint:", objc.BOOL, .{NSPoint} },
        .{ "controlPointBounds", NSRect, .{} },
        .{ "currentPoint", NSPoint, .{} },
        .{ "curveToPoint:controlPoint1:controlPoint2:", void, .{ NSPoint, NSPoint, NSPoint } },
        .{ "curveToPoint:controlPoint:", void, .{ NSPoint, NSPoint } },
        .{ "elementAtIndex:", NSBezierPath.ElementType, .{objc.NSInteger} },
        .{ "elementAtIndex:associatedPoints:", NSBezierPath.ElementType, .{ objc.NSInteger, NSPoint } },
        .{ "elementCount", objc.NSInteger, .{} },
        .{ "empty", objc.BOOL, .{} },
        .{ "fill", void, .{} },
        .{ "flatness", objc.CGFloat, .{} },
        .{ "getLineDash:count:phase:", void, .{ objc.CGFloat, objc.NSInteger, objc.CGFloat } },
        .{ "lineCapStyle", NSBezierPath.LineCapStyle, .{} },
        .{ "lineJoinStyle", NSBezierPath.LineJoinStyle, .{} },
        .{ "lineToPoint:", void, .{NSPoint} },
        .{ "lineWidth", objc.CGFloat, .{} },
        .{ "miterLimit", objc.CGFloat, .{} },
        .{ "moveToPoint:", void, .{NSPoint} },
        .{ "relativeCurveToPoint:controlPoint1:controlPoint2:", void, .{ NSPoint, NSPoint, NSPoint } },
        .{ "relativeCurveToPoint:controlPoint:", void, .{ NSPoint, NSPoint } },
        .{ "relativeLineToPoint:", void, .{NSPoint} },
        .{ "relativeMoveToPoint:", void, .{NSPoint} },
        .{ "removeAllPoints", void, .{} },
        .{ "setAssociatedPoints:atIndex:", void, .{ NSPoint, objc.NSInteger } },
        .{ "setCGPath:", void, .{?*anyopaque} },
        .{ "setClip", void, .{} },
        .{ "setFlatness:", void, .{objc.CGFloat} },
        .{ "setLineCapStyle:", void, .{NSBezierPath.LineCapStyle} },
        .{ "setLineDash:count:phase:", void, .{ objc.CGFloat, objc.NSInteger, objc.CGFloat } },
        .{ "setLineJoinStyle:", void, .{NSBezierPath.LineJoinStyle} },
        .{ "setLineWidth:", void, .{objc.CGFloat} },
        .{ "setMiterLimit:", void, .{objc.CGFloat} },
        .{ "setWindingRule:", void, .{NSBezierPath.WindingRule} },
        .{ "stroke", void, .{} },
        .{ "transformUsingAffineTransform:", void, .{?*anyopaque} },
        .{ "windingRule", NSBezierPath.WindingRule, .{} },
    };

    pub fn send(self: NSBezierPath, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "bezierPathWithCGPath:", Object, .{?*anyopaque} },
        .{ "bezierPathWithOvalInRect:", Object, .{NSRect} },
        .{ "bezierPathWithRect:", Object, .{NSRect} },
        .{ "bezierPathWithRoundedRect:xRadius:yRadius:", Object, .{ NSRect, objc.CGFloat, objc.CGFloat } },
        .{ "clipRect:", void, .{NSRect} },
        .{ "defaultFlatness", objc.CGFloat, .{} },
        .{ "defaultLineCapStyle", NSBezierPath.LineCapStyle, .{} },
        .{ "defaultLineJoinStyle", NSBezierPath.LineJoinStyle, .{} },
        .{ "defaultLineWidth", objc.CGFloat, .{} },
        .{ "defaultMiterLimit", objc.CGFloat, .{} },
        .{ "defaultWindingRule", NSBezierPath.WindingRule, .{} },
        .{ "drawPackedGlyphs:atPoint:", void, .{ ?*anyopaque, NSPoint } },
        .{ "fillRect:", void, .{NSRect} },
        .{ "setDefaultFlatness:", void, .{objc.CGFloat} },
        .{ "setDefaultLineCapStyle:", void, .{NSBezierPath.LineCapStyle} },
        .{ "setDefaultLineJoinStyle:", void, .{NSBezierPath.LineJoinStyle} },
        .{ "setDefaultLineWidth:", void, .{objc.CGFloat} },
        .{ "setDefaultMiterLimit:", void, .{objc.CGFloat} },
        .{ "setDefaultWindingRule:", void, .{NSBezierPath.WindingRule} },
        .{ "strokeLineFromPoint:toPoint:", void, .{ NSPoint, NSPoint } },
        .{ "strokeRect:", void, .{NSRect} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSBezierPath", class_methods, selector, args);
    }

    pub const ElementType = enum(i64) {
        moveTo = 0,
        lineTo = 1,
        cubicCurveTo = 2,
        closePath = 3,
        quadraticCurveTo = 4,
    };
    pub const LineCapStyle = enum(i64) {
        butt = 0,
        round = 1,
        square = 2,
    };
    pub const LineJoinStyle = enum(i64) {
        miter = 0,
        round = 1,
        bevel = 2,
    };
    pub const WindingRule = enum(i64) {
        nonZero = 0,
        evenOdd = 1,
    };
};

pub const NSBindingSelectionMarker = struct {
    pub const class_methods = .{
        .{ "defaultPlaceholderForMarker:onClass:withBinding:", ?Any, .{ ?NSBindingSelectionMarker, AnyClass, objc.NSString } },
        .{ "multipleValuesSelectionMarker", NSBindingSelectionMarker, .{} },
        .{ "noSelectionMarker", NSBindingSelectionMarker, .{} },
        .{ "notApplicableSelectionMarker", NSBindingSelectionMarker, .{} },
        .{ "setDefaultPlaceholder:forMarker:onClass:withBinding:", void, .{ ?Any, ?NSBindingSelectionMarker, AnyClass, objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSBindingSelectionMarker", class_methods, selector, args);
    }
};

pub const NSBitmapImageRep = struct {
    obj: Object,

    pub const Super = NSImageRep;
    pub const methods = .{
        .{ "CGImage", ?*anyopaque, .{} },
        .{ "TIFFRepresentation", ?Foundation.NSData, .{} },
        .{ "TIFFRepresentationUsingCompression:factor:", ?Foundation.NSData, .{ NSBitmapImageRep.TIFFCompression, f32 } },
        .{ "bitmapData", u8, .{} },
        .{ "bitmapFormat", objc.NSInteger, .{} },
        .{ "bitmapImageRepByConvertingToColorSpace:renderingIntent:", ?NSBitmapImageRep, .{ NSColorSpace, NSColorRenderingIntent } },
        .{ "bitmapImageRepByRetaggingWithColorSpace:", ?NSBitmapImageRep, .{NSColorSpace} },
        .{ "bitsPerPixel", objc.NSInteger, .{} },
        .{ "bytesPerPlane", objc.NSInteger, .{} },
        .{ "bytesPerRow", objc.NSInteger, .{} },
        .{ "canBeCompressedUsing:", objc.BOOL, .{NSBitmapImageRep.TIFFCompression} },
        .{ "colorAtX:y:", ?NSColor, .{ objc.NSInteger, objc.NSInteger } },
        .{ "colorSpace", NSColorSpace, .{} },
        .{ "colorizeByMappingGray:toColor:blackMapping:whiteMapping:", void, .{ objc.CGFloat, ?NSColor, ?NSColor, ?NSColor } },
        .{ "getBitmapDataPlanes:", void, .{u8} },
        .{ "getCompression:factor:", void, .{ NSBitmapImageRep.TIFFCompression, f32 } },
        .{ "getPixel:atX:y:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "incrementalLoadFromData:complete:", objc.NSInteger, .{ Foundation.NSData, objc.BOOL } },
        .{ "numberOfPlanes", objc.NSInteger, .{} },
        .{ "planar", objc.BOOL, .{} },
        .{ "representationUsingType:properties:", ?Foundation.NSData, .{ NSBitmapImageRep.FileType, Any } },
        .{ "samplesPerPixel", objc.NSInteger, .{} },
        .{ "setColor:atX:y:", void, .{ NSColor, objc.NSInteger, objc.NSInteger } },
        .{ "setCompression:factor:", void, .{ NSBitmapImageRep.TIFFCompression, f32 } },
        .{ "setPixel:atX:y:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "setProperty:withValue:", void, .{ objc.NSString, ?Any } },
        .{ "valueForProperty:", ?Any, .{objc.NSString} },
    };

    pub fn send(self: NSBitmapImageRep, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "TIFFRepresentationOfImageRepsInArray:", ?Foundation.NSData, .{void} },
        .{ "TIFFRepresentationOfImageRepsInArray:usingCompression:factor:", ?Foundation.NSData, .{ void, NSBitmapImageRep.TIFFCompression, f32 } },
        .{ "getTIFFCompressionTypes:count:", void, .{ NSBitmapImageRep.TIFFCompression, objc.NSInteger } },
        .{ "imageRepsWithData:", Object, .{Foundation.NSData} },
        .{ "initForIncrementalLoad", Object, .{void} },
        .{ "initWithBitmapDataPlanes:pixelsWide:pixelsHigh:bitsPerSample:samplesPerPixel:hasAlpha:isPlanar:colorSpaceName:bitmapFormat:bytesPerRow:bitsPerPixel:", Object, .{ u8, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.BOOL, objc.BOOL, objc.NSString, objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "initWithBitmapDataPlanes:pixelsWide:pixelsHigh:bitsPerSample:samplesPerPixel:hasAlpha:isPlanar:colorSpaceName:bytesPerRow:bitsPerPixel:", Object, .{ u8, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.BOOL, objc.BOOL, objc.NSString, objc.NSInteger, objc.NSInteger } },
        .{ "initWithCGImage:", Object, .{?*anyopaque} },
        .{ "initWithCIImage:", Object, .{Object} },
        .{ "initWithData:", Object, .{Foundation.NSData} },
        .{ "initWithFocusedViewRect:", Object, .{NSRect} },
        .{ "localizedNameForTIFFCompressionType:", ?objc.NSString, .{NSBitmapImageRep.TIFFCompression} },
        .{ "representationOfImageRepsInArray:usingType:properties:", ?Foundation.NSData, .{ void, NSBitmapImageRep.FileType, Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSBitmapImageRep", class_methods, selector, args);
    }

    pub const FileType = enum(i64) {
        tiff = 0,
        bmp = 1,
        gif = 2,
        jpeg = 3,
        png = 4,
        jpeg2000 = 5,
    };
    pub const LoadStatus = enum(i64) {
        completed = -6,
        unexpectedEOF = -5,
        invalidData = -4,
        willNeedAllData = -3,
        readingHeader = -2,
        unknownType = -1,
    };
    pub const TIFFCompression = enum(i64) {
        none = 1,
        ccittfax3 = 3,
        ccittfax4 = 4,
        lzw = 5,
        jpeg = 6,
        next = 32766,
        packBits = 32773,
        oldJPEG = 32865,
    };
};

pub const NSBox = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "borderColor", NSColor, .{} },
        .{ "borderRect", NSRect, .{} },
        .{ "borderType", NSBorderType, .{} },
        .{ "borderWidth", objc.CGFloat, .{} },
        .{ "boxType", NSBox.BoxType, .{} },
        .{ "contentView", ?NSView, .{} },
        .{ "contentViewMargins", NSSize, .{} },
        .{ "cornerRadius", objc.CGFloat, .{} },
        .{ "fillColor", NSColor, .{} },
        .{ "setBorderColor:", void, .{NSColor} },
        .{ "setBorderType:", void, .{NSBorderType} },
        .{ "setBorderWidth:", void, .{objc.CGFloat} },
        .{ "setBoxType:", void, .{NSBox.BoxType} },
        .{ "setContentView:", void, .{?NSView} },
        .{ "setContentViewMargins:", void, .{NSSize} },
        .{ "setCornerRadius:", void, .{objc.CGFloat} },
        .{ "setFillColor:", void, .{NSColor} },
        .{ "setFrameFromContentFrame:", void, .{NSRect} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setTitleFont:", void, .{NSFont} },
        .{ "setTitlePosition:", void, .{NSBox.TitlePosition} },
        .{ "setTransparent:", void, .{objc.BOOL} },
        .{ "sizeToFit", void, .{} },
        .{ "title", objc.NSString, .{} },
        .{ "titleCell", Any, .{} },
        .{ "titleFont", NSFont, .{} },
        .{ "titlePosition", NSBox.TitlePosition, .{} },
        .{ "titleRect", NSRect, .{} },
        .{ "transparent", objc.BOOL, .{} },
    };

    pub fn send(self: NSBox, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const BoxType = enum(i64) {
        primary = 0,
        separator = 2,
        custom = 4,
    };
    pub const TitlePosition = enum(i64) {
        noTitle = 0,
        aboveTop = 1,
        atTop = 2,
        belowTop = 3,
        aboveBottom = 4,
        atBottom = 5,
        belowBottom = 6,
    };

    pub fn createSeparator() NSBox {
        const b = objc.msgSend(Object, objc.msgSendClass(Object, "NSBox", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 0, 1)});
        objc.msgSend(void, b, "setBoxType:", .{@as(i64, 2)});
        objc.msgSend(void, b, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = b };
    }
};

pub const NSBrowser = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "addColumn", void, .{} },
        .{ "allowsBranchSelection", objc.BOOL, .{} },
        .{ "allowsEmptySelection", objc.BOOL, .{} },
        .{ "allowsMultipleSelection", objc.BOOL, .{} },
        .{ "allowsTypeSelect", objc.BOOL, .{} },
        .{ "autohidesScroller", objc.BOOL, .{} },
        .{ "backgroundColor", NSColor, .{} },
        .{ "canDragRowsWithIndexes:inColumn:withEvent:", objc.BOOL, .{ Foundation.NSIndexSet, objc.NSInteger, NSEvent } },
        .{ "cellPrototype", Any, .{} },
        .{ "clickedColumn", objc.NSInteger, .{} },
        .{ "clickedRow", objc.NSInteger, .{} },
        .{ "columnContentWidthForColumnWidth:", objc.CGFloat, .{objc.CGFloat} },
        .{ "columnOfMatrix:", objc.NSInteger, .{NSMatrix} },
        .{ "columnResizingType", NSBrowser.ColumnResizingType, .{} },
        .{ "columnWidthForColumnContentWidth:", objc.CGFloat, .{objc.CGFloat} },
        .{ "columnsAutosaveName", objc.NSString, .{} },
        .{ "defaultColumnWidth", objc.CGFloat, .{} },
        .{ "delegate", ?NSBrowserDelegate, .{} },
        .{ "doClick:", void, .{?Any} },
        .{ "doDoubleClick:", void, .{?Any} },
        .{ "doubleAction", Selector, .{} },
        .{ "draggingImageForRowsWithIndexes:inColumn:withEvent:offset:", ?NSImage, .{ Foundation.NSIndexSet, objc.NSInteger, NSEvent, NSPoint } },
        .{ "drawTitleOfColumn:inRect:", void, .{ objc.NSInteger, NSRect } },
        .{ "editItemAtIndexPath:withEvent:select:", void, .{ ?*anyopaque, ?NSEvent, objc.BOOL } },
        .{ "firstVisibleColumn", objc.NSInteger, .{} },
        .{ "frameOfColumn:", NSRect, .{objc.NSInteger} },
        .{ "frameOfInsideOfColumn:", NSRect, .{objc.NSInteger} },
        .{ "frameOfRow:inColumn:", NSRect, .{ objc.NSInteger, objc.NSInteger } },
        .{ "getRow:column:forPoint:", objc.BOOL, .{ objc.NSInteger, objc.NSInteger, NSPoint } },
        .{ "hasHorizontalScroller", objc.BOOL, .{} },
        .{ "indexPathForColumn:", ?*anyopaque, .{objc.NSInteger} },
        .{ "isLeafItem:", objc.BOOL, .{?Any} },
        .{ "itemAtIndexPath:", ?Any, .{?*anyopaque} },
        .{ "itemAtRow:inColumn:", ?Any, .{ objc.NSInteger, objc.NSInteger } },
        .{ "lastColumn", objc.NSInteger, .{} },
        .{ "lastVisibleColumn", objc.NSInteger, .{} },
        .{ "loadColumnZero", void, .{} },
        .{ "loaded", objc.BOOL, .{} },
        .{ "loadedCellAtRow:column:", ?Any, .{ objc.NSInteger, objc.NSInteger } },
        .{ "matrixClass", AnyClass, .{} },
        .{ "matrixInColumn:", ?NSMatrix, .{objc.NSInteger} },
        .{ "maxVisibleColumns", objc.NSInteger, .{} },
        .{ "minColumnWidth", objc.CGFloat, .{} },
        .{ "noteHeightOfRowsWithIndexesChanged:inColumn:", void, .{ Foundation.NSIndexSet, objc.NSInteger } },
        .{ "numberOfVisibleColumns", objc.NSInteger, .{} },
        .{ "parentForItemsInColumn:", ?Any, .{objc.NSInteger} },
        .{ "path", objc.NSString, .{} },
        .{ "pathSeparator", objc.NSString, .{} },
        .{ "pathToColumn:", objc.NSString, .{objc.NSInteger} },
        .{ "prefersAllColumnUserResizing", objc.BOOL, .{} },
        .{ "reloadColumn:", void, .{objc.NSInteger} },
        .{ "reloadDataForRowIndexes:inColumn:", void, .{ Foundation.NSIndexSet, objc.NSInteger } },
        .{ "reusesColumns", objc.BOOL, .{} },
        .{ "rowHeight", objc.CGFloat, .{} },
        .{ "scrollColumnToVisible:", void, .{objc.NSInteger} },
        .{ "scrollColumnsLeftBy:", void, .{objc.NSInteger} },
        .{ "scrollColumnsRightBy:", void, .{objc.NSInteger} },
        .{ "scrollRowToVisible:inColumn:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "selectAll:", void, .{?Any} },
        .{ "selectRow:inColumn:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "selectRowIndexes:inColumn:", void, .{ Foundation.NSIndexSet, objc.NSInteger } },
        .{ "selectedCell", ?Any, .{} },
        .{ "selectedCellInColumn:", ?Any, .{objc.NSInteger} },
        .{ "selectedCells", ?*anyopaque, .{} },
        .{ "selectedColumn", objc.NSInteger, .{} },
        .{ "selectedRowInColumn:", objc.NSInteger, .{objc.NSInteger} },
        .{ "selectedRowIndexesInColumn:", ?Foundation.NSIndexSet, .{objc.NSInteger} },
        .{ "selectionIndexPath", ?*anyopaque, .{} },
        .{ "selectionIndexPaths", Object, .{} },
        .{ "sendAction", objc.BOOL, .{} },
        .{ "sendsActionOnArrowKeys", objc.BOOL, .{} },
        .{ "separatesColumns", objc.BOOL, .{} },
        .{ "setAllowsBranchSelection:", void, .{objc.BOOL} },
        .{ "setAllowsEmptySelection:", void, .{objc.BOOL} },
        .{ "setAllowsMultipleSelection:", void, .{objc.BOOL} },
        .{ "setAllowsTypeSelect:", void, .{objc.BOOL} },
        .{ "setAutohidesScroller:", void, .{objc.BOOL} },
        .{ "setBackgroundColor:", void, .{NSColor} },
        .{ "setCellClass:", void, .{AnyClass} },
        .{ "setCellPrototype:", void, .{Any} },
        .{ "setColumnResizingType:", void, .{NSBrowser.ColumnResizingType} },
        .{ "setColumnsAutosaveName:", void, .{objc.NSString} },
        .{ "setDefaultColumnWidth:", void, .{objc.CGFloat} },
        .{ "setDelegate:", void, .{?NSBrowserDelegate} },
        .{ "setDoubleAction:", void, .{Selector} },
        .{ "setDraggingSourceOperationMask:forLocal:", void, .{ objc.NSInteger, objc.BOOL } },
        .{ "setHasHorizontalScroller:", void, .{objc.BOOL} },
        .{ "setLastColumn:", void, .{objc.NSInteger} },
        .{ "setMatrixClass:", void, .{AnyClass} },
        .{ "setMaxVisibleColumns:", void, .{objc.NSInteger} },
        .{ "setMinColumnWidth:", void, .{objc.CGFloat} },
        .{ "setPath:", objc.BOOL, .{objc.NSString} },
        .{ "setPathSeparator:", void, .{objc.NSString} },
        .{ "setPrefersAllColumnUserResizing:", void, .{objc.BOOL} },
        .{ "setReusesColumns:", void, .{objc.BOOL} },
        .{ "setRowHeight:", void, .{objc.CGFloat} },
        .{ "setSelectionIndexPath:", void, .{?*anyopaque} },
        .{ "setSelectionIndexPaths:", void, .{Object} },
        .{ "setSendsActionOnArrowKeys:", void, .{objc.BOOL} },
        .{ "setSeparatesColumns:", void, .{objc.BOOL} },
        .{ "setTakesTitleFromPreviousColumn:", void, .{objc.BOOL} },
        .{ "setTitle:ofColumn:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "setTitled:", void, .{objc.BOOL} },
        .{ "setWidth:ofColumn:", void, .{ objc.CGFloat, objc.NSInteger } },
        .{ "takesTitleFromPreviousColumn", objc.BOOL, .{} },
        .{ "tile", void, .{} },
        .{ "titleFrameOfColumn:", NSRect, .{objc.NSInteger} },
        .{ "titleHeight", objc.CGFloat, .{} },
        .{ "titleOfColumn:", ?objc.NSString, .{objc.NSInteger} },
        .{ "titled", objc.BOOL, .{} },
        .{ "validateVisibleColumns", void, .{} },
        .{ "widthOfColumn:", objc.CGFloat, .{objc.NSInteger} },
    };

    pub fn send(self: NSBrowser, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "cellClass", AnyClass, .{} },
        .{ "removeSavedColumnsWithAutosaveName:", void, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSBrowser", class_methods, selector, args);
    }

    pub const ColumnResizingType = enum(i64) {
        noColumnResizing = 0,
        autoColumnResizing = 1,
        userColumnResizing = 2,
    };
    pub const DropOperation = enum(i64) {
        on = 0,
        above = 1,
    };
};

pub const NSBrowserCell = struct {
    obj: Object,

    pub const Super = NSCell;
    pub const methods = .{
        .{ "alternateImage", ?NSImage, .{} },
        .{ "highlightColorInView:", ?NSColor, .{NSView} },
        .{ "image", ?NSImage, .{} },
        .{ "leaf", objc.BOOL, .{} },
        .{ "loaded", objc.BOOL, .{} },
        .{ "reset", void, .{} },
        .{ "set", void, .{} },
        .{ "setAlternateImage:", void, .{?NSImage} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setLeaf:", void, .{objc.BOOL} },
        .{ "setLoaded:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSBrowserCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "branchImage", ?NSImage, .{} },
        .{ "highlightedBranchImage", ?NSImage, .{} },
        .{ "initImageCell:", Object, .{?NSImage} },
        .{ "initTextCell:", Object, .{objc.NSString} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSBrowserCell", class_methods, selector, args);
    }
};

pub const NSButton = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "activeCompressionOptions", NSUserInterfaceCompressionOptions, .{} },
        .{ "allowsMixedState", objc.BOOL, .{} },
        .{ "alternateImage", ?NSImage, .{} },
        .{ "alternateTitle", objc.NSString, .{} },
        .{ "attributedAlternateTitle", Foundation.NSAttributedString, .{} },
        .{ "attributedTitle", Foundation.NSAttributedString, .{} },
        .{ "bezelColor", ?NSColor, .{} },
        .{ "bezelStyle", NSButton.BezelStyle, .{} },
        .{ "borderShape", NSControl.BorderShape, .{} },
        .{ "bordered", objc.BOOL, .{} },
        .{ "compressWithPrioritizedCompressionOptions:", void, .{void} },
        .{ "contentTintColor", ?NSColor, .{} },
        .{ "getPeriodicDelay:interval:", void, .{ f32, f32 } },
        .{ "hasDestructiveAction", objc.BOOL, .{} },
        .{ "highlight:", void, .{objc.BOOL} },
        .{ "image", ?NSImage, .{} },
        .{ "imageHugsTitle", objc.BOOL, .{} },
        .{ "imagePosition", NSControl.ImagePosition, .{} },
        .{ "imageScaling", NSImageScaling, .{} },
        .{ "keyEquivalent", objc.NSString, .{} },
        .{ "keyEquivalentModifierMask", objc.NSInteger, .{} },
        .{ "maxAcceleratorLevel", objc.NSInteger, .{} },
        .{ "minimumSizeWithPrioritizedCompressionOptions:", NSSize, .{void} },
        .{ "performKeyEquivalent:", objc.BOOL, .{NSEvent} },
        .{ "setAllowsMixedState:", void, .{objc.BOOL} },
        .{ "setAlternateImage:", void, .{?NSImage} },
        .{ "setAlternateTitle:", void, .{objc.NSString} },
        .{ "setAttributedAlternateTitle:", void, .{Foundation.NSAttributedString} },
        .{ "setAttributedTitle:", void, .{Foundation.NSAttributedString} },
        .{ "setBezelColor:", void, .{?NSColor} },
        .{ "setBezelStyle:", void, .{NSButton.BezelStyle} },
        .{ "setBorderShape:", void, .{NSControl.BorderShape} },
        .{ "setBordered:", void, .{objc.BOOL} },
        .{ "setButtonType:", void, .{NSButton.ButtonType} },
        .{ "setContentTintColor:", void, .{?NSColor} },
        .{ "setHasDestructiveAction:", void, .{objc.BOOL} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setImageHugsTitle:", void, .{objc.BOOL} },
        .{ "setImagePosition:", void, .{NSControl.ImagePosition} },
        .{ "setImageScaling:", void, .{NSImageScaling} },
        .{ "setKeyEquivalent:", void, .{objc.NSString} },
        .{ "setKeyEquivalentModifierMask:", void, .{objc.NSInteger} },
        .{ "setMaxAcceleratorLevel:", void, .{objc.NSInteger} },
        .{ "setNextState", void, .{} },
        .{ "setPeriodicDelay:interval:", void, .{ f32, f32 } },
        .{ "setShowsBorderOnlyWhileMouseInside:", void, .{objc.BOOL} },
        .{ "setSound:", void, .{?NSSound} },
        .{ "setSpringLoaded:", void, .{objc.BOOL} },
        .{ "setState:", void, .{objc.NSInteger} },
        .{ "setSymbolConfiguration:", void, .{?NSImageSymbolConfiguration} },
        .{ "setTintProminence:", void, .{NSTintProminence} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setTransparent:", void, .{objc.BOOL} },
        .{ "showsBorderOnlyWhileMouseInside", objc.BOOL, .{} },
        .{ "sound", ?NSSound, .{} },
        .{ "springLoaded", objc.BOOL, .{} },
        .{ "state", objc.NSInteger, .{} },
        .{ "symbolConfiguration", ?NSImageSymbolConfiguration, .{} },
        .{ "tintProminence", NSTintProminence, .{} },
        .{ "title", objc.NSString, .{} },
        .{ "transparent", objc.BOOL, .{} },
    };

    pub fn send(self: NSButton, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "buttonWithImage:target:action:", Object, .{ NSImage, ?Any, Selector } },
        .{ "buttonWithTitle:image:target:action:", Object, .{ objc.NSString, NSImage, ?Any, Selector } },
        .{ "buttonWithTitle:target:action:", Object, .{ objc.NSString, ?Any, Selector } },
        .{ "checkboxWithTitle:target:action:", Object, .{ objc.NSString, ?Any, Selector } },
        .{ "radioButtonWithTitle:target:action:", Object, .{ objc.NSString, ?Any, Selector } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSButton", class_methods, selector, args);
    }

    pub const BezelStyle = enum(i64) {
        automatic = 0,
        push = 1,
        flexiblePush = 2,
        disclosure = 5,
        shadowlessSquare = 6,
        circular = 7,
        texturedSquare = 8,
        helpButton = 9,
        smallSquare = 10,
        toolbar = 11,
        accessoryBarAction = 12,
        accessoryBar = 13,
        pushDisclosure = 14,
        badge = 15,
        glass = 16,
    };
    pub const ButtonType = enum(i64) {
        momentaryLight = 0,
        pushOnPushOff = 1,
        toggle = 2,
        @"switch" = 3,
        radio = 4,
        momentaryChange = 5,
        onOff = 6,
        momentaryPushIn = 7,
        accelerator = 8,
        multiLevelAccelerator = 9,
    };
    pub const GradientType = enum(i64) {
        none = 0,
        concaveWeak = 1,
        concaveStrong = 2,
        convexWeak = 3,
        convexStrong = 4,
    };

    pub fn create(title: [*:0]const u8, target: Object, action: Selector) NSButton {
        const btn = objc.msgSendClass(Object, "NSButton", "buttonWithTitle:target:action:", .{ objc.nsString(title), target, action });
        objc.msgSend(void, btn, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = btn };
    }
    pub fn createCheckbox(title: [*:0]const u8, target: Object, action: Selector) NSButton {
        const btn = objc.msgSendClass(Object, "NSButton", "checkboxWithTitle:target:action:", .{ objc.nsString(title), target, action });
        objc.msgSend(void, btn, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = btn };
    }
    pub fn createImage(symbol: [*:0]const u8, desc: [*:0]const u8, target: Object, action: Selector) NSButton {
        const img = objc.msgSendClass(Object, "NSImage", "imageWithSystemSymbolName:accessibilityDescription:", .{ objc.nsString(symbol), objc.nsString(desc) });
        const btn = objc.msgSendClass(Object, "NSButton", "buttonWithImage:target:action:", .{ img, target, action });
        objc.msgSend(void, btn, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = btn };
    }
};

pub const NSButtonCell = struct {
    obj: Object,

    pub const Super = NSActionCell;
    pub const methods = .{
        .{ "alternateImage", ?NSImage, .{} },
        .{ "alternateTitle", objc.NSString, .{} },
        .{ "attributedAlternateTitle", Foundation.NSAttributedString, .{} },
        .{ "attributedTitle", Foundation.NSAttributedString, .{} },
        .{ "backgroundColor", ?NSColor, .{} },
        .{ "bezelStyle", NSButton.BezelStyle, .{} },
        .{ "drawBezelWithFrame:inView:", void, .{ NSRect, NSView } },
        .{ "drawImage:withFrame:inView:", void, .{ NSImage, NSRect, NSView } },
        .{ "drawTitle:withFrame:inView:", NSRect, .{ Foundation.NSAttributedString, NSRect, NSView } },
        .{ "getPeriodicDelay:interval:", void, .{ f32, f32 } },
        .{ "gradientType", NSButton.GradientType, .{} },
        .{ "highlightsBy", objc.NSInteger, .{} },
        .{ "imageDimsWhenDisabled", objc.BOOL, .{} },
        .{ "imagePosition", NSControl.ImagePosition, .{} },
        .{ "imageScaling", NSImageScaling, .{} },
        .{ "keyEquivalent", objc.NSString, .{} },
        .{ "keyEquivalentFont", ?NSFont, .{} },
        .{ "keyEquivalentModifierMask", objc.NSInteger, .{} },
        .{ "mouseEntered:", void, .{NSEvent} },
        .{ "mouseExited:", void, .{NSEvent} },
        .{ "opaque", objc.BOOL, .{} },
        .{ "performClick:", void, .{?Any} },
        .{ "setAlternateImage:", void, .{?NSImage} },
        .{ "setAlternateTitle:", void, .{objc.NSString} },
        .{ "setAttributedAlternateTitle:", void, .{Foundation.NSAttributedString} },
        .{ "setAttributedTitle:", void, .{Foundation.NSAttributedString} },
        .{ "setBackgroundColor:", void, .{?NSColor} },
        .{ "setBezelStyle:", void, .{NSButton.BezelStyle} },
        .{ "setButtonType:", void, .{NSButton.ButtonType} },
        .{ "setGradientType:", void, .{NSButton.GradientType} },
        .{ "setHighlightsBy:", void, .{objc.NSInteger} },
        .{ "setImageDimsWhenDisabled:", void, .{objc.BOOL} },
        .{ "setImagePosition:", void, .{NSControl.ImagePosition} },
        .{ "setImageScaling:", void, .{NSImageScaling} },
        .{ "setKeyEquivalent:", void, .{objc.NSString} },
        .{ "setKeyEquivalentFont:", void, .{?NSFont} },
        .{ "setKeyEquivalentFont:size:", void, .{ objc.NSString, objc.CGFloat } },
        .{ "setKeyEquivalentModifierMask:", void, .{objc.NSInteger} },
        .{ "setPeriodicDelay:interval:", void, .{ f32, f32 } },
        .{ "setShowsBorderOnlyWhileMouseInside:", void, .{objc.BOOL} },
        .{ "setShowsStateBy:", void, .{objc.NSInteger} },
        .{ "setSound:", void, .{?NSSound} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setTransparent:", void, .{objc.BOOL} },
        .{ "showsBorderOnlyWhileMouseInside", objc.BOOL, .{} },
        .{ "showsStateBy", objc.NSInteger, .{} },
        .{ "sound", ?NSSound, .{} },
        .{ "title", objc.NSString, .{} },
        .{ "transparent", objc.BOOL, .{} },
    };

    pub fn send(self: NSButtonCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initImageCell:", Object, .{?NSImage} },
        .{ "initTextCell:", Object, .{objc.NSString} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSButtonCell", class_methods, selector, args);
    }
};

pub const NSButtonTouchBarItem = struct {
    obj: Object,

    pub const Super = NSTouchBarItem;
    pub const methods = .{
        .{ "action", Selector, .{} },
        .{ "bezelColor", ?NSColor, .{} },
        .{ "customizationLabel", objc.NSString, .{} },
        .{ "enabled", objc.BOOL, .{} },
        .{ "image", ?NSImage, .{} },
        .{ "setAction:", void, .{Selector} },
        .{ "setBezelColor:", void, .{?NSColor} },
        .{ "setCustomizationLabel:", void, .{objc.NSString} },
        .{ "setEnabled:", void, .{objc.BOOL} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "target", ?AnyObject, .{} },
        .{ "title", objc.NSString, .{} },
    };

    pub fn send(self: NSButtonTouchBarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "buttonTouchBarItemWithIdentifier:image:target:action:", Object, .{ objc.NSString, NSImage, ?Any, Selector } },
        .{ "buttonTouchBarItemWithIdentifier:title:image:target:action:", Object, .{ objc.NSString, objc.NSString, NSImage, ?Any, Selector } },
        .{ "buttonTouchBarItemWithIdentifier:title:target:action:", Object, .{ objc.NSString, objc.NSString, ?Any, Selector } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSButtonTouchBarItem", class_methods, selector, args);
    }
};

pub const NSCIImageRep = struct {
    obj: Object,

    pub const Super = NSImageRep;
    pub const methods = .{
        .{ "CIImage", Object, .{} },
    };

    pub fn send(self: NSCIImageRep, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCIImage:", Object, .{Object} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCIImageRep", class_methods, selector, args);
    }
};

pub const NSCandidateListTouchBarItem = struct {
    obj: Object,

    pub const Super = NSTouchBarItem;
    pub const methods = .{
        .{ "allowsCollapsing", objc.BOOL, .{} },
        .{ "allowsTextInputContextCandidates", objc.BOOL, .{} },
        .{ "attributedStringForCandidate", ?Foundation.NSAttributedString, .{} },
        .{ "candidateListVisible", objc.BOOL, .{} },
        .{ "candidates", Object, .{} },
        .{ "client", ?NSTextInputClient, .{} },
        .{ "collapsed", objc.BOOL, .{} },
        .{ "customizationLabel", objc.NSString, .{} },
        .{ "delegate", ?NSCandidateListTouchBarItemDelegate, .{} },
        .{ "setAllowsCollapsing:", void, .{objc.BOOL} },
        .{ "setAllowsTextInputContextCandidates:", void, .{objc.BOOL} },
        .{ "setAttributedStringForCandidate:", void, .{?Foundation.NSAttributedString} },
        .{ "setCandidates:forSelectedRange:inString:", void, .{ void, NSRange, ?objc.NSString } },
        .{ "setClient:", void, .{?NSTextInputClient} },
        .{ "setCollapsed:", void, .{objc.BOOL} },
        .{ "setCustomizationLabel:", void, .{objc.NSString} },
        .{ "setDelegate:", void, .{?NSCandidateListTouchBarItemDelegate} },
        .{ "updateWithInsertionPointVisibility:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSCandidateListTouchBarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSCell = struct {
    obj: Object,

    pub const methods = .{
        .{ "acceptsFirstResponder", objc.BOOL, .{} },
        .{ "action", Selector, .{} },
        .{ "alignment", NSTextAlignment, .{} },
        .{ "allowsEditingTextAttributes", objc.BOOL, .{} },
        .{ "allowsMixedState", objc.BOOL, .{} },
        .{ "allowsUndo", objc.BOOL, .{} },
        .{ "attributedStringValue", Foundation.NSAttributedString, .{} },
        .{ "backgroundStyle", NSView.BackgroundStyle, .{} },
        .{ "baseWritingDirection", NSWritingDirection, .{} },
        .{ "bezeled", objc.BOOL, .{} },
        .{ "bordered", objc.BOOL, .{} },
        .{ "calcDrawInfo:", void, .{NSRect} },
        .{ "cellAttribute:", objc.NSInteger, .{NSCell.Attribute} },
        .{ "cellSize", NSSize, .{} },
        .{ "cellSizeForBounds:", NSSize, .{NSRect} },
        .{ "compare:", Foundation.ComparisonResult, .{Any} },
        .{ "continueTracking:at:inView:", objc.BOOL, .{ NSPoint, NSPoint, NSView } },
        .{ "continuous", objc.BOOL, .{} },
        .{ "controlSize", NSControl.ControlSize, .{} },
        .{ "controlTint", NSControlTint, .{} },
        .{ "controlView", ?NSView, .{} },
        .{ "doubleValue", f64, .{} },
        .{ "draggingImageComponentsWithFrame:inView:", Object, .{ NSRect, NSView } },
        .{ "drawFocusRingMaskWithFrame:inView:", void, .{ NSRect, NSView } },
        .{ "drawInteriorWithFrame:inView:", void, .{ NSRect, NSView } },
        .{ "drawWithExpansionFrame:inView:", void, .{ NSRect, NSView } },
        .{ "drawWithFrame:inView:", void, .{ NSRect, NSView } },
        .{ "drawingRectForBounds:", NSRect, .{NSRect} },
        .{ "editWithFrame:inView:editor:delegate:event:", void, .{ NSRect, NSView, NSText, ?Any, ?NSEvent } },
        .{ "editable", objc.BOOL, .{} },
        .{ "enabled", objc.BOOL, .{} },
        .{ "endEditing:", void, .{NSText} },
        .{ "expansionFrameWithFrame:inView:", NSRect, .{ NSRect, NSView } },
        .{ "fieldEditorForView:", ?NSTextView, .{NSView} },
        .{ "floatValue", f32, .{} },
        .{ "focusRingMaskBoundsForFrame:inView:", NSRect, .{ NSRect, NSView } },
        .{ "focusRingType", NSFocusRingType, .{} },
        .{ "font", ?NSFont, .{} },
        .{ "formatter", ?Foundation.NSFormatter, .{} },
        .{ "getPeriodicDelay:interval:", void, .{ f32, f32 } },
        .{ "hasValidObjectValue", objc.BOOL, .{} },
        .{ "highlight:withFrame:inView:", void, .{ objc.BOOL, NSRect, NSView } },
        .{ "highlightColorWithFrame:inView:", ?NSColor, .{ NSRect, NSView } },
        .{ "highlighted", objc.BOOL, .{} },
        .{ "hitTestForEvent:inRect:ofView:", objc.NSInteger, .{ NSEvent, NSRect, NSView } },
        .{ "image", ?NSImage, .{} },
        .{ "imageRectForBounds:", NSRect, .{NSRect} },
        .{ "importsGraphics", objc.BOOL, .{} },
        .{ "intValue", i32, .{} },
        .{ "integerValue", objc.NSInteger, .{} },
        .{ "interiorBackgroundStyle", NSView.BackgroundStyle, .{} },
        .{ "keyEquivalent", objc.NSString, .{} },
        .{ "lineBreakMode", NSLineBreakMode, .{} },
        .{ "menu", ?NSMenu, .{} },
        .{ "menuForEvent:inRect:ofView:", ?NSMenu, .{ NSEvent, NSRect, NSView } },
        .{ "mouseDownFlags", objc.NSInteger, .{} },
        .{ "nextState", objc.NSInteger, .{} },
        .{ "objectValue", ?Any, .{} },
        .{ "opaque", objc.BOOL, .{} },
        .{ "performClick:", void, .{?Any} },
        .{ "refusesFirstResponder", objc.BOOL, .{} },
        .{ "representedObject", ?Any, .{} },
        .{ "resetCursorRect:inView:", void, .{ NSRect, NSView } },
        .{ "scrollable", objc.BOOL, .{} },
        .{ "selectWithFrame:inView:editor:delegate:start:length:", void, .{ NSRect, NSView, NSText, ?Any, objc.NSInteger, objc.NSInteger } },
        .{ "selectable", objc.BOOL, .{} },
        .{ "sendActionOn:", objc.NSInteger, .{objc.NSInteger} },
        .{ "sendsActionOnEndEditing", objc.BOOL, .{} },
        .{ "setAction:", void, .{Selector} },
        .{ "setAlignment:", void, .{NSTextAlignment} },
        .{ "setAllowsEditingTextAttributes:", void, .{objc.BOOL} },
        .{ "setAllowsMixedState:", void, .{objc.BOOL} },
        .{ "setAllowsUndo:", void, .{objc.BOOL} },
        .{ "setAttributedStringValue:", void, .{Foundation.NSAttributedString} },
        .{ "setBackgroundStyle:", void, .{NSView.BackgroundStyle} },
        .{ "setBaseWritingDirection:", void, .{NSWritingDirection} },
        .{ "setBezeled:", void, .{objc.BOOL} },
        .{ "setBordered:", void, .{objc.BOOL} },
        .{ "setCellAttribute:to:", void, .{ NSCell.Attribute, objc.NSInteger } },
        .{ "setContinuous:", void, .{objc.BOOL} },
        .{ "setControlSize:", void, .{NSControl.ControlSize} },
        .{ "setControlTint:", void, .{NSControlTint} },
        .{ "setControlView:", void, .{?NSView} },
        .{ "setDoubleValue:", void, .{f64} },
        .{ "setEditable:", void, .{objc.BOOL} },
        .{ "setEnabled:", void, .{objc.BOOL} },
        .{ "setFloatValue:", void, .{f32} },
        .{ "setFocusRingType:", void, .{NSFocusRingType} },
        .{ "setFont:", void, .{?NSFont} },
        .{ "setFormatter:", void, .{?Foundation.NSFormatter} },
        .{ "setHighlighted:", void, .{objc.BOOL} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setImportsGraphics:", void, .{objc.BOOL} },
        .{ "setIntValue:", void, .{i32} },
        .{ "setIntegerValue:", void, .{objc.NSInteger} },
        .{ "setLineBreakMode:", void, .{NSLineBreakMode} },
        .{ "setMenu:", void, .{?NSMenu} },
        .{ "setNextState", void, .{} },
        .{ "setObjectValue:", void, .{?Any} },
        .{ "setRefusesFirstResponder:", void, .{objc.BOOL} },
        .{ "setRepresentedObject:", void, .{?Any} },
        .{ "setScrollable:", void, .{objc.BOOL} },
        .{ "setSelectable:", void, .{objc.BOOL} },
        .{ "setSendsActionOnEndEditing:", void, .{objc.BOOL} },
        .{ "setShowsFirstResponder:", void, .{objc.BOOL} },
        .{ "setState:", void, .{objc.NSInteger} },
        .{ "setStringValue:", void, .{objc.NSString} },
        .{ "setTag:", void, .{objc.NSInteger} },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setTruncatesLastVisibleLine:", void, .{objc.BOOL} },
        .{ "setType:", void, .{NSCell.CellType} },
        .{ "setUpFieldEditorAttributes:", NSText, .{NSText} },
        .{ "setUserInterfaceLayoutDirection:", void, .{NSUserInterfaceLayoutDirection} },
        .{ "setUsesSingleLineMode:", void, .{objc.BOOL} },
        .{ "setWraps:", void, .{objc.BOOL} },
        .{ "showsFirstResponder", objc.BOOL, .{} },
        .{ "startTrackingAt:inView:", objc.BOOL, .{ NSPoint, NSView } },
        .{ "state", objc.NSInteger, .{} },
        .{ "stopTracking:at:inView:mouseIsUp:", void, .{ NSPoint, NSPoint, NSView, objc.BOOL } },
        .{ "stringValue", objc.NSString, .{} },
        .{ "tag", objc.NSInteger, .{} },
        .{ "takeDoubleValueFrom:", void, .{?Any} },
        .{ "takeFloatValueFrom:", void, .{?Any} },
        .{ "takeIntValueFrom:", void, .{?Any} },
        .{ "takeIntegerValueFrom:", void, .{?Any} },
        .{ "takeObjectValueFrom:", void, .{?Any} },
        .{ "takeStringValueFrom:", void, .{?Any} },
        .{ "target", ?AnyObject, .{} },
        .{ "title", objc.NSString, .{} },
        .{ "titleRectForBounds:", NSRect, .{NSRect} },
        .{ "trackMouse:inRect:ofView:untilMouseUp:", objc.BOOL, .{ NSEvent, NSRect, NSView, objc.BOOL } },
        .{ "truncatesLastVisibleLine", objc.BOOL, .{} },
        .{ "type", NSCell.CellType, .{} },
        .{ "userInterfaceLayoutDirection", NSUserInterfaceLayoutDirection, .{} },
        .{ "usesSingleLineMode", objc.BOOL, .{} },
        .{ "wantsNotificationForMarkedText", objc.BOOL, .{} },
        .{ "wraps", objc.BOOL, .{} },
    };

    pub fn send(self: NSCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultFocusRingType", NSFocusRingType, .{} },
        .{ "defaultMenu", ?NSMenu, .{} },
        .{ "init", Object, .{} },
        .{ "initImageCell:", Object, .{?NSImage} },
        .{ "initTextCell:", Object, .{objc.NSString} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "prefersTrackingUntilMouseUp", objc.BOOL, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCell", class_methods, selector, args);
    }

    pub const Attribute = enum(i64) {
        cellDisabled = 0,
        cellState = 1,
        pushInCell = 2,
        cellEditable = 3,
        changeGrayCell = 4,
        cellHighlighted = 5,
        cellLightsByContents = 6,
        cellLightsByGray = 7,
        changeBackgroundCell = 8,
        cellLightsByBackground = 9,
        cellIsBordered = 10,
        cellHasOverlappingImage = 11,
        cellHasImageHorizontal = 12,
        cellHasImageOnLeftOrBottom = 13,
        cellChangesContents = 14,
        cellIsInsetButton = 15,
        cellAllowsMixedState = 16,
    };
    pub const CellType = enum(i64) {
        nullCellType = 0,
        textCellType = 1,
        imageCellType = 2,
    };
};

pub const NSClickGestureRecognizer = struct {
    obj: Object,

    pub const Super = NSGestureRecognizer;
    pub const methods = .{
        .{ "buttonMask", objc.NSInteger, .{} },
        .{ "numberOfClicksRequired", objc.NSInteger, .{} },
        .{ "numberOfTouchesRequired", objc.NSInteger, .{} },
        .{ "setButtonMask:", void, .{objc.NSInteger} },
        .{ "setNumberOfClicksRequired:", void, .{objc.NSInteger} },
        .{ "setNumberOfTouchesRequired:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSClickGestureRecognizer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSClipView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "automaticallyAdjustsContentInsets", objc.BOOL, .{} },
        .{ "autoscroll:", objc.BOOL, .{NSEvent} },
        .{ "backgroundColor", NSColor, .{} },
        .{ "constrainBoundsRect:", NSRect, .{NSRect} },
        .{ "constrainScrollPoint:", NSPoint, .{NSPoint} },
        .{ "contentInsets", NSEdgeInsets, .{} },
        .{ "copiesOnScroll", objc.BOOL, .{} },
        .{ "documentCursor", ?NSCursor, .{} },
        .{ "documentRect", NSRect, .{} },
        .{ "documentView", ?NSView, .{} },
        .{ "documentVisibleRect", NSRect, .{} },
        .{ "drawsBackground", objc.BOOL, .{} },
        .{ "scrollToPoint:", void, .{NSPoint} },
        .{ "setAutomaticallyAdjustsContentInsets:", void, .{objc.BOOL} },
        .{ "setBackgroundColor:", void, .{NSColor} },
        .{ "setContentInsets:", void, .{NSEdgeInsets} },
        .{ "setCopiesOnScroll:", void, .{objc.BOOL} },
        .{ "setDocumentCursor:", void, .{?NSCursor} },
        .{ "setDocumentView:", void, .{?NSView} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "viewBoundsChanged:", void, .{Foundation.NSNotification} },
        .{ "viewFrameChanged:", void, .{Foundation.NSNotification} },
    };

    pub fn send(self: NSClipView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSCollectionLayoutAnchor = struct {
    obj: Object,

    pub const methods = .{
        .{ "edges", objc.NSInteger, .{} },
        .{ "isAbsoluteOffset", objc.BOOL, .{} },
        .{ "isFractionalOffset", objc.BOOL, .{} },
        .{ "offset", NSPoint, .{} },
        .{ "setIsAbsoluteOffset:", void, .{objc.BOOL} },
        .{ "setIsFractionalOffset:", void, .{objc.BOOL} },
        .{ "setOffset:", void, .{NSPoint} },
    };

    pub fn send(self: NSCollectionLayoutAnchor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "layoutAnchorWithEdges:", Object, .{objc.NSInteger} },
        .{ "layoutAnchorWithEdges:absoluteOffset:", Object, .{ objc.NSInteger, NSPoint } },
        .{ "layoutAnchorWithEdges:fractionalOffset:", Object, .{ objc.NSInteger, NSPoint } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionLayoutAnchor", class_methods, selector, args);
    }
};

pub const NSCollectionLayoutBoundarySupplementaryItem = struct {
    obj: Object,

    pub const Super = NSCollectionLayoutSupplementaryItem;
    pub const methods = .{
        .{ "alignment", NSRectAlignment, .{} },
        .{ "extendsBoundary", objc.BOOL, .{} },
        .{ "offset", NSPoint, .{} },
        .{ "pinToVisibleBounds", objc.BOOL, .{} },
        .{ "setExtendsBoundary:", void, .{objc.BOOL} },
        .{ "setOffset:", void, .{NSPoint} },
        .{ "setPinToVisibleBounds:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSCollectionLayoutBoundarySupplementaryItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "boundarySupplementaryItemWithLayoutSize:elementKind:alignment:", Object, .{ NSCollectionLayoutSize, objc.NSString, NSRectAlignment } },
        .{ "boundarySupplementaryItemWithLayoutSize:elementKind:alignment:absoluteOffset:", Object, .{ NSCollectionLayoutSize, objc.NSString, NSRectAlignment, NSPoint } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionLayoutBoundarySupplementaryItem", class_methods, selector, args);
    }
};

pub const NSCollectionLayoutDecorationItem = struct {
    obj: Object,

    pub const Super = NSCollectionLayoutItem;
    pub const methods = .{
        .{ "elementKind", objc.NSString, .{} },
        .{ "setZIndex:", void, .{objc.NSInteger} },
        .{ "zIndex", objc.NSInteger, .{} },
    };

    pub fn send(self: NSCollectionLayoutDecorationItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "backgroundDecorationItemWithElementKind:", ?*anyopaque, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionLayoutDecorationItem", class_methods, selector, args);
    }
};

pub const NSCollectionLayoutDimension = struct {
    obj: Object,

    pub const methods = .{
        .{ "dimension", objc.CGFloat, .{} },
        .{ "isAbsolute", objc.BOOL, .{} },
        .{ "isEstimated", objc.BOOL, .{} },
        .{ "isFractionalHeight", objc.BOOL, .{} },
        .{ "isFractionalWidth", objc.BOOL, .{} },
    };

    pub fn send(self: NSCollectionLayoutDimension, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "absoluteDimension:", ?*anyopaque, .{objc.CGFloat} },
        .{ "estimatedDimension:", ?*anyopaque, .{objc.CGFloat} },
        .{ "fractionalHeightDimension:", ?*anyopaque, .{objc.CGFloat} },
        .{ "fractionalWidthDimension:", ?*anyopaque, .{objc.CGFloat} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionLayoutDimension", class_methods, selector, args);
    }
};

pub const NSCollectionLayoutEdgeSpacing = struct {
    obj: Object,

    pub const methods = .{
        .{ "bottom", ?NSCollectionLayoutSpacing, .{} },
        .{ "leading", ?NSCollectionLayoutSpacing, .{} },
        .{ "top", ?NSCollectionLayoutSpacing, .{} },
        .{ "trailing", ?NSCollectionLayoutSpacing, .{} },
    };

    pub fn send(self: NSCollectionLayoutEdgeSpacing, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "spacingForLeading:top:trailing:bottom:", Object, .{ ?NSCollectionLayoutSpacing, ?NSCollectionLayoutSpacing, ?NSCollectionLayoutSpacing, ?NSCollectionLayoutSpacing } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionLayoutEdgeSpacing", class_methods, selector, args);
    }
};

pub const NSCollectionLayoutGroup = struct {
    obj: Object,

    pub const Super = NSCollectionLayoutItem;
    pub const methods = .{
        .{ "interItemSpacing", ?NSCollectionLayoutSpacing, .{} },
        .{ "setInterItemSpacing:", void, .{?NSCollectionLayoutSpacing} },
        .{ "setSupplementaryItems:", void, .{Object} },
        .{ "subitems", Object, .{} },
        .{ "supplementaryItems", Object, .{} },
        .{ "visualDescription", objc.NSString, .{} },
    };

    pub fn send(self: NSCollectionLayoutGroup, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "customGroupWithLayoutSize:itemProvider:", ?*anyopaque, .{ NSCollectionLayoutSize, objc.NSString } },
        .{ "horizontalGroupWithLayoutSize:subitem:count:", ?*anyopaque, .{ NSCollectionLayoutSize, NSCollectionLayoutItem, objc.NSInteger } },
        .{ "horizontalGroupWithLayoutSize:subitems:", ?*anyopaque, .{ NSCollectionLayoutSize, void } },
        .{ "verticalGroupWithLayoutSize:subitem:count:", ?*anyopaque, .{ NSCollectionLayoutSize, NSCollectionLayoutItem, objc.NSInteger } },
        .{ "verticalGroupWithLayoutSize:subitems:", ?*anyopaque, .{ NSCollectionLayoutSize, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionLayoutGroup", class_methods, selector, args);
    }
};

pub const NSCollectionLayoutGroupCustomItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "frame", NSRect, .{} },
        .{ "zIndex", objc.NSInteger, .{} },
    };

    pub fn send(self: NSCollectionLayoutGroupCustomItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "customItemWithFrame:", Object, .{NSRect} },
        .{ "customItemWithFrame:zIndex:", Object, .{ NSRect, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionLayoutGroupCustomItem", class_methods, selector, args);
    }
};

pub const NSCollectionLayoutItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "contentInsets", Object, .{} },
        .{ "edgeSpacing", ?NSCollectionLayoutEdgeSpacing, .{} },
        .{ "layoutSize", NSCollectionLayoutSize, .{} },
        .{ "setContentInsets:", void, .{Object} },
        .{ "setEdgeSpacing:", void, .{?NSCollectionLayoutEdgeSpacing} },
        .{ "supplementaryItems", Object, .{} },
    };

    pub fn send(self: NSCollectionLayoutItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "itemWithLayoutSize:", Object, .{NSCollectionLayoutSize} },
        .{ "itemWithLayoutSize:supplementaryItems:", Object, .{ NSCollectionLayoutSize, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionLayoutItem", class_methods, selector, args);
    }
};

pub const NSCollectionLayoutSection = struct {
    obj: Object,

    pub const methods = .{
        .{ "boundarySupplementaryItems", Object, .{} },
        .{ "contentInsets", Object, .{} },
        .{ "decorationItems", Object, .{} },
        .{ "interGroupSpacing", objc.CGFloat, .{} },
        .{ "orthogonalScrollingBehavior", NSCollectionLayoutSectionOrthogonalScrollingBehavior, .{} },
        .{ "setBoundarySupplementaryItems:", void, .{Object} },
        .{ "setContentInsets:", void, .{Object} },
        .{ "setDecorationItems:", void, .{Object} },
        .{ "setInterGroupSpacing:", void, .{objc.CGFloat} },
        .{ "setOrthogonalScrollingBehavior:", void, .{NSCollectionLayoutSectionOrthogonalScrollingBehavior} },
        .{ "setSupplementariesFollowContentInsets:", void, .{objc.BOOL} },
        .{ "setVisibleItemsInvalidationHandler:", void, .{void} },
        .{ "supplementariesFollowContentInsets", objc.BOOL, .{} },
        .{ "visibleItemsInvalidationHandler", void, .{} },
    };

    pub fn send(self: NSCollectionLayoutSection, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sectionWithGroup:", Object, .{NSCollectionLayoutGroup} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionLayoutSection", class_methods, selector, args);
    }
};

pub const NSCollectionLayoutSize = struct {
    obj: Object,

    pub const methods = .{
        .{ "heightDimension", NSCollectionLayoutDimension, .{} },
        .{ "widthDimension", NSCollectionLayoutDimension, .{} },
    };

    pub fn send(self: NSCollectionLayoutSize, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sizeWithWidthDimension:heightDimension:", Object, .{ NSCollectionLayoutDimension, NSCollectionLayoutDimension } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionLayoutSize", class_methods, selector, args);
    }
};

pub const NSCollectionLayoutSpacing = struct {
    obj: Object,

    pub const methods = .{
        .{ "isFixedSpacing", objc.BOOL, .{} },
        .{ "isFlexibleSpacing", objc.BOOL, .{} },
        .{ "spacing", objc.CGFloat, .{} },
    };

    pub fn send(self: NSCollectionLayoutSpacing, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "fixedSpacing:", ?*anyopaque, .{objc.CGFloat} },
        .{ "flexibleSpacing:", ?*anyopaque, .{objc.CGFloat} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionLayoutSpacing", class_methods, selector, args);
    }
};

pub const NSCollectionLayoutSupplementaryItem = struct {
    obj: Object,

    pub const Super = NSCollectionLayoutItem;
    pub const methods = .{
        .{ "containerAnchor", NSCollectionLayoutAnchor, .{} },
        .{ "elementKind", objc.NSString, .{} },
        .{ "itemAnchor", ?NSCollectionLayoutAnchor, .{} },
        .{ "setZIndex:", void, .{objc.NSInteger} },
        .{ "zIndex", objc.NSInteger, .{} },
    };

    pub fn send(self: NSCollectionLayoutSupplementaryItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "supplementaryItemWithLayoutSize:elementKind:containerAnchor:", Object, .{ NSCollectionLayoutSize, objc.NSString, NSCollectionLayoutAnchor } },
        .{ "supplementaryItemWithLayoutSize:elementKind:containerAnchor:itemAnchor:", Object, .{ NSCollectionLayoutSize, objc.NSString, NSCollectionLayoutAnchor, NSCollectionLayoutAnchor } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionLayoutSupplementaryItem", class_methods, selector, args);
    }
};

pub const NSCollectionView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "allowsEmptySelection", objc.BOOL, .{} },
        .{ "allowsMultipleSelection", objc.BOOL, .{} },
        .{ "backgroundColors", Object, .{} },
        .{ "backgroundView", ?NSView, .{} },
        .{ "backgroundViewScrollsWithContent", objc.BOOL, .{} },
        .{ "collectionViewLayout", ?NSCollectionViewLayout, .{} },
        .{ "content", Object, .{} },
        .{ "dataSource", ?NSCollectionViewDataSource, .{} },
        .{ "delegate", ?NSCollectionViewDelegate, .{} },
        .{ "deleteItemsAtIndexPaths:", void, .{?*anyopaque} },
        .{ "deleteSections:", void, .{Foundation.NSIndexSet} },
        .{ "deselectAll:", void, .{?Any} },
        .{ "deselectItemsAtIndexPaths:", void, .{?*anyopaque} },
        .{ "draggingImageForItemsAtIndexPaths:withEvent:offset:", NSImage, .{ ?*anyopaque, NSEvent, NSPoint } },
        .{ "draggingImageForItemsAtIndexes:withEvent:offset:", NSImage, .{ Foundation.NSIndexSet, NSEvent, NSPoint } },
        .{ "firstResponder", objc.BOOL, .{} },
        .{ "frameForItemAtIndex:", NSRect, .{objc.NSInteger} },
        .{ "frameForItemAtIndex:withNumberOfItems:", NSRect, .{ objc.NSInteger, objc.NSInteger } },
        .{ "indexPathForItem:", ?*anyopaque, .{NSCollectionViewItem} },
        .{ "indexPathForItemAtPoint:", ?*anyopaque, .{NSPoint} },
        .{ "indexPathsForVisibleItems", ?*anyopaque, .{} },
        .{ "indexPathsForVisibleSupplementaryElementsOfKind:", ?*anyopaque, .{objc.NSString} },
        .{ "insertItemsAtIndexPaths:", void, .{?*anyopaque} },
        .{ "insertSections:", void, .{Foundation.NSIndexSet} },
        .{ "itemAtIndex:", ?NSCollectionViewItem, .{objc.NSInteger} },
        .{ "itemAtIndexPath:", ?NSCollectionViewItem, .{?*anyopaque} },
        .{ "itemPrototype", ?NSCollectionViewItem, .{} },
        .{ "layoutAttributesForItemAtIndexPath:", ?NSCollectionViewLayoutAttributes, .{?*anyopaque} },
        .{ "layoutAttributesForSupplementaryElementOfKind:atIndexPath:", ?NSCollectionViewLayoutAttributes, .{ objc.NSString, ?*anyopaque } },
        .{ "makeItemWithIdentifier:forIndexPath:", NSCollectionViewItem, .{ objc.NSString, ?*anyopaque } },
        .{ "makeSupplementaryViewOfKind:withIdentifier:forIndexPath:", NSView, .{ objc.NSString, objc.NSString, ?*anyopaque } },
        .{ "maxItemSize", NSSize, .{} },
        .{ "maxNumberOfColumns", objc.NSInteger, .{} },
        .{ "maxNumberOfRows", objc.NSInteger, .{} },
        .{ "minItemSize", NSSize, .{} },
        .{ "moveItemAtIndexPath:toIndexPath:", void, .{ ?*anyopaque, ?*anyopaque } },
        .{ "moveSection:toSection:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "newItemForRepresentedObject:", NSCollectionViewItem, .{Any} },
        .{ "numberOfItemsInSection:", objc.NSInteger, .{objc.NSInteger} },
        .{ "numberOfSections", objc.NSInteger, .{} },
        .{ "performBatchUpdates:completionHandler:", void, .{ void, void } },
        .{ "prefetchDataSource", ?NSCollectionViewPrefetching, .{} },
        .{ "registerClass:forItemWithIdentifier:", void, .{ ?AnyClass, objc.NSString } },
        .{ "registerClass:forSupplementaryViewOfKind:withIdentifier:", void, .{ ?AnyClass, objc.NSString, objc.NSString } },
        .{ "registerNib:forItemWithIdentifier:", void, .{ ?NSNib, objc.NSString } },
        .{ "registerNib:forSupplementaryViewOfKind:withIdentifier:", void, .{ ?NSNib, objc.NSString, objc.NSString } },
        .{ "reloadData", void, .{} },
        .{ "reloadItemsAtIndexPaths:", void, .{?*anyopaque} },
        .{ "reloadSections:", void, .{Foundation.NSIndexSet} },
        .{ "scrollToItemsAtIndexPaths:scrollPosition:", void, .{ ?*anyopaque, objc.NSInteger } },
        .{ "selectAll:", void, .{?Any} },
        .{ "selectItemsAtIndexPaths:scrollPosition:", void, .{ ?*anyopaque, objc.NSInteger } },
        .{ "selectable", objc.BOOL, .{} },
        .{ "selectionIndexPaths", ?*anyopaque, .{} },
        .{ "selectionIndexes", Foundation.NSIndexSet, .{} },
        .{ "setAllowsEmptySelection:", void, .{objc.BOOL} },
        .{ "setAllowsMultipleSelection:", void, .{objc.BOOL} },
        .{ "setBackgroundColors:", void, .{Object} },
        .{ "setBackgroundView:", void, .{?NSView} },
        .{ "setBackgroundViewScrollsWithContent:", void, .{objc.BOOL} },
        .{ "setCollectionViewLayout:", void, .{?NSCollectionViewLayout} },
        .{ "setContent:", void, .{Object} },
        .{ "setDataSource:", void, .{?NSCollectionViewDataSource} },
        .{ "setDelegate:", void, .{?NSCollectionViewDelegate} },
        .{ "setDraggingSourceOperationMask:forLocal:", void, .{ objc.NSInteger, objc.BOOL } },
        .{ "setItemPrototype:", void, .{?NSCollectionViewItem} },
        .{ "setMaxItemSize:", void, .{NSSize} },
        .{ "setMaxNumberOfColumns:", void, .{objc.NSInteger} },
        .{ "setMaxNumberOfRows:", void, .{objc.NSInteger} },
        .{ "setMinItemSize:", void, .{NSSize} },
        .{ "setPrefetchDataSource:", void, .{?NSCollectionViewPrefetching} },
        .{ "setSelectable:", void, .{objc.BOOL} },
        .{ "setSelectionIndexPaths:", void, .{?*anyopaque} },
        .{ "setSelectionIndexes:", void, .{Foundation.NSIndexSet} },
        .{ "supplementaryViewForElementKind:atIndexPath:", ?NSCollectionViewElement, .{ objc.NSString, ?*anyopaque } },
        .{ "toggleSectionCollapse:", void, .{Any} },
        .{ "visibleItems", Object, .{} },
        .{ "visibleSupplementaryViewsOfKind:", Object, .{objc.NSString} },
    };

    pub fn send(self: NSCollectionView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const DropOperation = enum(i64) {
        on = 0,
        before = 1,
    };
    pub const ScrollDirection = enum(i64) {
        vertical = 0,
        horizontal = 1,
    };
    pub const UpdateAction = enum(i64) {
        insert = 0,
        delete = 1,
        reload = 2,
        move = 3,
        none = 4,
    };
};

pub const NSCollectionViewCompositionalLayout = struct {
    obj: Object,

    pub const Super = NSCollectionViewLayout;
    pub const methods = .{
        .{ "configuration", NSCollectionViewCompositionalLayoutConfiguration, .{} },
        .{ "setConfiguration:", void, .{NSCollectionViewCompositionalLayoutConfiguration} },
    };

    pub fn send(self: NSCollectionViewCompositionalLayout, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithSection:", Object, .{NSCollectionLayoutSection} },
        .{ "initWithSection:configuration:", Object, .{ NSCollectionLayoutSection, NSCollectionViewCompositionalLayoutConfiguration } },
        .{ "initWithSectionProvider:", Object, .{objc.NSString} },
        .{ "initWithSectionProvider:configuration:", Object, .{ objc.NSString, NSCollectionViewCompositionalLayoutConfiguration } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionViewCompositionalLayout", class_methods, selector, args);
    }
};

pub const NSCollectionViewCompositionalLayoutConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "boundarySupplementaryItems", Object, .{} },
        .{ "interSectionSpacing", objc.CGFloat, .{} },
        .{ "scrollDirection", NSCollectionView.ScrollDirection, .{} },
        .{ "setBoundarySupplementaryItems:", void, .{Object} },
        .{ "setInterSectionSpacing:", void, .{objc.CGFloat} },
        .{ "setScrollDirection:", void, .{NSCollectionView.ScrollDirection} },
    };

    pub fn send(self: NSCollectionViewCompositionalLayoutConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSCollectionViewDiffableDataSource = struct {
    obj: Object,

    pub const methods = .{
        .{ "applySnapshot:animatingDifferences:", void, .{ NSDiffableDataSourceSnapshot, objc.BOOL } },
        .{ "indexPathForItemIdentifier:", ?*anyopaque, .{Any} },
        .{ "itemIdentifierForIndexPath:", ?Any, .{?*anyopaque} },
        .{ "setSupplementaryViewProvider:", void, .{?*anyopaque} },
        .{ "snapshot", NSDiffableDataSourceSnapshot, .{} },
        .{ "supplementaryViewProvider", ?*anyopaque, .{} },
    };

    pub fn send(self: NSCollectionViewDiffableDataSource, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCollectionView:itemProvider:", Object, .{ NSCollectionView, objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionViewDiffableDataSource", class_methods, selector, args);
    }
};

pub const NSCollectionViewFlowLayout = struct {
    obj: Object,

    pub const Super = NSCollectionViewLayout;
    pub const methods = .{
        .{ "collapseSectionAtIndex:", void, .{objc.NSInteger} },
        .{ "estimatedItemSize", NSSize, .{} },
        .{ "expandSectionAtIndex:", void, .{objc.NSInteger} },
        .{ "footerReferenceSize", NSSize, .{} },
        .{ "headerReferenceSize", NSSize, .{} },
        .{ "itemSize", NSSize, .{} },
        .{ "minimumInteritemSpacing", objc.CGFloat, .{} },
        .{ "minimumLineSpacing", objc.CGFloat, .{} },
        .{ "scrollDirection", NSCollectionView.ScrollDirection, .{} },
        .{ "sectionAtIndexIsCollapsed:", objc.BOOL, .{objc.NSInteger} },
        .{ "sectionFootersPinToVisibleBounds", objc.BOOL, .{} },
        .{ "sectionHeadersPinToVisibleBounds", objc.BOOL, .{} },
        .{ "sectionInset", NSEdgeInsets, .{} },
        .{ "setEstimatedItemSize:", void, .{NSSize} },
        .{ "setFooterReferenceSize:", void, .{NSSize} },
        .{ "setHeaderReferenceSize:", void, .{NSSize} },
        .{ "setItemSize:", void, .{NSSize} },
        .{ "setMinimumInteritemSpacing:", void, .{objc.CGFloat} },
        .{ "setMinimumLineSpacing:", void, .{objc.CGFloat} },
        .{ "setScrollDirection:", void, .{NSCollectionView.ScrollDirection} },
        .{ "setSectionFootersPinToVisibleBounds:", void, .{objc.BOOL} },
        .{ "setSectionHeadersPinToVisibleBounds:", void, .{objc.BOOL} },
        .{ "setSectionInset:", void, .{NSEdgeInsets} },
    };

    pub fn send(self: NSCollectionViewFlowLayout, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSCollectionViewFlowLayoutInvalidationContext = struct {
    obj: Object,

    pub const Super = NSCollectionViewLayoutInvalidationContext;
    pub const methods = .{
        .{ "invalidateFlowLayoutAttributes", objc.BOOL, .{} },
        .{ "invalidateFlowLayoutDelegateMetrics", objc.BOOL, .{} },
        .{ "setInvalidateFlowLayoutAttributes:", void, .{objc.BOOL} },
        .{ "setInvalidateFlowLayoutDelegateMetrics:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSCollectionViewFlowLayoutInvalidationContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSCollectionViewGridLayout = struct {
    obj: Object,

    pub const Super = NSCollectionViewLayout;
    pub const methods = .{
        .{ "backgroundColors", Object, .{} },
        .{ "margins", NSEdgeInsets, .{} },
        .{ "maximumItemSize", NSSize, .{} },
        .{ "maximumNumberOfColumns", objc.NSInteger, .{} },
        .{ "maximumNumberOfRows", objc.NSInteger, .{} },
        .{ "minimumInteritemSpacing", objc.CGFloat, .{} },
        .{ "minimumItemSize", NSSize, .{} },
        .{ "minimumLineSpacing", objc.CGFloat, .{} },
        .{ "setBackgroundColors:", void, .{Object} },
        .{ "setMargins:", void, .{NSEdgeInsets} },
        .{ "setMaximumItemSize:", void, .{NSSize} },
        .{ "setMaximumNumberOfColumns:", void, .{objc.NSInteger} },
        .{ "setMaximumNumberOfRows:", void, .{objc.NSInteger} },
        .{ "setMinimumInteritemSpacing:", void, .{objc.CGFloat} },
        .{ "setMinimumItemSize:", void, .{NSSize} },
        .{ "setMinimumLineSpacing:", void, .{objc.CGFloat} },
    };

    pub fn send(self: NSCollectionViewGridLayout, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSCollectionViewItem = struct {
    obj: Object,

    pub const Super = NSViewController;
    pub const methods = .{
        .{ "collectionView", ?NSCollectionView, .{} },
        .{ "draggingImageComponents", Object, .{} },
        .{ "highlightState", NSCollectionViewItem.HighlightState, .{} },
        .{ "imageView", ?NSImageView, .{} },
        .{ "selected", objc.BOOL, .{} },
        .{ "setHighlightState:", void, .{NSCollectionViewItem.HighlightState} },
        .{ "setImageView:", void, .{?NSImageView} },
        .{ "setSelected:", void, .{objc.BOOL} },
        .{ "setTextField:", void, .{?NSTextField} },
        .{ "textField", ?NSTextField, .{} },
    };

    pub fn send(self: NSCollectionViewItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const HighlightState = enum(i64) {
        none = 0,
        forSelection = 1,
        forDeselection = 2,
        asDropTarget = 3,
    };
};

pub const NSCollectionViewLayout = struct {
    obj: Object,

    pub const methods = .{
        .{ "collectionView", ?NSCollectionView, .{} },
        .{ "collectionViewContentSize", NSSize, .{} },
        .{ "finalLayoutAttributesForDisappearingDecorationElementOfKind:atIndexPath:", ?NSCollectionViewLayoutAttributes, .{ objc.NSString, ?*anyopaque } },
        .{ "finalLayoutAttributesForDisappearingItemAtIndexPath:", ?NSCollectionViewLayoutAttributes, .{?*anyopaque} },
        .{ "finalLayoutAttributesForDisappearingSupplementaryElementOfKind:atIndexPath:", ?NSCollectionViewLayoutAttributes, .{ objc.NSString, ?*anyopaque } },
        .{ "finalizeAnimatedBoundsChange", void, .{} },
        .{ "finalizeCollectionViewUpdates", void, .{} },
        .{ "finalizeLayoutTransition", void, .{} },
        .{ "indexPathsToDeleteForDecorationViewOfKind:", ?*anyopaque, .{objc.NSString} },
        .{ "indexPathsToDeleteForSupplementaryViewOfKind:", ?*anyopaque, .{objc.NSString} },
        .{ "indexPathsToInsertForDecorationViewOfKind:", ?*anyopaque, .{objc.NSString} },
        .{ "indexPathsToInsertForSupplementaryViewOfKind:", ?*anyopaque, .{objc.NSString} },
        .{ "initialLayoutAttributesForAppearingDecorationElementOfKind:atIndexPath:", ?NSCollectionViewLayoutAttributes, .{ objc.NSString, ?*anyopaque } },
        .{ "initialLayoutAttributesForAppearingItemAtIndexPath:", ?NSCollectionViewLayoutAttributes, .{?*anyopaque} },
        .{ "initialLayoutAttributesForAppearingSupplementaryElementOfKind:atIndexPath:", ?NSCollectionViewLayoutAttributes, .{ objc.NSString, ?*anyopaque } },
        .{ "invalidateLayout", void, .{} },
        .{ "invalidateLayoutWithContext:", void, .{NSCollectionViewLayoutInvalidationContext} },
        .{ "invalidationContextForBoundsChange:", NSCollectionViewLayoutInvalidationContext, .{NSRect} },
        .{ "invalidationContextForPreferredLayoutAttributes:withOriginalAttributes:", NSCollectionViewLayoutInvalidationContext, .{ NSCollectionViewLayoutAttributes, NSCollectionViewLayoutAttributes } },
        .{ "layoutAttributesForDecorationViewOfKind:atIndexPath:", ?NSCollectionViewLayoutAttributes, .{ objc.NSString, ?*anyopaque } },
        .{ "layoutAttributesForDropTargetAtPoint:", ?NSCollectionViewLayoutAttributes, .{NSPoint} },
        .{ "layoutAttributesForElementsInRect:", Object, .{NSRect} },
        .{ "layoutAttributesForInterItemGapBeforeIndexPath:", ?NSCollectionViewLayoutAttributes, .{?*anyopaque} },
        .{ "layoutAttributesForItemAtIndexPath:", ?NSCollectionViewLayoutAttributes, .{?*anyopaque} },
        .{ "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", ?NSCollectionViewLayoutAttributes, .{ objc.NSString, ?*anyopaque } },
        .{ "prepareForAnimatedBoundsChange:", void, .{NSRect} },
        .{ "prepareForCollectionViewUpdates:", void, .{void} },
        .{ "prepareForTransitionFromLayout:", void, .{NSCollectionViewLayout} },
        .{ "prepareForTransitionToLayout:", void, .{NSCollectionViewLayout} },
        .{ "prepareLayout", void, .{} },
        .{ "registerClass:forDecorationViewOfKind:", void, .{ ?AnyClass, objc.NSString } },
        .{ "registerNib:forDecorationViewOfKind:", void, .{ ?NSNib, objc.NSString } },
        .{ "shouldInvalidateLayoutForBoundsChange:", objc.BOOL, .{NSRect} },
        .{ "shouldInvalidateLayoutForPreferredLayoutAttributes:withOriginalAttributes:", objc.BOOL, .{ NSCollectionViewLayoutAttributes, NSCollectionViewLayoutAttributes } },
        .{ "targetContentOffsetForProposedContentOffset:", NSPoint, .{NSPoint} },
        .{ "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", NSPoint, .{ NSPoint, NSPoint } },
    };

    pub fn send(self: NSCollectionViewLayout, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "invalidationContextClass", AnyClass, .{} },
        .{ "layoutAttributesClass", AnyClass, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionViewLayout", class_methods, selector, args);
    }
};

pub const NSCollectionViewLayoutAttributes = struct {
    obj: Object,

    pub const methods = .{
        .{ "alpha", objc.CGFloat, .{} },
        .{ "frame", NSRect, .{} },
        .{ "hidden", objc.BOOL, .{} },
        .{ "indexPath", ?*anyopaque, .{} },
        .{ "representedElementCategory", NSCollectionElementCategory, .{} },
        .{ "representedElementKind", ?objc.NSString, .{} },
        .{ "setAlpha:", void, .{objc.CGFloat} },
        .{ "setFrame:", void, .{NSRect} },
        .{ "setHidden:", void, .{objc.BOOL} },
        .{ "setIndexPath:", void, .{?*anyopaque} },
        .{ "setSize:", void, .{NSSize} },
        .{ "setZIndex:", void, .{objc.NSInteger} },
        .{ "size", NSSize, .{} },
        .{ "zIndex", objc.NSInteger, .{} },
    };

    pub fn send(self: NSCollectionViewLayoutAttributes, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "layoutAttributesForDecorationViewOfKind:withIndexPath:", Object, .{ objc.NSString, ?*anyopaque } },
        .{ "layoutAttributesForInterItemGapBeforeIndexPath:", Object, .{?*anyopaque} },
        .{ "layoutAttributesForItemWithIndexPath:", Object, .{?*anyopaque} },
        .{ "layoutAttributesForSupplementaryViewOfKind:withIndexPath:", Object, .{ objc.NSString, ?*anyopaque } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionViewLayoutAttributes", class_methods, selector, args);
    }
};

pub const NSCollectionViewLayoutInvalidationContext = struct {
    obj: Object,

    pub const methods = .{
        .{ "contentOffsetAdjustment", NSPoint, .{} },
        .{ "contentSizeAdjustment", NSSize, .{} },
        .{ "invalidateDataSourceCounts", objc.BOOL, .{} },
        .{ "invalidateDecorationElementsOfKind:atIndexPaths:", void, .{ objc.NSString, ?*anyopaque } },
        .{ "invalidateEverything", objc.BOOL, .{} },
        .{ "invalidateItemsAtIndexPaths:", void, .{?*anyopaque} },
        .{ "invalidateSupplementaryElementsOfKind:atIndexPaths:", void, .{ objc.NSString, ?*anyopaque } },
        .{ "invalidatedDecorationIndexPaths", ?*anyopaque, .{} },
        .{ "invalidatedItemIndexPaths", ?*anyopaque, .{} },
        .{ "invalidatedSupplementaryIndexPaths", ?*anyopaque, .{} },
        .{ "setContentOffsetAdjustment:", void, .{NSPoint} },
        .{ "setContentSizeAdjustment:", void, .{NSSize} },
    };

    pub fn send(self: NSCollectionViewLayoutInvalidationContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSCollectionViewTransitionLayout = struct {
    obj: Object,

    pub const Super = NSCollectionViewLayout;
    pub const methods = .{
        .{ "currentLayout", NSCollectionViewLayout, .{} },
        .{ "nextLayout", NSCollectionViewLayout, .{} },
        .{ "setTransitionProgress:", void, .{objc.CGFloat} },
        .{ "transitionProgress", objc.CGFloat, .{} },
        .{ "updateValue:forAnimatedKey:", void, .{ objc.CGFloat, objc.NSString } },
        .{ "valueForAnimatedKey:", objc.CGFloat, .{objc.NSString} },
    };

    pub fn send(self: NSCollectionViewTransitionLayout, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCurrentLayout:nextLayout:", Object, .{ NSCollectionViewLayout, NSCollectionViewLayout } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCollectionViewTransitionLayout", class_methods, selector, args);
    }
};

pub const NSCollectionViewUpdateItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "indexPathAfterUpdate", ?*anyopaque, .{} },
        .{ "indexPathBeforeUpdate", ?*anyopaque, .{} },
        .{ "updateAction", NSCollectionView.UpdateAction, .{} },
    };

    pub fn send(self: NSCollectionViewUpdateItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSColor = struct {
    obj: Object,

    pub const methods = .{
        .{ "CGColor", ?*anyopaque, .{} },
        .{ "alphaComponent", objc.CGFloat, .{} },
        .{ "blackComponent", objc.CGFloat, .{} },
        .{ "blendedColorWithFraction:ofColor:", ?NSColor, .{ objc.CGFloat, NSColor } },
        .{ "blueComponent", objc.CGFloat, .{} },
        .{ "brightnessComponent", objc.CGFloat, .{} },
        .{ "catalogNameComponent", objc.NSString, .{} },
        .{ "colorByApplyingContentHeadroom:", NSColor, .{objc.CGFloat} },
        .{ "colorNameComponent", objc.NSString, .{} },
        .{ "colorSpace", NSColorSpace, .{} },
        .{ "colorSpaceName", objc.NSString, .{} },
        .{ "colorUsingColorSpace:", ?NSColor, .{NSColorSpace} },
        .{ "colorUsingColorSpaceName:", ?NSColor, .{objc.NSString} },
        .{ "colorUsingColorSpaceName:device:", ?NSColor, .{ objc.NSString, ?Any } },
        .{ "colorUsingType:", ?NSColor, .{NSColor.ColorType} },
        .{ "colorWithAlphaComponent:", NSColor, .{objc.CGFloat} },
        .{ "colorWithSystemEffect:", NSColor, .{NSColor.SystemEffect} },
        .{ "cyanComponent", objc.CGFloat, .{} },
        .{ "drawSwatchInRect:", void, .{NSRect} },
        .{ "getComponents:", void, .{objc.CGFloat} },
        .{ "getCyan:magenta:yellow:black:alpha:", void, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "getHue:saturation:brightness:alpha:", void, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "getRed:green:blue:alpha:", void, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "getWhite:alpha:", void, .{ objc.CGFloat, objc.CGFloat } },
        .{ "greenComponent", objc.CGFloat, .{} },
        .{ "highlightWithLevel:", ?NSColor, .{objc.CGFloat} },
        .{ "hueComponent", objc.CGFloat, .{} },
        .{ "linearExposure", objc.CGFloat, .{} },
        .{ "localizedCatalogNameComponent", objc.NSString, .{} },
        .{ "localizedColorNameComponent", objc.NSString, .{} },
        .{ "magentaComponent", objc.CGFloat, .{} },
        .{ "numberOfComponents", objc.NSInteger, .{} },
        .{ "patternImage", NSImage, .{} },
        .{ "redComponent", objc.CGFloat, .{} },
        .{ "saturationComponent", objc.CGFloat, .{} },
        .{ "set", void, .{} },
        .{ "setFill", void, .{} },
        .{ "setStroke", void, .{} },
        .{ "shadowWithLevel:", ?NSColor, .{objc.CGFloat} },
        .{ "standardDynamicRangeColor", NSColor, .{} },
        .{ "type", NSColor.ColorType, .{} },
        .{ "whiteComponent", objc.CGFloat, .{} },
        .{ "writeToPasteboard:", void, .{NSPasteboard} },
        .{ "yellowComponent", objc.CGFloat, .{} },
    };

    pub fn send(self: NSColor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "alternateSelectedControlColor", NSColor, .{} },
        .{ "alternateSelectedControlTextColor", NSColor, .{} },
        .{ "alternatingContentBackgroundColors", Object, .{} },
        .{ "blackColor", NSColor, .{} },
        .{ "blueColor", NSColor, .{} },
        .{ "brownColor", NSColor, .{} },
        .{ "clearColor", NSColor, .{} },
        .{ "colorForControlTint:", Object, .{NSControlTint} },
        .{ "colorFromPasteboard:", Object, .{NSPasteboard} },
        .{ "colorNamed:", Object, .{objc.NSString} },
        .{ "colorNamed:bundle:", Object, .{ objc.NSString, ?Foundation.NSBundle } },
        .{ "colorWithCGColor:", Object, .{?*anyopaque} },
        .{ "colorWithCIColor:", Object, .{Object} },
        .{ "colorWithCalibratedHue:saturation:brightness:alpha:", Object, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "colorWithCalibratedRed:green:blue:alpha:", Object, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "colorWithCalibratedWhite:alpha:", Object, .{ objc.CGFloat, objc.CGFloat } },
        .{ "colorWithCatalogName:colorName:", Object, .{ objc.NSString, objc.NSString } },
        .{ "colorWithColorSpace:components:count:", Object, .{ NSColorSpace, objc.CGFloat, objc.NSInteger } },
        .{ "colorWithColorSpace:hue:saturation:brightness:alpha:", Object, .{ NSColorSpace, objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "colorWithDeviceCyan:magenta:yellow:black:alpha:", Object, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "colorWithDeviceHue:saturation:brightness:alpha:", Object, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "colorWithDeviceRed:green:blue:alpha:", Object, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "colorWithDeviceWhite:alpha:", Object, .{ objc.CGFloat, objc.CGFloat } },
        .{ "colorWithDisplayP3Red:green:blue:alpha:", Object, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "colorWithGenericGamma22White:alpha:", Object, .{ objc.CGFloat, objc.CGFloat } },
        .{ "colorWithHue:saturation:brightness:alpha:", Object, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "colorWithName:dynamicProvider:", Object, .{ objc.NSString, void } },
        .{ "colorWithPatternImage:", Object, .{NSImage} },
        .{ "colorWithRed:green:blue:alpha:", Object, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "colorWithRed:green:blue:alpha:exposure:", Object, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "colorWithRed:green:blue:alpha:linearExposure:", Object, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "colorWithSRGBRed:green:blue:alpha:", Object, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "colorWithWhite:alpha:", Object, .{ objc.CGFloat, objc.CGFloat } },
        .{ "controlAccentColor", NSColor, .{} },
        .{ "controlAlternatingRowBackgroundColors", Object, .{} },
        .{ "controlBackgroundColor", NSColor, .{} },
        .{ "controlColor", NSColor, .{} },
        .{ "controlDarkShadowColor", NSColor, .{} },
        .{ "controlHighlightColor", NSColor, .{} },
        .{ "controlLightHighlightColor", NSColor, .{} },
        .{ "controlShadowColor", NSColor, .{} },
        .{ "controlTextColor", NSColor, .{} },
        .{ "currentControlTint", NSControlTint, .{} },
        .{ "cyanColor", NSColor, .{} },
        .{ "darkGrayColor", NSColor, .{} },
        .{ "disabledControlTextColor", NSColor, .{} },
        .{ "findHighlightColor", NSColor, .{} },
        .{ "grayColor", NSColor, .{} },
        .{ "greenColor", NSColor, .{} },
        .{ "gridColor", NSColor, .{} },
        .{ "headerColor", NSColor, .{} },
        .{ "headerTextColor", NSColor, .{} },
        .{ "highlightColor", NSColor, .{} },
        .{ "ignoresAlpha", objc.BOOL, .{} },
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "keyboardFocusIndicatorColor", NSColor, .{} },
        .{ "knobColor", NSColor, .{} },
        .{ "labelColor", NSColor, .{} },
        .{ "lightGrayColor", NSColor, .{} },
        .{ "linkColor", NSColor, .{} },
        .{ "magentaColor", NSColor, .{} },
        .{ "orangeColor", NSColor, .{} },
        .{ "placeholderTextColor", NSColor, .{} },
        .{ "purpleColor", NSColor, .{} },
        .{ "quaternaryLabelColor", NSColor, .{} },
        .{ "quaternarySystemFillColor", NSColor, .{} },
        .{ "quinaryLabelColor", NSColor, .{} },
        .{ "quinarySystemFillColor", NSColor, .{} },
        .{ "redColor", NSColor, .{} },
        .{ "scrollBarColor", NSColor, .{} },
        .{ "scrubberTexturedBackgroundColor", NSColor, .{} },
        .{ "secondaryLabelColor", NSColor, .{} },
        .{ "secondarySelectedControlColor", NSColor, .{} },
        .{ "secondarySystemFillColor", NSColor, .{} },
        .{ "selectedContentBackgroundColor", NSColor, .{} },
        .{ "selectedControlColor", NSColor, .{} },
        .{ "selectedControlTextColor", NSColor, .{} },
        .{ "selectedKnobColor", NSColor, .{} },
        .{ "selectedMenuItemColor", NSColor, .{} },
        .{ "selectedMenuItemTextColor", NSColor, .{} },
        .{ "selectedTextBackgroundColor", NSColor, .{} },
        .{ "selectedTextColor", NSColor, .{} },
        .{ "separatorColor", NSColor, .{} },
        .{ "setIgnoresAlpha:", void, .{objc.BOOL} },
        .{ "shadowColor", NSColor, .{} },
        .{ "systemBlueColor", NSColor, .{} },
        .{ "systemBrownColor", NSColor, .{} },
        .{ "systemCyanColor", NSColor, .{} },
        .{ "systemFillColor", NSColor, .{} },
        .{ "systemGrayColor", NSColor, .{} },
        .{ "systemGreenColor", NSColor, .{} },
        .{ "systemIndigoColor", NSColor, .{} },
        .{ "systemMintColor", NSColor, .{} },
        .{ "systemOrangeColor", NSColor, .{} },
        .{ "systemPinkColor", NSColor, .{} },
        .{ "systemPurpleColor", NSColor, .{} },
        .{ "systemRedColor", NSColor, .{} },
        .{ "systemTealColor", NSColor, .{} },
        .{ "systemYellowColor", NSColor, .{} },
        .{ "tertiaryLabelColor", NSColor, .{} },
        .{ "tertiarySystemFillColor", NSColor, .{} },
        .{ "textBackgroundColor", NSColor, .{} },
        .{ "textColor", NSColor, .{} },
        .{ "textInsertionPointColor", NSColor, .{} },
        .{ "underPageBackgroundColor", NSColor, .{} },
        .{ "unemphasizedSelectedContentBackgroundColor", NSColor, .{} },
        .{ "unemphasizedSelectedTextBackgroundColor", NSColor, .{} },
        .{ "unemphasizedSelectedTextColor", NSColor, .{} },
        .{ "whiteColor", NSColor, .{} },
        .{ "windowBackgroundColor", NSColor, .{} },
        .{ "windowFrameColor", NSColor, .{} },
        .{ "windowFrameTextColor", NSColor, .{} },
        .{ "yellowColor", NSColor, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSColor", class_methods, selector, args);
    }

    pub const ColorType = enum(i64) {
        componentBased = 0,
        pattern = 1,
        catalog = 2,
    };
    pub const SystemEffect = enum(i64) {
        none = 0,
        pressed = 1,
        deepPressed = 2,
        disabled = 3,
        rollover = 4,
    };
};

pub const NSColorList = struct {
    obj: Object,

    pub const methods = .{
        .{ "allKeys", Object, .{} },
        .{ "colorWithKey:", ?NSColor, .{objc.NSString} },
        .{ "editable", objc.BOOL, .{} },
        .{ "insertColor:key:atIndex:", void, .{ NSColor, objc.NSString, objc.NSInteger } },
        .{ "name", objc.NSString, .{} },
        .{ "removeColorWithKey:", void, .{objc.NSString} },
        .{ "removeFile", void, .{} },
        .{ "setColor:forKey:", void, .{ NSColor, objc.NSString } },
        .{ "writeToFile:", objc.BOOL, .{?objc.NSString} },
        .{ "writeToURL:error:", void, .{?Foundation.NSURL} },
    };

    pub fn send(self: NSColorList, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "availableColorLists", Object, .{} },
        .{ "colorListNamed:", Object, .{objc.NSString} },
        .{ "initWithName:", Object, .{objc.NSString} },
        .{ "initWithName:fromFile:", Object, .{ objc.NSString, ?objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSColorList", class_methods, selector, args);
    }
};

pub const NSColorPanel = struct {
    obj: Object,

    pub const Super = NSPanel;
    pub const methods = .{
        .{ "accessoryView", ?NSView, .{} },
        .{ "alpha", objc.CGFloat, .{} },
        .{ "attachColorList:", void, .{NSColorList} },
        .{ "color", NSColor, .{} },
        .{ "continuous", objc.BOOL, .{} },
        .{ "detachColorList:", void, .{NSColorList} },
        .{ "maximumLinearExposure", objc.CGFloat, .{} },
        .{ "mode", NSColorPanel.Mode, .{} },
        .{ "setAccessoryView:", void, .{?NSView} },
        .{ "setAction:", void, .{Selector} },
        .{ "setColor:", void, .{NSColor} },
        .{ "setContinuous:", void, .{objc.BOOL} },
        .{ "setMaximumLinearExposure:", void, .{objc.CGFloat} },
        .{ "setMode:", void, .{NSColorPanel.Mode} },
        .{ "setShowsAlpha:", void, .{objc.BOOL} },
        .{ "setTarget:", void, .{?Any} },
        .{ "showsAlpha", objc.BOOL, .{} },
    };

    pub fn send(self: NSColorPanel, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dragColor:withEvent:fromView:", objc.BOOL, .{ NSColor, NSEvent, NSView } },
        .{ "setPickerMask:", void, .{objc.NSInteger} },
        .{ "setPickerMode:", void, .{NSColorPanel.Mode} },
        .{ "sharedColorPanel", NSColorPanel, .{} },
        .{ "sharedColorPanelExists", objc.BOOL, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSColorPanel", class_methods, selector, args);
    }

    pub const Mode = enum(i64) {
        none = -1,
        gray = 0,
        RGB = 1,
        CMYK = 2,
        HSB = 3,
        customPalette = 4,
        colorList = 5,
        wheel = 6,
        crayon = 7,
    };
};

pub const NSColorPicker = struct {
    obj: Object,

    pub const methods = .{
        .{ "attachColorList:", void, .{NSColorList} },
        .{ "buttonToolTip", objc.NSString, .{} },
        .{ "colorPanel", NSColorPanel, .{} },
        .{ "detachColorList:", void, .{NSColorList} },
        .{ "insertNewButtonImage:in:", void, .{ NSImage, NSButtonCell } },
        .{ "minContentSize", NSSize, .{} },
        .{ "provideNewButtonImage", NSImage, .{} },
        .{ "setMode:", void, .{NSColorPanel.Mode} },
        .{ "viewSizeChanged:", void, .{?Any} },
    };

    pub fn send(self: NSColorPicker, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithPickerMask:colorPanel:", Object, .{ objc.NSInteger, NSColorPanel } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSColorPicker", class_methods, selector, args);
    }
};

pub const NSColorPickerTouchBarItem = struct {
    obj: Object,

    pub const Super = NSTouchBarItem;
    pub const methods = .{
        .{ "action", Selector, .{} },
        .{ "allowedColorSpaces", ?*anyopaque, .{} },
        .{ "color", NSColor, .{} },
        .{ "colorList", NSColorList, .{} },
        .{ "customizationLabel", objc.NSString, .{} },
        .{ "enabled", objc.BOOL, .{} },
        .{ "setAction:", void, .{Selector} },
        .{ "setAllowedColorSpaces:", void, .{?*anyopaque} },
        .{ "setColor:", void, .{NSColor} },
        .{ "setColorList:", void, .{NSColorList} },
        .{ "setCustomizationLabel:", void, .{objc.NSString} },
        .{ "setEnabled:", void, .{objc.BOOL} },
        .{ "setShowsAlpha:", void, .{objc.BOOL} },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "showsAlpha", objc.BOOL, .{} },
        .{ "target", ?AnyObject, .{} },
    };

    pub fn send(self: NSColorPickerTouchBarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "colorPickerWithIdentifier:", ?*anyopaque, .{objc.NSString} },
        .{ "colorPickerWithIdentifier:buttonImage:", ?*anyopaque, .{ objc.NSString, NSImage } },
        .{ "strokeColorPickerWithIdentifier:", ?*anyopaque, .{objc.NSString} },
        .{ "textColorPickerWithIdentifier:", ?*anyopaque, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSColorPickerTouchBarItem", class_methods, selector, args);
    }
};

pub const NSColorSampler = struct {
    obj: Object,

    pub const methods = .{
        .{ "showSamplerWithSelectionHandler:", void, .{void} },
    };

    pub fn send(self: NSColorSampler, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSColorSpace = struct {
    obj: Object,

    pub const methods = .{
        .{ "CGColorSpace", ?*anyopaque, .{} },
        .{ "ICCProfileData", ?Foundation.NSData, .{} },
        .{ "colorSpaceModel", NSColorSpace.Model, .{} },
        .{ "colorSyncProfile", ?UnsafeMutableRawPointer, .{} },
        .{ "localizedName", ?objc.NSString, .{} },
        .{ "numberOfColorComponents", objc.NSInteger, .{} },
    };

    pub fn send(self: NSColorSpace, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "adobeRGB1998ColorSpace", NSColorSpace, .{} },
        .{ "availableColorSpacesWithModel:", Object, .{NSColorSpace.Model} },
        .{ "deviceCMYKColorSpace", NSColorSpace, .{} },
        .{ "deviceGrayColorSpace", NSColorSpace, .{} },
        .{ "deviceRGBColorSpace", NSColorSpace, .{} },
        .{ "displayP3ColorSpace", NSColorSpace, .{} },
        .{ "extendedGenericGamma22GrayColorSpace", NSColorSpace, .{} },
        .{ "extendedSRGBColorSpace", NSColorSpace, .{} },
        .{ "genericCMYKColorSpace", NSColorSpace, .{} },
        .{ "genericGamma22GrayColorSpace", NSColorSpace, .{} },
        .{ "genericGrayColorSpace", NSColorSpace, .{} },
        .{ "genericRGBColorSpace", NSColorSpace, .{} },
        .{ "initWithCGColorSpace:", Object, .{?*anyopaque} },
        .{ "initWithColorSyncProfile:", Object, .{UnsafeMutableRawPointer} },
        .{ "initWithICCProfileData:", Object, .{Foundation.NSData} },
        .{ "sRGBColorSpace", NSColorSpace, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSColorSpace", class_methods, selector, args);
    }

    pub const Model = enum(i64) {
        unknown = -1,
        gray = 0,
        rgb = 1,
        cmyk = 2,
        lab = 3,
        deviceN = 4,
        indexed = 5,
        patterned = 6,
    };
};

pub const NSColorWell = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "activate:", void, .{objc.BOOL} },
        .{ "active", objc.BOOL, .{} },
        .{ "bordered", objc.BOOL, .{} },
        .{ "color", NSColor, .{} },
        .{ "colorWellStyle", NSColorWell.Style, .{} },
        .{ "deactivate", void, .{} },
        .{ "drawWellInside:", void, .{NSRect} },
        .{ "image", ?NSImage, .{} },
        .{ "maximumLinearExposure", objc.CGFloat, .{} },
        .{ "pulldownAction", Selector, .{} },
        .{ "pulldownTarget", ?AnyObject, .{} },
        .{ "setBordered:", void, .{objc.BOOL} },
        .{ "setColor:", void, .{NSColor} },
        .{ "setColorWellStyle:", void, .{NSColorWell.Style} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setMaximumLinearExposure:", void, .{objc.CGFloat} },
        .{ "setPulldownAction:", void, .{Selector} },
        .{ "setPulldownTarget:", void, .{?AnyObject} },
        .{ "setSupportsAlpha:", void, .{objc.BOOL} },
        .{ "supportsAlpha", objc.BOOL, .{} },
        .{ "takeColorFrom:", void, .{?Any} },
    };

    pub fn send(self: NSColorWell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "colorWellWithStyle:", Object, .{NSColorWell.Style} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSColorWell", class_methods, selector, args);
    }

    pub const Style = enum(i64) {
        default = 0,
        minimal = 1,
        expanded = 2,
    };
};

pub const NSComboBox = struct {
    obj: Object,

    pub const Super = NSTextField;
    pub const methods = .{
        .{ "addItemWithObjectValue:", void, .{Any} },
        .{ "addItemsWithObjectValues:", void, .{void} },
        .{ "buttonBordered", objc.BOOL, .{} },
        .{ "completes", objc.BOOL, .{} },
        .{ "dataSource", ?NSComboBoxDataSource, .{} },
        .{ "delegate", ?NSComboBoxDelegate, .{} },
        .{ "deselectItemAtIndex:", void, .{objc.NSInteger} },
        .{ "hasVerticalScroller", objc.BOOL, .{} },
        .{ "indexOfItemWithObjectValue:", objc.NSInteger, .{Any} },
        .{ "indexOfSelectedItem", objc.NSInteger, .{} },
        .{ "insertItemWithObjectValue:atIndex:", void, .{ Any, objc.NSInteger } },
        .{ "intercellSpacing", NSSize, .{} },
        .{ "itemHeight", objc.CGFloat, .{} },
        .{ "itemObjectValueAtIndex:", Any, .{objc.NSInteger} },
        .{ "noteNumberOfItemsChanged", void, .{} },
        .{ "numberOfItems", objc.NSInteger, .{} },
        .{ "numberOfVisibleItems", objc.NSInteger, .{} },
        .{ "objectValueOfSelectedItem", ?Any, .{} },
        .{ "objectValues", Object, .{} },
        .{ "reloadData", void, .{} },
        .{ "removeAllItems", void, .{} },
        .{ "removeItemAtIndex:", void, .{objc.NSInteger} },
        .{ "removeItemWithObjectValue:", void, .{Any} },
        .{ "scrollItemAtIndexToTop:", void, .{objc.NSInteger} },
        .{ "scrollItemAtIndexToVisible:", void, .{objc.NSInteger} },
        .{ "selectItemAtIndex:", void, .{objc.NSInteger} },
        .{ "selectItemWithObjectValue:", void, .{?Any} },
        .{ "setButtonBordered:", void, .{objc.BOOL} },
        .{ "setCompletes:", void, .{objc.BOOL} },
        .{ "setDataSource:", void, .{?NSComboBoxDataSource} },
        .{ "setDelegate:", void, .{?NSComboBoxDelegate} },
        .{ "setHasVerticalScroller:", void, .{objc.BOOL} },
        .{ "setIntercellSpacing:", void, .{NSSize} },
        .{ "setItemHeight:", void, .{objc.CGFloat} },
        .{ "setNumberOfVisibleItems:", void, .{objc.NSInteger} },
        .{ "setUsesDataSource:", void, .{objc.BOOL} },
        .{ "usesDataSource", objc.BOOL, .{} },
    };

    pub fn send(self: NSComboBox, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSComboBoxCell = struct {
    obj: Object,

    pub const Super = NSTextFieldCell;
    pub const methods = .{
        .{ "addItemWithObjectValue:", void, .{Any} },
        .{ "addItemsWithObjectValues:", void, .{void} },
        .{ "buttonBordered", objc.BOOL, .{} },
        .{ "completedString:", ?objc.NSString, .{objc.NSString} },
        .{ "completes", objc.BOOL, .{} },
        .{ "dataSource", ?NSComboBoxCellDataSource, .{} },
        .{ "deselectItemAtIndex:", void, .{objc.NSInteger} },
        .{ "hasVerticalScroller", objc.BOOL, .{} },
        .{ "indexOfItemWithObjectValue:", objc.NSInteger, .{Any} },
        .{ "indexOfSelectedItem", objc.NSInteger, .{} },
        .{ "insertItemWithObjectValue:atIndex:", void, .{ Any, objc.NSInteger } },
        .{ "intercellSpacing", NSSize, .{} },
        .{ "itemHeight", objc.CGFloat, .{} },
        .{ "itemObjectValueAtIndex:", Any, .{objc.NSInteger} },
        .{ "noteNumberOfItemsChanged", void, .{} },
        .{ "numberOfItems", objc.NSInteger, .{} },
        .{ "numberOfVisibleItems", objc.NSInteger, .{} },
        .{ "objectValueOfSelectedItem", ?Any, .{} },
        .{ "objectValues", Object, .{} },
        .{ "reloadData", void, .{} },
        .{ "removeAllItems", void, .{} },
        .{ "removeItemAtIndex:", void, .{objc.NSInteger} },
        .{ "removeItemWithObjectValue:", void, .{Any} },
        .{ "scrollItemAtIndexToTop:", void, .{objc.NSInteger} },
        .{ "scrollItemAtIndexToVisible:", void, .{objc.NSInteger} },
        .{ "selectItemAtIndex:", void, .{objc.NSInteger} },
        .{ "selectItemWithObjectValue:", void, .{?Any} },
        .{ "setButtonBordered:", void, .{objc.BOOL} },
        .{ "setCompletes:", void, .{objc.BOOL} },
        .{ "setDataSource:", void, .{?NSComboBoxCellDataSource} },
        .{ "setHasVerticalScroller:", void, .{objc.BOOL} },
        .{ "setIntercellSpacing:", void, .{NSSize} },
        .{ "setItemHeight:", void, .{objc.CGFloat} },
        .{ "setNumberOfVisibleItems:", void, .{objc.NSInteger} },
        .{ "setUsesDataSource:", void, .{objc.BOOL} },
        .{ "usesDataSource", objc.BOOL, .{} },
    };

    pub fn send(self: NSComboBoxCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSComboButton = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "image", ?NSImage, .{} },
        .{ "imageScaling", NSImageScaling, .{} },
        .{ "menu", NSMenu, .{} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setImageScaling:", void, .{NSImageScaling} },
        .{ "setMenu:", void, .{NSMenu} },
        .{ "setStyle:", void, .{NSComboButton.Style} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "style", NSComboButton.Style, .{} },
        .{ "title", objc.NSString, .{} },
    };

    pub fn send(self: NSComboButton, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "comboButtonWithImage:menu:target:action:", Object, .{ NSImage, ?NSMenu, ?Any, Selector } },
        .{ "comboButtonWithTitle:image:menu:target:action:", Object, .{ objc.NSString, NSImage, ?NSMenu, ?Any, Selector } },
        .{ "comboButtonWithTitle:menu:target:action:", Object, .{ objc.NSString, ?NSMenu, ?Any, Selector } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSComboButton", class_methods, selector, args);
    }

    pub const Style = enum(i64) {
        split = 0,
        unified = 1,
    };
};

pub const NSControl = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "abortEditing", objc.BOOL, .{} },
        .{ "action", Selector, .{} },
        .{ "alignment", NSTextAlignment, .{} },
        .{ "allowsExpansionToolTips", objc.BOOL, .{} },
        .{ "attributedStringValue", Foundation.NSAttributedString, .{} },
        .{ "baseWritingDirection", NSWritingDirection, .{} },
        .{ "calcSize", void, .{} },
        .{ "cell", ?NSCell, .{} },
        .{ "continuous", objc.BOOL, .{} },
        .{ "controlSize", NSControl.ControlSize, .{} },
        .{ "currentEditor", ?NSText, .{} },
        .{ "doubleValue", f64, .{} },
        .{ "drawCell:", void, .{NSCell} },
        .{ "drawCellInside:", void, .{NSCell} },
        .{ "drawWithExpansionFrame:inView:", void, .{ NSRect, NSView } },
        .{ "editWithFrame:editor:delegate:event:", void, .{ NSRect, NSText, ?Any, NSEvent } },
        .{ "enabled", objc.BOOL, .{} },
        .{ "endEditing:", void, .{NSText} },
        .{ "expansionFrameWithFrame:", NSRect, .{NSRect} },
        .{ "floatValue", f32, .{} },
        .{ "font", ?NSFont, .{} },
        .{ "formatter", ?Foundation.NSFormatter, .{} },
        .{ "highlighted", objc.BOOL, .{} },
        .{ "ignoresMultiClick", objc.BOOL, .{} },
        .{ "intValue", i32, .{} },
        .{ "integerValue", objc.NSInteger, .{} },
        .{ "invalidateIntrinsicContentSizeForCell:", void, .{NSCell} },
        .{ "lineBreakMode", NSLineBreakMode, .{} },
        .{ "objectValue", ?Any, .{} },
        .{ "performClick:", void, .{?Any} },
        .{ "refusesFirstResponder", objc.BOOL, .{} },
        .{ "selectCell:", void, .{NSCell} },
        .{ "selectWithFrame:editor:delegate:start:length:", void, .{ NSRect, NSText, ?Any, objc.NSInteger, objc.NSInteger } },
        .{ "selectedCell", ?NSCell, .{} },
        .{ "selectedTag", objc.NSInteger, .{} },
        .{ "sendAction:to:", objc.BOOL, .{ Selector, ?Any } },
        .{ "sendActionOn:", objc.NSInteger, .{objc.NSInteger} },
        .{ "setAction:", void, .{Selector} },
        .{ "setAlignment:", void, .{NSTextAlignment} },
        .{ "setAllowsExpansionToolTips:", void, .{objc.BOOL} },
        .{ "setAttributedStringValue:", void, .{Foundation.NSAttributedString} },
        .{ "setBaseWritingDirection:", void, .{NSWritingDirection} },
        .{ "setCell:", void, .{?NSCell} },
        .{ "setContinuous:", void, .{objc.BOOL} },
        .{ "setControlSize:", void, .{NSControl.ControlSize} },
        .{ "setDoubleValue:", void, .{f64} },
        .{ "setEnabled:", void, .{objc.BOOL} },
        .{ "setFloatValue:", void, .{f32} },
        .{ "setFont:", void, .{?NSFont} },
        .{ "setFormatter:", void, .{?Foundation.NSFormatter} },
        .{ "setHighlighted:", void, .{objc.BOOL} },
        .{ "setIgnoresMultiClick:", void, .{objc.BOOL} },
        .{ "setIntValue:", void, .{i32} },
        .{ "setIntegerValue:", void, .{objc.NSInteger} },
        .{ "setLineBreakMode:", void, .{NSLineBreakMode} },
        .{ "setNeedsDisplay", void, .{} },
        .{ "setObjectValue:", void, .{?Any} },
        .{ "setRefusesFirstResponder:", void, .{objc.BOOL} },
        .{ "setStringValue:", void, .{objc.NSString} },
        .{ "setTag:", void, .{objc.NSInteger} },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "setUsesSingleLineMode:", void, .{objc.BOOL} },
        .{ "sizeThatFits:", NSSize, .{NSSize} },
        .{ "sizeToFit", void, .{} },
        .{ "stringValue", objc.NSString, .{} },
        .{ "tag", objc.NSInteger, .{} },
        .{ "takeDoubleValueFrom:", void, .{?Any} },
        .{ "takeFloatValueFrom:", void, .{?Any} },
        .{ "takeIntValueFrom:", void, .{?Any} },
        .{ "takeIntegerValueFrom:", void, .{?Any} },
        .{ "takeObjectValueFrom:", void, .{?Any} },
        .{ "takeStringValueFrom:", void, .{?Any} },
        .{ "target", ?AnyObject, .{} },
        .{ "updateCell:", void, .{NSCell} },
        .{ "updateCellInside:", void, .{NSCell} },
        .{ "usesSingleLineMode", objc.BOOL, .{} },
        .{ "validateEditing", void, .{} },
    };

    pub fn send(self: NSControl, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "cellClass", ?AnyClass, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithFrame:", Object, .{NSRect} },
        .{ "setCellClass:", void, .{?AnyClass} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSControl", class_methods, selector, args);
    }

    pub const BorderShape = enum(i64) {
        automatic = 0,
        capsule = 1,
        roundedRectangle = 2,
        circle = 3,
    };
    pub const ControlSize = enum(i64) {
        regular = 0,
        small = 1,
        mini = 2,
        large = 3,
        extraLarge = 4,
    };
    pub const ImagePosition = enum(i64) {
        noImage = 0,
        imageOnly = 1,
        imageLeft = 2,
        imageRight = 3,
        imageBelow = 4,
        imageAbove = 5,
        imageOverlaps = 6,
        imageLeading = 7,
        imageTrailing = 8,
    };
};

pub const NSController = struct {
    obj: Object,

    pub const methods = .{
        .{ "commitEditing", objc.BOOL, .{} },
        .{ "commitEditingWithDelegate:didCommitSelector:contextInfo:", void, .{ ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "discardEditing", void, .{} },
        .{ "editing", objc.BOOL, .{} },
        .{ "objectDidBeginEditing:", void, .{void} },
        .{ "objectDidEndEditing:", void, .{void} },
    };

    pub fn send(self: NSController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSController", class_methods, selector, args);
    }
};

pub const NSCursor = struct {
    obj: Object,

    pub const methods = .{
        .{ "hotSpot", NSPoint, .{} },
        .{ "image", NSImage, .{} },
        .{ "mouseEntered:", void, .{NSEvent} },
        .{ "mouseExited:", void, .{NSEvent} },
        .{ "pop", void, .{} },
        .{ "push", void, .{} },
        .{ "set", void, .{} },
        .{ "setOnMouseEntered", objc.BOOL, .{} },
        .{ "setOnMouseEntered:", void, .{objc.BOOL} },
        .{ "setOnMouseExited", objc.BOOL, .{} },
        .{ "setOnMouseExited:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSCursor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "IBeamCursor", NSCursor, .{} },
        .{ "IBeamCursorForVerticalLayout", NSCursor, .{} },
        .{ "arrowCursor", NSCursor, .{} },
        .{ "closedHandCursor", NSCursor, .{} },
        .{ "columnResizeCursor", NSCursor, .{} },
        .{ "contextualMenuCursor", NSCursor, .{} },
        .{ "crosshairCursor", NSCursor, .{} },
        .{ "currentCursor", NSCursor, .{} },
        .{ "currentSystemCursor", ?NSCursor, .{} },
        .{ "disappearingItemCursor", NSCursor, .{} },
        .{ "dragCopyCursor", NSCursor, .{} },
        .{ "dragLinkCursor", NSCursor, .{} },
        .{ "hide", void, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithImage:foregroundColorHint:backgroundColorHint:hotSpot:", Object, .{ NSImage, ?NSColor, ?NSColor, NSPoint } },
        .{ "initWithImage:hotSpot:", Object, .{ NSImage, NSPoint } },
        .{ "openHandCursor", NSCursor, .{} },
        .{ "operationNotAllowedCursor", NSCursor, .{} },
        .{ "pointingHandCursor", NSCursor, .{} },
        .{ "pop", void, .{} },
        .{ "resizeDownCursor", NSCursor, .{} },
        .{ "resizeLeftCursor", NSCursor, .{} },
        .{ "resizeLeftRightCursor", NSCursor, .{} },
        .{ "resizeRightCursor", NSCursor, .{} },
        .{ "resizeUpCursor", NSCursor, .{} },
        .{ "resizeUpDownCursor", NSCursor, .{} },
        .{ "rowResizeCursor", NSCursor, .{} },
        .{ "setHiddenUntilMouseMoves:", void, .{objc.BOOL} },
        .{ "unhide", void, .{} },
        .{ "zoomInCursor", NSCursor, .{} },
        .{ "zoomOutCursor", NSCursor, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCursor", class_methods, selector, args);
    }

    pub const FrameResizePosition = enum(i64) {
        top = 1,
        left = 2,
        topLeft = 3,
        bottom = 4,
        bottomLeft = 6,
        right = 8,
        topRight = 9,
        bottomRight = 12,
    };
};

pub const NSCustomImageRep = struct {
    obj: Object,

    pub const Super = NSImageRep;
    pub const methods = .{
        .{ "delegate", ?AnyObject, .{} },
        .{ "drawSelector", Selector, .{} },
        .{ "drawingHandler", objc.BOOL, .{} },
    };

    pub fn send(self: NSCustomImageRep, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithDrawSelector:delegate:", Object, .{ Selector, Any } },
        .{ "initWithSize:flipped:drawingHandler:", Object, .{ NSSize, objc.BOOL, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCustomImageRep", class_methods, selector, args);
    }
};

pub const NSCustomTouchBarItem = struct {
    obj: Object,

    pub const Super = NSTouchBarItem;
    pub const methods = .{
        .{ "customizationLabel", objc.NSString, .{} },
        .{ "setCustomizationLabel:", void, .{objc.NSString} },
        .{ "setView:", void, .{NSView} },
        .{ "setViewController:", void, .{?NSViewController} },
        .{ "view", NSView, .{} },
        .{ "viewController", ?NSViewController, .{} },
    };

    pub fn send(self: NSCustomTouchBarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSDataAsset = struct {
    obj: Object,

    pub const methods = .{
        .{ "data", Foundation.NSData, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "typeIdentifier", objc.NSString, .{} },
    };

    pub fn send(self: NSDataAsset, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithName:", Object, .{objc.NSString} },
        .{ "initWithName:bundle:", Object, .{ objc.NSString, Foundation.NSBundle } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDataAsset", class_methods, selector, args);
    }
};

pub const NSDatePicker = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "backgroundColor", NSColor, .{} },
        .{ "bezeled", objc.BOOL, .{} },
        .{ "bordered", objc.BOOL, .{} },
        .{ "calendar", ?*anyopaque, .{} },
        .{ "datePickerElements", objc.NSInteger, .{} },
        .{ "datePickerMode", NSDatePicker.Mode, .{} },
        .{ "datePickerStyle", NSDatePicker.Style, .{} },
        .{ "dateValue", Foundation.NSDate, .{} },
        .{ "delegate", ?NSDatePickerCellDelegate, .{} },
        .{ "drawsBackground", objc.BOOL, .{} },
        .{ "locale", ?Foundation.NSLocale, .{} },
        .{ "maxDate", ?Foundation.NSDate, .{} },
        .{ "minDate", ?Foundation.NSDate, .{} },
        .{ "presentsCalendarOverlay", objc.BOOL, .{} },
        .{ "setBackgroundColor:", void, .{NSColor} },
        .{ "setBezeled:", void, .{objc.BOOL} },
        .{ "setBordered:", void, .{objc.BOOL} },
        .{ "setCalendar:", void, .{?*anyopaque} },
        .{ "setDatePickerElements:", void, .{objc.NSInteger} },
        .{ "setDatePickerMode:", void, .{NSDatePicker.Mode} },
        .{ "setDatePickerStyle:", void, .{NSDatePicker.Style} },
        .{ "setDateValue:", void, .{Foundation.NSDate} },
        .{ "setDelegate:", void, .{?NSDatePickerCellDelegate} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "setLocale:", void, .{?Foundation.NSLocale} },
        .{ "setMaxDate:", void, .{?Foundation.NSDate} },
        .{ "setMinDate:", void, .{?Foundation.NSDate} },
        .{ "setPresentsCalendarOverlay:", void, .{objc.BOOL} },
        .{ "setTextColor:", void, .{NSColor} },
        .{ "setTimeInterval:", void, .{TimeInterval} },
        .{ "setTimeZone:", void, .{?*anyopaque} },
        .{ "textColor", NSColor, .{} },
        .{ "timeInterval", TimeInterval, .{} },
        .{ "timeZone", ?*anyopaque, .{} },
    };

    pub fn send(self: NSDatePicker, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const Mode = enum(i64) {
        single = 0,
        range = 1,
    };
    pub const Style = enum(i64) {
        textFieldAndStepper = 0,
        clockAndCalendar = 1,
        textField = 2,
    };
};

pub const NSDatePickerCell = struct {
    obj: Object,

    pub const Super = NSActionCell;
    pub const methods = .{
        .{ "backgroundColor", NSColor, .{} },
        .{ "calendar", ?*anyopaque, .{} },
        .{ "datePickerElements", objc.NSInteger, .{} },
        .{ "datePickerMode", NSDatePicker.Mode, .{} },
        .{ "datePickerStyle", NSDatePicker.Style, .{} },
        .{ "dateValue", Foundation.NSDate, .{} },
        .{ "delegate", ?NSDatePickerCellDelegate, .{} },
        .{ "drawsBackground", objc.BOOL, .{} },
        .{ "locale", ?Foundation.NSLocale, .{} },
        .{ "maxDate", ?Foundation.NSDate, .{} },
        .{ "minDate", ?Foundation.NSDate, .{} },
        .{ "setBackgroundColor:", void, .{NSColor} },
        .{ "setCalendar:", void, .{?*anyopaque} },
        .{ "setDatePickerElements:", void, .{objc.NSInteger} },
        .{ "setDatePickerMode:", void, .{NSDatePicker.Mode} },
        .{ "setDatePickerStyle:", void, .{NSDatePicker.Style} },
        .{ "setDateValue:", void, .{Foundation.NSDate} },
        .{ "setDelegate:", void, .{?NSDatePickerCellDelegate} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "setLocale:", void, .{?Foundation.NSLocale} },
        .{ "setMaxDate:", void, .{?Foundation.NSDate} },
        .{ "setMinDate:", void, .{?Foundation.NSDate} },
        .{ "setTextColor:", void, .{NSColor} },
        .{ "setTimeInterval:", void, .{TimeInterval} },
        .{ "setTimeZone:", void, .{?*anyopaque} },
        .{ "textColor", NSColor, .{} },
        .{ "timeInterval", TimeInterval, .{} },
        .{ "timeZone", ?*anyopaque, .{} },
    };

    pub fn send(self: NSDatePickerCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initTextCell:", Object, .{objc.NSString} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDatePickerCell", class_methods, selector, args);
    }
};

pub const NSDictionaryController = struct {
    obj: Object,

    pub const Super = NSArrayController;
    pub const methods = .{
        .{ "excludedKeys", Object, .{} },
        .{ "includedKeys", Object, .{} },
        .{ "initialKey", objc.NSString, .{} },
        .{ "initialValue", Any, .{} },
        .{ "localizedKeyDictionary", Object, .{} },
        .{ "localizedKeyTable", ?objc.NSString, .{} },
        .{ "newObject", NSDictionaryControllerKeyValuePair, .{} },
        .{ "setExcludedKeys:", void, .{Object} },
        .{ "setIncludedKeys:", void, .{Object} },
        .{ "setInitialKey:", void, .{objc.NSString} },
        .{ "setInitialValue:", void, .{Any} },
        .{ "setLocalizedKeyDictionary:", void, .{Object} },
        .{ "setLocalizedKeyTable:", void, .{?objc.NSString} },
    };

    pub fn send(self: NSDictionaryController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSDictionaryControllerKeyValuePair = struct {
    obj: Object,

    pub const methods = .{
        .{ "explicitlyIncluded", objc.BOOL, .{} },
        .{ "key", ?objc.NSString, .{} },
        .{ "localizedKey", ?objc.NSString, .{} },
        .{ "setKey:", void, .{?objc.NSString} },
        .{ "setLocalizedKey:", void, .{?objc.NSString} },
        .{ "setValue:", void, .{?Any} },
        .{ "value", ?Any, .{} },
    };

    pub fn send(self: NSDictionaryControllerKeyValuePair, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSDiffableDataSourceSnapshot = struct {
    obj: Object,

    pub const methods = .{
        .{ "appendItemsWithIdentifiers:", void, .{void} },
        .{ "appendItemsWithIdentifiers:intoSectionWithIdentifier:", void, .{ void, Any } },
        .{ "appendSectionsWithIdentifiers:", void, .{void} },
        .{ "deleteAllItems", void, .{} },
        .{ "deleteItemsWithIdentifiers:", void, .{void} },
        .{ "deleteSectionsWithIdentifiers:", void, .{void} },
        .{ "indexOfItemIdentifier:", objc.NSInteger, .{Any} },
        .{ "indexOfSectionIdentifier:", objc.NSInteger, .{Any} },
        .{ "insertItemsWithIdentifiers:afterItemWithIdentifier:", void, .{ void, Any } },
        .{ "insertItemsWithIdentifiers:beforeItemWithIdentifier:", void, .{ void, Any } },
        .{ "insertSectionsWithIdentifiers:afterSectionWithIdentifier:", void, .{ void, Any } },
        .{ "insertSectionsWithIdentifiers:beforeSectionWithIdentifier:", void, .{ void, Any } },
        .{ "itemIdentifiers", Object, .{} },
        .{ "itemIdentifiersInSectionWithIdentifier:", Object, .{Any} },
        .{ "moveItemWithIdentifier:afterItemWithIdentifier:", void, .{ Any, Any } },
        .{ "moveItemWithIdentifier:beforeItemWithIdentifier:", void, .{ Any, Any } },
        .{ "moveSectionWithIdentifier:afterSectionWithIdentifier:", void, .{ Any, Any } },
        .{ "moveSectionWithIdentifier:beforeSectionWithIdentifier:", void, .{ Any, Any } },
        .{ "numberOfItems", objc.NSInteger, .{} },
        .{ "numberOfItemsInSection:", objc.NSInteger, .{Any} },
        .{ "numberOfSections", objc.NSInteger, .{} },
        .{ "reloadItemsWithIdentifiers:", void, .{void} },
        .{ "reloadSectionsWithIdentifiers:", void, .{void} },
        .{ "sectionIdentifierForSectionContainingItemIdentifier:", ?Any, .{Any} },
        .{ "sectionIdentifiers", Object, .{} },
    };

    pub fn send(self: NSDiffableDataSourceSnapshot, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSDockTile = struct {
    obj: Object,

    pub const methods = .{
        .{ "badgeLabel", ?objc.NSString, .{} },
        .{ "contentView", ?NSView, .{} },
        .{ "display", void, .{} },
        .{ "owner", ?AnyObject, .{} },
        .{ "setBadgeLabel:", void, .{?objc.NSString} },
        .{ "setContentView:", void, .{?NSView} },
        .{ "setShowsApplicationBadge:", void, .{objc.BOOL} },
        .{ "showsApplicationBadge", objc.BOOL, .{} },
        .{ "size", NSSize, .{} },
    };

    pub fn send(self: NSDockTile, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSDocument = struct {
    obj: Object,

    pub const methods = .{
        .{ "PDFPrintOperation", NSPrintOperation, .{} },
        .{ "accommodatePresentedItemDeletionWithCompletionHandler:", void, .{void} },
        .{ "addWindowController:", void, .{NSWindowController} },
        .{ "allowsDocumentSharing", objc.BOOL, .{} },
        .{ "autosaveDocumentWithDelegate:didAutosaveSelector:contextInfo:", void, .{ ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "autosaveWithImplicitCancellability:completionHandler:", void, .{ objc.BOOL, void } },
        .{ "autosavedContentsFileURL", ?Foundation.NSURL, .{} },
        .{ "autosavingFileType", ?objc.NSString, .{} },
        .{ "autosavingIsImplicitlyCancellable", objc.BOOL, .{} },
        .{ "backupFileURL", ?Foundation.NSURL, .{} },
        .{ "browseDocumentVersions:", void, .{?Any} },
        .{ "browsingVersions", objc.BOOL, .{} },
        .{ "canAsynchronouslyWriteToURL:ofType:forSaveOperation:", objc.BOOL, .{ Foundation.NSURL, objc.NSString, NSDocument.SaveOperationType } },
        .{ "canCloseDocumentWithDelegate:shouldCloseSelector:contextInfo:", void, .{ Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "changeCountTokenForSaveOperation:", Any, .{NSDocument.SaveOperationType} },
        .{ "checkAutosavingSafetyAndReturnError:", void, .{} },
        .{ "close", void, .{} },
        .{ "continueActivityUsingBlock:", void, .{void} },
        .{ "continueAsynchronousWorkOnMainThreadUsingBlock:", void, .{void} },
        .{ "dataOfType:error:", Foundation.NSData, .{objc.NSString} },
        .{ "defaultDraftName", objc.NSString, .{} },
        .{ "displayName", objc.NSString, .{} },
        .{ "documentEdited", objc.BOOL, .{} },
        .{ "draft", objc.BOOL, .{} },
        .{ "duplicateAndReturnError:", NSDocument, .{} },
        .{ "duplicateDocument:", void, .{?Any} },
        .{ "duplicateDocumentWithDelegate:didDuplicateSelector:contextInfo:", void, .{ ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "encodeRestorableStateWithCoder:", void, .{Foundation.NSCoder} },
        .{ "encodeRestorableStateWithCoder:backgroundQueue:", void, .{ Foundation.NSCoder, Foundation.NSOperationQueue } },
        .{ "entireFileLoaded", objc.BOOL, .{} },
        .{ "fileAttributesToWriteToURL:ofType:forSaveOperation:originalContentsURL:error:", Object, .{ Foundation.NSURL, objc.NSString, NSDocument.SaveOperationType, ?Foundation.NSURL } },
        .{ "fileModificationDate", ?Foundation.NSDate, .{} },
        .{ "fileNameExtensionForType:saveOperation:", ?objc.NSString, .{ objc.NSString, NSDocument.SaveOperationType } },
        .{ "fileNameExtensionWasHiddenInLastRunSavePanel", objc.BOOL, .{} },
        .{ "fileType", ?objc.NSString, .{} },
        .{ "fileTypeFromLastRunSavePanel", ?objc.NSString, .{} },
        .{ "fileURL", ?Foundation.NSURL, .{} },
        .{ "fileWrapperOfType:error:", Foundation.NSFileWrapper, .{objc.NSString} },
        .{ "handleCloseScriptCommand:", ?Any, .{Foundation.NSCloseCommand} },
        .{ "handlePrintScriptCommand:", ?Any, .{Foundation.NSScriptCommand} },
        .{ "handleSaveScriptCommand:", ?Any, .{Foundation.NSScriptCommand} },
        .{ "hasUnautosavedChanges", objc.BOOL, .{} },
        .{ "hasUndoManager", objc.BOOL, .{} },
        .{ "inViewingMode", objc.BOOL, .{} },
        .{ "invalidateRestorableState", void, .{} },
        .{ "keepBackupFile", objc.BOOL, .{} },
        .{ "lastComponentOfFileName", objc.NSString, .{} },
        .{ "lockDocument:", void, .{?Any} },
        .{ "lockDocumentWithCompletionHandler:", void, .{void} },
        .{ "lockWithCompletionHandler:", void, .{void} },
        .{ "locked", objc.BOOL, .{} },
        .{ "makeWindowControllers", void, .{} },
        .{ "moveDocument:", void, .{?Any} },
        .{ "moveDocumentToUbiquityContainer:", void, .{?Any} },
        .{ "moveDocumentWithCompletionHandler:", void, .{void} },
        .{ "moveToURL:completionHandler:", void, .{ Foundation.NSURL, void } },
        .{ "objectSpecifier", Foundation.NSScriptObjectSpecifier, .{} },
        .{ "observedPresentedItemUbiquityAttributes", objc.NSString, .{} },
        .{ "performActivityWithSynchronousWaiting:usingBlock:", void, .{ objc.BOOL, void } },
        .{ "performAsynchronousFileAccessUsingBlock:", void, .{void} },
        .{ "performSynchronousFileAccessUsingBlock:", void, .{void} },
        .{ "preparePageLayout:", objc.BOOL, .{NSPageLayout} },
        .{ "prepareSavePanel:", objc.BOOL, .{NSSavePanel} },
        .{ "prepareSharingServicePicker:", void, .{NSSharingServicePicker} },
        .{ "presentError:", objc.BOOL, .{void} },
        .{ "presentError:modalForWindow:delegate:didPresentSelector:contextInfo:", void, .{ void, NSWindow, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "presentedItemDidChange", void, .{} },
        .{ "presentedItemDidChangeUbiquityAttributes:", void, .{objc.NSString} },
        .{ "presentedItemDidGainVersion:", void, .{Foundation.NSFileVersion} },
        .{ "presentedItemDidLoseVersion:", void, .{Foundation.NSFileVersion} },
        .{ "presentedItemDidMoveToURL:", void, .{Foundation.NSURL} },
        .{ "presentedItemDidResolveConflictVersion:", void, .{Foundation.NSFileVersion} },
        .{ "presentedItemURL", ?Foundation.NSURL, .{} },
        .{ "previewRepresentableActivityItems", ?*anyopaque, .{} },
        .{ "printDocument:", void, .{?Any} },
        .{ "printDocumentWithSettings:showPrintPanel:delegate:didPrintSelector:contextInfo:", void, .{ Any, objc.BOOL, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "printInfo", NSPrintInfo, .{} },
        .{ "printOperationWithSettings:error:", NSPrintOperation, .{Any} },
        .{ "readFromData:ofType:error:", void, .{ Foundation.NSData, objc.NSString } },
        .{ "readFromFileWrapper:ofType:error:", void, .{ Foundation.NSFileWrapper, objc.NSString } },
        .{ "readFromURL:ofType:error:", void, .{ Foundation.NSURL, objc.NSString } },
        .{ "relinquishPresentedItemToReader:", void, .{void} },
        .{ "relinquishPresentedItemToWriter:", void, .{void} },
        .{ "removeWindowController:", void, .{NSWindowController} },
        .{ "renameDocument:", void, .{?Any} },
        .{ "restoreDocumentWindowWithIdentifier:state:completionHandler:", void, .{ objc.NSString, Foundation.NSCoder, void } },
        .{ "restoreStateWithCoder:", void, .{Foundation.NSCoder} },
        .{ "revertDocumentToSaved:", void, .{?Any} },
        .{ "revertToContentsOfURL:ofType:error:", void, .{ Foundation.NSURL, objc.NSString } },
        .{ "runModalPageLayoutWithPrintInfo:delegate:didRunSelector:contextInfo:", void, .{ NSPrintInfo, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "runModalPrintOperation:delegate:didRunSelector:contextInfo:", void, .{ NSPrintOperation, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "runModalSavePanelForSaveOperation:delegate:didSaveSelector:contextInfo:", void, .{ NSDocument.SaveOperationType, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "runPageLayout:", void, .{?Any} },
        .{ "saveDocument:", void, .{?Any} },
        .{ "saveDocumentAs:", void, .{?Any} },
        .{ "saveDocumentTo:", void, .{?Any} },
        .{ "saveDocumentToPDF:", void, .{?Any} },
        .{ "saveDocumentWithDelegate:didSaveSelector:contextInfo:", void, .{ ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "savePanelShowsFileFormatsControl", objc.BOOL, .{} },
        .{ "savePresentedItemChangesWithCompletionHandler:", void, .{void} },
        .{ "saveToURL:ofType:forSaveOperation:completionHandler:", void, .{ Foundation.NSURL, objc.NSString, NSDocument.SaveOperationType, void } },
        .{ "saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:", void, .{ Foundation.NSURL, objc.NSString, NSDocument.SaveOperationType, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "scheduleAutosaving", void, .{} },
        .{ "setAutosavedContentsFileURL:", void, .{?Foundation.NSURL} },
        .{ "setDisplayName:", void, .{objc.NSString} },
        .{ "setDraft:", void, .{objc.BOOL} },
        .{ "setFileModificationDate:", void, .{?Foundation.NSDate} },
        .{ "setFileType:", void, .{?objc.NSString} },
        .{ "setFileURL:", void, .{?Foundation.NSURL} },
        .{ "setHasUndoManager:", void, .{objc.BOOL} },
        .{ "setLastComponentOfFileName:", void, .{objc.NSString} },
        .{ "setPreviewRepresentableActivityItems:", void, .{?*anyopaque} },
        .{ "setPrintInfo:", void, .{NSPrintInfo} },
        .{ "setUndoManager:", void, .{?Foundation.NSUndoManager} },
        .{ "setUserActivity:", void, .{?Foundation.NSUserActivity} },
        .{ "setWindow:", void, .{?NSWindow} },
        .{ "shareDocumentWithSharingService:completionHandler:", void, .{ NSSharingService, void } },
        .{ "shouldChangePrintInfo:", objc.BOOL, .{NSPrintInfo} },
        .{ "shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:", void, .{ NSWindowController, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "shouldRunSavePanelWithAccessoryView", objc.BOOL, .{} },
        .{ "showWindows", void, .{} },
        .{ "stopBrowsingVersionsWithCompletionHandler:", void, .{void} },
        .{ "unblockUserInteraction", void, .{} },
        .{ "undoManager", ?Foundation.NSUndoManager, .{} },
        .{ "unlockDocument:", void, .{?Any} },
        .{ "unlockDocumentWithCompletionHandler:", void, .{void} },
        .{ "unlockWithCompletionHandler:", void, .{void} },
        .{ "updateChangeCount:", void, .{NSDocument.ChangeType} },
        .{ "updateChangeCountWithToken:forSaveOperation:", void, .{ Any, NSDocument.SaveOperationType } },
        .{ "updateUserActivityState:", void, .{Foundation.NSUserActivity} },
        .{ "userActivity", ?Foundation.NSUserActivity, .{} },
        .{ "validateUserInterfaceItem:", objc.BOOL, .{void} },
        .{ "willNotPresentError:", void, .{void} },
        .{ "willPresentError:", ?*anyopaque, .{void} },
        .{ "windowControllerDidLoadNib:", void, .{NSWindowController} },
        .{ "windowControllerWillLoadNib:", void, .{NSWindowController} },
        .{ "windowControllers", Object, .{} },
        .{ "windowForSheet", ?NSWindow, .{} },
        .{ "windowNibName", objc.NSString, .{} },
        .{ "writableTypesForSaveOperation:", Object, .{NSDocument.SaveOperationType} },
        .{ "writeSafelyToURL:ofType:forSaveOperation:error:", void, .{ Foundation.NSURL, objc.NSString, NSDocument.SaveOperationType } },
        .{ "writeToURL:ofType:error:", void, .{ Foundation.NSURL, objc.NSString } },
        .{ "writeToURL:ofType:forSaveOperation:originalContentsURL:error:", void, .{ Foundation.NSURL, objc.NSString, NSDocument.SaveOperationType, ?Foundation.NSURL } },
    };

    pub fn send(self: NSDocument, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "allowedClassesForRestorableStateKeyPath:", Object, .{objc.NSString} },
        .{ "autosavesDrafts", objc.BOOL, .{} },
        .{ "autosavesInPlace", objc.BOOL, .{} },
        .{ "canConcurrentlyReadDocumentsOfType:", objc.BOOL, .{objc.NSString} },
        .{ "init", Object, .{} },
        .{ "initForURL:withContentsOfURL:ofType:error:", Object, .{ ?Foundation.NSURL, Foundation.NSURL, objc.NSString } },
        .{ "initWithContentsOfURL:ofType:error:", Object, .{ Foundation.NSURL, objc.NSString } },
        .{ "initWithType:error:", Object, .{objc.NSString} },
        .{ "isNativeType:", objc.BOOL, .{objc.NSString} },
        .{ "preservesVersions", objc.BOOL, .{} },
        .{ "readableTypes", Object, .{} },
        .{ "restorableStateKeyPaths", Object, .{} },
        .{ "usesUbiquitousStorage", objc.BOOL, .{} },
        .{ "writableTypes", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDocument", class_methods, selector, args);
    }

    pub const ChangeType = enum(i64) {
        changeDone = 0,
        changeUndone = 1,
        changeCleared = 2,
        changeReadOtherContents = 3,
        changeAutosaved = 4,
        changeRedone = 5,
        changeDiscardable = 256,
    };
    pub const SaveOperationType = enum(i64) {
        saveOperation = 0,
        saveAsOperation = 1,
        saveToOperation = 2,
        autosaveElsewhereOperation = 3,
        autosaveInPlaceOperation = 4,
        autosaveAsOperation = 5,
    };
};

pub const NSDocumentController = struct {
    obj: Object,

    pub const methods = .{
        .{ "URLsFromRunningOpenPanel", ?*anyopaque, .{} },
        .{ "addDocument:", void, .{NSDocument} },
        .{ "allowsAutomaticShareMenu", objc.BOOL, .{} },
        .{ "autosavingDelay", TimeInterval, .{} },
        .{ "beginOpenPanel:forTypes:completionHandler:", void, .{ NSOpenPanel, void, void } },
        .{ "beginOpenPanelWithCompletionHandler:", void, .{void} },
        .{ "clearRecentDocuments:", void, .{?Any} },
        .{ "closeAllDocumentsWithDelegate:didCloseAllSelector:contextInfo:", void, .{ ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "currentDirectory", ?objc.NSString, .{} },
        .{ "currentDocument", ?NSDocument, .{} },
        .{ "defaultType", ?objc.NSString, .{} },
        .{ "displayNameForType:", ?objc.NSString, .{objc.NSString} },
        .{ "documentClassForType:", ?AnyClass, .{objc.NSString} },
        .{ "documentClassNames", Object, .{} },
        .{ "documentForURL:", ?NSDocument, .{Foundation.NSURL} },
        .{ "documentForWindow:", ?NSDocument, .{NSWindow} },
        .{ "documents", Object, .{} },
        .{ "duplicateDocumentWithContentsOfURL:copying:displayName:error:", NSDocument, .{ Foundation.NSURL, objc.BOOL, ?objc.NSString } },
        .{ "hasEditedDocuments", objc.BOOL, .{} },
        .{ "makeDocumentForURL:withContentsOfURL:ofType:error:", NSDocument, .{ ?Foundation.NSURL, Foundation.NSURL, objc.NSString } },
        .{ "makeDocumentWithContentsOfURL:ofType:error:", NSDocument, .{ Foundation.NSURL, objc.NSString } },
        .{ "makeUntitledDocumentOfType:error:", NSDocument, .{objc.NSString} },
        .{ "maximumRecentDocumentCount", objc.NSInteger, .{} },
        .{ "newDocument:", void, .{?Any} },
        .{ "noteNewRecentDocument:", void, .{NSDocument} },
        .{ "noteNewRecentDocumentURL:", void, .{Foundation.NSURL} },
        .{ "openDocument:", void, .{?Any} },
        .{ "openDocumentWithContentsOfURL:display:completionHandler:", void, .{ Foundation.NSURL, objc.BOOL, void } },
        .{ "openUntitledDocumentAndDisplay:error:", NSDocument, .{objc.BOOL} },
        .{ "presentError:", objc.BOOL, .{void} },
        .{ "presentError:modalForWindow:delegate:didPresentSelector:contextInfo:", void, .{ void, NSWindow, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "recentDocumentURLs", Object, .{} },
        .{ "removeDocument:", void, .{NSDocument} },
        .{ "reopenDocumentForURL:withContentsOfURL:display:completionHandler:", void, .{ ?Foundation.NSURL, Foundation.NSURL, objc.BOOL, void } },
        .{ "reviewUnsavedDocumentsWithAlertTitle:cancellable:delegate:didReviewAllSelector:contextInfo:", void, .{ ?objc.NSString, objc.BOOL, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "runModalOpenPanel:forTypes:", objc.NSInteger, .{ NSOpenPanel, void } },
        .{ "saveAllDocuments:", void, .{?Any} },
        .{ "setAutosavingDelay:", void, .{TimeInterval} },
        .{ "standardShareMenuItem", NSMenuItem, .{} },
        .{ "typeForContentsOfURL:error:", objc.NSString, .{Foundation.NSURL} },
        .{ "validateUserInterfaceItem:", objc.BOOL, .{void} },
        .{ "willPresentError:", ?*anyopaque, .{void} },
    };

    pub fn send(self: NSDocumentController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "sharedDocumentController", NSDocumentController, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDocumentController", class_methods, selector, args);
    }
};

pub const NSDraggingImageComponent = struct {
    obj: Object,

    pub const methods = .{
        .{ "contents", ?Any, .{} },
        .{ "frame", NSRect, .{} },
        .{ "key", objc.NSString, .{} },
        .{ "setContents:", void, .{?Any} },
        .{ "setFrame:", void, .{NSRect} },
        .{ "setKey:", void, .{objc.NSString} },
    };

    pub fn send(self: NSDraggingImageComponent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithKey:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDraggingImageComponent", class_methods, selector, args);
    }
};

pub const NSDraggingItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "draggingFrame", NSRect, .{} },
        .{ "imageComponents", ?*anyopaque, .{} },
        .{ "imageComponentsProvider", ?*anyopaque, .{} },
        .{ "item", Any, .{} },
        .{ "setDraggingFrame:", void, .{NSRect} },
        .{ "setDraggingFrame:contents:", void, .{ NSRect, ?Any } },
        .{ "setImageComponentsProvider:", void, .{?*anyopaque} },
    };

    pub fn send(self: NSDraggingItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithPasteboardWriter:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDraggingItem", class_methods, selector, args);
    }
};

pub const NSDraggingSession = struct {
    obj: Object,

    pub const methods = .{
        .{ "animatesToStartingPositionsOnCancelOrFail", objc.BOOL, .{} },
        .{ "draggingFormation", NSDraggingFormation, .{} },
        .{ "draggingLeaderIndex", objc.NSInteger, .{} },
        .{ "draggingLocation", NSPoint, .{} },
        .{ "draggingPasteboard", NSPasteboard, .{} },
        .{ "draggingSequenceNumber", objc.NSInteger, .{} },
        .{ "enumerateDraggingItemsWithOptions:forView:classes:searchOptions:usingBlock:", void, .{ objc.NSInteger, ?NSView, void, Any, void } },
        .{ "setAnimatesToStartingPositionsOnCancelOrFail:", void, .{objc.BOOL} },
        .{ "setDraggingFormation:", void, .{NSDraggingFormation} },
        .{ "setDraggingLeaderIndex:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSDraggingSession, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSDrawer = struct {
    obj: Object,

    pub const Super = NSResponder;
    pub const methods = .{
        .{ "close", void, .{} },
        .{ "close:", void, .{?Any} },
        .{ "contentSize", NSSize, .{} },
        .{ "contentView", ?NSView, .{} },
        .{ "delegate", ?NSDrawerDelegate, .{} },
        .{ "edge", Foundation.NSRectEdge, .{} },
        .{ "leadingOffset", objc.CGFloat, .{} },
        .{ "maxContentSize", NSSize, .{} },
        .{ "minContentSize", NSSize, .{} },
        .{ "open", void, .{} },
        .{ "open:", void, .{?Any} },
        .{ "openOnEdge:", void, .{Foundation.NSRectEdge} },
        .{ "parentWindow", ?NSWindow, .{} },
        .{ "preferredEdge", Foundation.NSRectEdge, .{} },
        .{ "setContentSize:", void, .{NSSize} },
        .{ "setContentView:", void, .{?NSView} },
        .{ "setDelegate:", void, .{?NSDrawerDelegate} },
        .{ "setLeadingOffset:", void, .{objc.CGFloat} },
        .{ "setMaxContentSize:", void, .{NSSize} },
        .{ "setMinContentSize:", void, .{NSSize} },
        .{ "setParentWindow:", void, .{?NSWindow} },
        .{ "setPreferredEdge:", void, .{Foundation.NSRectEdge} },
        .{ "setTrailingOffset:", void, .{objc.CGFloat} },
        .{ "state", objc.NSInteger, .{} },
        .{ "toggle:", void, .{?Any} },
        .{ "trailingOffset", objc.CGFloat, .{} },
    };

    pub fn send(self: NSDrawer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithContentSize:preferredEdge:", Object, .{ NSSize, Foundation.NSRectEdge } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDrawer", class_methods, selector, args);
    }

    pub const State = enum(i64) {
        closedState = 0,
        openingState = 1,
        openState = 2,
        closingState = 3,
    };
};

pub const NSEPSImageRep = struct {
    obj: Object,

    pub const Super = NSImageRep;
    pub const methods = .{
        .{ "EPSRepresentation", Foundation.NSData, .{} },
        .{ "boundingBox", NSRect, .{} },
        .{ "prepareGState", void, .{} },
    };

    pub fn send(self: NSEPSImageRep, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithData:", Object, .{Foundation.NSData} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSEPSImageRep", class_methods, selector, args);
    }
};

pub const NSEvent = struct {
    obj: Object,

    pub const methods = .{
        .{ "ARepeat", objc.BOOL, .{} },
        .{ "CGEvent", ?*anyopaque, .{} },
        .{ "absoluteX", objc.NSInteger, .{} },
        .{ "absoluteY", objc.NSInteger, .{} },
        .{ "absoluteZ", objc.NSInteger, .{} },
        .{ "allTouches", NSTouch, .{} },
        .{ "associatedEventsMask", objc.NSInteger, .{} },
        .{ "buttonMask", objc.NSInteger, .{} },
        .{ "buttonNumber", objc.NSInteger, .{} },
        .{ "capabilityMask", objc.NSInteger, .{} },
        .{ "characters", ?objc.NSString, .{} },
        .{ "charactersByApplyingModifiers:", ?objc.NSString, .{objc.NSInteger} },
        .{ "charactersIgnoringModifiers", ?objc.NSString, .{} },
        .{ "clickCount", objc.NSInteger, .{} },
        .{ "coalescedTouchesForTouch:", Object, .{NSTouch} },
        .{ "context", ?NSGraphicsContext, .{} },
        .{ "data1", objc.NSInteger, .{} },
        .{ "data2", objc.NSInteger, .{} },
        .{ "deltaX", objc.CGFloat, .{} },
        .{ "deltaY", objc.CGFloat, .{} },
        .{ "deltaZ", objc.CGFloat, .{} },
        .{ "deviceID", objc.NSInteger, .{} },
        .{ "directionInvertedFromDevice", objc.BOOL, .{} },
        .{ "enteringProximity", objc.BOOL, .{} },
        .{ "eventNumber", objc.NSInteger, .{} },
        .{ "eventRef", ?UnsafeRawPointer, .{} },
        .{ "hasPreciseScrollingDeltas", objc.BOOL, .{} },
        .{ "keyCode", u16, .{} },
        .{ "locationInWindow", NSPoint, .{} },
        .{ "magnification", objc.CGFloat, .{} },
        .{ "modifierFlags", objc.NSInteger, .{} },
        .{ "momentumPhase", objc.NSInteger, .{} },
        .{ "phase", objc.NSInteger, .{} },
        .{ "pointingDeviceID", objc.NSInteger, .{} },
        .{ "pointingDeviceSerialNumber", objc.NSInteger, .{} },
        .{ "pointingDeviceType", NSEvent.PointingDeviceType, .{} },
        .{ "pressure", f32, .{} },
        .{ "pressureBehavior", NSEvent.PressureBehavior, .{} },
        .{ "rotation", f32, .{} },
        .{ "scrollingDeltaX", objc.CGFloat, .{} },
        .{ "scrollingDeltaY", objc.CGFloat, .{} },
        .{ "stage", objc.NSInteger, .{} },
        .{ "stageTransition", objc.CGFloat, .{} },
        .{ "subtype", NSEvent.EventSubtype, .{} },
        .{ "systemTabletID", objc.NSInteger, .{} },
        .{ "tabletID", objc.NSInteger, .{} },
        .{ "tangentialPressure", f32, .{} },
        .{ "tilt", NSPoint, .{} },
        .{ "timestamp", TimeInterval, .{} },
        .{ "touchesForView:", NSTouch, .{NSView} },
        .{ "touchesMatchingPhase:inView:", NSTouch, .{ objc.NSInteger, ?NSView } },
        .{ "trackSwipeEventWithOptions:dampenAmountThresholdMin:max:usingHandler:", void, .{ objc.NSInteger, objc.CGFloat, objc.CGFloat, void } },
        .{ "trackingArea", ?NSTrackingArea, .{} },
        .{ "trackingNumber", objc.NSInteger, .{} },
        .{ "type", NSEvent.EventType, .{} },
        .{ "uniqueID", u64, .{} },
        .{ "userData", ?UnsafeMutableRawPointer, .{} },
        .{ "vendorDefined", Any, .{} },
        .{ "vendorID", objc.NSInteger, .{} },
        .{ "vendorPointingDeviceType", objc.NSInteger, .{} },
        .{ "window", ?NSWindow, .{} },
        .{ "windowNumber", objc.NSInteger, .{} },
    };

    pub fn send(self: NSEvent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "addGlobalMonitorForEventsMatchingMask:handler:", ?Any, .{ objc.NSInteger, void } },
        .{ "addLocalMonitorForEventsMatchingMask:handler:", ?Any, .{ objc.NSInteger, void } },
        .{ "doubleClickInterval", TimeInterval, .{} },
        .{ "enterExitEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:trackingNumber:userData:", ?NSEvent, .{ NSEvent.EventType, NSPoint, objc.NSInteger, TimeInterval, objc.NSInteger, ?NSGraphicsContext, objc.NSInteger, objc.NSInteger, ?UnsafeMutableRawPointer } },
        .{ "eventWithCGEvent:", Object, .{?*anyopaque} },
        .{ "eventWithEventRef:", Object, .{UnsafeRawPointer} },
        .{ "keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:", ?NSEvent, .{ NSEvent.EventType, NSPoint, objc.NSInteger, TimeInterval, objc.NSInteger, ?NSGraphicsContext, objc.NSString, objc.NSString, objc.BOOL, u16 } },
        .{ "keyRepeatDelay", TimeInterval, .{} },
        .{ "keyRepeatInterval", TimeInterval, .{} },
        .{ "modifierFlags", objc.NSInteger, .{} },
        .{ "mouseCoalescingEnabled", objc.BOOL, .{} },
        .{ "mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:", ?NSEvent, .{ NSEvent.EventType, NSPoint, objc.NSInteger, TimeInterval, objc.NSInteger, ?NSGraphicsContext, objc.NSInteger, objc.NSInteger, f32 } },
        .{ "mouseLocation", NSPoint, .{} },
        .{ "otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:", ?NSEvent, .{ NSEvent.EventType, NSPoint, objc.NSInteger, TimeInterval, objc.NSInteger, ?NSGraphicsContext, i16, objc.NSInteger, objc.NSInteger } },
        .{ "pressedMouseButtons", objc.NSInteger, .{} },
        .{ "removeMonitor:", void, .{Any} },
        .{ "setMouseCoalescingEnabled:", void, .{objc.BOOL} },
        .{ "startPeriodicEventsAfterDelay:withPeriod:", void, .{ TimeInterval, TimeInterval } },
        .{ "stopPeriodicEvents", void, .{} },
        .{ "swipeTrackingFromScrollEventsEnabled", objc.BOOL, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSEvent", class_methods, selector, args);
    }

    pub const EventSubtype = enum(i64) {
        windowExposed = 0,
        applicationActivated = 1,
        applicationDeactivated = 2,
        touch = 3,
        windowMoved = 4,
        screenChanged = 8,
    };
    pub const EventType = enum(i64) {
        leftMouseDown = 1,
        leftMouseUp = 2,
        rightMouseDown = 3,
        rightMouseUp = 4,
        mouseMoved = 5,
        leftMouseDragged = 6,
        rightMouseDragged = 7,
        mouseEntered = 8,
        mouseExited = 9,
        keyDown = 10,
        keyUp = 11,
        flagsChanged = 12,
        appKitDefined = 13,
        systemDefined = 14,
        applicationDefined = 15,
        periodic = 16,
        cursorUpdate = 17,
        rotate = 18,
        beginGesture = 19,
        endGesture = 20,
        scrollWheel = 22,
        tabletPoint = 23,
        tabletProximity = 24,
        otherMouseDown = 25,
        otherMouseUp = 26,
        otherMouseDragged = 27,
        gesture = 29,
        magnify = 30,
        swipe = 31,
        smartMagnify = 32,
        quickLook = 33,
        pressure = 34,
        directTouch = 37,
        changeMode = 38,
        mouseCancelled = 40,
    };
    pub const GestureAxis = enum(i64) {
        none = 0,
        horizontal = 1,
        vertical = 2,
    };
    pub const PointingDeviceType = enum(i64) {
        unknown = 0,
        pen = 1,
        cursor = 2,
        eraser = 3,
    };
    pub const PressureBehavior = enum(i64) {
        unknown = -1,
        primaryDefault = 0,
        primaryClick = 1,
        primaryGeneric = 2,
        primaryAccelerator = 3,
        primaryDeepClick = 5,
        primaryDeepDrag = 6,
    };
};

pub const NSFilePromiseProvider = struct {
    obj: Object,

    pub const methods = .{
        .{ "delegate", ?NSFilePromiseProviderDelegate, .{} },
        .{ "fileType", objc.NSString, .{} },
        .{ "setDelegate:", void, .{?NSFilePromiseProviderDelegate} },
        .{ "setFileType:", void, .{objc.NSString} },
        .{ "setUserInfo:", void, .{?Any} },
        .{ "userInfo", ?Any, .{} },
    };

    pub fn send(self: NSFilePromiseProvider, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithFileType:delegate:", Object, .{ objc.NSString, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFilePromiseProvider", class_methods, selector, args);
    }
};

pub const NSFilePromiseReceiver = struct {
    obj: Object,

    pub const methods = .{
        .{ "fileNames", Object, .{} },
        .{ "fileTypes", Object, .{} },
        .{ "receivePromisedFilesAtDestination:options:operationQueue:reader:", void, .{ Foundation.NSURL, Any, Foundation.NSOperationQueue, void } },
    };

    pub fn send(self: NSFilePromiseReceiver, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "readableDraggedTypes", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFilePromiseReceiver", class_methods, selector, args);
    }
};

pub const NSFont = struct {
    obj: Object,

    pub const methods = .{
        .{ "advancementForCGGlyph:", NSSize, .{objc.NSString} },
        .{ "advancementForGlyph:", NSSize, .{u32} },
        .{ "ascender", objc.CGFloat, .{} },
        .{ "boundingRectForCGGlyph:", NSRect, .{objc.NSString} },
        .{ "boundingRectForFont", NSRect, .{} },
        .{ "boundingRectForGlyph:", NSRect, .{u32} },
        .{ "capHeight", objc.CGFloat, .{} },
        .{ "coveredCharacterSet", ?*anyopaque, .{} },
        .{ "descender", objc.CGFloat, .{} },
        .{ "displayName", ?objc.NSString, .{} },
        .{ "familyName", ?objc.NSString, .{} },
        .{ "fixedPitch", objc.BOOL, .{} },
        .{ "fontDescriptor", NSFontDescriptor, .{} },
        .{ "fontName", objc.NSString, .{} },
        .{ "fontWithSize:", NSFont, .{objc.CGFloat} },
        .{ "getAdvancements:forCGGlyphs:count:", void, .{ NSSize, objc.NSString, objc.NSInteger } },
        .{ "getAdvancements:forGlyphs:count:", void, .{ NSSize, u32, objc.NSInteger } },
        .{ "getAdvancements:forPackedGlyphs:length:", void, .{ NSSize, UnsafeRawPointer, objc.NSInteger } },
        .{ "getBoundingRects:forCGGlyphs:count:", void, .{ NSRect, objc.NSString, objc.NSInteger } },
        .{ "getBoundingRects:forGlyphs:count:", void, .{ NSRect, u32, objc.NSInteger } },
        .{ "glyphWithName:", u32, .{objc.NSString} },
        .{ "italicAngle", objc.CGFloat, .{} },
        .{ "leading", objc.CGFloat, .{} },
        .{ "matrix", objc.CGFloat, .{} },
        .{ "maximumAdvancement", NSSize, .{} },
        .{ "mostCompatibleStringEncoding", c_ulong, .{} },
        .{ "numberOfGlyphs", objc.NSInteger, .{} },
        .{ "pointSize", objc.CGFloat, .{} },
        .{ "printerFont", NSFont, .{} },
        .{ "renderingMode", NSFontRenderingMode, .{} },
        .{ "screenFont", NSFont, .{} },
        .{ "screenFontWithRenderingMode:", NSFont, .{NSFontRenderingMode} },
        .{ "set", void, .{} },
        .{ "setInContext:", void, .{NSGraphicsContext} },
        .{ "textTransform", ?*anyopaque, .{} },
        .{ "underlinePosition", objc.CGFloat, .{} },
        .{ "underlineThickness", objc.CGFloat, .{} },
        .{ "vertical", objc.BOOL, .{} },
        .{ "verticalFont", NSFont, .{} },
        .{ "xHeight", objc.CGFloat, .{} },
    };

    pub fn send(self: NSFont, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "boldSystemFontOfSize:", NSFont, .{objc.CGFloat} },
        .{ "controlContentFontOfSize:", NSFont, .{objc.CGFloat} },
        .{ "fontWithDescriptor:size:", Object, .{ NSFontDescriptor, objc.CGFloat } },
        .{ "fontWithDescriptor:textTransform:", Object, .{ NSFontDescriptor, ?*anyopaque } },
        .{ "fontWithName:matrix:", Object, .{ objc.NSString, objc.CGFloat } },
        .{ "fontWithName:size:", Object, .{ objc.NSString, objc.CGFloat } },
        .{ "labelFontOfSize:", NSFont, .{objc.CGFloat} },
        .{ "labelFontSize", objc.CGFloat, .{} },
        .{ "menuBarFontOfSize:", NSFont, .{objc.CGFloat} },
        .{ "menuFontOfSize:", NSFont, .{objc.CGFloat} },
        .{ "messageFontOfSize:", NSFont, .{objc.CGFloat} },
        .{ "monospacedDigitSystemFontOfSize:weight:", NSFont, .{ objc.CGFloat, objc.CGFloat } },
        .{ "monospacedSystemFontOfSize:weight:", NSFont, .{ objc.CGFloat, objc.CGFloat } },
        .{ "paletteFontOfSize:", NSFont, .{objc.CGFloat} },
        .{ "preferredFontForTextStyle:options:", NSFont, .{ objc.NSString, Any } },
        .{ "setUserFixedPitchFont:", void, .{?NSFont} },
        .{ "setUserFont:", void, .{?NSFont} },
        .{ "smallSystemFontSize", objc.CGFloat, .{} },
        .{ "systemFontOfSize:", NSFont, .{objc.CGFloat} },
        .{ "systemFontOfSize:weight:", NSFont, .{ objc.CGFloat, objc.CGFloat } },
        .{ "systemFontOfSize:weight:width:", NSFont, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "systemFontSize", objc.CGFloat, .{} },
        .{ "systemFontSizeForControlSize:", objc.CGFloat, .{NSControl.ControlSize} },
        .{ "titleBarFontOfSize:", NSFont, .{objc.CGFloat} },
        .{ "toolTipsFontOfSize:", NSFont, .{objc.CGFloat} },
        .{ "userFixedPitchFontOfSize:", ?NSFont, .{objc.CGFloat} },
        .{ "userFontOfSize:", ?NSFont, .{objc.CGFloat} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFont", class_methods, selector, args);
    }
};

pub const NSFontAssetRequest = struct {
    obj: Object,

    pub const methods = .{
        .{ "downloadFontAssetsWithCompletionHandler:", void, .{void} },
        .{ "downloadedFontDescriptors", Object, .{} },
        .{ "progress", Foundation.NSProgress, .{} },
    };

    pub fn send(self: NSFontAssetRequest, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithFontDescriptors:options:", Object, .{ void, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFontAssetRequest", class_methods, selector, args);
    }
};

pub const NSFontCollection = struct {
    obj: Object,

    pub const methods = .{
        .{ "exclusionDescriptors", ?*anyopaque, .{} },
        .{ "matchingDescriptors", ?*anyopaque, .{} },
        .{ "matchingDescriptorsForFamily:", ?*anyopaque, .{objc.NSString} },
        .{ "matchingDescriptorsForFamily:options:", ?*anyopaque, .{ objc.NSString, ?Foundation.NSNumber } },
        .{ "matchingDescriptorsWithOptions:", ?*anyopaque, .{?Foundation.NSNumber} },
        .{ "queryDescriptors", ?*anyopaque, .{} },
    };

    pub fn send(self: NSFontCollection, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "allFontCollectionNames", Object, .{} },
        .{ "fontCollectionWithAllAvailableDescriptors", NSFontCollection, .{} },
        .{ "fontCollectionWithDescriptors:", Object, .{void} },
        .{ "fontCollectionWithLocale:", Object, .{Foundation.NSLocale} },
        .{ "fontCollectionWithName:", Object, .{objc.NSString} },
        .{ "fontCollectionWithName:visibility:", Object, .{ objc.NSString, objc.NSInteger } },
        .{ "hideFontCollectionWithName:visibility:error:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "renameFontCollectionWithName:visibility:toName:error:", void, .{ objc.NSString, objc.NSInteger, objc.NSString } },
        .{ "showFontCollection:withName:visibility:error:", void, .{ NSFontCollection, objc.NSString, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFontCollection", class_methods, selector, args);
    }
};

pub const NSFontDescriptor = struct {
    obj: Object,

    pub const methods = .{
        .{ "fontAttributes", Object, .{} },
        .{ "fontDescriptorByAddingAttributes:", NSFontDescriptor, .{Any} },
        .{ "fontDescriptorWithDesign:", ?*anyopaque, .{objc.NSString} },
        .{ "fontDescriptorWithFace:", NSFontDescriptor, .{objc.NSString} },
        .{ "fontDescriptorWithFamily:", NSFontDescriptor, .{objc.NSString} },
        .{ "fontDescriptorWithMatrix:", NSFontDescriptor, .{?*anyopaque} },
        .{ "fontDescriptorWithSize:", NSFontDescriptor, .{objc.CGFloat} },
        .{ "fontDescriptorWithSymbolicTraits:", NSFontDescriptor, .{objc.NSInteger} },
        .{ "matchingFontDescriptorWithMandatoryKeys:", ?NSFontDescriptor, .{objc.NSString} },
        .{ "matchingFontDescriptorsWithMandatoryKeys:", Object, .{objc.NSString} },
        .{ "matrix", ?*anyopaque, .{} },
        .{ "objectForKey:", ?Any, .{objc.NSString} },
        .{ "pointSize", objc.CGFloat, .{} },
        .{ "postscriptName", ?objc.NSString, .{} },
        .{ "requiresFontAssetRequest", objc.BOOL, .{} },
        .{ "setRequiresFontAssetRequest:", void, .{objc.BOOL} },
        .{ "symbolicTraits", objc.NSInteger, .{} },
    };

    pub fn send(self: NSFontDescriptor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "fontDescriptorWithName:matrix:", Object, .{ objc.NSString, ?*anyopaque } },
        .{ "fontDescriptorWithName:size:", Object, .{ objc.NSString, objc.CGFloat } },
        .{ "initWithFontAttributes:", Object, .{?Any} },
        .{ "preferredFontDescriptorForTextStyle:options:", NSFontDescriptor, .{ objc.NSString, Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFontDescriptor", class_methods, selector, args);
    }
};

pub const NSFontManager = struct {
    obj: Object,

    pub const methods = .{
        .{ "action", Selector, .{} },
        .{ "addCollection:options:", objc.BOOL, .{ objc.NSString, objc.NSInteger } },
        .{ "addFontDescriptors:toCollection:", void, .{ void, objc.NSString } },
        .{ "addFontTrait:", void, .{?Any} },
        .{ "availableFontFamilies", Object, .{} },
        .{ "availableFontNamesMatchingFontDescriptor:", ?*anyopaque, .{NSFontDescriptor} },
        .{ "availableFontNamesWithTraits:", ?*anyopaque, .{objc.NSInteger} },
        .{ "availableFonts", Object, .{} },
        .{ "availableMembersOfFontFamily:", ?*anyopaque, .{objc.NSString} },
        .{ "collectionNames", Object, .{} },
        .{ "convertAttributes:", Object, .{Any} },
        .{ "convertFont:", NSFont, .{NSFont} },
        .{ "convertFont:toFace:", ?NSFont, .{ NSFont, objc.NSString } },
        .{ "convertFont:toFamily:", NSFont, .{ NSFont, objc.NSString } },
        .{ "convertFont:toHaveTrait:", NSFont, .{ NSFont, objc.NSInteger } },
        .{ "convertFont:toNotHaveTrait:", NSFont, .{ NSFont, objc.NSInteger } },
        .{ "convertFont:toSize:", NSFont, .{ NSFont, objc.CGFloat } },
        .{ "convertFontTraits:", objc.NSInteger, .{objc.NSInteger} },
        .{ "convertWeight:ofFont:", NSFont, .{ objc.BOOL, NSFont } },
        .{ "currentFontAction", NSFontAction, .{} },
        .{ "delegate", ?AnyObject, .{} },
        .{ "enabled", objc.BOOL, .{} },
        .{ "fontDescriptorsInCollection:", ?*anyopaque, .{objc.NSString} },
        .{ "fontMenu:", ?NSMenu, .{objc.BOOL} },
        .{ "fontNamed:hasTraits:", objc.BOOL, .{ objc.NSString, objc.NSInteger } },
        .{ "fontPanel:", ?NSFontPanel, .{objc.BOOL} },
        .{ "fontWithFamily:traits:weight:size:", ?NSFont, .{ objc.NSString, objc.NSInteger, objc.NSInteger, objc.CGFloat } },
        .{ "localizedNameForFamily:face:", objc.NSString, .{ objc.NSString, ?objc.NSString } },
        .{ "modifyFont:", void, .{?Any} },
        .{ "modifyFontViaPanel:", void, .{?Any} },
        .{ "multiple", objc.BOOL, .{} },
        .{ "orderFrontFontPanel:", void, .{?Any} },
        .{ "orderFrontStylesPanel:", void, .{?Any} },
        .{ "removeCollection:", objc.BOOL, .{objc.NSString} },
        .{ "removeFontDescriptor:fromCollection:", void, .{ NSFontDescriptor, objc.NSString } },
        .{ "removeFontTrait:", void, .{?Any} },
        .{ "selectedFont", ?NSFont, .{} },
        .{ "sendAction", objc.BOOL, .{} },
        .{ "setAction:", void, .{Selector} },
        .{ "setDelegate:", void, .{?AnyObject} },
        .{ "setEnabled:", void, .{objc.BOOL} },
        .{ "setFontMenu:", void, .{NSMenu} },
        .{ "setSelectedAttributes:isMultiple:", void, .{ Any, objc.BOOL } },
        .{ "setSelectedFont:isMultiple:", void, .{ NSFont, objc.BOOL } },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "target", ?AnyObject, .{} },
        .{ "traitsOfFont:", objc.NSInteger, .{NSFont} },
        .{ "weightOfFont:", objc.NSInteger, .{NSFont} },
    };

    pub fn send(self: NSFontManager, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "setFontManagerFactory:", void, .{?AnyClass} },
        .{ "setFontPanelFactory:", void, .{?AnyClass} },
        .{ "sharedFontManager", NSFontManager, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFontManager", class_methods, selector, args);
    }
};

pub const NSFontPanel = struct {
    obj: Object,

    pub const Super = NSPanel;
    pub const methods = .{
        .{ "accessoryView", ?NSView, .{} },
        .{ "enabled", objc.BOOL, .{} },
        .{ "panelConvertFont:", NSFont, .{NSFont} },
        .{ "reloadDefaultFontFamilies", void, .{} },
        .{ "setAccessoryView:", void, .{?NSView} },
        .{ "setEnabled:", void, .{objc.BOOL} },
        .{ "setPanelFont:isMultiple:", void, .{ NSFont, objc.BOOL } },
        .{ "setWorksWhenModal:", void, .{objc.BOOL} },
        .{ "worksWhenModal", objc.BOOL, .{} },
    };

    pub fn send(self: NSFontPanel, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedFontPanel", NSFontPanel, .{} },
        .{ "sharedFontPanelExists", objc.BOOL, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFontPanel", class_methods, selector, args);
    }
};

pub const NSForm = struct {
    obj: Object,

    pub const Super = NSMatrix;
    pub const methods = .{
        .{ "addEntry:", NSFormCell, .{objc.NSString} },
        .{ "cellAtIndex:", ?Any, .{objc.NSInteger} },
        .{ "drawCellAtIndex:", void, .{objc.NSInteger} },
        .{ "indexOfCellWithTag:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexOfSelectedItem", objc.NSInteger, .{} },
        .{ "insertEntry:atIndex:", ?NSFormCell, .{ objc.NSString, objc.NSInteger } },
        .{ "preferredTextFieldWidth", objc.CGFloat, .{} },
        .{ "removeEntryAtIndex:", void, .{objc.NSInteger} },
        .{ "selectTextAtIndex:", void, .{objc.NSInteger} },
        .{ "setBezeled:", void, .{objc.BOOL} },
        .{ "setBordered:", void, .{objc.BOOL} },
        .{ "setEntryWidth:", void, .{objc.CGFloat} },
        .{ "setFrameSize:", void, .{NSSize} },
        .{ "setInterlineSpacing:", void, .{objc.CGFloat} },
        .{ "setPreferredTextFieldWidth:", void, .{objc.CGFloat} },
        .{ "setTextAlignment:", void, .{NSTextAlignment} },
        .{ "setTextBaseWritingDirection:", void, .{NSWritingDirection} },
        .{ "setTextFont:", void, .{NSFont} },
        .{ "setTitleAlignment:", void, .{NSTextAlignment} },
        .{ "setTitleBaseWritingDirection:", void, .{NSWritingDirection} },
        .{ "setTitleFont:", void, .{NSFont} },
    };

    pub fn send(self: NSForm, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSFormCell = struct {
    obj: Object,

    pub const Super = NSActionCell;
    pub const methods = .{
        .{ "attributedTitle", Foundation.NSAttributedString, .{} },
        .{ "opaque", objc.BOOL, .{} },
        .{ "placeholderAttributedString", ?Foundation.NSAttributedString, .{} },
        .{ "placeholderString", ?objc.NSString, .{} },
        .{ "preferredTextFieldWidth", objc.CGFloat, .{} },
        .{ "setAttributedTitle:", void, .{Foundation.NSAttributedString} },
        .{ "setPlaceholderAttributedString:", void, .{?Foundation.NSAttributedString} },
        .{ "setPlaceholderString:", void, .{?objc.NSString} },
        .{ "setPreferredTextFieldWidth:", void, .{objc.CGFloat} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setTitleAlignment:", void, .{NSTextAlignment} },
        .{ "setTitleBaseWritingDirection:", void, .{NSWritingDirection} },
        .{ "setTitleFont:", void, .{NSFont} },
        .{ "setTitleWidth:", void, .{objc.CGFloat} },
        .{ "title", objc.NSString, .{} },
        .{ "titleAlignment", NSTextAlignment, .{} },
        .{ "titleBaseWritingDirection", NSWritingDirection, .{} },
        .{ "titleFont", NSFont, .{} },
        .{ "titleWidth", objc.CGFloat, .{} },
        .{ "titleWidth:", objc.CGFloat, .{NSSize} },
    };

    pub fn send(self: NSFormCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initTextCell:", Object, .{?objc.NSString} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFormCell", class_methods, selector, args);
    }
};

pub const NSGestureRecognizer = struct {
    obj: Object,

    pub const methods = .{
        .{ "action", Selector, .{} },
        .{ "allowedTouchTypes", objc.NSInteger, .{} },
        .{ "canBePreventedByGestureRecognizer:", objc.BOOL, .{NSGestureRecognizer} },
        .{ "canPreventGestureRecognizer:", objc.BOOL, .{NSGestureRecognizer} },
        .{ "delaysKeyEvents", objc.BOOL, .{} },
        .{ "delaysMagnificationEvents", objc.BOOL, .{} },
        .{ "delaysOtherMouseButtonEvents", objc.BOOL, .{} },
        .{ "delaysPrimaryMouseButtonEvents", objc.BOOL, .{} },
        .{ "delaysRotationEvents", objc.BOOL, .{} },
        .{ "delaysSecondaryMouseButtonEvents", objc.BOOL, .{} },
        .{ "delegate", ?NSGestureRecognizerDelegate, .{} },
        .{ "enabled", objc.BOOL, .{} },
        .{ "flagsChanged:", void, .{NSEvent} },
        .{ "keyDown:", void, .{NSEvent} },
        .{ "keyUp:", void, .{NSEvent} },
        .{ "locationInView:", NSPoint, .{?NSView} },
        .{ "magnifyWithEvent:", void, .{NSEvent} },
        .{ "modifierFlags", objc.NSInteger, .{} },
        .{ "mouseCancelled:", void, .{NSEvent} },
        .{ "mouseDown:", void, .{NSEvent} },
        .{ "mouseDragged:", void, .{NSEvent} },
        .{ "mouseUp:", void, .{NSEvent} },
        .{ "name", ?objc.NSString, .{} },
        .{ "otherMouseDown:", void, .{NSEvent} },
        .{ "otherMouseDragged:", void, .{NSEvent} },
        .{ "otherMouseUp:", void, .{NSEvent} },
        .{ "pressureChangeWithEvent:", void, .{NSEvent} },
        .{ "pressureConfiguration", NSPressureConfiguration, .{} },
        .{ "reset", void, .{} },
        .{ "rightMouseDown:", void, .{NSEvent} },
        .{ "rightMouseDragged:", void, .{NSEvent} },
        .{ "rightMouseUp:", void, .{NSEvent} },
        .{ "rotateWithEvent:", void, .{NSEvent} },
        .{ "setAction:", void, .{Selector} },
        .{ "setAllowedTouchTypes:", void, .{objc.NSInteger} },
        .{ "setDelaysKeyEvents:", void, .{objc.BOOL} },
        .{ "setDelaysMagnificationEvents:", void, .{objc.BOOL} },
        .{ "setDelaysOtherMouseButtonEvents:", void, .{objc.BOOL} },
        .{ "setDelaysPrimaryMouseButtonEvents:", void, .{objc.BOOL} },
        .{ "setDelaysRotationEvents:", void, .{objc.BOOL} },
        .{ "setDelaysSecondaryMouseButtonEvents:", void, .{objc.BOOL} },
        .{ "setDelegate:", void, .{?NSGestureRecognizerDelegate} },
        .{ "setEnabled:", void, .{objc.BOOL} },
        .{ "setName:", void, .{?objc.NSString} },
        .{ "setPressureConfiguration:", void, .{NSPressureConfiguration} },
        .{ "setState:", void, .{NSGestureRecognizer.State} },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "shouldBeRequiredToFailByGestureRecognizer:", objc.BOOL, .{NSGestureRecognizer} },
        .{ "shouldRequireFailureOfGestureRecognizer:", objc.BOOL, .{NSGestureRecognizer} },
        .{ "state", NSGestureRecognizer.State, .{} },
        .{ "tabletPoint:", void, .{NSEvent} },
        .{ "target", ?AnyObject, .{} },
        .{ "touchesBeganWithEvent:", void, .{NSEvent} },
        .{ "touchesCancelledWithEvent:", void, .{NSEvent} },
        .{ "touchesEndedWithEvent:", void, .{NSEvent} },
        .{ "touchesMovedWithEvent:", void, .{NSEvent} },
        .{ "view", ?NSView, .{} },
    };

    pub fn send(self: NSGestureRecognizer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithTarget:action:", Object, .{ ?Any, Selector } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSGestureRecognizer", class_methods, selector, args);
    }

    pub const State = enum(i64) {
        possible = 0,
        began = 1,
        changed = 2,
        ended = 3,
        cancelled = 4,
        failed = 5,
    };
};

pub const NSGlassEffectContainerView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "contentView", ?NSView, .{} },
        .{ "setContentView:", void, .{?NSView} },
        .{ "setSpacing:", void, .{objc.CGFloat} },
        .{ "spacing", objc.CGFloat, .{} },
    };

    pub fn send(self: NSGlassEffectContainerView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSGlassEffectView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "contentView", ?NSView, .{} },
        .{ "cornerRadius", objc.CGFloat, .{} },
        .{ "setContentView:", void, .{?NSView} },
        .{ "setCornerRadius:", void, .{objc.CGFloat} },
        .{ "setStyle:", void, .{NSGlassEffectView.Style} },
        .{ "setTintColor:", void, .{?NSColor} },
        .{ "style", NSGlassEffectView.Style, .{} },
        .{ "tintColor", ?NSColor, .{} },
    };

    pub fn send(self: NSGlassEffectView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const Style = enum(i64) {
        regular = 0,
        clear = 1,
    };
};

pub const NSGlyphGenerator = struct {
    obj: Object,

    pub const methods = .{
        .{ "generateGlyphsForGlyphStorage:desiredNumberOfCharacters:glyphIndex:characterIndex:", void, .{ void, objc.NSInteger, objc.NSInteger, objc.NSInteger } },
    };

    pub fn send(self: NSGlyphGenerator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedGlyphGenerator", NSGlyphGenerator, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSGlyphGenerator", class_methods, selector, args);
    }
};

pub const NSGlyphInfo = struct {
    obj: Object,

    pub const methods = .{
        .{ "baseString", objc.NSString, .{} },
        .{ "characterCollection", NSCharacterCollection, .{} },
        .{ "characterIdentifier", objc.NSInteger, .{} },
        .{ "glyphID", objc.NSString, .{} },
        .{ "glyphName", ?objc.NSString, .{} },
    };

    pub fn send(self: NSGlyphInfo, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "glyphInfoWithCGGlyph:forFont:baseString:", Object, .{ objc.NSString, NSFont, objc.NSString } },
        .{ "glyphInfoWithCharacterIdentifier:collection:baseString:", Object, .{ objc.NSInteger, NSCharacterCollection, objc.NSString } },
        .{ "glyphInfoWithGlyph:forFont:baseString:", Object, .{ u32, NSFont, objc.NSString } },
        .{ "glyphInfoWithGlyphName:forFont:baseString:", Object, .{ objc.NSString, NSFont, objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSGlyphInfo", class_methods, selector, args);
    }
};

pub const NSGradient = struct {
    obj: Object,

    pub const methods = .{
        .{ "colorSpace", NSColorSpace, .{} },
        .{ "drawFromCenter:radius:toCenter:radius:options:", void, .{ NSPoint, objc.CGFloat, NSPoint, objc.CGFloat, objc.NSInteger } },
        .{ "drawFromPoint:toPoint:options:", void, .{ NSPoint, NSPoint, objc.NSInteger } },
        .{ "drawInBezierPath:angle:", void, .{ NSBezierPath, objc.CGFloat } },
        .{ "drawInBezierPath:relativeCenterPosition:", void, .{ NSBezierPath, NSPoint } },
        .{ "drawInRect:angle:", void, .{ NSRect, objc.CGFloat } },
        .{ "drawInRect:relativeCenterPosition:", void, .{ NSRect, NSPoint } },
        .{ "getColor:location:atIndex:", void, .{ ?NSColor, objc.CGFloat, objc.NSInteger } },
        .{ "interpolatedColorAtLocation:", NSColor, .{objc.CGFloat} },
        .{ "numberOfColorStops", objc.NSInteger, .{} },
    };

    pub fn send(self: NSGradient, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithColors:", Object, .{void} },
        .{ "initWithColors:atLocations:colorSpace:", Object, .{ void, objc.CGFloat, NSColorSpace } },
        .{ "initWithStartingColor:endingColor:", Object, .{ NSColor, NSColor } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSGradient", class_methods, selector, args);
    }
};

pub const NSGraphicsContext = struct {
    obj: Object,

    pub const methods = .{
        .{ "CGContext", ?*anyopaque, .{} },
        .{ "CIContext", ?*anyopaque, .{} },
        .{ "attributes", ?*anyopaque, .{} },
        .{ "colorRenderingIntent", NSColorRenderingIntent, .{} },
        .{ "compositingOperation", NSCompositingOperation, .{} },
        .{ "drawingToScreen", objc.BOOL, .{} },
        .{ "flipped", objc.BOOL, .{} },
        .{ "flushGraphics", void, .{} },
        .{ "graphicsPort", UnsafeMutableRawPointer, .{} },
        .{ "imageInterpolation", NSImageInterpolation, .{} },
        .{ "patternPhase", NSPoint, .{} },
        .{ "restoreGraphicsState", void, .{} },
        .{ "saveGraphicsState", void, .{} },
        .{ "setColorRenderingIntent:", void, .{NSColorRenderingIntent} },
        .{ "setCompositingOperation:", void, .{NSCompositingOperation} },
        .{ "setImageInterpolation:", void, .{NSImageInterpolation} },
        .{ "setPatternPhase:", void, .{NSPoint} },
        .{ "setShouldAntialias:", void, .{objc.BOOL} },
        .{ "shouldAntialias", objc.BOOL, .{} },
    };

    pub fn send(self: NSGraphicsContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentContext", ?NSGraphicsContext, .{} },
        .{ "currentContextDrawingToScreen", objc.BOOL, .{} },
        .{ "graphicsContextWithAttributes:", Object, .{Any} },
        .{ "graphicsContextWithBitmapImageRep:", Object, .{NSBitmapImageRep} },
        .{ "graphicsContextWithCGContext:flipped:", Object, .{ ?*anyopaque, objc.BOOL } },
        .{ "graphicsContextWithGraphicsPort:flipped:", Object, .{ UnsafeMutableRawPointer, objc.BOOL } },
        .{ "graphicsContextWithWindow:", Object, .{NSWindow} },
        .{ "restoreGraphicsState", void, .{} },
        .{ "saveGraphicsState", void, .{} },
        .{ "setCurrentContext:", void, .{?NSGraphicsContext} },
        .{ "setGraphicsState:", void, .{objc.NSInteger} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSGraphicsContext", class_methods, selector, args);
    }
};

pub const NSGridCell = struct {
    obj: Object,

    pub const methods = .{
        .{ "column", ?NSGridColumn, .{} },
        .{ "contentView", ?NSView, .{} },
        .{ "customPlacementConstraints", Object, .{} },
        .{ "row", ?NSGridRow, .{} },
        .{ "rowAlignment", NSGridRow.Alignment, .{} },
        .{ "setContentView:", void, .{?NSView} },
        .{ "setCustomPlacementConstraints:", void, .{Object} },
        .{ "setRowAlignment:", void, .{NSGridRow.Alignment} },
        .{ "setXPlacement:", void, .{NSGridCell.Placement} },
        .{ "setYPlacement:", void, .{NSGridCell.Placement} },
        .{ "xPlacement", NSGridCell.Placement, .{} },
        .{ "yPlacement", NSGridCell.Placement, .{} },
    };

    pub fn send(self: NSGridCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "emptyContentView", NSView, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSGridCell", class_methods, selector, args);
    }

    pub const Placement = enum(i64) {
        inherited = 0,
        none = 1,
        leading = 2,
        trailing = 3,
        center = 4,
        fill = 5,
    };
};

pub const NSGridColumn = struct {
    obj: Object,

    pub const methods = .{
        .{ "cellAtIndex:", NSGridCell, .{objc.NSInteger} },
        .{ "gridView", ?NSGridView, .{} },
        .{ "hidden", objc.BOOL, .{} },
        .{ "leadingPadding", objc.CGFloat, .{} },
        .{ "mergeCellsInRange:", void, .{NSRange} },
        .{ "numberOfCells", objc.NSInteger, .{} },
        .{ "setHidden:", void, .{objc.BOOL} },
        .{ "setLeadingPadding:", void, .{objc.CGFloat} },
        .{ "setTrailingPadding:", void, .{objc.CGFloat} },
        .{ "setWidth:", void, .{objc.CGFloat} },
        .{ "setXPlacement:", void, .{NSGridCell.Placement} },
        .{ "trailingPadding", objc.CGFloat, .{} },
        .{ "width", objc.CGFloat, .{} },
        .{ "xPlacement", NSGridCell.Placement, .{} },
    };

    pub fn send(self: NSGridColumn, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSGridRow = struct {
    obj: Object,

    pub const methods = .{
        .{ "bottomPadding", objc.CGFloat, .{} },
        .{ "cellAtIndex:", NSGridCell, .{objc.NSInteger} },
        .{ "gridView", ?NSGridView, .{} },
        .{ "height", objc.CGFloat, .{} },
        .{ "hidden", objc.BOOL, .{} },
        .{ "mergeCellsInRange:", void, .{NSRange} },
        .{ "numberOfCells", objc.NSInteger, .{} },
        .{ "rowAlignment", NSGridRow.Alignment, .{} },
        .{ "setBottomPadding:", void, .{objc.CGFloat} },
        .{ "setHeight:", void, .{objc.CGFloat} },
        .{ "setHidden:", void, .{objc.BOOL} },
        .{ "setRowAlignment:", void, .{NSGridRow.Alignment} },
        .{ "setTopPadding:", void, .{objc.CGFloat} },
        .{ "setYPlacement:", void, .{NSGridCell.Placement} },
        .{ "topPadding", objc.CGFloat, .{} },
        .{ "yPlacement", NSGridCell.Placement, .{} },
    };

    pub fn send(self: NSGridRow, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const Alignment = enum(i64) {
        inherited = 0,
        none = 1,
        firstBaseline = 2,
        lastBaseline = 3,
    };
};

pub const NSGridView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "addColumnWithViews:", NSGridColumn, .{void} },
        .{ "addRowWithViews:", NSGridRow, .{void} },
        .{ "cellAtColumnIndex:rowIndex:", NSGridCell, .{ objc.NSInteger, objc.NSInteger } },
        .{ "cellForView:", ?NSGridCell, .{NSView} },
        .{ "columnAtIndex:", NSGridColumn, .{objc.NSInteger} },
        .{ "columnSpacing", objc.CGFloat, .{} },
        .{ "indexOfColumn:", objc.NSInteger, .{NSGridColumn} },
        .{ "indexOfRow:", objc.NSInteger, .{NSGridRow} },
        .{ "insertColumnAtIndex:withViews:", NSGridColumn, .{ objc.NSInteger, void } },
        .{ "insertRowAtIndex:withViews:", NSGridRow, .{ objc.NSInteger, void } },
        .{ "mergeCellsInHorizontalRange:verticalRange:", void, .{ NSRange, NSRange } },
        .{ "moveColumnAtIndex:toIndex:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "moveRowAtIndex:toIndex:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "numberOfColumns", objc.NSInteger, .{} },
        .{ "numberOfRows", objc.NSInteger, .{} },
        .{ "removeColumnAtIndex:", void, .{objc.NSInteger} },
        .{ "removeRowAtIndex:", void, .{objc.NSInteger} },
        .{ "rowAlignment", NSGridRow.Alignment, .{} },
        .{ "rowAtIndex:", NSGridRow, .{objc.NSInteger} },
        .{ "rowSpacing", objc.CGFloat, .{} },
        .{ "setColumnSpacing:", void, .{objc.CGFloat} },
        .{ "setRowAlignment:", void, .{NSGridRow.Alignment} },
        .{ "setRowSpacing:", void, .{objc.CGFloat} },
        .{ "setXPlacement:", void, .{NSGridCell.Placement} },
        .{ "setYPlacement:", void, .{NSGridCell.Placement} },
        .{ "xPlacement", NSGridCell.Placement, .{} },
        .{ "yPlacement", NSGridCell.Placement, .{} },
    };

    pub fn send(self: NSGridView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "gridViewWithNumberOfColumns:rows:", Object, .{ objc.NSInteger, objc.NSInteger } },
        .{ "gridViewWithViews:", Object, .{void} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithFrame:", Object, .{NSRect} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSGridView", class_methods, selector, args);
    }
};

pub const NSGroupTouchBarItem = struct {
    obj: Object,

    pub const Super = NSTouchBarItem;
    pub const methods = .{
        .{ "customizationLabel", objc.NSString, .{} },
        .{ "effectiveCompressionOptions", NSUserInterfaceCompressionOptions, .{} },
        .{ "groupTouchBar", NSTouchBar, .{} },
        .{ "groupUserInterfaceLayoutDirection", NSUserInterfaceLayoutDirection, .{} },
        .{ "preferredItemWidth", objc.CGFloat, .{} },
        .{ "prefersEqualWidths", objc.BOOL, .{} },
        .{ "prioritizedCompressionOptions", Object, .{} },
        .{ "setCustomizationLabel:", void, .{objc.NSString} },
        .{ "setGroupTouchBar:", void, .{NSTouchBar} },
        .{ "setGroupUserInterfaceLayoutDirection:", void, .{NSUserInterfaceLayoutDirection} },
        .{ "setPreferredItemWidth:", void, .{objc.CGFloat} },
        .{ "setPrefersEqualWidths:", void, .{objc.BOOL} },
        .{ "setPrioritizedCompressionOptions:", void, .{Object} },
    };

    pub fn send(self: NSGroupTouchBarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "alertStyleGroupItemWithIdentifier:", Object, .{objc.NSString} },
        .{ "groupItemWithIdentifier:items:", Object, .{ objc.NSString, void } },
        .{ "groupItemWithIdentifier:items:allowedCompressionOptions:", Object, .{ objc.NSString, void, NSUserInterfaceCompressionOptions } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSGroupTouchBarItem", class_methods, selector, args);
    }
};

pub const NSHapticFeedbackManager = struct {
    pub const class_methods = .{
        .{ "defaultPerformer", NSHapticFeedbackPerformer, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSHapticFeedbackManager", class_methods, selector, args);
    }

    pub const FeedbackPattern = enum(i64) {
        generic = 0,
        alignment = 1,
        levelChange = 2,
    };
    pub const PerformanceTime = enum(i64) {
        default = 0,
        now = 1,
        drawCompleted = 2,
    };
};

pub const NSHelpManager = struct {
    obj: Object,

    pub const methods = .{
        .{ "contextHelpForObject:", ?Foundation.NSAttributedString, .{Any} },
        .{ "findString:inBook:", void, .{ objc.NSString, objc.NSString } },
        .{ "openHelpAnchor:inBook:", void, .{ objc.NSString, objc.NSString } },
        .{ "registerBooksInBundle:", objc.BOOL, .{Foundation.NSBundle} },
        .{ "removeContextHelpForObject:", void, .{Any} },
        .{ "setContextHelp:forObject:", void, .{ Foundation.NSAttributedString, Any } },
        .{ "showContextHelpForObject:locationHint:", objc.BOOL, .{ Any, NSPoint } },
    };

    pub fn send(self: NSHelpManager, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "contextHelpModeActive", objc.BOOL, .{} },
        .{ "setContextHelpModeActive:", void, .{objc.BOOL} },
        .{ "sharedHelpManager", NSHelpManager, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSHelpManager", class_methods, selector, args);
    }
};

pub const NSImage = struct {
    obj: Object,

    pub const methods = .{
        .{ "CGImageForProposedRect:context:hints:", ?*anyopaque, .{ NSRect, ?NSGraphicsContext, ?Any } },
        .{ "TIFFRepresentation", ?Foundation.NSData, .{} },
        .{ "TIFFRepresentationUsingCompression:factor:", ?Foundation.NSData, .{ NSBitmapImageRep.TIFFCompression, f32 } },
        .{ "accessibilityDescription", ?objc.NSString, .{} },
        .{ "addRepresentation:", void, .{NSImageRep} },
        .{ "addRepresentations:", void, .{void} },
        .{ "alignmentRect", NSRect, .{} },
        .{ "backgroundColor", NSColor, .{} },
        .{ "bestRepresentationForRect:context:hints:", ?NSImageRep, .{ NSRect, ?NSGraphicsContext, ?Any } },
        .{ "cacheMode", NSImage.CacheMode, .{} },
        .{ "capInsets", NSEdgeInsets, .{} },
        .{ "delegate", ?NSImageDelegate, .{} },
        .{ "drawAtPoint:fromRect:operation:fraction:", void, .{ NSPoint, NSRect, NSCompositingOperation, objc.CGFloat } },
        .{ "drawInRect:", void, .{NSRect} },
        .{ "drawInRect:fromRect:operation:fraction:", void, .{ NSRect, NSRect, NSCompositingOperation, objc.CGFloat } },
        .{ "drawInRect:fromRect:operation:fraction:respectFlipped:hints:", void, .{ NSRect, NSRect, NSCompositingOperation, objc.CGFloat, objc.BOOL, ?Any } },
        .{ "drawRepresentation:inRect:", objc.BOOL, .{ NSImageRep, NSRect } },
        .{ "hitTestRect:withImageDestinationRect:context:hints:flipped:", objc.BOOL, .{ NSRect, NSRect, ?NSGraphicsContext, ?Any, objc.BOOL } },
        .{ "imageWithLocale:", NSImage, .{?Foundation.NSLocale} },
        .{ "imageWithSymbolConfiguration:", ?NSImage, .{NSImageSymbolConfiguration} },
        .{ "layerContentsForContentsScale:", Any, .{objc.CGFloat} },
        .{ "locale", ?Foundation.NSLocale, .{} },
        .{ "lockFocus", void, .{} },
        .{ "lockFocusFlipped:", void, .{objc.BOOL} },
        .{ "matchesOnMultipleResolution", objc.BOOL, .{} },
        .{ "matchesOnlyOnBestFittingAxis", objc.BOOL, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "prefersColorMatch", objc.BOOL, .{} },
        .{ "recache", void, .{} },
        .{ "recommendedLayerContentsScale:", objc.CGFloat, .{objc.CGFloat} },
        .{ "removeRepresentation:", void, .{NSImageRep} },
        .{ "representations", Object, .{} },
        .{ "resizingMode", NSImage.ResizingMode, .{} },
        .{ "setAccessibilityDescription:", void, .{?objc.NSString} },
        .{ "setAlignmentRect:", void, .{NSRect} },
        .{ "setBackgroundColor:", void, .{NSColor} },
        .{ "setCacheMode:", void, .{NSImage.CacheMode} },
        .{ "setCapInsets:", void, .{NSEdgeInsets} },
        .{ "setDelegate:", void, .{?NSImageDelegate} },
        .{ "setMatchesOnMultipleResolution:", void, .{objc.BOOL} },
        .{ "setMatchesOnlyOnBestFittingAxis:", void, .{objc.BOOL} },
        .{ "setName:", objc.BOOL, .{objc.NSString} },
        .{ "setPrefersColorMatch:", void, .{objc.BOOL} },
        .{ "setResizingMode:", void, .{NSImage.ResizingMode} },
        .{ "setSize:", void, .{NSSize} },
        .{ "setTemplate:", void, .{objc.BOOL} },
        .{ "setUsesEPSOnResolutionMismatch:", void, .{objc.BOOL} },
        .{ "size", NSSize, .{} },
        .{ "symbolConfiguration", NSImageSymbolConfiguration, .{} },
        .{ "template", objc.BOOL, .{} },
        .{ "unlockFocus", void, .{} },
        .{ "usesEPSOnResolutionMismatch", objc.BOOL, .{} },
        .{ "valid", objc.BOOL, .{} },
    };

    pub fn send(self: NSImage, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "canInitWithPasteboard:", objc.BOOL, .{NSPasteboard} },
        .{ "imageFileTypes", Object, .{} },
        .{ "imageNamed:", Object, .{objc.NSString} },
        .{ "imagePasteboardTypes", Object, .{} },
        .{ "imageTypes", Object, .{} },
        .{ "imageUnfilteredFileTypes", Object, .{} },
        .{ "imageUnfilteredPasteboardTypes", Object, .{} },
        .{ "imageUnfilteredTypes", Object, .{} },
        .{ "imageWithSize:flipped:drawingHandler:", Object, .{ NSSize, objc.BOOL, void } },
        .{ "imageWithSymbolName:bundle:variableValue:", Object, .{ objc.NSString, ?Foundation.NSBundle, f64 } },
        .{ "imageWithSymbolName:variableValue:", Object, .{ objc.NSString, f64 } },
        .{ "imageWithSystemSymbolName:accessibilityDescription:", Object, .{ objc.NSString, ?objc.NSString } },
        .{ "imageWithSystemSymbolName:variableValue:accessibilityDescription:", Object, .{ objc.NSString, f64, ?objc.NSString } },
        .{ "initByReferencingFile:", Object, .{objc.NSString} },
        .{ "initByReferencingURL:", Object, .{Foundation.NSURL} },
        .{ "initWithCGImage:size:", Object, .{ ?*anyopaque, NSSize } },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithContentsOfFile:", Object, .{objc.NSString} },
        .{ "initWithContentsOfURL:", Object, .{Foundation.NSURL} },
        .{ "initWithData:", Object, .{Foundation.NSData} },
        .{ "initWithDataIgnoringOrientation:", Object, .{Foundation.NSData} },
        .{ "initWithIconRef:", Object, .{objc.NSString} },
        .{ "initWithPasteboard:", Object, .{NSPasteboard} },
        .{ "initWithSize:", Object, .{NSSize} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSImage", class_methods, selector, args);
    }

    pub const CacheMode = enum(i64) {
        default = 0,
        always = 1,
        bySize = 2,
        never = 3,
    };
    pub const DynamicRange = enum(i64) {
        unspecified = -1,
        standard = 0,
        constrainedHigh = 1,
        high = 2,
    };
    pub const LayoutDirection = enum(i64) {
        unspecified = -1,
        leftToRight = 2,
        rightToLeft = 3,
    };
    pub const LoadStatus = enum(i64) {
        completed = 0,
        cancelled = 1,
        invalidData = 2,
        unexpectedEOF = 3,
        readError = 4,
    };
    pub const ResizingMode = enum(i64) {
        tile = 0,
        stretch = 1,
    };
    pub const SymbolColorRenderingMode = enum(i64) {
        automatic = 0,
        flat = 1,
        gradient = 2,
    };
    pub const SymbolScale = enum(i64) {
        small = 1,
        medium = 2,
        large = 3,
    };
    pub const SymbolVariableValueMode = enum(i64) {
        automatic = 0,
        color = 1,
        draw = 2,
    };
};

pub const NSImageCell = struct {
    obj: Object,

    pub const Super = NSCell;
    pub const methods = .{
        .{ "imageAlignment", NSImageAlignment, .{} },
        .{ "imageFrameStyle", NSImageView.FrameStyle, .{} },
        .{ "imageScaling", NSImageScaling, .{} },
        .{ "setImageAlignment:", void, .{NSImageAlignment} },
        .{ "setImageFrameStyle:", void, .{NSImageView.FrameStyle} },
        .{ "setImageScaling:", void, .{NSImageScaling} },
    };

    pub fn send(self: NSImageCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSImageRep = struct {
    obj: Object,

    pub const methods = .{
        .{ "CGImageForProposedRect:context:hints:", ?*anyopaque, .{ NSRect, ?NSGraphicsContext, ?Any } },
        .{ "alpha", objc.BOOL, .{} },
        .{ "bitsPerSample", objc.NSInteger, .{} },
        .{ "colorSpaceName", objc.NSString, .{} },
        .{ "draw", objc.BOOL, .{} },
        .{ "drawAtPoint:", objc.BOOL, .{NSPoint} },
        .{ "drawInRect:", objc.BOOL, .{NSRect} },
        .{ "drawInRect:fromRect:operation:fraction:respectFlipped:hints:", objc.BOOL, .{ NSRect, NSRect, NSCompositingOperation, objc.CGFloat, objc.BOOL, ?Any } },
        .{ "layoutDirection", NSImage.LayoutDirection, .{} },
        .{ "opaque", objc.BOOL, .{} },
        .{ "pixelsHigh", objc.NSInteger, .{} },
        .{ "pixelsWide", objc.NSInteger, .{} },
        .{ "setAlpha:", void, .{objc.BOOL} },
        .{ "setBitsPerSample:", void, .{objc.NSInteger} },
        .{ "setColorSpaceName:", void, .{objc.NSString} },
        .{ "setLayoutDirection:", void, .{NSImage.LayoutDirection} },
        .{ "setOpaque:", void, .{objc.BOOL} },
        .{ "setPixelsHigh:", void, .{objc.NSInteger} },
        .{ "setPixelsWide:", void, .{objc.NSInteger} },
        .{ "setSize:", void, .{NSSize} },
        .{ "size", NSSize, .{} },
    };

    pub fn send(self: NSImageRep, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "canInitWithData:", objc.BOOL, .{Foundation.NSData} },
        .{ "canInitWithPasteboard:", objc.BOOL, .{NSPasteboard} },
        .{ "imageFileTypes", Object, .{} },
        .{ "imagePasteboardTypes", Object, .{} },
        .{ "imageRepClassForData:", ?AnyClass, .{Foundation.NSData} },
        .{ "imageRepClassForFileType:", ?AnyClass, .{objc.NSString} },
        .{ "imageRepClassForPasteboardType:", ?AnyClass, .{objc.NSString} },
        .{ "imageRepClassForType:", ?AnyClass, .{objc.NSString} },
        .{ "imageRepWithContentsOfFile:", Object, .{objc.NSString} },
        .{ "imageRepWithContentsOfURL:", Object, .{Foundation.NSURL} },
        .{ "imageRepWithPasteboard:", Object, .{NSPasteboard} },
        .{ "imageRepsWithContentsOfFile:", ?*anyopaque, .{objc.NSString} },
        .{ "imageRepsWithContentsOfURL:", ?*anyopaque, .{Foundation.NSURL} },
        .{ "imageRepsWithPasteboard:", ?*anyopaque, .{NSPasteboard} },
        .{ "imageTypes", Object, .{} },
        .{ "imageUnfilteredFileTypes", Object, .{} },
        .{ "imageUnfilteredPasteboardTypes", Object, .{} },
        .{ "imageUnfilteredTypes", Object, .{} },
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "registerImageRepClass:", void, .{AnyClass} },
        .{ "registeredImageRepClasses", Object, .{} },
        .{ "unregisterImageRepClass:", void, .{AnyClass} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSImageRep", class_methods, selector, args);
    }
};

pub const NSImageSymbolConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "configurationByApplyingConfiguration:", ?*anyopaque, .{NSImageSymbolConfiguration} },
    };

    pub fn send(self: NSImageSymbolConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "configurationPreferringHierarchical", ?*anyopaque, .{} },
        .{ "configurationPreferringMonochrome", ?*anyopaque, .{} },
        .{ "configurationPreferringMulticolor", ?*anyopaque, .{} },
        .{ "configurationWithColorRenderingMode:", Object, .{NSImage.SymbolColorRenderingMode} },
        .{ "configurationWithHierarchicalColor:", Object, .{NSColor} },
        .{ "configurationWithPaletteColors:", Object, .{void} },
        .{ "configurationWithPointSize:weight:", Object, .{ objc.CGFloat, objc.CGFloat } },
        .{ "configurationWithPointSize:weight:scale:", Object, .{ objc.CGFloat, objc.CGFloat, NSImage.SymbolScale } },
        .{ "configurationWithScale:", Object, .{NSImage.SymbolScale} },
        .{ "configurationWithTextStyle:", Object, .{objc.NSString} },
        .{ "configurationWithTextStyle:scale:", Object, .{ objc.NSString, NSImage.SymbolScale } },
        .{ "configurationWithVariableValueMode:", Object, .{NSImage.SymbolVariableValueMode} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSImageSymbolConfiguration", class_methods, selector, args);
    }
};

pub const NSImageView = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "allowsCutCopyPaste", objc.BOOL, .{} },
        .{ "animates", objc.BOOL, .{} },
        .{ "contentTintColor", ?NSColor, .{} },
        .{ "editable", objc.BOOL, .{} },
        .{ "image", ?NSImage, .{} },
        .{ "imageAlignment", NSImageAlignment, .{} },
        .{ "imageDynamicRange", NSImage.DynamicRange, .{} },
        .{ "imageFrameStyle", NSImageView.FrameStyle, .{} },
        .{ "imageScaling", NSImageScaling, .{} },
        .{ "preferredImageDynamicRange", NSImage.DynamicRange, .{} },
        .{ "setAllowsCutCopyPaste:", void, .{objc.BOOL} },
        .{ "setAnimates:", void, .{objc.BOOL} },
        .{ "setContentTintColor:", void, .{?NSColor} },
        .{ "setEditable:", void, .{objc.BOOL} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setImageAlignment:", void, .{NSImageAlignment} },
        .{ "setImageFrameStyle:", void, .{NSImageView.FrameStyle} },
        .{ "setImageScaling:", void, .{NSImageScaling} },
        .{ "setPreferredImageDynamicRange:", void, .{NSImage.DynamicRange} },
        .{ "setSymbolConfiguration:", void, .{?NSImageSymbolConfiguration} },
        .{ "symbolConfiguration", ?NSImageSymbolConfiguration, .{} },
    };

    pub fn send(self: NSImageView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultPreferredImageDynamicRange", NSImage.DynamicRange, .{} },
        .{ "imageViewWithImage:", Object, .{NSImage} },
        .{ "setDefaultPreferredImageDynamicRange:", void, .{NSImage.DynamicRange} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSImageView", class_methods, selector, args);
    }

    pub const FrameStyle = enum(i64) {
        none = 0,
        photo = 1,
        grayBezel = 2,
        groove = 3,
        button = 4,
    };

    pub fn createWithSymbol(name: [*:0]const u8, desc: [*:0]const u8) NSImageView {
        const img = objc.msgSendClass(Object, "NSImage", "imageWithSystemSymbolName:accessibilityDescription:", .{ objc.nsString(name), objc.nsString(desc) });
        const iv = objc.msgSendClass(Object, "NSImageView", "imageViewWithImage:", .{img});
        objc.msgSend(void, iv, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = iv };
    }
};

pub const NSLayoutAnchor = struct {
    obj: Object,

    pub const methods = .{
        .{ "constraintEqualToAnchor:", NSLayoutConstraint, .{?*anyopaque} },
        .{ "constraintEqualToAnchor:constant:", NSLayoutConstraint, .{ ?*anyopaque, objc.CGFloat } },
        .{ "constraintGreaterThanOrEqualToAnchor:", NSLayoutConstraint, .{?*anyopaque} },
        .{ "constraintGreaterThanOrEqualToAnchor:constant:", NSLayoutConstraint, .{ ?*anyopaque, objc.CGFloat } },
        .{ "constraintLessThanOrEqualToAnchor:", NSLayoutConstraint, .{?*anyopaque} },
        .{ "constraintLessThanOrEqualToAnchor:constant:", NSLayoutConstraint, .{ ?*anyopaque, objc.CGFloat } },
        .{ "constraintsAffectingLayout", Object, .{} },
        .{ "hasAmbiguousLayout", objc.BOOL, .{} },
        .{ "item", ?AnyObject, .{} },
        .{ "name", objc.NSString, .{} },
    };

    pub fn send(self: NSLayoutAnchor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSLayoutConstraint = struct {
    obj: Object,

    pub const methods = .{
        .{ "active", objc.BOOL, .{} },
        .{ "constant", objc.CGFloat, .{} },
        .{ "firstAnchor", NSLayoutAnchor, .{} },
        .{ "firstAttribute", NSLayoutConstraint.Attribute, .{} },
        .{ "firstItem", ?AnyObject, .{} },
        .{ "identifier", ?objc.NSString, .{} },
        .{ "multiplier", objc.CGFloat, .{} },
        .{ "priority", f32, .{} },
        .{ "relation", NSLayoutConstraint.Relation, .{} },
        .{ "secondAnchor", ?NSLayoutAnchor, .{} },
        .{ "secondAttribute", NSLayoutConstraint.Attribute, .{} },
        .{ "secondItem", ?AnyObject, .{} },
        .{ "setActive:", void, .{objc.BOOL} },
        .{ "setConstant:", void, .{objc.CGFloat} },
        .{ "setIdentifier:", void, .{?objc.NSString} },
        .{ "setPriority:", void, .{f32} },
        .{ "setShouldBeArchived:", void, .{objc.BOOL} },
        .{ "shouldBeArchived", objc.BOOL, .{} },
    };

    pub fn send(self: NSLayoutConstraint, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "activateConstraints:", void, .{void} },
        .{ "constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:", Object, .{ Any, NSLayoutConstraint.Attribute, NSLayoutConstraint.Relation, ?Any, NSLayoutConstraint.Attribute, objc.CGFloat, objc.CGFloat } },
        .{ "constraintsWithVisualFormat:options:metrics:views:", Object, .{ objc.NSString, objc.NSInteger, ?Any, Any } },
        .{ "deactivateConstraints:", void, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSLayoutConstraint", class_methods, selector, args);
    }

    pub const Attribute = enum(i64) {
        notAnAttribute = 0,
        left = 1,
        right = 2,
        top = 3,
        bottom = 4,
        leading = 5,
        trailing = 6,
        width = 7,
        height = 8,
        centerX = 9,
        centerY = 10,
        lastBaseline = 11,
        firstBaseline = 12,
    };
    pub const Orientation = enum(i64) {
        horizontal = 0,
        vertical = 1,
    };
    pub const Relation = enum(i64) {
        lessThanOrEqual = -1,
        equal = 0,
        greaterThanOrEqual = 1,
    };

    pub fn make(item: Object, attr: Attribute, rel: Relation, to_item: ?Object, to_attr: Attribute, mult: f64, constant: f64) Object {
        return objc.msgSendClass(Object, "NSLayoutConstraint", "constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:", .{ item, @intFromEnum(attr), @intFromEnum(rel), @as(?*anyopaque, if (to_item) |t| @ptrCast(t) else null), @intFromEnum(to_attr), mult, constant });
    }
    pub fn activate(constraints: []const Object) void {
        const arr = objc.msgSendClass(Object, "NSMutableArray", "arrayWithCapacity:", .{@as(c_ulong, constraints.len)});
        for (constraints) |c| objc.msgSend(void, arr, "addObject:", .{c});
        objc.msgSend(void, objc.getClass("NSLayoutConstraint").?, "activateConstraints:", .{arr});
    }
    pub fn pinWidthEqual(child: Object, parent: Object) void {
        activate(&.{make(child, .width, .equal, parent, .width, 1.0, 0.0)});
    }
    pub fn fill(parent: Object, child: Object, inset: f64) void {
        activate(&.{ make(child, .leading, .equal, parent, .leading, 1.0, inset), make(child, .trailing, .equal, parent, .trailing, 1.0, -inset), make(child, .top, .equal, parent, .top, 1.0, inset), make(child, .bottom, .equal, parent, .bottom, 1.0, -inset) });
    }
};

pub const NSLayoutDimension = struct {
    obj: Object,

    pub const Super = NSLayoutAnchor;
    pub const methods = .{
        .{ "constraintEqualToAnchor:multiplier:", NSLayoutConstraint, .{ NSLayoutDimension, objc.CGFloat } },
        .{ "constraintEqualToAnchor:multiplier:constant:", NSLayoutConstraint, .{ NSLayoutDimension, objc.CGFloat, objc.CGFloat } },
        .{ "constraintEqualToConstant:", NSLayoutConstraint, .{objc.CGFloat} },
        .{ "constraintGreaterThanOrEqualToAnchor:multiplier:", NSLayoutConstraint, .{ NSLayoutDimension, objc.CGFloat } },
        .{ "constraintGreaterThanOrEqualToAnchor:multiplier:constant:", NSLayoutConstraint, .{ NSLayoutDimension, objc.CGFloat, objc.CGFloat } },
        .{ "constraintGreaterThanOrEqualToConstant:", NSLayoutConstraint, .{objc.CGFloat} },
        .{ "constraintLessThanOrEqualToAnchor:multiplier:", NSLayoutConstraint, .{ NSLayoutDimension, objc.CGFloat } },
        .{ "constraintLessThanOrEqualToAnchor:multiplier:constant:", NSLayoutConstraint, .{ NSLayoutDimension, objc.CGFloat, objc.CGFloat } },
        .{ "constraintLessThanOrEqualToConstant:", NSLayoutConstraint, .{objc.CGFloat} },
    };

    pub fn send(self: NSLayoutDimension, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSLayoutGuide = struct {
    obj: Object,

    pub const methods = .{
        .{ "bottomAnchor", NSLayoutYAxisAnchor, .{} },
        .{ "centerXAnchor", NSLayoutXAxisAnchor, .{} },
        .{ "centerYAnchor", NSLayoutYAxisAnchor, .{} },
        .{ "constraintsAffectingLayoutForOrientation:", Object, .{NSLayoutConstraint.Orientation} },
        .{ "frame", NSRect, .{} },
        .{ "hasAmbiguousLayout", objc.BOOL, .{} },
        .{ "heightAnchor", NSLayoutDimension, .{} },
        .{ "identifier", objc.NSString, .{} },
        .{ "leadingAnchor", NSLayoutXAxisAnchor, .{} },
        .{ "leftAnchor", NSLayoutXAxisAnchor, .{} },
        .{ "owningView", ?NSView, .{} },
        .{ "rightAnchor", NSLayoutXAxisAnchor, .{} },
        .{ "setIdentifier:", void, .{objc.NSString} },
        .{ "setOwningView:", void, .{?NSView} },
        .{ "topAnchor", NSLayoutYAxisAnchor, .{} },
        .{ "trailingAnchor", NSLayoutXAxisAnchor, .{} },
        .{ "widthAnchor", NSLayoutDimension, .{} },
    };

    pub fn send(self: NSLayoutGuide, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSLayoutManager = struct {
    obj: Object,

    pub const methods = .{
        .{ "CGGlyphAtIndex:", objc.NSString, .{objc.NSInteger} },
        .{ "CGGlyphAtIndex:isValidIndex:", objc.NSString, .{ objc.NSInteger, ?*anyopaque } },
        .{ "addTemporaryAttribute:value:forCharacterRange:", void, .{ objc.NSString, Any, NSRange } },
        .{ "addTemporaryAttributes:forCharacterRange:", void, .{ Any, NSRange } },
        .{ "addTextContainer:", void, .{NSTextContainer} },
        .{ "allowsNonContiguousLayout", objc.BOOL, .{} },
        .{ "attachmentSizeForGlyphAtIndex:", NSSize, .{objc.NSInteger} },
        .{ "backgroundLayoutEnabled", objc.BOOL, .{} },
        .{ "boundingRectForGlyphRange:inTextContainer:", NSRect, .{ NSRange, NSTextContainer } },
        .{ "boundsRectForTextBlock:atIndex:effectiveRange:", NSRect, .{ NSTextBlock, objc.NSInteger, NSRange } },
        .{ "boundsRectForTextBlock:glyphRange:", NSRect, .{ NSTextBlock, NSRange } },
        .{ "characterIndexForGlyphAtIndex:", objc.NSInteger, .{objc.NSInteger} },
        .{ "characterIndexForPoint:inTextContainer:fractionOfDistanceBetweenInsertionPoints:", objc.NSInteger, .{ NSPoint, NSTextContainer, objc.CGFloat } },
        .{ "characterRangeForGlyphRange:actualGlyphRange:", NSRange, .{ NSRange, NSRange } },
        .{ "defaultAttachmentScaling", NSImageScaling, .{} },
        .{ "defaultBaselineOffsetForFont:", objc.CGFloat, .{NSFont} },
        .{ "defaultLineHeightForFont:", objc.CGFloat, .{NSFont} },
        .{ "delegate", ?NSLayoutManagerDelegate, .{} },
        .{ "deleteGlyphsInRange:", void, .{NSRange} },
        .{ "drawBackgroundForGlyphRange:atPoint:", void, .{ NSRange, NSPoint } },
        .{ "drawGlyphsForGlyphRange:atPoint:", void, .{ NSRange, NSPoint } },
        .{ "drawStrikethroughForGlyphRange:strikethroughType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:", void, .{ NSRange, objc.NSInteger, objc.CGFloat, NSRect, NSRange, NSPoint } },
        .{ "drawUnderlineForGlyphRange:underlineType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:", void, .{ NSRange, objc.NSInteger, objc.CGFloat, NSRect, NSRange, NSPoint } },
        .{ "drawsOutsideLineFragmentForGlyphAtIndex:", objc.BOOL, .{objc.NSInteger} },
        .{ "ensureGlyphsForCharacterRange:", void, .{NSRange} },
        .{ "ensureGlyphsForGlyphRange:", void, .{NSRange} },
        .{ "ensureLayoutForBoundingRect:inTextContainer:", void, .{ NSRect, NSTextContainer } },
        .{ "ensureLayoutForCharacterRange:", void, .{NSRange} },
        .{ "ensureLayoutForGlyphRange:", void, .{NSRange} },
        .{ "ensureLayoutForTextContainer:", void, .{NSTextContainer} },
        .{ "enumerateEnclosingRectsForGlyphRange:withinSelectedGlyphRange:inTextContainer:usingBlock:", void, .{ NSRange, NSRange, NSTextContainer, void } },
        .{ "enumerateLineFragmentsForGlyphRange:usingBlock:", void, .{ NSRange, void } },
        .{ "extraLineFragmentRect", NSRect, .{} },
        .{ "extraLineFragmentTextContainer", ?NSTextContainer, .{} },
        .{ "extraLineFragmentUsedRect", NSRect, .{} },
        .{ "fillBackgroundRectArray:count:forCharacterRange:color:", void, .{ NSRect, objc.NSInteger, NSRange, NSColor } },
        .{ "firstTextView", ?NSTextView, .{} },
        .{ "firstUnlaidCharacterIndex", objc.NSInteger, .{} },
        .{ "firstUnlaidGlyphIndex", objc.NSInteger, .{} },
        .{ "fractionOfDistanceThroughGlyphForPoint:inTextContainer:", objc.CGFloat, .{ NSPoint, NSTextContainer } },
        .{ "getFirstUnlaidCharacterIndex:glyphIndex:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "getGlyphs:range:", objc.NSInteger, .{ u32, NSRange } },
        .{ "getGlyphsInRange:glyphs:characterIndexes:glyphInscriptions:elasticBits:", objc.NSInteger, .{ NSRange, u32, objc.NSInteger, objc.NSInteger, ?*anyopaque } },
        .{ "getGlyphsInRange:glyphs:characterIndexes:glyphInscriptions:elasticBits:bidiLevels:", objc.NSInteger, .{ NSRange, u32, objc.NSInteger, objc.NSInteger, ?*anyopaque, u8 } },
        .{ "getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels:", objc.NSInteger, .{ NSRange, ?*anyopaque, objc.NSInteger, objc.NSInteger, u8 } },
        .{ "getLineFragmentInsertionPointsForCharacterAtIndex:alternatePositions:inDisplayOrder:positions:characterIndexes:", objc.NSInteger, .{ objc.NSInteger, objc.BOOL, objc.BOOL, objc.CGFloat, objc.NSInteger } },
        .{ "glyphAtIndex:", u32, .{objc.NSInteger} },
        .{ "glyphAtIndex:isValidIndex:", u32, .{ objc.NSInteger, ?*anyopaque } },
        .{ "glyphGenerator", NSGlyphGenerator, .{} },
        .{ "glyphIndexForCharacterAtIndex:", objc.NSInteger, .{objc.NSInteger} },
        .{ "glyphIndexForPoint:inTextContainer:", objc.NSInteger, .{ NSPoint, NSTextContainer } },
        .{ "glyphIndexForPoint:inTextContainer:fractionOfDistanceThroughGlyph:", objc.NSInteger, .{ NSPoint, NSTextContainer, objc.CGFloat } },
        .{ "glyphRangeForBoundingRect:inTextContainer:", NSRange, .{ NSRect, NSTextContainer } },
        .{ "glyphRangeForBoundingRectWithoutAdditionalLayout:inTextContainer:", NSRange, .{ NSRect, NSTextContainer } },
        .{ "glyphRangeForCharacterRange:actualCharacterRange:", NSRange, .{ NSRange, NSRange } },
        .{ "glyphRangeForTextContainer:", NSRange, .{NSTextContainer} },
        .{ "hasNonContiguousLayout", objc.BOOL, .{} },
        .{ "hyphenationFactor", f32, .{} },
        .{ "insertGlyph:atGlyphIndex:characterIndex:", void, .{ u32, objc.NSInteger, objc.NSInteger } },
        .{ "insertGlyphs:length:forStartingGlyphAtIndex:characterIndex:", void, .{ u32, objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "insertTextContainer:atIndex:", void, .{ NSTextContainer, objc.NSInteger } },
        .{ "intAttribute:forGlyphAtIndex:", objc.NSInteger, .{ objc.NSInteger, objc.NSInteger } },
        .{ "invalidateDisplayForCharacterRange:", void, .{NSRange} },
        .{ "invalidateDisplayForGlyphRange:", void, .{NSRange} },
        .{ "invalidateGlyphsForCharacterRange:changeInLength:actualCharacterRange:", void, .{ NSRange, objc.NSInteger, NSRange } },
        .{ "invalidateGlyphsOnLayoutInvalidationForGlyphRange:", void, .{NSRange} },
        .{ "invalidateLayoutForCharacterRange:actualCharacterRange:", void, .{ NSRange, NSRange } },
        .{ "invalidateLayoutForCharacterRange:isSoft:actualCharacterRange:", void, .{ NSRange, objc.BOOL, NSRange } },
        .{ "isValidGlyphIndex:", objc.BOOL, .{objc.NSInteger} },
        .{ "layoutManagerOwnsFirstResponderInWindow:", objc.BOOL, .{NSWindow} },
        .{ "layoutRectForTextBlock:atIndex:effectiveRange:", NSRect, .{ NSTextBlock, objc.NSInteger, NSRange } },
        .{ "layoutRectForTextBlock:glyphRange:", NSRect, .{ NSTextBlock, NSRange } },
        .{ "limitsLayoutForSuspiciousContents", objc.BOOL, .{} },
        .{ "lineFragmentRectForGlyphAtIndex:effectiveRange:", NSRect, .{ objc.NSInteger, NSRange } },
        .{ "lineFragmentRectForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:", NSRect, .{ objc.NSInteger, NSRange, objc.BOOL } },
        .{ "lineFragmentUsedRectForGlyphAtIndex:effectiveRange:", NSRect, .{ objc.NSInteger, NSRange } },
        .{ "lineFragmentUsedRectForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:", NSRect, .{ objc.NSInteger, NSRange, objc.BOOL } },
        .{ "locationForGlyphAtIndex:", NSPoint, .{objc.NSInteger} },
        .{ "notShownAttributeForGlyphAtIndex:", objc.BOOL, .{objc.NSInteger} },
        .{ "numberOfGlyphs", objc.NSInteger, .{} },
        .{ "processEditingForTextStorage:edited:range:changeInLength:invalidatedRange:", void, .{ NSTextStorage, objc.NSInteger, NSRange, objc.NSInteger, NSRange } },
        .{ "propertyForGlyphAtIndex:", objc.NSInteger, .{objc.NSInteger} },
        .{ "rangeOfNominallySpacedGlyphsContainingIndex:", NSRange, .{objc.NSInteger} },
        .{ "rectArrayForCharacterRange:withinSelectedCharacterRange:inTextContainer:rectCount:", NSRect, .{ NSRange, NSRange, NSTextContainer, objc.NSInteger } },
        .{ "rectArrayForGlyphRange:withinSelectedGlyphRange:inTextContainer:rectCount:", NSRect, .{ NSRange, NSRange, NSTextContainer, objc.NSInteger } },
        .{ "removeTemporaryAttribute:forCharacterRange:", void, .{ objc.NSString, NSRange } },
        .{ "removeTextContainerAtIndex:", void, .{objc.NSInteger} },
        .{ "replaceGlyphAtIndex:withGlyph:", void, .{ objc.NSInteger, u32 } },
        .{ "replaceTextStorage:", void, .{NSTextStorage} },
        .{ "rulerAccessoryViewForTextView:paragraphStyle:ruler:enabled:", ?NSView, .{ NSTextView, NSParagraphStyle, NSRulerView, objc.BOOL } },
        .{ "rulerMarkersForTextView:paragraphStyle:ruler:", Object, .{ NSTextView, NSParagraphStyle, NSRulerView } },
        .{ "setAllowsNonContiguousLayout:", void, .{objc.BOOL} },
        .{ "setAttachmentSize:forGlyphRange:", void, .{ NSSize, NSRange } },
        .{ "setBackgroundLayoutEnabled:", void, .{objc.BOOL} },
        .{ "setBoundsRect:forTextBlock:glyphRange:", void, .{ NSRect, NSTextBlock, NSRange } },
        .{ "setCharacterIndex:forGlyphAtIndex:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "setDefaultAttachmentScaling:", void, .{NSImageScaling} },
        .{ "setDelegate:", void, .{?NSLayoutManagerDelegate} },
        .{ "setDrawsOutsideLineFragment:forGlyphAtIndex:", void, .{ objc.BOOL, objc.NSInteger } },
        .{ "setExtraLineFragmentRect:usedRect:textContainer:", void, .{ NSRect, NSRect, NSTextContainer } },
        .{ "setGlyphGenerator:", void, .{NSGlyphGenerator} },
        .{ "setGlyphs:properties:characterIndexes:font:forGlyphRange:", void, .{ objc.NSString, objc.NSInteger, objc.NSInteger, NSFont, NSRange } },
        .{ "setHyphenationFactor:", void, .{f32} },
        .{ "setIntAttribute:value:forGlyphAtIndex:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "setLayoutRect:forTextBlock:glyphRange:", void, .{ NSRect, NSTextBlock, NSRange } },
        .{ "setLimitsLayoutForSuspiciousContents:", void, .{objc.BOOL} },
        .{ "setLineFragmentRect:forGlyphRange:usedRect:", void, .{ NSRect, NSRange, NSRect } },
        .{ "setLocation:forStartOfGlyphRange:", void, .{ NSPoint, NSRange } },
        .{ "setLocations:startingGlyphIndexes:count:forGlyphRange:", void, .{ NSPoint, objc.NSInteger, objc.NSInteger, NSRange } },
        .{ "setNotShownAttribute:forGlyphAtIndex:", void, .{ objc.BOOL, objc.NSInteger } },
        .{ "setShowsControlCharacters:", void, .{objc.BOOL} },
        .{ "setShowsInvisibleCharacters:", void, .{objc.BOOL} },
        .{ "setTemporaryAttributes:forCharacterRange:", void, .{ Any, NSRange } },
        .{ "setTextContainer:forGlyphRange:", void, .{ NSTextContainer, NSRange } },
        .{ "setTextStorage:", void, .{?NSTextStorage} },
        .{ "setTypesetter:", void, .{NSTypesetter} },
        .{ "setTypesetterBehavior:", void, .{NSLayoutManager.TypesetterBehavior} },
        .{ "setUsesDefaultHyphenation:", void, .{objc.BOOL} },
        .{ "setUsesFontLeading:", void, .{objc.BOOL} },
        .{ "setUsesScreenFonts:", void, .{objc.BOOL} },
        .{ "showAttachmentCell:inRect:characterIndex:", void, .{ NSCell, NSRect, objc.NSInteger } },
        .{ "showCGGlyphs:positions:count:font:matrix:attributes:inContext:", void, .{ objc.NSString, NSPoint, objc.NSInteger, NSFont, ?*anyopaque, Any, NSGraphicsContext } },
        .{ "showCGGlyphs:positions:count:font:textMatrix:attributes:inContext:", void, .{ objc.NSString, NSPoint, objc.NSInteger, NSFont, ?*anyopaque, Any, ?*anyopaque } },
        .{ "showsControlCharacters", objc.BOOL, .{} },
        .{ "showsInvisibleCharacters", objc.BOOL, .{} },
        .{ "strikethroughGlyphRange:strikethroughType:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:", void, .{ NSRange, objc.NSInteger, NSRect, NSRange, NSPoint } },
        .{ "substituteFontForFont:", NSFont, .{NSFont} },
        .{ "temporaryAttribute:atCharacterIndex:effectiveRange:", ?Any, .{ objc.NSString, objc.NSInteger, NSRange } },
        .{ "temporaryAttribute:atCharacterIndex:longestEffectiveRange:inRange:", ?Any, .{ objc.NSString, objc.NSInteger, NSRange, NSRange } },
        .{ "temporaryAttributesAtCharacterIndex:effectiveRange:", Object, .{ objc.NSInteger, NSRange } },
        .{ "temporaryAttributesAtCharacterIndex:longestEffectiveRange:inRange:", Object, .{ objc.NSInteger, NSRange, NSRange } },
        .{ "textContainerChangedGeometry:", void, .{NSTextContainer} },
        .{ "textContainerChangedTextView:", void, .{NSTextContainer} },
        .{ "textContainerForGlyphAtIndex:effectiveRange:", ?NSTextContainer, .{ objc.NSInteger, NSRange } },
        .{ "textContainerForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:", ?NSTextContainer, .{ objc.NSInteger, NSRange, objc.BOOL } },
        .{ "textContainers", Object, .{} },
        .{ "textStorage", ?NSTextStorage, .{} },
        .{ "textStorage:edited:range:changeInLength:invalidatedRange:", void, .{ NSTextStorage, objc.NSInteger, NSRange, objc.NSInteger, NSRange } },
        .{ "textViewForBeginningOfSelection", ?NSTextView, .{} },
        .{ "truncatedGlyphRangeInLineFragmentForGlyphAtIndex:", NSRange, .{objc.NSInteger} },
        .{ "typesetter", NSTypesetter, .{} },
        .{ "typesetterBehavior", NSLayoutManager.TypesetterBehavior, .{} },
        .{ "underlineGlyphRange:underlineType:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:", void, .{ NSRange, objc.NSInteger, NSRect, NSRange, NSPoint } },
        .{ "usedRectForTextContainer:", NSRect, .{NSTextContainer} },
        .{ "usesDefaultHyphenation", objc.BOOL, .{} },
        .{ "usesFontLeading", objc.BOOL, .{} },
        .{ "usesScreenFonts", objc.BOOL, .{} },
    };

    pub fn send(self: NSLayoutManager, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSLayoutManager", class_methods, selector, args);
    }

    pub const TextLayoutOrientation = enum(i64) {
        horizontal = 0,
        vertical = 1,
    };
    pub const TypesetterBehavior = enum(i64) {
        latestBehavior = -1,
        originalBehavior = 0,
        behavior_10_2_WithCompatibility = 1,
        behavior_10_2 = 2,
        behavior_10_3 = 3,
        behavior_10_4 = 4,
    };
};

pub const NSLayoutXAxisAnchor = struct {
    obj: Object,

    pub const Super = NSLayoutAnchor;
    pub const methods = .{
        .{ "anchorWithOffsetToAnchor:", NSLayoutDimension, .{NSLayoutXAxisAnchor} },
        .{ "constraintEqualToSystemSpacingAfterAnchor:multiplier:", NSLayoutConstraint, .{ NSLayoutXAxisAnchor, objc.CGFloat } },
        .{ "constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:multiplier:", NSLayoutConstraint, .{ NSLayoutXAxisAnchor, objc.CGFloat } },
        .{ "constraintLessThanOrEqualToSystemSpacingAfterAnchor:multiplier:", NSLayoutConstraint, .{ NSLayoutXAxisAnchor, objc.CGFloat } },
    };

    pub fn send(self: NSLayoutXAxisAnchor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSLayoutYAxisAnchor = struct {
    obj: Object,

    pub const Super = NSLayoutAnchor;
    pub const methods = .{
        .{ "anchorWithOffsetToAnchor:", NSLayoutDimension, .{NSLayoutYAxisAnchor} },
        .{ "constraintEqualToSystemSpacingBelowAnchor:multiplier:", NSLayoutConstraint, .{ NSLayoutYAxisAnchor, objc.CGFloat } },
        .{ "constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:multiplier:", NSLayoutConstraint, .{ NSLayoutYAxisAnchor, objc.CGFloat } },
        .{ "constraintLessThanOrEqualToSystemSpacingBelowAnchor:multiplier:", NSLayoutConstraint, .{ NSLayoutYAxisAnchor, objc.CGFloat } },
    };

    pub fn send(self: NSLayoutYAxisAnchor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSLevelIndicator = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "criticalFillColor", NSColor, .{} },
        .{ "criticalValue", f64, .{} },
        .{ "drawsTieredCapacityLevels", objc.BOOL, .{} },
        .{ "editable", objc.BOOL, .{} },
        .{ "fillColor", NSColor, .{} },
        .{ "levelIndicatorStyle", NSLevelIndicator.Style, .{} },
        .{ "maxValue", f64, .{} },
        .{ "minValue", f64, .{} },
        .{ "numberOfMajorTickMarks", objc.NSInteger, .{} },
        .{ "numberOfTickMarks", objc.NSInteger, .{} },
        .{ "placeholderVisibility", NSLevelIndicator.PlaceholderVisibility, .{} },
        .{ "ratingImage", ?NSImage, .{} },
        .{ "ratingPlaceholderImage", ?NSImage, .{} },
        .{ "rectOfTickMarkAtIndex:", NSRect, .{objc.NSInteger} },
        .{ "setCriticalFillColor:", void, .{NSColor} },
        .{ "setCriticalValue:", void, .{f64} },
        .{ "setDrawsTieredCapacityLevels:", void, .{objc.BOOL} },
        .{ "setEditable:", void, .{objc.BOOL} },
        .{ "setFillColor:", void, .{NSColor} },
        .{ "setLevelIndicatorStyle:", void, .{NSLevelIndicator.Style} },
        .{ "setMaxValue:", void, .{f64} },
        .{ "setMinValue:", void, .{f64} },
        .{ "setNumberOfMajorTickMarks:", void, .{objc.NSInteger} },
        .{ "setNumberOfTickMarks:", void, .{objc.NSInteger} },
        .{ "setPlaceholderVisibility:", void, .{NSLevelIndicator.PlaceholderVisibility} },
        .{ "setRatingImage:", void, .{?NSImage} },
        .{ "setRatingPlaceholderImage:", void, .{?NSImage} },
        .{ "setTickMarkPosition:", void, .{NSSlider.TickMarkPosition} },
        .{ "setWarningFillColor:", void, .{NSColor} },
        .{ "setWarningValue:", void, .{f64} },
        .{ "tickMarkPosition", NSSlider.TickMarkPosition, .{} },
        .{ "tickMarkValueAtIndex:", f64, .{objc.NSInteger} },
        .{ "warningFillColor", NSColor, .{} },
        .{ "warningValue", f64, .{} },
    };

    pub fn send(self: NSLevelIndicator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const PlaceholderVisibility = enum(i64) {
        automatic = 0,
        always = 1,
        whileEditing = 2,
    };
    pub const Style = enum(i64) {
        relevancy = 0,
        continuousCapacity = 1,
        discreteCapacity = 2,
        rating = 3,
    };
};

pub const NSLevelIndicatorCell = struct {
    obj: Object,

    pub const Super = NSActionCell;
    pub const methods = .{
        .{ "criticalValue", f64, .{} },
        .{ "levelIndicatorStyle", NSLevelIndicator.Style, .{} },
        .{ "maxValue", f64, .{} },
        .{ "minValue", f64, .{} },
        .{ "numberOfMajorTickMarks", objc.NSInteger, .{} },
        .{ "numberOfTickMarks", objc.NSInteger, .{} },
        .{ "rectOfTickMarkAtIndex:", NSRect, .{objc.NSInteger} },
        .{ "setCriticalValue:", void, .{f64} },
        .{ "setLevelIndicatorStyle:", void, .{NSLevelIndicator.Style} },
        .{ "setMaxValue:", void, .{f64} },
        .{ "setMinValue:", void, .{f64} },
        .{ "setNumberOfMajorTickMarks:", void, .{objc.NSInteger} },
        .{ "setNumberOfTickMarks:", void, .{objc.NSInteger} },
        .{ "setTickMarkPosition:", void, .{NSSlider.TickMarkPosition} },
        .{ "setWarningValue:", void, .{f64} },
        .{ "tickMarkPosition", NSSlider.TickMarkPosition, .{} },
        .{ "tickMarkValueAtIndex:", f64, .{objc.NSInteger} },
        .{ "warningValue", f64, .{} },
    };

    pub fn send(self: NSLevelIndicatorCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithLevelIndicatorStyle:", Object, .{NSLevelIndicator.Style} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSLevelIndicatorCell", class_methods, selector, args);
    }
};

pub const NSMagnificationGestureRecognizer = struct {
    obj: Object,

    pub const Super = NSGestureRecognizer;
    pub const methods = .{
        .{ "magnification", objc.CGFloat, .{} },
        .{ "setMagnification:", void, .{objc.CGFloat} },
    };

    pub fn send(self: NSMagnificationGestureRecognizer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSMatrix = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "acceptsFirstMouse:", objc.BOOL, .{?NSEvent} },
        .{ "addColumn", void, .{} },
        .{ "addColumnWithCells:", void, .{void} },
        .{ "addRow", void, .{} },
        .{ "addRowWithCells:", void, .{void} },
        .{ "allowsEmptySelection", objc.BOOL, .{} },
        .{ "autorecalculatesCellSize", objc.BOOL, .{} },
        .{ "autoscroll", objc.BOOL, .{} },
        .{ "autosizesCells", objc.BOOL, .{} },
        .{ "backgroundColor", NSColor, .{} },
        .{ "cellAtRow:column:", ?NSCell, .{ objc.NSInteger, objc.NSInteger } },
        .{ "cellBackgroundColor", ?NSColor, .{} },
        .{ "cellClass", AnyClass, .{} },
        .{ "cellFrameAtRow:column:", NSRect, .{ objc.NSInteger, objc.NSInteger } },
        .{ "cellSize", NSSize, .{} },
        .{ "cellWithTag:", ?NSCell, .{objc.NSInteger} },
        .{ "cells", Object, .{} },
        .{ "delegate", ?NSMatrixDelegate, .{} },
        .{ "deselectAllCells", void, .{} },
        .{ "deselectSelectedCell", void, .{} },
        .{ "doubleAction", Selector, .{} },
        .{ "drawCellAtRow:column:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "drawsBackground", objc.BOOL, .{} },
        .{ "drawsCellBackground", objc.BOOL, .{} },
        .{ "getNumberOfRows:columns:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "getRow:column:forPoint:", objc.BOOL, .{ objc.NSInteger, objc.NSInteger, NSPoint } },
        .{ "getRow:column:ofCell:", objc.BOOL, .{ objc.NSInteger, objc.NSInteger, NSCell } },
        .{ "highlightCell:atRow:column:", void, .{ objc.BOOL, objc.NSInteger, objc.NSInteger } },
        .{ "insertColumn:", void, .{objc.NSInteger} },
        .{ "insertColumn:withCells:", void, .{ objc.NSInteger, void } },
        .{ "insertRow:", void, .{objc.NSInteger} },
        .{ "insertRow:withCells:", void, .{ objc.NSInteger, void } },
        .{ "intercellSpacing", NSSize, .{} },
        .{ "keyCell", ?NSCell, .{} },
        .{ "makeCellAtRow:column:", NSCell, .{ objc.NSInteger, objc.NSInteger } },
        .{ "mode", NSMatrix.Mode, .{} },
        .{ "mouseDown:", void, .{NSEvent} },
        .{ "mouseDownFlags", objc.NSInteger, .{} },
        .{ "numberOfColumns", objc.NSInteger, .{} },
        .{ "numberOfRows", objc.NSInteger, .{} },
        .{ "performKeyEquivalent:", objc.BOOL, .{NSEvent} },
        .{ "prototype", ?NSCell, .{} },
        .{ "putCell:atRow:column:", void, .{ NSCell, objc.NSInteger, objc.NSInteger } },
        .{ "removeColumn:", void, .{objc.NSInteger} },
        .{ "removeRow:", void, .{objc.NSInteger} },
        .{ "renewRows:columns:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "resetCursorRects", void, .{} },
        .{ "scrollCellToVisibleAtRow:column:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "selectAll:", void, .{?Any} },
        .{ "selectCellAtRow:column:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "selectCellWithTag:", objc.BOOL, .{objc.NSInteger} },
        .{ "selectText:", void, .{?Any} },
        .{ "selectTextAtRow:column:", ?NSCell, .{ objc.NSInteger, objc.NSInteger } },
        .{ "selectedCell", ?NSCell, .{} },
        .{ "selectedCells", Object, .{} },
        .{ "selectedColumn", objc.NSInteger, .{} },
        .{ "selectedRow", objc.NSInteger, .{} },
        .{ "selectionByRect", objc.BOOL, .{} },
        .{ "sendAction", objc.BOOL, .{} },
        .{ "sendAction:to:forAllCells:", void, .{ Selector, Any, objc.BOOL } },
        .{ "sendDoubleAction", void, .{} },
        .{ "setAllowsEmptySelection:", void, .{objc.BOOL} },
        .{ "setAutorecalculatesCellSize:", void, .{objc.BOOL} },
        .{ "setAutoscroll:", void, .{objc.BOOL} },
        .{ "setAutosizesCells:", void, .{objc.BOOL} },
        .{ "setBackgroundColor:", void, .{NSColor} },
        .{ "setCellBackgroundColor:", void, .{?NSColor} },
        .{ "setCellClass:", void, .{AnyClass} },
        .{ "setCellSize:", void, .{NSSize} },
        .{ "setDelegate:", void, .{?NSMatrixDelegate} },
        .{ "setDoubleAction:", void, .{Selector} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "setDrawsCellBackground:", void, .{objc.BOOL} },
        .{ "setIntercellSpacing:", void, .{NSSize} },
        .{ "setKeyCell:", void, .{?NSCell} },
        .{ "setMode:", void, .{NSMatrix.Mode} },
        .{ "setPrototype:", void, .{?NSCell} },
        .{ "setScrollable:", void, .{objc.BOOL} },
        .{ "setSelectionByRect:", void, .{objc.BOOL} },
        .{ "setSelectionFrom:to:anchor:highlight:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.BOOL } },
        .{ "setState:atRow:column:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "setTabKeyTraversesCells:", void, .{objc.BOOL} },
        .{ "setToolTip:forCell:", void, .{ ?objc.NSString, NSCell } },
        .{ "setValidateSize:", void, .{objc.BOOL} },
        .{ "sizeToCells", void, .{} },
        .{ "sortUsingFunction:context:", void, .{ void, ?UnsafeMutableRawPointer } },
        .{ "sortUsingSelector:", void, .{Selector} },
        .{ "tabKeyTraversesCells", objc.BOOL, .{} },
        .{ "textDidBeginEditing:", void, .{Foundation.NSNotification} },
        .{ "textDidChange:", void, .{Foundation.NSNotification} },
        .{ "textDidEndEditing:", void, .{Foundation.NSNotification} },
        .{ "textShouldBeginEditing:", objc.BOOL, .{NSText} },
        .{ "textShouldEndEditing:", objc.BOOL, .{NSText} },
        .{ "toolTipForCell:", ?objc.NSString, .{NSCell} },
    };

    pub fn send(self: NSMatrix, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithFrame:", Object, .{NSRect} },
        .{ "initWithFrame:mode:cellClass:numberOfRows:numberOfColumns:", Object, .{ NSRect, NSMatrix.Mode, ?AnyClass, objc.NSInteger, objc.NSInteger } },
        .{ "initWithFrame:mode:prototype:numberOfRows:numberOfColumns:", Object, .{ NSRect, NSMatrix.Mode, NSCell, objc.NSInteger, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMatrix", class_methods, selector, args);
    }

    pub const Mode = enum(i64) {
        radioModeMatrix = 0,
        highlightModeMatrix = 1,
        listModeMatrix = 2,
        trackModeMatrix = 3,
    };
};

pub const NSMediaLibraryBrowserController = struct {
    obj: Object,

    pub const methods = .{
        .{ "frame", NSRect, .{} },
        .{ "mediaLibraries", objc.NSInteger, .{} },
        .{ "setFrame:", void, .{NSRect} },
        .{ "setMediaLibraries:", void, .{objc.NSInteger} },
        .{ "setVisible:", void, .{objc.BOOL} },
        .{ "togglePanel:", void, .{?Any} },
        .{ "visible", objc.BOOL, .{} },
    };

    pub fn send(self: NSMediaLibraryBrowserController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedMediaLibraryBrowserController", NSMediaLibraryBrowserController, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMediaLibraryBrowserController", class_methods, selector, args);
    }
};

pub const NSMenu = struct {
    obj: Object,

    pub const methods = .{
        .{ "addItem:", void, .{NSMenuItem} },
        .{ "addItemWithTitle:action:keyEquivalent:", NSMenuItem, .{ objc.NSString, Selector, objc.NSString } },
        .{ "allowsContextMenuPlugIns", objc.BOOL, .{} },
        .{ "autoenablesItems", objc.BOOL, .{} },
        .{ "automaticallyInsertsWritingToolsItems", objc.BOOL, .{} },
        .{ "cancelTracking", void, .{} },
        .{ "cancelTrackingWithoutAnimation", void, .{} },
        .{ "delegate", ?NSMenuDelegate, .{} },
        .{ "font", NSFont, .{} },
        .{ "helpRequested:", void, .{NSEvent} },
        .{ "highlightedItem", ?NSMenuItem, .{} },
        .{ "indexOfItem:", objc.NSInteger, .{NSMenuItem} },
        .{ "indexOfItemWithRepresentedObject:", objc.NSInteger, .{?Any} },
        .{ "indexOfItemWithSubmenu:", objc.NSInteger, .{?NSMenu} },
        .{ "indexOfItemWithTag:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexOfItemWithTarget:andAction:", objc.NSInteger, .{ ?Any, Selector } },
        .{ "indexOfItemWithTitle:", objc.NSInteger, .{objc.NSString} },
        .{ "insertItem:atIndex:", void, .{ NSMenuItem, objc.NSInteger } },
        .{ "insertItemWithTitle:action:keyEquivalent:atIndex:", NSMenuItem, .{ objc.NSString, Selector, objc.NSString, objc.NSInteger } },
        .{ "itemArray", Object, .{} },
        .{ "itemAtIndex:", ?NSMenuItem, .{objc.NSInteger} },
        .{ "itemChanged:", void, .{NSMenuItem} },
        .{ "itemWithTag:", ?NSMenuItem, .{objc.NSInteger} },
        .{ "itemWithTitle:", ?NSMenuItem, .{objc.NSString} },
        .{ "menuBarHeight", objc.CGFloat, .{} },
        .{ "menuChangedMessagesEnabled", objc.BOOL, .{} },
        .{ "minimumWidth", objc.CGFloat, .{} },
        .{ "numberOfItems", objc.NSInteger, .{} },
        .{ "performActionForItemAtIndex:", void, .{objc.NSInteger} },
        .{ "performKeyEquivalent:", objc.BOOL, .{NSEvent} },
        .{ "popUpMenuPositioningItem:atLocation:inView:", objc.BOOL, .{ ?NSMenuItem, NSPoint, ?NSView } },
        .{ "presentationStyle", NSMenu.PresentationStyle, .{} },
        .{ "propertiesToUpdate", objc.NSInteger, .{} },
        .{ "removeAllItems", void, .{} },
        .{ "removeItem:", void, .{NSMenuItem} },
        .{ "removeItemAtIndex:", void, .{objc.NSInteger} },
        .{ "selectedItems", Object, .{} },
        .{ "selectionMode", NSMenu.SelectionMode, .{} },
        .{ "setAllowsContextMenuPlugIns:", void, .{objc.BOOL} },
        .{ "setAutoenablesItems:", void, .{objc.BOOL} },
        .{ "setAutomaticallyInsertsWritingToolsItems:", void, .{objc.BOOL} },
        .{ "setDelegate:", void, .{?NSMenuDelegate} },
        .{ "setFont:", void, .{NSFont} },
        .{ "setItemArray:", void, .{Object} },
        .{ "setMenuChangedMessagesEnabled:", void, .{objc.BOOL} },
        .{ "setMinimumWidth:", void, .{objc.CGFloat} },
        .{ "setPresentationStyle:", void, .{NSMenu.PresentationStyle} },
        .{ "setSelectedItems:", void, .{Object} },
        .{ "setSelectionMode:", void, .{NSMenu.SelectionMode} },
        .{ "setShowsStateColumn:", void, .{objc.BOOL} },
        .{ "setSubmenu:forItem:", void, .{ ?NSMenu, NSMenuItem } },
        .{ "setSupermenu:", void, .{?NSMenu} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setUserInterfaceLayoutDirection:", void, .{NSUserInterfaceLayoutDirection} },
        .{ "showsStateColumn", objc.BOOL, .{} },
        .{ "size", NSSize, .{} },
        .{ "submenuAction:", void, .{?Any} },
        .{ "supermenu", ?NSMenu, .{} },
        .{ "title", objc.NSString, .{} },
        .{ "tornOff", objc.BOOL, .{} },
        .{ "update", void, .{} },
        .{ "userInterfaceLayoutDirection", NSUserInterfaceLayoutDirection, .{} },
    };

    pub fn send(self: NSMenu, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithTitle:", Object, .{objc.NSString} },
        .{ "menuBarVisible", objc.BOOL, .{} },
        .{ "menuZone", ?*anyopaque, .{} },
        .{ "popUpContextMenu:withEvent:forView:", void, .{ NSMenu, NSEvent, NSView } },
        .{ "popUpContextMenu:withEvent:forView:withFont:", void, .{ NSMenu, NSEvent, NSView, ?NSFont } },
        .{ "setMenuBarVisible:", void, .{objc.BOOL} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMenu", class_methods, selector, args);
    }

    pub const PresentationStyle = enum(i64) {
        regular = 0,
        palette = 1,
    };
    pub const SelectionMode = enum(i64) {
        automatic = 0,
        selectOne = 1,
        selectAny = 2,
    };

    pub fn create(title: [*:0]const u8) NSMenu {
        return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSMenu", "alloc", .{}), "initWithTitle:", .{objc.nsString(title)}) };
    }
    pub fn addItem(self: NSMenu, item: Object) void {
        objc.msgSend(void, self.obj, "addItem:", .{item});
    }
    pub fn addItemWithTitle(self: NSMenu, title: [*:0]const u8, action: ?Selector, key: [*:0]const u8) Object {
        return objc.msgSend(Object, self.obj, "addItemWithTitle:action:keyEquivalent:", .{ objc.nsString(title), action, objc.nsString(key) });
    }
};

pub const NSMenuItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "action", Selector, .{} },
        .{ "allowsAutomaticKeyEquivalentLocalization", objc.BOOL, .{} },
        .{ "allowsAutomaticKeyEquivalentMirroring", objc.BOOL, .{} },
        .{ "allowsKeyEquivalentWhenHidden", objc.BOOL, .{} },
        .{ "alternate", objc.BOOL, .{} },
        .{ "attributedTitle", ?Foundation.NSAttributedString, .{} },
        .{ "badge", ?NSMenuItemBadge, .{} },
        .{ "enabled", objc.BOOL, .{} },
        .{ "hasSubmenu", objc.BOOL, .{} },
        .{ "hidden", objc.BOOL, .{} },
        .{ "hiddenOrHasHiddenAncestor", objc.BOOL, .{} },
        .{ "highlighted", objc.BOOL, .{} },
        .{ "image", ?NSImage, .{} },
        .{ "indentationLevel", objc.NSInteger, .{} },
        .{ "keyEquivalent", objc.NSString, .{} },
        .{ "keyEquivalentModifierMask", objc.NSInteger, .{} },
        .{ "menu", ?NSMenu, .{} },
        .{ "mixedStateImage", NSImage, .{} },
        .{ "offStateImage", ?NSImage, .{} },
        .{ "onStateImage", NSImage, .{} },
        .{ "parentItem", ?NSMenuItem, .{} },
        .{ "representedObject", ?Any, .{} },
        .{ "sectionHeader", objc.BOOL, .{} },
        .{ "separatorItem", objc.BOOL, .{} },
        .{ "setAction:", void, .{Selector} },
        .{ "setAllowsAutomaticKeyEquivalentLocalization:", void, .{objc.BOOL} },
        .{ "setAllowsAutomaticKeyEquivalentMirroring:", void, .{objc.BOOL} },
        .{ "setAllowsKeyEquivalentWhenHidden:", void, .{objc.BOOL} },
        .{ "setAlternate:", void, .{objc.BOOL} },
        .{ "setAttributedTitle:", void, .{?Foundation.NSAttributedString} },
        .{ "setBadge:", void, .{?NSMenuItemBadge} },
        .{ "setEnabled:", void, .{objc.BOOL} },
        .{ "setHidden:", void, .{objc.BOOL} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setIndentationLevel:", void, .{objc.NSInteger} },
        .{ "setKeyEquivalent:", void, .{objc.NSString} },
        .{ "setKeyEquivalentModifierMask:", void, .{objc.NSInteger} },
        .{ "setMenu:", void, .{?NSMenu} },
        .{ "setMixedStateImage:", void, .{NSImage} },
        .{ "setOffStateImage:", void, .{?NSImage} },
        .{ "setOnStateImage:", void, .{NSImage} },
        .{ "setRepresentedObject:", void, .{?Any} },
        .{ "setState:", void, .{objc.NSInteger} },
        .{ "setSubmenu:", void, .{?NSMenu} },
        .{ "setSubtitle:", void, .{?objc.NSString} },
        .{ "setTag:", void, .{objc.NSInteger} },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setTitleWithMnemonic:", void, .{objc.NSString} },
        .{ "setToolTip:", void, .{?objc.NSString} },
        .{ "setView:", void, .{?NSView} },
        .{ "state", objc.NSInteger, .{} },
        .{ "submenu", ?NSMenu, .{} },
        .{ "subtitle", ?objc.NSString, .{} },
        .{ "tag", objc.NSInteger, .{} },
        .{ "target", ?AnyObject, .{} },
        .{ "title", objc.NSString, .{} },
        .{ "toolTip", ?objc.NSString, .{} },
        .{ "userKeyEquivalent", objc.NSString, .{} },
        .{ "view", ?NSView, .{} },
    };

    pub fn send(self: NSMenuItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithTitle:action:keyEquivalent:", Object, .{ objc.NSString, Selector, objc.NSString } },
        .{ "separatorItem", NSMenuItem, .{} },
        .{ "setUsesUserKeyEquivalents:", void, .{objc.BOOL} },
        .{ "usesUserKeyEquivalents", objc.BOOL, .{} },
        .{ "writingToolsItems", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMenuItem", class_methods, selector, args);
    }

    pub fn separator() Object {
        return objc.msgSendClass(Object, "NSMenuItem", "separatorItem", .{});
    }
    pub fn create() NSMenuItem {
        return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSMenuItem", "alloc", .{}), "init", .{}) };
    }
};

pub const NSMenuItemBadge = struct {
    obj: Object,

    pub const methods = .{
        .{ "itemCount", objc.NSInteger, .{} },
        .{ "stringValue", ?objc.NSString, .{} },
        .{ "type", NSMenuItemBadge.BadgeType, .{} },
    };

    pub fn send(self: NSMenuItemBadge, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "alertsWithCount:", ?*anyopaque, .{objc.NSInteger} },
        .{ "initWithCount:", Object, .{objc.NSInteger} },
        .{ "initWithString:", Object, .{objc.NSString} },
        .{ "newItemsWithCount:", ?*anyopaque, .{objc.NSInteger} },
        .{ "updatesWithCount:", ?*anyopaque, .{objc.NSInteger} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMenuItemBadge", class_methods, selector, args);
    }

    pub const BadgeType = enum(i64) {
        none = 0,
        updates = 1,
        newItems = 2,
        alerts = 3,
    };
};

pub const NSMenuItemCell = struct {
    obj: Object,

    pub const Super = NSButtonCell;
    pub const methods = .{
        .{ "calcSize", void, .{} },
        .{ "drawBorderAndBackgroundWithFrame:inView:", void, .{ NSRect, NSView } },
        .{ "drawImageWithFrame:inView:", void, .{ NSRect, NSView } },
        .{ "drawKeyEquivalentWithFrame:inView:", void, .{ NSRect, NSView } },
        .{ "drawSeparatorItemWithFrame:inView:", void, .{ NSRect, NSView } },
        .{ "drawStateImageWithFrame:inView:", void, .{ NSRect, NSView } },
        .{ "drawTitleWithFrame:inView:", void, .{ NSRect, NSView } },
        .{ "imageWidth", objc.CGFloat, .{} },
        .{ "keyEquivalentRectForBounds:", NSRect, .{NSRect} },
        .{ "keyEquivalentWidth", objc.CGFloat, .{} },
        .{ "menuItem", ?NSMenuItem, .{} },
        .{ "needsDisplay", objc.BOOL, .{} },
        .{ "needsSizing", objc.BOOL, .{} },
        .{ "setMenuItem:", void, .{?NSMenuItem} },
        .{ "setNeedsDisplay:", void, .{objc.BOOL} },
        .{ "setNeedsSizing:", void, .{objc.BOOL} },
        .{ "setTag:", void, .{objc.NSInteger} },
        .{ "stateImageRectForBounds:", NSRect, .{NSRect} },
        .{ "stateImageWidth", objc.CGFloat, .{} },
        .{ "tag", objc.NSInteger, .{} },
        .{ "titleRectForBounds:", NSRect, .{NSRect} },
        .{ "titleWidth", objc.CGFloat, .{} },
    };

    pub fn send(self: NSMenuItemCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initTextCell:", Object, .{objc.NSString} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMenuItemCell", class_methods, selector, args);
    }
};

pub const NSMenuToolbarItem = struct {
    obj: Object,

    pub const Super = NSToolbarItem;
    pub const methods = .{
        .{ "menu", NSMenu, .{} },
        .{ "setMenu:", void, .{NSMenu} },
        .{ "setShowsIndicator:", void, .{objc.BOOL} },
        .{ "showsIndicator", objc.BOOL, .{} },
    };

    pub fn send(self: NSMenuToolbarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSMutableFontCollection = struct {
    obj: Object,

    pub const Super = NSFontCollection;
    pub const methods = .{
        .{ "addQueryForDescriptors:", void, .{void} },
        .{ "exclusionDescriptors", ?*anyopaque, .{} },
        .{ "queryDescriptors", ?*anyopaque, .{} },
        .{ "removeQueryForDescriptors:", void, .{void} },
        .{ "setExclusionDescriptors:", void, .{?*anyopaque} },
        .{ "setQueryDescriptors:", void, .{?*anyopaque} },
    };

    pub fn send(self: NSMutableFontCollection, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "fontCollectionWithAllAvailableDescriptors", NSMutableFontCollection, .{} },
        .{ "fontCollectionWithDescriptors:", Object, .{void} },
        .{ "fontCollectionWithLocale:", Object, .{Foundation.NSLocale} },
        .{ "fontCollectionWithName:", Object, .{objc.NSString} },
        .{ "fontCollectionWithName:visibility:", Object, .{ objc.NSString, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMutableFontCollection", class_methods, selector, args);
    }
};

pub const NSMutableParagraphStyle = struct {
    obj: Object,

    pub const Super = NSParagraphStyle;
    pub const methods = .{
        .{ "addTabStop:", void, .{NSTextTab} },
        .{ "alignment", NSTextAlignment, .{} },
        .{ "allowsDefaultTighteningForTruncation", objc.BOOL, .{} },
        .{ "baseWritingDirection", NSWritingDirection, .{} },
        .{ "defaultTabInterval", objc.CGFloat, .{} },
        .{ "firstLineHeadIndent", objc.CGFloat, .{} },
        .{ "headIndent", objc.CGFloat, .{} },
        .{ "headerLevel", objc.NSInteger, .{} },
        .{ "hyphenationFactor", f32, .{} },
        .{ "lineBreakMode", NSLineBreakMode, .{} },
        .{ "lineBreakStrategy", objc.NSInteger, .{} },
        .{ "lineHeightMultiple", objc.CGFloat, .{} },
        .{ "lineSpacing", objc.CGFloat, .{} },
        .{ "maximumLineHeight", objc.CGFloat, .{} },
        .{ "minimumLineHeight", objc.CGFloat, .{} },
        .{ "paragraphSpacing", objc.CGFloat, .{} },
        .{ "paragraphSpacingBefore", objc.CGFloat, .{} },
        .{ "removeTabStop:", void, .{NSTextTab} },
        .{ "setAlignment:", void, .{NSTextAlignment} },
        .{ "setAllowsDefaultTighteningForTruncation:", void, .{objc.BOOL} },
        .{ "setBaseWritingDirection:", void, .{NSWritingDirection} },
        .{ "setDefaultTabInterval:", void, .{objc.CGFloat} },
        .{ "setFirstLineHeadIndent:", void, .{objc.CGFloat} },
        .{ "setHeadIndent:", void, .{objc.CGFloat} },
        .{ "setHeaderLevel:", void, .{objc.NSInteger} },
        .{ "setHyphenationFactor:", void, .{f32} },
        .{ "setLineBreakMode:", void, .{NSLineBreakMode} },
        .{ "setLineBreakStrategy:", void, .{objc.NSInteger} },
        .{ "setLineHeightMultiple:", void, .{objc.CGFloat} },
        .{ "setLineSpacing:", void, .{objc.CGFloat} },
        .{ "setMaximumLineHeight:", void, .{objc.CGFloat} },
        .{ "setMinimumLineHeight:", void, .{objc.CGFloat} },
        .{ "setParagraphSpacing:", void, .{objc.CGFloat} },
        .{ "setParagraphSpacingBefore:", void, .{objc.CGFloat} },
        .{ "setParagraphStyle:", void, .{NSParagraphStyle} },
        .{ "setTabStops:", void, .{Object} },
        .{ "setTailIndent:", void, .{objc.CGFloat} },
        .{ "setTextBlocks:", void, .{Object} },
        .{ "setTextLists:", void, .{Object} },
        .{ "setTighteningFactorForTruncation:", void, .{f32} },
        .{ "setUsesDefaultHyphenation:", void, .{objc.BOOL} },
        .{ "tabStops", Object, .{} },
        .{ "tailIndent", objc.CGFloat, .{} },
        .{ "textBlocks", Object, .{} },
        .{ "textLists", Object, .{} },
        .{ "tighteningFactorForTruncation", f32, .{} },
        .{ "usesDefaultHyphenation", objc.BOOL, .{} },
    };

    pub fn send(self: NSMutableParagraphStyle, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSNib = struct {
    obj: Object,

    pub const methods = .{
        .{ "instantiateWithOwner:topLevelObjects:", objc.BOOL, .{ ?Any, ?Foundation.NSArray } },
    };

    pub fn send(self: NSNib, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithNibData:bundle:", Object, .{ Foundation.NSData, ?Foundation.NSBundle } },
        .{ "initWithNibNamed:bundle:", Object, .{ objc.NSString, ?Foundation.NSBundle } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSNib", class_methods, selector, args);
    }
};

pub const NSObjectController = struct {
    obj: Object,

    pub const Super = NSController;
    pub const methods = .{
        .{ "add:", void, .{?Any} },
        .{ "addObject:", void, .{Any} },
        .{ "automaticallyPreparesContent", objc.BOOL, .{} },
        .{ "canAdd", objc.BOOL, .{} },
        .{ "canRemove", objc.BOOL, .{} },
        .{ "content", ?Any, .{} },
        .{ "defaultFetchRequest", NSFetchRequestResult, .{} },
        .{ "editable", objc.BOOL, .{} },
        .{ "entityName", ?objc.NSString, .{} },
        .{ "fetch:", void, .{?Any} },
        .{ "fetchPredicate", ?Foundation.NSPredicate, .{} },
        .{ "fetchWithRequest:merge:error:", void, .{ ?NSFetchRequestResult, objc.BOOL } },
        .{ "managedObjectContext", ?*anyopaque, .{} },
        .{ "newObject", Any, .{} },
        .{ "objectClass", AnyClass, .{} },
        .{ "prepareContent", void, .{} },
        .{ "remove:", void, .{?Any} },
        .{ "removeObject:", void, .{Any} },
        .{ "selectedObjects", Object, .{} },
        .{ "selection", Any, .{} },
        .{ "setAutomaticallyPreparesContent:", void, .{objc.BOOL} },
        .{ "setContent:", void, .{?Any} },
        .{ "setEditable:", void, .{objc.BOOL} },
        .{ "setEntityName:", void, .{?objc.NSString} },
        .{ "setFetchPredicate:", void, .{?Foundation.NSPredicate} },
        .{ "setManagedObjectContext:", void, .{?*anyopaque} },
        .{ "setObjectClass:", void, .{AnyClass} },
        .{ "setUsesLazyFetching:", void, .{objc.BOOL} },
        .{ "usesLazyFetching", objc.BOOL, .{} },
        .{ "validateUserInterfaceItem:", objc.BOOL, .{void} },
    };

    pub fn send(self: NSObjectController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithContent:", Object, .{?Any} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSObjectController", class_methods, selector, args);
    }
};

pub const NSOpenGLContext = struct {
    obj: Object,

    pub const methods = .{
        .{ "CGLContextObj", ?*anyopaque, .{} },
        .{ "clearDrawable", void, .{} },
        .{ "currentVirtualScreen", objc.NSString, .{} },
        .{ "flushBuffer", void, .{} },
        .{ "getValues:forParameter:", void, .{ objc.NSString, NSOpenGLContext.Parameter } },
        .{ "makeCurrentContext", void, .{} },
        .{ "pixelFormat", NSOpenGLPixelFormat, .{} },
        .{ "setCurrentVirtualScreen:", void, .{objc.NSString} },
        .{ "setValues:forParameter:", void, .{ objc.NSString, NSOpenGLContext.Parameter } },
        .{ "setView:", void, .{?NSView} },
        .{ "update", void, .{} },
        .{ "view", ?NSView, .{} },
    };

    pub fn send(self: NSOpenGLContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "clearCurrentContext", void, .{} },
        .{ "currentContext", ?NSOpenGLContext, .{} },
        .{ "initWithCGLContextObj:", Object, .{objc.NSString} },
        .{ "initWithFormat:shareContext:", Object, .{ NSOpenGLPixelFormat, ?NSOpenGLContext } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSOpenGLContext", class_methods, selector, args);
    }

    pub const Parameter = enum(i64) {
        swapRectangle = 200,
        swapRectangleEnable = 201,
        rasterizationEnable = 221,
        swapInterval = 222,
        surfaceOrder = 235,
        surfaceOpacity = 236,
        stateValidation = 301,
        surfaceBackingSize = 304,
        surfaceSurfaceVolatile = 306,
        reclaimResources = 308,
        currentRendererID = 309,
        gpuVertexProcessing = 310,
        gpuFragmentProcessing = 311,
        hasDrawable = 314,
        mpSwapsInFlight = 315,
    };
};

pub const NSOpenGLLayer = struct {
    obj: Object,

    pub const methods = .{
        .{ "canDrawInOpenGLContext:pixelFormat:forLayerTime:displayTime:", objc.BOOL, .{ NSOpenGLContext, NSOpenGLPixelFormat, objc.NSString, ?*anyopaque } },
        .{ "drawInOpenGLContext:pixelFormat:forLayerTime:displayTime:", void, .{ NSOpenGLContext, NSOpenGLPixelFormat, objc.NSString, ?*anyopaque } },
        .{ "openGLContext", ?NSOpenGLContext, .{} },
        .{ "openGLContextForPixelFormat:", NSOpenGLContext, .{NSOpenGLPixelFormat} },
        .{ "openGLPixelFormat", ?NSOpenGLPixelFormat, .{} },
        .{ "openGLPixelFormatForDisplayMask:", NSOpenGLPixelFormat, .{u32} },
        .{ "setOpenGLContext:", void, .{?NSOpenGLContext} },
        .{ "setOpenGLPixelFormat:", void, .{?NSOpenGLPixelFormat} },
        .{ "setView:", void, .{?NSView} },
        .{ "view", ?NSView, .{} },
    };

    pub fn send(self: NSOpenGLLayer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSOpenGLPixelFormat = struct {
    obj: Object,

    pub const methods = .{
        .{ "CGLPixelFormatObj", ?*anyopaque, .{} },
        .{ "getValues:forAttribute:forVirtualScreen:", void, .{ objc.NSString, u32, objc.NSString } },
        .{ "numberOfVirtualScreens", objc.NSString, .{} },
    };

    pub fn send(self: NSOpenGLPixelFormat, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithAttributes:", Object, .{u32} },
        .{ "initWithCGLPixelFormatObj:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSOpenGLPixelFormat", class_methods, selector, args);
    }
};

pub const NSOpenGLView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "clearGLContext", void, .{} },
        .{ "openGLContext", ?NSOpenGLContext, .{} },
        .{ "pixelFormat", ?NSOpenGLPixelFormat, .{} },
        .{ "prepareOpenGL", void, .{} },
        .{ "reshape", void, .{} },
        .{ "setOpenGLContext:", void, .{?NSOpenGLContext} },
        .{ "setPixelFormat:", void, .{?NSOpenGLPixelFormat} },
        .{ "setWantsBestResolutionOpenGLSurface:", void, .{objc.BOOL} },
        .{ "setWantsExtendedDynamicRangeOpenGLSurface:", void, .{objc.BOOL} },
        .{ "update", void, .{} },
        .{ "wantsBestResolutionOpenGLSurface", objc.BOOL, .{} },
        .{ "wantsExtendedDynamicRangeOpenGLSurface", objc.BOOL, .{} },
    };

    pub fn send(self: NSOpenGLView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultPixelFormat", NSOpenGLPixelFormat, .{} },
        .{ "initWithFrame:pixelFormat:", Object, .{ NSRect, ?NSOpenGLPixelFormat } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSOpenGLView", class_methods, selector, args);
    }
};

pub const NSOpenPanel = struct {
    obj: Object,

    pub const Super = NSSavePanel;
    pub const methods = .{
        .{ "URLs", Object, .{} },
        .{ "accessoryViewDisclosed", objc.BOOL, .{} },
        .{ "allowsMultipleSelection", objc.BOOL, .{} },
        .{ "canChooseDirectories", objc.BOOL, .{} },
        .{ "canChooseFiles", objc.BOOL, .{} },
        .{ "canDownloadUbiquitousContents", objc.BOOL, .{} },
        .{ "canResolveUbiquitousConflicts", objc.BOOL, .{} },
        .{ "resolvesAliases", objc.BOOL, .{} },
        .{ "setAccessoryViewDisclosed:", void, .{objc.BOOL} },
        .{ "setAllowsMultipleSelection:", void, .{objc.BOOL} },
        .{ "setCanChooseDirectories:", void, .{objc.BOOL} },
        .{ "setCanChooseFiles:", void, .{objc.BOOL} },
        .{ "setCanDownloadUbiquitousContents:", void, .{objc.BOOL} },
        .{ "setCanResolveUbiquitousConflicts:", void, .{objc.BOOL} },
        .{ "setResolvesAliases:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSOpenPanel, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSOutlineView = struct {
    obj: Object,

    pub const Super = NSTableView;
    pub const methods = .{
        .{ "autoresizesOutlineColumn", objc.BOOL, .{} },
        .{ "autosaveExpandedItems", objc.BOOL, .{} },
        .{ "child:ofItem:", ?Any, .{ objc.NSInteger, ?Any } },
        .{ "childIndexForItem:", objc.NSInteger, .{Any} },
        .{ "collapseItem:", void, .{?Any} },
        .{ "collapseItem:collapseChildren:", void, .{ ?Any, objc.BOOL } },
        .{ "dataSource", ?NSOutlineViewDataSource, .{} },
        .{ "delegate", ?NSOutlineViewDelegate, .{} },
        .{ "expandItem:", void, .{?Any} },
        .{ "expandItem:expandChildren:", void, .{ ?Any, objc.BOOL } },
        .{ "frameOfOutlineCellAtRow:", NSRect, .{objc.NSInteger} },
        .{ "indentationMarkerFollowsCell", objc.BOOL, .{} },
        .{ "indentationPerLevel", objc.CGFloat, .{} },
        .{ "insertItemsAtIndexes:inParent:withAnimation:", void, .{ Foundation.NSIndexSet, ?Any, objc.NSInteger } },
        .{ "isExpandable:", objc.BOOL, .{?Any} },
        .{ "isItemExpanded:", objc.BOOL, .{?Any} },
        .{ "itemAtRow:", ?Any, .{objc.NSInteger} },
        .{ "levelForItem:", objc.NSInteger, .{?Any} },
        .{ "levelForRow:", objc.NSInteger, .{objc.NSInteger} },
        .{ "moveItemAtIndex:inParent:toIndex:inParent:", void, .{ objc.NSInteger, ?Any, objc.NSInteger, ?Any } },
        .{ "numberOfChildrenOfItem:", objc.NSInteger, .{?Any} },
        .{ "outlineTableColumn", ?NSTableColumn, .{} },
        .{ "parentForItem:", ?Any, .{?Any} },
        .{ "reloadItem:", void, .{?Any} },
        .{ "reloadItem:reloadChildren:", void, .{ ?Any, objc.BOOL } },
        .{ "removeItemsAtIndexes:inParent:withAnimation:", void, .{ Foundation.NSIndexSet, ?Any, objc.NSInteger } },
        .{ "rowForItem:", objc.NSInteger, .{?Any} },
        .{ "setAutoresizesOutlineColumn:", void, .{objc.BOOL} },
        .{ "setAutosaveExpandedItems:", void, .{objc.BOOL} },
        .{ "setDataSource:", void, .{?NSOutlineViewDataSource} },
        .{ "setDelegate:", void, .{?NSOutlineViewDelegate} },
        .{ "setDropItem:dropChildIndex:", void, .{ ?Any, objc.NSInteger } },
        .{ "setIndentationMarkerFollowsCell:", void, .{objc.BOOL} },
        .{ "setIndentationPerLevel:", void, .{objc.CGFloat} },
        .{ "setOutlineTableColumn:", void, .{?NSTableColumn} },
        .{ "setStronglyReferencesItems:", void, .{objc.BOOL} },
        .{ "setUserInterfaceLayoutDirection:", void, .{NSUserInterfaceLayoutDirection} },
        .{ "shouldCollapseAutoExpandedItemsForDeposited:", objc.BOOL, .{objc.BOOL} },
        .{ "stronglyReferencesItems", objc.BOOL, .{} },
        .{ "userInterfaceLayoutDirection", NSUserInterfaceLayoutDirection, .{} },
    };

    pub fn send(self: NSOutlineView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSPDFImageRep = struct {
    obj: Object,

    pub const Super = NSImageRep;
    pub const methods = .{
        .{ "PDFRepresentation", Foundation.NSData, .{} },
        .{ "bounds", NSRect, .{} },
        .{ "currentPage", objc.NSInteger, .{} },
        .{ "pageCount", objc.NSInteger, .{} },
        .{ "setCurrentPage:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSPDFImageRep, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithData:", Object, .{Foundation.NSData} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPDFImageRep", class_methods, selector, args);
    }
};

pub const NSPDFInfo = struct {
    obj: Object,

    pub const methods = .{
        .{ "URL", ?Foundation.NSURL, .{} },
        .{ "attributes", Foundation.NSMutableDictionary, .{} },
        .{ "fileExtensionHidden", objc.BOOL, .{} },
        .{ "orientation", NSPrintInfo.PaperOrientation, .{} },
        .{ "paperSize", NSSize, .{} },
        .{ "setFileExtensionHidden:", void, .{objc.BOOL} },
        .{ "setOrientation:", void, .{NSPrintInfo.PaperOrientation} },
        .{ "setPaperSize:", void, .{NSSize} },
        .{ "setTagNames:", void, .{Object} },
        .{ "setURL:", void, .{?Foundation.NSURL} },
        .{ "tagNames", Object, .{} },
    };

    pub fn send(self: NSPDFInfo, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSPDFPanel = struct {
    obj: Object,

    pub const methods = .{
        .{ "accessoryController", ?NSViewController, .{} },
        .{ "beginSheetWithPDFInfo:modalForWindow:completionHandler:", void, .{ NSPDFInfo, ?NSWindow, void } },
        .{ "defaultFileName", objc.NSString, .{} },
        .{ "options", objc.NSInteger, .{} },
        .{ "setAccessoryController:", void, .{?NSViewController} },
        .{ "setDefaultFileName:", void, .{objc.NSString} },
        .{ "setOptions:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSPDFPanel, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSPICTImageRep = struct {
    obj: Object,

    pub const Super = NSImageRep;
    pub const methods = .{
        .{ "PICTRepresentation", Foundation.NSData, .{} },
        .{ "boundingBox", NSRect, .{} },
    };

    pub fn send(self: NSPICTImageRep, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithData:", Object, .{Foundation.NSData} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPICTImageRep", class_methods, selector, args);
    }
};

pub const NSPageController = struct {
    obj: Object,

    pub const Super = NSViewController;
    pub const methods = .{
        .{ "arrangedObjects", Object, .{} },
        .{ "completeTransition", void, .{} },
        .{ "delegate", ?NSPageControllerDelegate, .{} },
        .{ "navigateBack:", void, .{?Any} },
        .{ "navigateForward:", void, .{?Any} },
        .{ "navigateForwardToObject:", void, .{Any} },
        .{ "selectedIndex", objc.NSInteger, .{} },
        .{ "selectedViewController", ?NSViewController, .{} },
        .{ "setArrangedObjects:", void, .{Object} },
        .{ "setDelegate:", void, .{?NSPageControllerDelegate} },
        .{ "setSelectedIndex:", void, .{objc.NSInteger} },
        .{ "setTransitionStyle:", void, .{NSPageController.TransitionStyle} },
        .{ "takeSelectedIndexFrom:", void, .{?Any} },
        .{ "transitionStyle", NSPageController.TransitionStyle, .{} },
    };

    pub fn send(self: NSPageController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const TransitionStyle = enum(i64) {
        stackHistory = 0,
        stackBook = 1,
        horizontalStrip = 2,
    };
};

pub const NSPageLayout = struct {
    obj: Object,

    pub const methods = .{
        .{ "accessoryControllers", Object, .{} },
        .{ "addAccessoryController:", void, .{NSViewController} },
        .{ "beginSheetUsingPrintInfo:onWindow:completionHandler:", void, .{ NSPrintInfo, NSWindow, void } },
        .{ "beginSheetWithPrintInfo:modalForWindow:delegate:didEndSelector:contextInfo:", void, .{ NSPrintInfo, NSWindow, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "printInfo", ?NSPrintInfo, .{} },
        .{ "removeAccessoryController:", void, .{NSViewController} },
        .{ "runModal", objc.NSInteger, .{} },
        .{ "runModalWithPrintInfo:", objc.NSInteger, .{NSPrintInfo} },
    };

    pub fn send(self: NSPageLayout, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const Result = enum(i64) {
        cancelled = 0,
        changed = 1,
    };
};

pub const NSPanGestureRecognizer = struct {
    obj: Object,

    pub const Super = NSGestureRecognizer;
    pub const methods = .{
        .{ "buttonMask", objc.NSInteger, .{} },
        .{ "numberOfTouchesRequired", objc.NSInteger, .{} },
        .{ "setButtonMask:", void, .{objc.NSInteger} },
        .{ "setNumberOfTouchesRequired:", void, .{objc.NSInteger} },
        .{ "setTranslation:inView:", void, .{ NSPoint, ?NSView } },
        .{ "translationInView:", NSPoint, .{?NSView} },
        .{ "velocityInView:", NSPoint, .{?NSView} },
    };

    pub fn send(self: NSPanGestureRecognizer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSPanel = struct {
    obj: Object,

    pub const Super = NSWindow;
    pub const methods = .{
        .{ "becomesKeyOnlyIfNeeded", objc.BOOL, .{} },
        .{ "floatingPanel", objc.BOOL, .{} },
        .{ "setBecomesKeyOnlyIfNeeded:", void, .{objc.BOOL} },
        .{ "setFloatingPanel:", void, .{objc.BOOL} },
        .{ "setWorksWhenModal:", void, .{objc.BOOL} },
        .{ "worksWhenModal", objc.BOOL, .{} },
    };

    pub fn send(self: NSPanel, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSParagraphStyle = struct {
    obj: Object,

    pub const methods = .{
        .{ "alignment", NSTextAlignment, .{} },
        .{ "allowsDefaultTighteningForTruncation", objc.BOOL, .{} },
        .{ "baseWritingDirection", NSWritingDirection, .{} },
        .{ "defaultTabInterval", objc.CGFloat, .{} },
        .{ "firstLineHeadIndent", objc.CGFloat, .{} },
        .{ "headIndent", objc.CGFloat, .{} },
        .{ "headerLevel", objc.NSInteger, .{} },
        .{ "hyphenationFactor", f32, .{} },
        .{ "lineBreakMode", NSLineBreakMode, .{} },
        .{ "lineBreakStrategy", objc.NSInteger, .{} },
        .{ "lineHeightMultiple", objc.CGFloat, .{} },
        .{ "lineSpacing", objc.CGFloat, .{} },
        .{ "maximumLineHeight", objc.CGFloat, .{} },
        .{ "minimumLineHeight", objc.CGFloat, .{} },
        .{ "paragraphSpacing", objc.CGFloat, .{} },
        .{ "paragraphSpacingBefore", objc.CGFloat, .{} },
        .{ "tabStops", Object, .{} },
        .{ "tailIndent", objc.CGFloat, .{} },
        .{ "textBlocks", Object, .{} },
        .{ "textLists", Object, .{} },
        .{ "tighteningFactorForTruncation", f32, .{} },
        .{ "usesDefaultHyphenation", objc.BOOL, .{} },
    };

    pub fn send(self: NSParagraphStyle, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultParagraphStyle", NSParagraphStyle, .{} },
        .{ "defaultWritingDirectionForLanguage:", NSWritingDirection, .{?objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSParagraphStyle", class_methods, selector, args);
    }

    pub const TextTabType = enum(i64) {
        leftTabStopType = 0,
        rightTabStopType = 1,
        centerTabStopType = 2,
        decimalTabStopType = 3,
    };
};

pub const NSPasteboard = struct {
    obj: Object,

    pub const methods = .{
        .{ "accessBehavior", NSPasteboard.AccessBehavior, .{} },
        .{ "addTypes:owner:", objc.NSInteger, .{ void, ?Any } },
        .{ "availableTypeFromArray:", objc.NSString, .{void} },
        .{ "canReadItemWithDataConformingToTypes:", objc.BOOL, .{void} },
        .{ "canReadObjectForClasses:options:", objc.BOOL, .{ void, ?Any } },
        .{ "changeCount", objc.NSInteger, .{} },
        .{ "clearContents", objc.NSInteger, .{} },
        .{ "dataForType:", ?Foundation.NSData, .{objc.NSString} },
        .{ "declareTypes:owner:", objc.NSInteger, .{ void, ?Any } },
        .{ "indexOfPasteboardItem:", objc.NSInteger, .{NSPasteboardItem} },
        .{ "name", objc.NSString, .{} },
        .{ "pasteboardItems", ?*anyopaque, .{} },
        .{ "prepareForNewContentsWithOptions:", objc.NSInteger, .{objc.NSInteger} },
        .{ "propertyListForType:", ?Any, .{objc.NSString} },
        .{ "readFileContentsType:toFile:", ?objc.NSString, .{ objc.NSString, objc.NSString } },
        .{ "readFileWrapper", ?Foundation.NSFileWrapper, .{} },
        .{ "readObjectsForClasses:options:", ?*anyopaque, .{ void, ?Any } },
        .{ "releaseGlobally", void, .{} },
        .{ "setData:forType:", objc.BOOL, .{ ?Foundation.NSData, objc.NSString } },
        .{ "setPropertyList:forType:", objc.BOOL, .{ Any, objc.NSString } },
        .{ "setString:forType:", objc.BOOL, .{ objc.NSString, objc.NSString } },
        .{ "stringForType:", ?objc.NSString, .{objc.NSString} },
        .{ "types", ?*anyopaque, .{} },
        .{ "writeFileContents:", objc.BOOL, .{objc.NSString} },
        .{ "writeFileWrapper:", objc.BOOL, .{Foundation.NSFileWrapper} },
        .{ "writeObjects:", objc.BOOL, .{void} },
    };

    pub fn send(self: NSPasteboard, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "generalPasteboard", NSPasteboard, .{} },
        .{ "pasteboardByFilteringData:ofType:", Object, .{ Foundation.NSData, objc.NSString } },
        .{ "pasteboardByFilteringFile:", Object, .{objc.NSString} },
        .{ "pasteboardByFilteringTypesInPasteboard:", Object, .{NSPasteboard} },
        .{ "pasteboardWithName:", Object, .{objc.NSString} },
        .{ "pasteboardWithUniqueName", NSPasteboard, .{} },
        .{ "typesFilterableTo:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPasteboard", class_methods, selector, args);
    }

    pub const AccessBehavior = enum(i64) {
        default = 0,
        ask = 1,
        alwaysAllow = 2,
        alwaysDeny = 3,
    };
};

pub const NSPasteboardItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "availableTypeFromArray:", objc.NSString, .{void} },
        .{ "dataForType:", ?Foundation.NSData, .{objc.NSString} },
        .{ "propertyListForType:", ?Any, .{objc.NSString} },
        .{ "setData:forType:", objc.BOOL, .{ Foundation.NSData, objc.NSString } },
        .{ "setDataProvider:forTypes:", objc.BOOL, .{ void, void } },
        .{ "setPropertyList:forType:", objc.BOOL, .{ Any, objc.NSString } },
        .{ "setString:forType:", objc.BOOL, .{ objc.NSString, objc.NSString } },
        .{ "stringForType:", ?objc.NSString, .{objc.NSString} },
        .{ "types", Object, .{} },
    };

    pub fn send(self: NSPasteboardItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSPathCell = struct {
    obj: Object,

    pub const Super = NSActionCell;
    pub const methods = .{
        .{ "URL", ?Foundation.NSURL, .{} },
        .{ "allowedTypes", ?*anyopaque, .{} },
        .{ "backgroundColor", ?NSColor, .{} },
        .{ "clickedPathComponentCell", ?NSPathComponentCell, .{} },
        .{ "delegate", ?NSPathCellDelegate, .{} },
        .{ "doubleAction", Selector, .{} },
        .{ "mouseEntered:withFrame:inView:", void, .{ NSEvent, NSRect, NSView } },
        .{ "mouseExited:withFrame:inView:", void, .{ NSEvent, NSRect, NSView } },
        .{ "pathComponentCellAtPoint:withFrame:inView:", ?NSPathComponentCell, .{ NSPoint, NSRect, NSView } },
        .{ "pathComponentCells", Object, .{} },
        .{ "pathStyle", NSPathControl.Style, .{} },
        .{ "placeholderAttributedString", ?Foundation.NSAttributedString, .{} },
        .{ "placeholderString", ?objc.NSString, .{} },
        .{ "rectOfPathComponentCell:withFrame:inView:", NSRect, .{ NSPathComponentCell, NSRect, NSView } },
        .{ "setAllowedTypes:", void, .{?*anyopaque} },
        .{ "setBackgroundColor:", void, .{?NSColor} },
        .{ "setDelegate:", void, .{?NSPathCellDelegate} },
        .{ "setDoubleAction:", void, .{Selector} },
        .{ "setObjectValue:", void, .{void} },
        .{ "setPathComponentCells:", void, .{Object} },
        .{ "setPathStyle:", void, .{NSPathControl.Style} },
        .{ "setPlaceholderAttributedString:", void, .{?Foundation.NSAttributedString} },
        .{ "setPlaceholderString:", void, .{?objc.NSString} },
        .{ "setURL:", void, .{?Foundation.NSURL} },
    };

    pub fn send(self: NSPathCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "pathComponentCellClass", AnyClass, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPathCell", class_methods, selector, args);
    }
};

pub const NSPathComponentCell = struct {
    obj: Object,

    pub const Super = NSTextFieldCell;
    pub const methods = .{
        .{ "URL", ?Foundation.NSURL, .{} },
        .{ "image", ?NSImage, .{} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setURL:", void, .{?Foundation.NSURL} },
    };

    pub fn send(self: NSPathComponentCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSPathControl = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "URL", ?Foundation.NSURL, .{} },
        .{ "allowedTypes", ?*anyopaque, .{} },
        .{ "backgroundColor", ?NSColor, .{} },
        .{ "clickedPathComponentCell", ?NSPathComponentCell, .{} },
        .{ "clickedPathItem", ?NSPathControlItem, .{} },
        .{ "delegate", ?NSPathControlDelegate, .{} },
        .{ "doubleAction", Selector, .{} },
        .{ "editable", objc.BOOL, .{} },
        .{ "menu", ?NSMenu, .{} },
        .{ "pathComponentCells", Object, .{} },
        .{ "pathItems", Object, .{} },
        .{ "pathStyle", NSPathControl.Style, .{} },
        .{ "placeholderAttributedString", ?Foundation.NSAttributedString, .{} },
        .{ "placeholderString", ?objc.NSString, .{} },
        .{ "setAllowedTypes:", void, .{?*anyopaque} },
        .{ "setBackgroundColor:", void, .{?NSColor} },
        .{ "setDelegate:", void, .{?NSPathControlDelegate} },
        .{ "setDoubleAction:", void, .{Selector} },
        .{ "setDraggingSourceOperationMask:forLocal:", void, .{ objc.NSInteger, objc.BOOL } },
        .{ "setEditable:", void, .{objc.BOOL} },
        .{ "setMenu:", void, .{?NSMenu} },
        .{ "setPathComponentCells:", void, .{void} },
        .{ "setPathItems:", void, .{Object} },
        .{ "setPathStyle:", void, .{NSPathControl.Style} },
        .{ "setPlaceholderAttributedString:", void, .{?Foundation.NSAttributedString} },
        .{ "setPlaceholderString:", void, .{?objc.NSString} },
        .{ "setURL:", void, .{?Foundation.NSURL} },
    };

    pub fn send(self: NSPathControl, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const Style = enum(i64) {
        standard = 0,
        popUp = 2,
    };
};

pub const NSPathControlItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "URL", ?Foundation.NSURL, .{} },
        .{ "attributedTitle", Foundation.NSAttributedString, .{} },
        .{ "image", ?NSImage, .{} },
        .{ "setAttributedTitle:", void, .{Foundation.NSAttributedString} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "title", objc.NSString, .{} },
    };

    pub fn send(self: NSPathControlItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSPersistentDocument = struct {
    obj: Object,

    pub const Super = NSDocument;
    pub const methods = .{
        .{ "configurePersistentStoreCoordinatorForURL:ofType:modelConfiguration:storeOptions:error:", void, .{ Foundation.NSURL, objc.NSString, ?objc.NSString, ?Any } },
        .{ "managedObjectContext", ?*anyopaque, .{} },
        .{ "managedObjectModel", ?*anyopaque, .{} },
        .{ "persistentStoreTypeForFileType:", objc.NSString, .{objc.NSString} },
        .{ "readFromURL:ofType:error:", void, .{ Foundation.NSURL, objc.NSString } },
        .{ "revertToContentsOfURL:ofType:error:", void, .{ Foundation.NSURL, objc.NSString } },
        .{ "setManagedObjectContext:", void, .{?*anyopaque} },
        .{ "writeToURL:ofType:forSaveOperation:originalContentsURL:error:", void, .{ Foundation.NSURL, objc.NSString, NSDocument.SaveOperationType, ?Foundation.NSURL } },
    };

    pub fn send(self: NSPersistentDocument, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSPickerTouchBarItem = struct {
    obj: Object,

    pub const Super = NSTouchBarItem;
    pub const methods = .{
        .{ "action", Selector, .{} },
        .{ "collapsedRepresentationImage", ?NSImage, .{} },
        .{ "collapsedRepresentationLabel", objc.NSString, .{} },
        .{ "controlRepresentation", NSPickerTouchBarItem.ControlRepresentation, .{} },
        .{ "customizationLabel", objc.NSString, .{} },
        .{ "enabled", objc.BOOL, .{} },
        .{ "imageAtIndex:", ?NSImage, .{objc.NSInteger} },
        .{ "isEnabledAtIndex:", objc.BOOL, .{objc.NSInteger} },
        .{ "labelAtIndex:", ?objc.NSString, .{objc.NSInteger} },
        .{ "numberOfOptions", objc.NSInteger, .{} },
        .{ "selectedIndex", objc.NSInteger, .{} },
        .{ "selectionColor", ?NSColor, .{} },
        .{ "selectionMode", NSPickerTouchBarItem.SelectionMode, .{} },
        .{ "setAction:", void, .{Selector} },
        .{ "setCollapsedRepresentationImage:", void, .{?NSImage} },
        .{ "setCollapsedRepresentationLabel:", void, .{objc.NSString} },
        .{ "setControlRepresentation:", void, .{NSPickerTouchBarItem.ControlRepresentation} },
        .{ "setCustomizationLabel:", void, .{objc.NSString} },
        .{ "setEnabled:", void, .{objc.BOOL} },
        .{ "setEnabled:atIndex:", void, .{ objc.BOOL, objc.NSInteger } },
        .{ "setImage:atIndex:", void, .{ ?NSImage, objc.NSInteger } },
        .{ "setLabel:atIndex:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "setNumberOfOptions:", void, .{objc.NSInteger} },
        .{ "setSelectedIndex:", void, .{objc.NSInteger} },
        .{ "setSelectionColor:", void, .{?NSColor} },
        .{ "setSelectionMode:", void, .{NSPickerTouchBarItem.SelectionMode} },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "target", ?AnyObject, .{} },
    };

    pub fn send(self: NSPickerTouchBarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "pickerTouchBarItemWithIdentifier:images:selectionMode:target:action:", Object, .{ objc.NSString, void, NSPickerTouchBarItem.SelectionMode, ?Any, Selector } },
        .{ "pickerTouchBarItemWithIdentifier:labels:selectionMode:target:action:", Object, .{ objc.NSString, void, NSPickerTouchBarItem.SelectionMode, ?Any, Selector } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPickerTouchBarItem", class_methods, selector, args);
    }

    pub const ControlRepresentation = enum(i64) {
        automatic = 0,
        expanded = 1,
        collapsed = 2,
    };
    pub const SelectionMode = enum(i64) {
        selectOne = 0,
        selectAny = 1,
        momentary = 2,
    };
};

pub const NSPopUpButton = struct {
    obj: Object,

    pub const Super = NSButton;
    pub const methods = .{
        .{ "addItemWithTitle:", void, .{objc.NSString} },
        .{ "addItemsWithTitles:", void, .{void} },
        .{ "altersStateOfSelectedItem", objc.BOOL, .{} },
        .{ "autoenablesItems", objc.BOOL, .{} },
        .{ "indexOfItem:", objc.NSInteger, .{NSMenuItem} },
        .{ "indexOfItemWithRepresentedObject:", objc.NSInteger, .{?Any} },
        .{ "indexOfItemWithTag:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexOfItemWithTarget:andAction:", objc.NSInteger, .{ ?Any, Selector } },
        .{ "indexOfItemWithTitle:", objc.NSInteger, .{objc.NSString} },
        .{ "indexOfSelectedItem", objc.NSInteger, .{} },
        .{ "insertItemWithTitle:atIndex:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "itemArray", Object, .{} },
        .{ "itemAtIndex:", ?NSMenuItem, .{objc.NSInteger} },
        .{ "itemTitleAtIndex:", objc.NSString, .{objc.NSInteger} },
        .{ "itemTitles", Object, .{} },
        .{ "itemWithTitle:", ?NSMenuItem, .{objc.NSString} },
        .{ "lastItem", ?NSMenuItem, .{} },
        .{ "menu", ?NSMenu, .{} },
        .{ "numberOfItems", objc.NSInteger, .{} },
        .{ "preferredEdge", Foundation.NSRectEdge, .{} },
        .{ "pullsDown", objc.BOOL, .{} },
        .{ "removeAllItems", void, .{} },
        .{ "removeItemAtIndex:", void, .{objc.NSInteger} },
        .{ "removeItemWithTitle:", void, .{objc.NSString} },
        .{ "selectItem:", void, .{?NSMenuItem} },
        .{ "selectItemAtIndex:", void, .{objc.NSInteger} },
        .{ "selectItemWithTag:", objc.BOOL, .{objc.NSInteger} },
        .{ "selectItemWithTitle:", void, .{objc.NSString} },
        .{ "selectedItem", ?NSMenuItem, .{} },
        .{ "selectedTag", objc.NSInteger, .{} },
        .{ "setAltersStateOfSelectedItem:", void, .{objc.BOOL} },
        .{ "setAutoenablesItems:", void, .{objc.BOOL} },
        .{ "setMenu:", void, .{?NSMenu} },
        .{ "setPreferredEdge:", void, .{Foundation.NSRectEdge} },
        .{ "setPullsDown:", void, .{objc.BOOL} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setUsesItemFromMenu:", void, .{objc.BOOL} },
        .{ "synchronizeTitleAndSelectedItem", void, .{} },
        .{ "titleOfSelectedItem", ?objc.NSString, .{} },
        .{ "usesItemFromMenu", objc.BOOL, .{} },
    };

    pub fn send(self: NSPopUpButton, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithFrame:pullsDown:", Object, .{ NSRect, objc.BOOL } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPopUpButton", class_methods, selector, args);
    }

    pub const ArrowPosition = enum(i64) {
        noArrow = 0,
        arrowAtCenter = 1,
        arrowAtBottom = 2,
    };
};

pub const NSPopUpButtonCell = struct {
    obj: Object,

    pub const Super = NSMenuItemCell;
    pub const methods = .{
        .{ "addItemWithTitle:", void, .{objc.NSString} },
        .{ "addItemsWithTitles:", void, .{void} },
        .{ "altersStateOfSelectedItem", objc.BOOL, .{} },
        .{ "arrowPosition", NSPopUpButton.ArrowPosition, .{} },
        .{ "attachPopUpWithFrame:inView:", void, .{ NSRect, NSView } },
        .{ "autoenablesItems", objc.BOOL, .{} },
        .{ "dismissPopUp", void, .{} },
        .{ "indexOfItem:", objc.NSInteger, .{NSMenuItem} },
        .{ "indexOfItemWithRepresentedObject:", objc.NSInteger, .{?Any} },
        .{ "indexOfItemWithTag:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexOfItemWithTarget:andAction:", objc.NSInteger, .{ ?Any, Selector } },
        .{ "indexOfItemWithTitle:", objc.NSInteger, .{objc.NSString} },
        .{ "indexOfSelectedItem", objc.NSInteger, .{} },
        .{ "insertItemWithTitle:atIndex:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "itemArray", Object, .{} },
        .{ "itemAtIndex:", ?NSMenuItem, .{objc.NSInteger} },
        .{ "itemTitleAtIndex:", objc.NSString, .{objc.NSInteger} },
        .{ "itemTitles", Object, .{} },
        .{ "itemWithTitle:", ?NSMenuItem, .{objc.NSString} },
        .{ "lastItem", ?NSMenuItem, .{} },
        .{ "menu", ?NSMenu, .{} },
        .{ "numberOfItems", objc.NSInteger, .{} },
        .{ "performClickWithFrame:inView:", void, .{ NSRect, NSView } },
        .{ "preferredEdge", Foundation.NSRectEdge, .{} },
        .{ "pullsDown", objc.BOOL, .{} },
        .{ "removeAllItems", void, .{} },
        .{ "removeItemAtIndex:", void, .{objc.NSInteger} },
        .{ "removeItemWithTitle:", void, .{objc.NSString} },
        .{ "selectItem:", void, .{?NSMenuItem} },
        .{ "selectItemAtIndex:", void, .{objc.NSInteger} },
        .{ "selectItemWithTag:", objc.BOOL, .{objc.NSInteger} },
        .{ "selectItemWithTitle:", void, .{objc.NSString} },
        .{ "selectedItem", ?NSMenuItem, .{} },
        .{ "setAltersStateOfSelectedItem:", void, .{objc.BOOL} },
        .{ "setArrowPosition:", void, .{NSPopUpButton.ArrowPosition} },
        .{ "setAutoenablesItems:", void, .{objc.BOOL} },
        .{ "setMenu:", void, .{?NSMenu} },
        .{ "setPreferredEdge:", void, .{Foundation.NSRectEdge} },
        .{ "setPullsDown:", void, .{objc.BOOL} },
        .{ "setTitle:", void, .{?objc.NSString} },
        .{ "setUsesItemFromMenu:", void, .{objc.BOOL} },
        .{ "synchronizeTitleAndSelectedItem", void, .{} },
        .{ "titleOfSelectedItem", ?objc.NSString, .{} },
        .{ "usesItemFromMenu", objc.BOOL, .{} },
    };

    pub fn send(self: NSPopUpButtonCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initTextCell:pullsDown:", Object, .{ objc.NSString, objc.BOOL } },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPopUpButtonCell", class_methods, selector, args);
    }
};

pub const NSPopover = struct {
    obj: Object,

    pub const Super = NSResponder;
    pub const methods = .{
        .{ "animates", objc.BOOL, .{} },
        .{ "appearance", ?NSAppearance, .{} },
        .{ "behavior", NSPopover.Behavior, .{} },
        .{ "close", void, .{} },
        .{ "contentSize", NSSize, .{} },
        .{ "contentViewController", ?NSViewController, .{} },
        .{ "delegate", ?NSPopoverDelegate, .{} },
        .{ "detached", objc.BOOL, .{} },
        .{ "effectiveAppearance", NSAppearance, .{} },
        .{ "hasFullSizeContent", objc.BOOL, .{} },
        .{ "performClose:", void, .{?Any} },
        .{ "positioningRect", NSRect, .{} },
        .{ "setAnimates:", void, .{objc.BOOL} },
        .{ "setAppearance:", void, .{?NSAppearance} },
        .{ "setBehavior:", void, .{NSPopover.Behavior} },
        .{ "setContentSize:", void, .{NSSize} },
        .{ "setContentViewController:", void, .{?NSViewController} },
        .{ "setDelegate:", void, .{?NSPopoverDelegate} },
        .{ "setHasFullSizeContent:", void, .{objc.BOOL} },
        .{ "setPositioningRect:", void, .{NSRect} },
        .{ "showRelativeToRect:ofView:preferredEdge:", void, .{ NSRect, NSView, Foundation.NSRectEdge } },
        .{ "showRelativeToToolbarItem:", void, .{NSToolbarItem} },
        .{ "shown", objc.BOOL, .{} },
    };

    pub fn send(self: NSPopover, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPopover", class_methods, selector, args);
    }

    pub const Appearance = enum(i64) {
        minimal = 0,
        hud = 1,
    };
    pub const Behavior = enum(i64) {
        applicationDefined = 0,
        transient = 1,
        semitransient = 2,
    };
};

pub const NSPopoverTouchBarItem = struct {
    obj: Object,

    pub const Super = NSTouchBarItem;
    pub const methods = .{
        .{ "collapsedRepresentation", NSView, .{} },
        .{ "collapsedRepresentationImage", ?NSImage, .{} },
        .{ "collapsedRepresentationLabel", objc.NSString, .{} },
        .{ "customizationLabel", objc.NSString, .{} },
        .{ "dismissPopover:", void, .{?Any} },
        .{ "makeStandardActivatePopoverGestureRecognizer", NSGestureRecognizer, .{} },
        .{ "popoverTouchBar", NSTouchBar, .{} },
        .{ "pressAndHoldTouchBar", ?NSTouchBar, .{} },
        .{ "setCollapsedRepresentation:", void, .{NSView} },
        .{ "setCollapsedRepresentationImage:", void, .{?NSImage} },
        .{ "setCollapsedRepresentationLabel:", void, .{objc.NSString} },
        .{ "setCustomizationLabel:", void, .{objc.NSString} },
        .{ "setPopoverTouchBar:", void, .{NSTouchBar} },
        .{ "setPressAndHoldTouchBar:", void, .{?NSTouchBar} },
        .{ "setShowsCloseButton:", void, .{objc.BOOL} },
        .{ "showPopover:", void, .{?Any} },
        .{ "showsCloseButton", objc.BOOL, .{} },
    };

    pub fn send(self: NSPopoverTouchBarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSPredicateEditor = struct {
    obj: Object,

    pub const Super = NSRuleEditor;
    pub const methods = .{
        .{ "rowTemplates", Object, .{} },
        .{ "setRowTemplates:", void, .{Object} },
    };

    pub fn send(self: NSPredicateEditor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSPredicateEditorRowTemplate = struct {
    obj: Object,

    pub const methods = .{
        .{ "compoundTypes", ?*anyopaque, .{} },
        .{ "displayableSubpredicatesOfPredicate:", ?*anyopaque, .{Foundation.NSPredicate} },
        .{ "leftExpressions", ?*anyopaque, .{} },
        .{ "matchForPredicate:", f64, .{Foundation.NSPredicate} },
        .{ "modifier", Foundation.NSComparisonPredicate.Modifier, .{} },
        .{ "operators", ?*anyopaque, .{} },
        .{ "options", objc.NSInteger, .{} },
        .{ "predicateWithSubpredicates:", Foundation.NSPredicate, .{void} },
        .{ "rightExpressionAttributeType", objc.NSInteger, .{} },
        .{ "rightExpressions", ?*anyopaque, .{} },
        .{ "setPredicate:", void, .{Foundation.NSPredicate} },
        .{ "templateViews", Object, .{} },
    };

    pub fn send(self: NSPredicateEditorRowTemplate, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCompoundTypes:", Object, .{void} },
        .{ "initWithLeftExpressions:rightExpressionAttributeType:modifier:operators:options:", Object, .{ void, objc.NSInteger, Foundation.NSComparisonPredicate.Modifier, void, objc.NSInteger } },
        .{ "initWithLeftExpressions:rightExpressions:modifier:operators:options:", Object, .{ void, void, Foundation.NSComparisonPredicate.Modifier, void, objc.NSInteger } },
        .{ "templatesWithAttributeKeyPaths:inEntityDescription:", Object, .{ void, Object } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPredicateEditorRowTemplate", class_methods, selector, args);
    }
};

pub const NSPressGestureRecognizer = struct {
    obj: Object,

    pub const Super = NSGestureRecognizer;
    pub const methods = .{
        .{ "allowableMovement", objc.CGFloat, .{} },
        .{ "buttonMask", objc.NSInteger, .{} },
        .{ "minimumPressDuration", TimeInterval, .{} },
        .{ "numberOfTouchesRequired", objc.NSInteger, .{} },
        .{ "setAllowableMovement:", void, .{objc.CGFloat} },
        .{ "setButtonMask:", void, .{objc.NSInteger} },
        .{ "setMinimumPressDuration:", void, .{TimeInterval} },
        .{ "setNumberOfTouchesRequired:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSPressGestureRecognizer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSPressureConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "pressureBehavior", NSEvent.PressureBehavior, .{} },
        .{ "set", void, .{} },
    };

    pub fn send(self: NSPressureConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithPressureBehavior:", Object, .{NSEvent.PressureBehavior} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPressureConfiguration", class_methods, selector, args);
    }
};

pub const NSPreviewRepresentingActivityItem = struct {
    pub const class_methods = .{
        .{ "initWithItem:title:image:icon:", Object, .{ Any, ?objc.NSString, ?NSImage, ?NSImage } },
        .{ "initWithItem:title:imageProvider:iconProvider:", Object, .{ Any, ?objc.NSString, ?Foundation.NSItemProvider, ?Foundation.NSItemProvider } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPreviewRepresentingActivityItem", class_methods, selector, args);
    }
};

pub const NSPrintInfo = struct {
    obj: Object,

    pub const methods = .{
        .{ "PMPageFormat", UnsafeMutableRawPointer, .{} },
        .{ "PMPrintSession", UnsafeMutableRawPointer, .{} },
        .{ "PMPrintSettings", UnsafeMutableRawPointer, .{} },
        .{ "bottomMargin", objc.CGFloat, .{} },
        .{ "dictionary", Foundation.NSMutableDictionary, .{} },
        .{ "horizontalPagination", NSPrintInfo.PaginationMode, .{} },
        .{ "horizontallyCentered", objc.BOOL, .{} },
        .{ "imageablePageBounds", NSRect, .{} },
        .{ "jobDisposition", objc.NSString, .{} },
        .{ "leftMargin", objc.CGFloat, .{} },
        .{ "localizedPaperName", ?objc.NSString, .{} },
        .{ "orientation", NSPrintInfo.PaperOrientation, .{} },
        .{ "paperName", objc.NSString, .{} },
        .{ "paperSize", NSSize, .{} },
        .{ "printSettings", Foundation.NSMutableDictionary, .{} },
        .{ "printer", NSPrinter, .{} },
        .{ "rightMargin", objc.CGFloat, .{} },
        .{ "scalingFactor", objc.CGFloat, .{} },
        .{ "selectionOnly", objc.BOOL, .{} },
        .{ "setBottomMargin:", void, .{objc.CGFloat} },
        .{ "setHorizontalPagination:", void, .{NSPrintInfo.PaginationMode} },
        .{ "setHorizontallyCentered:", void, .{objc.BOOL} },
        .{ "setJobDisposition:", void, .{objc.NSString} },
        .{ "setLeftMargin:", void, .{objc.CGFloat} },
        .{ "setOrientation:", void, .{NSPrintInfo.PaperOrientation} },
        .{ "setPaperName:", void, .{objc.NSString} },
        .{ "setPaperSize:", void, .{NSSize} },
        .{ "setPrinter:", void, .{NSPrinter} },
        .{ "setRightMargin:", void, .{objc.CGFloat} },
        .{ "setScalingFactor:", void, .{objc.CGFloat} },
        .{ "setSelectionOnly:", void, .{objc.BOOL} },
        .{ "setTopMargin:", void, .{objc.CGFloat} },
        .{ "setUpPrintOperationDefaultValues", void, .{} },
        .{ "setVerticalPagination:", void, .{NSPrintInfo.PaginationMode} },
        .{ "setVerticallyCentered:", void, .{objc.BOOL} },
        .{ "takeSettingsFromPDFInfo:", void, .{NSPDFInfo} },
        .{ "topMargin", objc.CGFloat, .{} },
        .{ "updateFromPMPageFormat", void, .{} },
        .{ "updateFromPMPrintSettings", void, .{} },
        .{ "verticalPagination", NSPrintInfo.PaginationMode, .{} },
        .{ "verticallyCentered", objc.BOOL, .{} },
    };

    pub fn send(self: NSPrintInfo, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultPrinter", ?NSPrinter, .{} },
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithDictionary:", Object, .{Any} },
        .{ "setSharedPrintInfo:", void, .{NSPrintInfo} },
        .{ "sharedPrintInfo", NSPrintInfo, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPrintInfo", class_methods, selector, args);
    }

    pub const Orientation = enum(i64) {
        portraitOrientation = 0,
        landscapeOrientation = 1,
    };
    pub const PaginationMode = enum(i64) {
        automatic = 0,
        fit = 1,
        clip = 2,
    };
    pub const PaperOrientation = enum(i64) {
        portrait = 0,
        landscape = 1,
    };
};

pub const NSPrintOperation = struct {
    obj: Object,

    pub const methods = .{
        .{ "PDFPanel", NSPDFPanel, .{} },
        .{ "canSpawnSeparateThread", objc.BOOL, .{} },
        .{ "cleanUpOperation", void, .{} },
        .{ "context", ?NSGraphicsContext, .{} },
        .{ "copyingOperation", objc.BOOL, .{} },
        .{ "createContext", ?NSGraphicsContext, .{} },
        .{ "currentPage", objc.NSInteger, .{} },
        .{ "deliverResult", objc.BOOL, .{} },
        .{ "destroyContext", void, .{} },
        .{ "jobTitle", ?objc.NSString, .{} },
        .{ "pageOrder", NSPrintOperation.PageOrder, .{} },
        .{ "pageRange", NSRange, .{} },
        .{ "preferredRenderingQuality", NSPrintOperation.RenderingQuality, .{} },
        .{ "printInfo", NSPrintInfo, .{} },
        .{ "printPanel", NSPrintPanel, .{} },
        .{ "runOperation", objc.BOOL, .{} },
        .{ "runOperationModalForWindow:delegate:didRunSelector:contextInfo:", void, .{ NSWindow, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "setCanSpawnSeparateThread:", void, .{objc.BOOL} },
        .{ "setJobTitle:", void, .{?objc.NSString} },
        .{ "setPDFPanel:", void, .{NSPDFPanel} },
        .{ "setPageOrder:", void, .{NSPrintOperation.PageOrder} },
        .{ "setPrintInfo:", void, .{NSPrintInfo} },
        .{ "setPrintPanel:", void, .{NSPrintPanel} },
        .{ "setShowsPrintPanel:", void, .{objc.BOOL} },
        .{ "setShowsProgressPanel:", void, .{objc.BOOL} },
        .{ "showsPrintPanel", objc.BOOL, .{} },
        .{ "showsProgressPanel", objc.BOOL, .{} },
        .{ "view", ?NSView, .{} },
    };

    pub fn send(self: NSPrintOperation, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "EPSOperationWithView:insideRect:toData:", NSPrintOperation, .{ NSView, NSRect, ?Foundation.NSMutableData } },
        .{ "EPSOperationWithView:insideRect:toData:printInfo:", NSPrintOperation, .{ NSView, NSRect, Foundation.NSMutableData, NSPrintInfo } },
        .{ "EPSOperationWithView:insideRect:toPath:printInfo:", NSPrintOperation, .{ NSView, NSRect, objc.NSString, NSPrintInfo } },
        .{ "PDFOperationWithView:insideRect:toData:", NSPrintOperation, .{ NSView, NSRect, Foundation.NSMutableData } },
        .{ "PDFOperationWithView:insideRect:toData:printInfo:", NSPrintOperation, .{ NSView, NSRect, Foundation.NSMutableData, NSPrintInfo } },
        .{ "PDFOperationWithView:insideRect:toPath:printInfo:", NSPrintOperation, .{ NSView, NSRect, objc.NSString, NSPrintInfo } },
        .{ "currentOperation", ?NSPrintOperation, .{} },
        .{ "printOperationWithView:", Object, .{NSView} },
        .{ "printOperationWithView:printInfo:", Object, .{ NSView, NSPrintInfo } },
        .{ "setCurrentOperation:", void, .{?NSPrintOperation} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPrintOperation", class_methods, selector, args);
    }

    pub const PageOrder = enum(i64) {
        descendingPageOrder = -1,
        specialPageOrder = 0,
        ascendingPageOrder = 1,
        unknownPageOrder = 2,
    };
    pub const RenderingQuality = enum(i64) {
        best = 0,
        responsive = 1,
    };
};

pub const NSPrintPanel = struct {
    obj: Object,

    pub const methods = .{
        .{ "accessoryControllers", Object, .{} },
        .{ "addAccessoryController:", void, .{void} },
        .{ "beginSheetUsingPrintInfo:onWindow:completionHandler:", void, .{ NSPrintInfo, NSWindow, void } },
        .{ "beginSheetWithPrintInfo:modalForWindow:delegate:didEndSelector:contextInfo:", void, .{ NSPrintInfo, NSWindow, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "defaultButtonTitle", ?objc.NSString, .{} },
        .{ "helpAnchor", objc.NSString, .{} },
        .{ "jobStyleHint", objc.NSString, .{} },
        .{ "options", objc.NSInteger, .{} },
        .{ "printInfo", NSPrintInfo, .{} },
        .{ "removeAccessoryController:", void, .{void} },
        .{ "runModal", objc.NSInteger, .{} },
        .{ "runModalWithPrintInfo:", objc.NSInteger, .{NSPrintInfo} },
        .{ "setDefaultButtonTitle:", void, .{?objc.NSString} },
        .{ "setHelpAnchor:", void, .{objc.NSString} },
        .{ "setJobStyleHint:", void, .{objc.NSString} },
        .{ "setOptions:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSPrintPanel, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const Result = enum(i64) {
        cancelled = 0,
        printed = 1,
    };
};

pub const NSPrinter = struct {
    obj: Object,

    pub const methods = .{
        .{ "deviceDescription", Object, .{} },
        .{ "languageLevel", objc.NSInteger, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "pageSizeForPaper:", NSSize, .{objc.NSString} },
        .{ "type", objc.NSString, .{} },
    };

    pub fn send(self: NSPrinter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "printerNames", Object, .{} },
        .{ "printerTypes", Object, .{} },
        .{ "printerWithName:", Object, .{objc.NSString} },
        .{ "printerWithType:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPrinter", class_methods, selector, args);
    }

    pub const TableStatus = enum(i64) {
        ok = 0,
        notFound = 1,
        @"error" = 2,
    };
};

pub const NSProgressIndicator = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "bezeled", objc.BOOL, .{} },
        .{ "controlSize", NSControl.ControlSize, .{} },
        .{ "controlTint", NSControlTint, .{} },
        .{ "displayedWhenStopped", objc.BOOL, .{} },
        .{ "doubleValue", f64, .{} },
        .{ "incrementBy:", void, .{f64} },
        .{ "indeterminate", objc.BOOL, .{} },
        .{ "maxValue", f64, .{} },
        .{ "minValue", f64, .{} },
        .{ "observedProgress", ?Foundation.NSProgress, .{} },
        .{ "setBezeled:", void, .{objc.BOOL} },
        .{ "setControlSize:", void, .{NSControl.ControlSize} },
        .{ "setControlTint:", void, .{NSControlTint} },
        .{ "setDisplayedWhenStopped:", void, .{objc.BOOL} },
        .{ "setDoubleValue:", void, .{f64} },
        .{ "setIndeterminate:", void, .{objc.BOOL} },
        .{ "setMaxValue:", void, .{f64} },
        .{ "setMinValue:", void, .{f64} },
        .{ "setObservedProgress:", void, .{?Foundation.NSProgress} },
        .{ "setStyle:", void, .{NSProgressIndicator.Style} },
        .{ "setUsesThreadedAnimation:", void, .{objc.BOOL} },
        .{ "sizeToFit", void, .{} },
        .{ "startAnimation:", void, .{?Any} },
        .{ "stopAnimation:", void, .{?Any} },
        .{ "style", NSProgressIndicator.Style, .{} },
        .{ "usesThreadedAnimation", objc.BOOL, .{} },
    };

    pub fn send(self: NSProgressIndicator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const Style = enum(i64) {
        bar = 0,
        spinning = 1,
    };
};

pub const NSResponder = struct {
    obj: Object,

    pub const methods = .{
        .{ "acceptsFirstResponder", objc.BOOL, .{} },
        .{ "becomeFirstResponder", objc.BOOL, .{} },
        .{ "beginGestureWithEvent:", void, .{NSEvent} },
        .{ "changeModeWithEvent:", void, .{NSEvent} },
        .{ "contextMenuKeyDown:", void, .{NSEvent} },
        .{ "cursorUpdate:", void, .{NSEvent} },
        .{ "encodeRestorableStateWithCoder:", void, .{Foundation.NSCoder} },
        .{ "encodeRestorableStateWithCoder:backgroundQueue:", void, .{ Foundation.NSCoder, Foundation.NSOperationQueue } },
        .{ "endGestureWithEvent:", void, .{NSEvent} },
        .{ "flagsChanged:", void, .{NSEvent} },
        .{ "flushBufferedKeyEvents", void, .{} },
        .{ "helpRequested:", void, .{NSEvent} },
        .{ "interpretKeyEvents:", void, .{void} },
        .{ "invalidateRestorableState", void, .{} },
        .{ "keyDown:", void, .{NSEvent} },
        .{ "keyUp:", void, .{NSEvent} },
        .{ "magnifyWithEvent:", void, .{NSEvent} },
        .{ "makeTouchBar", ?NSTouchBar, .{} },
        .{ "menu", ?NSMenu, .{} },
        .{ "mouseCancelled:", void, .{NSEvent} },
        .{ "mouseDown:", void, .{NSEvent} },
        .{ "mouseDragged:", void, .{NSEvent} },
        .{ "mouseEntered:", void, .{NSEvent} },
        .{ "mouseExited:", void, .{NSEvent} },
        .{ "mouseMoved:", void, .{NSEvent} },
        .{ "mouseUp:", void, .{NSEvent} },
        .{ "newWindowForTab:", void, .{?Any} },
        .{ "nextResponder", ?NSResponder, .{} },
        .{ "noResponderFor:", void, .{Selector} },
        .{ "otherMouseDown:", void, .{NSEvent} },
        .{ "otherMouseDragged:", void, .{NSEvent} },
        .{ "otherMouseUp:", void, .{NSEvent} },
        .{ "performKeyEquivalent:", objc.BOOL, .{NSEvent} },
        .{ "performTextFinderAction:", void, .{?Any} },
        .{ "presentError:", objc.BOOL, .{void} },
        .{ "presentError:modalForWindow:delegate:didPresentSelector:contextInfo:", void, .{ void, NSWindow, ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "pressureChangeWithEvent:", void, .{NSEvent} },
        .{ "quickLookWithEvent:", void, .{NSEvent} },
        .{ "resignFirstResponder", objc.BOOL, .{} },
        .{ "restoreStateWithCoder:", void, .{Foundation.NSCoder} },
        .{ "rightMouseDown:", void, .{NSEvent} },
        .{ "rightMouseDragged:", void, .{NSEvent} },
        .{ "rightMouseUp:", void, .{NSEvent} },
        .{ "rotateWithEvent:", void, .{NSEvent} },
        .{ "scrollWheel:", void, .{NSEvent} },
        .{ "setMenu:", void, .{?NSMenu} },
        .{ "setNextResponder:", void, .{?NSResponder} },
        .{ "setTouchBar:", void, .{?NSTouchBar} },
        .{ "setUserActivity:", void, .{?Foundation.NSUserActivity} },
        .{ "shouldBeTreatedAsInkEvent:", objc.BOOL, .{NSEvent} },
        .{ "showContextHelp:", void, .{?Any} },
        .{ "showWritingTools:", void, .{?Any} },
        .{ "smartMagnifyWithEvent:", void, .{NSEvent} },
        .{ "supplementalTargetForAction:sender:", ?Any, .{ Selector, ?Any } },
        .{ "swipeWithEvent:", void, .{NSEvent} },
        .{ "tabletPoint:", void, .{NSEvent} },
        .{ "tabletProximity:", void, .{NSEvent} },
        .{ "touchBar", ?NSTouchBar, .{} },
        .{ "touchesBeganWithEvent:", void, .{NSEvent} },
        .{ "touchesCancelledWithEvent:", void, .{NSEvent} },
        .{ "touchesEndedWithEvent:", void, .{NSEvent} },
        .{ "touchesMovedWithEvent:", void, .{NSEvent} },
        .{ "tryToPerform:with:", objc.BOOL, .{ Selector, ?Any } },
        .{ "undoManager", ?Foundation.NSUndoManager, .{} },
        .{ "updateUserActivityState:", void, .{Foundation.NSUserActivity} },
        .{ "userActivity", ?Foundation.NSUserActivity, .{} },
        .{ "validRequestorForSendType:returnType:", ?Any, .{ objc.NSString, objc.NSString } },
        .{ "validateProposedFirstResponder:forEvent:", objc.BOOL, .{ NSResponder, ?NSEvent } },
        .{ "wantsForwardedScrollEventsForAxis:", objc.BOOL, .{NSEvent.GestureAxis} },
        .{ "wantsScrollEventsForSwipeTrackingOnAxis:", objc.BOOL, .{NSEvent.GestureAxis} },
        .{ "willPresentError:", ?*anyopaque, .{void} },
    };

    pub fn send(self: NSResponder, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "allowedClassesForRestorableStateKeyPath:", Object, .{objc.NSString} },
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "restorableStateKeyPaths", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSResponder", class_methods, selector, args);
    }
};

pub const NSRotationGestureRecognizer = struct {
    obj: Object,

    pub const Super = NSGestureRecognizer;
    pub const methods = .{
        .{ "rotation", objc.CGFloat, .{} },
        .{ "rotationInDegrees", objc.CGFloat, .{} },
        .{ "setRotation:", void, .{objc.CGFloat} },
        .{ "setRotationInDegrees:", void, .{objc.CGFloat} },
    };

    pub fn send(self: NSRotationGestureRecognizer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSRuleEditor = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "addRow:", void, .{?Any} },
        .{ "canRemoveAllRows", objc.BOOL, .{} },
        .{ "criteriaForRow:", Object, .{objc.NSInteger} },
        .{ "criteriaKeyPath", objc.NSString, .{} },
        .{ "delegate", ?NSRuleEditorDelegate, .{} },
        .{ "displayValuesForRow:", Object, .{objc.NSInteger} },
        .{ "displayValuesKeyPath", objc.NSString, .{} },
        .{ "editable", objc.BOOL, .{} },
        .{ "formattingDictionary", ?*anyopaque, .{} },
        .{ "formattingStringsFilename", ?objc.NSString, .{} },
        .{ "insertRowAtIndex:withType:asSubrowOfRow:animate:", void, .{ objc.NSInteger, NSRuleEditor.RowType, objc.NSInteger, objc.BOOL } },
        .{ "nestingMode", NSRuleEditor.NestingMode, .{} },
        .{ "numberOfRows", objc.NSInteger, .{} },
        .{ "parentRowForRow:", objc.NSInteger, .{objc.NSInteger} },
        .{ "predicate", ?Foundation.NSPredicate, .{} },
        .{ "predicateForRow:", ?Foundation.NSPredicate, .{objc.NSInteger} },
        .{ "reloadCriteria", void, .{} },
        .{ "reloadPredicate", void, .{} },
        .{ "removeRowAtIndex:", void, .{objc.NSInteger} },
        .{ "removeRowsAtIndexes:includeSubrows:", void, .{ Foundation.NSIndexSet, objc.BOOL } },
        .{ "rowClass", AnyClass, .{} },
        .{ "rowForDisplayValue:", objc.NSInteger, .{Any} },
        .{ "rowHeight", objc.CGFloat, .{} },
        .{ "rowTypeForRow:", NSRuleEditor.RowType, .{objc.NSInteger} },
        .{ "rowTypeKeyPath", objc.NSString, .{} },
        .{ "selectRowIndexes:byExtendingSelection:", void, .{ Foundation.NSIndexSet, objc.BOOL } },
        .{ "selectedRowIndexes", Foundation.NSIndexSet, .{} },
        .{ "setCanRemoveAllRows:", void, .{objc.BOOL} },
        .{ "setCriteria:andDisplayValues:forRowAtIndex:", void, .{ void, void, objc.NSInteger } },
        .{ "setCriteriaKeyPath:", void, .{objc.NSString} },
        .{ "setDelegate:", void, .{?NSRuleEditorDelegate} },
        .{ "setDisplayValuesKeyPath:", void, .{objc.NSString} },
        .{ "setEditable:", void, .{objc.BOOL} },
        .{ "setFormattingDictionary:", void, .{?*anyopaque} },
        .{ "setFormattingStringsFilename:", void, .{?objc.NSString} },
        .{ "setNestingMode:", void, .{NSRuleEditor.NestingMode} },
        .{ "setRowClass:", void, .{AnyClass} },
        .{ "setRowHeight:", void, .{objc.CGFloat} },
        .{ "setRowTypeKeyPath:", void, .{objc.NSString} },
        .{ "setSubrowsKeyPath:", void, .{objc.NSString} },
        .{ "subrowIndexesForRow:", Foundation.NSIndexSet, .{objc.NSInteger} },
        .{ "subrowsKeyPath", objc.NSString, .{} },
    };

    pub fn send(self: NSRuleEditor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const NestingMode = enum(i64) {
        single = 0,
        list = 1,
        compound = 2,
        simple = 3,
    };
    pub const RowType = enum(i64) {
        simple = 0,
        compound = 1,
    };
};

pub const NSRulerMarker = struct {
    obj: Object,

    pub const methods = .{
        .{ "dragging", objc.BOOL, .{} },
        .{ "drawRect:", void, .{NSRect} },
        .{ "image", NSImage, .{} },
        .{ "imageOrigin", NSPoint, .{} },
        .{ "imageRectInRuler", NSRect, .{} },
        .{ "markerLocation", objc.CGFloat, .{} },
        .{ "movable", objc.BOOL, .{} },
        .{ "removable", objc.BOOL, .{} },
        .{ "representedObject", ?NSCopying, .{} },
        .{ "ruler", ?NSRulerView, .{} },
        .{ "setImage:", void, .{NSImage} },
        .{ "setImageOrigin:", void, .{NSPoint} },
        .{ "setMarkerLocation:", void, .{objc.CGFloat} },
        .{ "setMovable:", void, .{objc.BOOL} },
        .{ "setRemovable:", void, .{objc.BOOL} },
        .{ "setRepresentedObject:", void, .{?NSCopying} },
        .{ "thicknessRequiredInRuler", objc.CGFloat, .{} },
        .{ "trackMouse:adding:", objc.BOOL, .{ NSEvent, objc.BOOL } },
    };

    pub fn send(self: NSRulerMarker, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithRulerView:markerLocation:image:imageOrigin:", Object, .{ NSRulerView, objc.CGFloat, NSImage, NSPoint } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSRulerMarker", class_methods, selector, args);
    }
};

pub const NSRulerView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "accessoryView", ?NSView, .{} },
        .{ "addMarker:", void, .{NSRulerMarker} },
        .{ "baselineLocation", objc.CGFloat, .{} },
        .{ "clientView", ?NSView, .{} },
        .{ "drawHashMarksAndLabelsInRect:", void, .{NSRect} },
        .{ "drawMarkersInRect:", void, .{NSRect} },
        .{ "flipped", objc.BOOL, .{} },
        .{ "invalidateHashMarks", void, .{} },
        .{ "markers", ?*anyopaque, .{} },
        .{ "measurementUnits", objc.NSString, .{} },
        .{ "moveRulerlineFromLocation:toLocation:", void, .{ objc.CGFloat, objc.CGFloat } },
        .{ "orientation", NSRulerView.Orientation, .{} },
        .{ "originOffset", objc.CGFloat, .{} },
        .{ "removeMarker:", void, .{NSRulerMarker} },
        .{ "requiredThickness", objc.CGFloat, .{} },
        .{ "reservedThicknessForAccessoryView", objc.CGFloat, .{} },
        .{ "reservedThicknessForMarkers", objc.CGFloat, .{} },
        .{ "ruleThickness", objc.CGFloat, .{} },
        .{ "scrollView", ?NSScrollView, .{} },
        .{ "setAccessoryView:", void, .{?NSView} },
        .{ "setClientView:", void, .{?NSView} },
        .{ "setMarkers:", void, .{?*anyopaque} },
        .{ "setMeasurementUnits:", void, .{objc.NSString} },
        .{ "setOrientation:", void, .{NSRulerView.Orientation} },
        .{ "setOriginOffset:", void, .{objc.CGFloat} },
        .{ "setReservedThicknessForAccessoryView:", void, .{objc.CGFloat} },
        .{ "setReservedThicknessForMarkers:", void, .{objc.CGFloat} },
        .{ "setRuleThickness:", void, .{objc.CGFloat} },
        .{ "setScrollView:", void, .{?NSScrollView} },
        .{ "trackMarker:withMouseEvent:", objc.BOOL, .{ NSRulerMarker, NSEvent } },
    };

    pub fn send(self: NSRulerView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithScrollView:orientation:", Object, .{ ?NSScrollView, NSRulerView.Orientation } },
        .{ "registerUnitWithName:abbreviation:unitToPointsConversionFactor:stepUpCycle:stepDownCycle:", void, .{ objc.NSString, objc.NSString, objc.CGFloat, void, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSRulerView", class_methods, selector, args);
    }

    pub const Orientation = enum(i64) {
        horizontalRuler = 0,
        verticalRuler = 1,
    };
};

pub const NSRunningApplication = struct {
    obj: Object,

    pub const methods = .{
        .{ "activateFromApplication:options:", objc.BOOL, .{ NSRunningApplication, objc.NSInteger } },
        .{ "activateWithOptions:", objc.BOOL, .{objc.NSInteger} },
        .{ "activationPolicy", NSApplication.ActivationPolicy, .{} },
        .{ "active", objc.BOOL, .{} },
        .{ "bundleIdentifier", ?objc.NSString, .{} },
        .{ "bundleURL", ?Foundation.NSURL, .{} },
        .{ "executableArchitecture", objc.NSInteger, .{} },
        .{ "executableURL", ?Foundation.NSURL, .{} },
        .{ "finishedLaunching", objc.BOOL, .{} },
        .{ "forceTerminate", objc.BOOL, .{} },
        .{ "hidden", objc.BOOL, .{} },
        .{ "hide", objc.BOOL, .{} },
        .{ "icon", ?NSImage, .{} },
        .{ "launchDate", ?Foundation.NSDate, .{} },
        .{ "localizedName", ?objc.NSString, .{} },
        .{ "ownsMenuBar", objc.BOOL, .{} },
        .{ "processIdentifier", pid_t, .{} },
        .{ "terminate", objc.BOOL, .{} },
        .{ "terminated", objc.BOOL, .{} },
        .{ "unhide", objc.BOOL, .{} },
    };

    pub fn send(self: NSRunningApplication, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentApplication", NSRunningApplication, .{} },
        .{ "runningApplicationWithProcessIdentifier:", Object, .{pid_t} },
        .{ "runningApplicationsWithBundleIdentifier:", Object, .{objc.NSString} },
        .{ "terminateAutomaticallyTerminableApplications", void, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSRunningApplication", class_methods, selector, args);
    }
};

pub const NSSavePanel = struct {
    obj: Object,

    pub const Super = NSPanel;
    pub const methods = .{
        .{ "URL", ?Foundation.NSURL, .{} },
        .{ "accessoryView", ?NSView, .{} },
        .{ "allowedContentTypes", Object, .{} },
        .{ "allowedFileTypes", ?*anyopaque, .{} },
        .{ "allowsOtherFileTypes", objc.BOOL, .{} },
        .{ "beginSheetModalForWindow:completionHandler:", void, .{ NSWindow, void } },
        .{ "beginWithCompletionHandler:", void, .{void} },
        .{ "canCreateDirectories", objc.BOOL, .{} },
        .{ "canSelectHiddenExtension", objc.BOOL, .{} },
        .{ "cancel:", void, .{?Any} },
        .{ "currentContentType", ?*anyopaque, .{} },
        .{ "delegate", ?NSOpenSavePanelDelegate, .{} },
        .{ "directoryURL", ?Foundation.NSURL, .{} },
        .{ "expanded", objc.BOOL, .{} },
        .{ "extensionHidden", objc.BOOL, .{} },
        .{ "identifier", objc.NSString, .{} },
        .{ "message", objc.NSString, .{} },
        .{ "nameFieldLabel", objc.NSString, .{} },
        .{ "nameFieldStringValue", objc.NSString, .{} },
        .{ "ok:", void, .{?Any} },
        .{ "prompt", objc.NSString, .{} },
        .{ "runModal", objc.NSInteger, .{} },
        .{ "setAccessoryView:", void, .{?NSView} },
        .{ "setAllowedContentTypes:", void, .{Object} },
        .{ "setAllowedFileTypes:", void, .{?*anyopaque} },
        .{ "setAllowsOtherFileTypes:", void, .{objc.BOOL} },
        .{ "setCanCreateDirectories:", void, .{objc.BOOL} },
        .{ "setCanSelectHiddenExtension:", void, .{objc.BOOL} },
        .{ "setCurrentContentType:", void, .{?*anyopaque} },
        .{ "setDelegate:", void, .{?NSOpenSavePanelDelegate} },
        .{ "setDirectoryURL:", void, .{?Foundation.NSURL} },
        .{ "setExtensionHidden:", void, .{objc.BOOL} },
        .{ "setIdentifier:", void, .{objc.NSString} },
        .{ "setMessage:", void, .{objc.NSString} },
        .{ "setNameFieldLabel:", void, .{objc.NSString} },
        .{ "setNameFieldStringValue:", void, .{objc.NSString} },
        .{ "setPrompt:", void, .{objc.NSString} },
        .{ "setShowsContentTypes:", void, .{objc.BOOL} },
        .{ "setShowsHiddenFiles:", void, .{objc.BOOL} },
        .{ "setShowsTagField:", void, .{objc.BOOL} },
        .{ "setTagNames:", void, .{?*anyopaque} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setTreatsFilePackagesAsDirectories:", void, .{objc.BOOL} },
        .{ "showsContentTypes", objc.BOOL, .{} },
        .{ "showsHiddenFiles", objc.BOOL, .{} },
        .{ "showsTagField", objc.BOOL, .{} },
        .{ "tagNames", ?*anyopaque, .{} },
        .{ "title", objc.NSString, .{} },
        .{ "treatsFilePackagesAsDirectories", objc.BOOL, .{} },
        .{ "validateVisibleColumns", void, .{} },
    };

    pub fn send(self: NSSavePanel, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSScreen = struct {
    obj: Object,

    pub const methods = .{
        .{ "backingAlignedRect:options:", NSRect, .{ NSRect, objc.NSInteger } },
        .{ "backingScaleFactor", objc.CGFloat, .{} },
        .{ "canRepresentDisplayGamut:", objc.BOOL, .{NSDisplayGamut} },
        .{ "colorSpace", ?NSColorSpace, .{} },
        .{ "convertRectFromBacking:", NSRect, .{NSRect} },
        .{ "convertRectToBacking:", NSRect, .{NSRect} },
        .{ "depth", NSWindow.Depth, .{} },
        .{ "deviceDescription", Object, .{} },
        .{ "displayLinkWithTarget:selector:", Object, .{ Any, Selector } },
        .{ "displayUpdateGranularity", TimeInterval, .{} },
        .{ "frame", NSRect, .{} },
        .{ "lastDisplayUpdateTimestamp", TimeInterval, .{} },
        .{ "localizedName", objc.NSString, .{} },
        .{ "maximumExtendedDynamicRangeColorComponentValue", objc.CGFloat, .{} },
        .{ "maximumFramesPerSecond", objc.NSInteger, .{} },
        .{ "maximumPotentialExtendedDynamicRangeColorComponentValue", objc.CGFloat, .{} },
        .{ "maximumReferenceExtendedDynamicRangeColorComponentValue", objc.CGFloat, .{} },
        .{ "maximumRefreshInterval", TimeInterval, .{} },
        .{ "minimumRefreshInterval", TimeInterval, .{} },
        .{ "safeAreaInsets", NSEdgeInsets, .{} },
        .{ "setSafeAreaInsets:", void, .{NSEdgeInsets} },
        .{ "supportedWindowDepths", NSWindow.Depth, .{} },
        .{ "visibleFrame", NSRect, .{} },
    };

    pub fn send(self: NSScreen, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "deepestScreen", ?NSScreen, .{} },
        .{ "mainScreen", ?NSScreen, .{} },
        .{ "screens", Object, .{} },
        .{ "screensHaveSeparateSpaces", objc.BOOL, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScreen", class_methods, selector, args);
    }
};

pub const NSScrollEdgeEffectStyle = struct {
    pub const class_methods = .{
        .{ "automaticStyle", NSScrollEdgeEffectStyle, .{} },
        .{ "hardStyle", NSScrollEdgeEffectStyle, .{} },
        .{ "softStyle", NSScrollEdgeEffectStyle, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScrollEdgeEffectStyle", class_methods, selector, args);
    }
};

pub const NSScrollView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "addFloatingSubview:forAxis:", void, .{ NSView, NSEvent.GestureAxis } },
        .{ "allowsMagnification", objc.BOOL, .{} },
        .{ "autohidesScrollers", objc.BOOL, .{} },
        .{ "automaticallyAdjustsContentInsets", objc.BOOL, .{} },
        .{ "backgroundColor", NSColor, .{} },
        .{ "borderType", NSBorderType, .{} },
        .{ "contentInsets", NSEdgeInsets, .{} },
        .{ "contentSize", NSSize, .{} },
        .{ "contentView", NSClipView, .{} },
        .{ "documentCursor", ?NSCursor, .{} },
        .{ "documentView", ?NSView, .{} },
        .{ "documentVisibleRect", NSRect, .{} },
        .{ "drawsBackground", objc.BOOL, .{} },
        .{ "findBarPosition", NSScrollView.FindBarPosition, .{} },
        .{ "flashScrollers", void, .{} },
        .{ "hasHorizontalRuler", objc.BOOL, .{} },
        .{ "hasHorizontalScroller", objc.BOOL, .{} },
        .{ "hasVerticalRuler", objc.BOOL, .{} },
        .{ "hasVerticalScroller", objc.BOOL, .{} },
        .{ "horizontalLineScroll", objc.CGFloat, .{} },
        .{ "horizontalPageScroll", objc.CGFloat, .{} },
        .{ "horizontalRulerView", ?NSRulerView, .{} },
        .{ "horizontalScrollElasticity", NSScrollView.Elasticity, .{} },
        .{ "horizontalScroller", ?NSScroller, .{} },
        .{ "lineScroll", objc.CGFloat, .{} },
        .{ "magnification", objc.CGFloat, .{} },
        .{ "magnifyToFitRect:", void, .{NSRect} },
        .{ "maxMagnification", objc.CGFloat, .{} },
        .{ "minMagnification", objc.CGFloat, .{} },
        .{ "pageScroll", objc.CGFloat, .{} },
        .{ "reflectScrolledClipView:", void, .{NSClipView} },
        .{ "rulersVisible", objc.BOOL, .{} },
        .{ "scrollWheel:", void, .{NSEvent} },
        .{ "scrollerInsets", NSEdgeInsets, .{} },
        .{ "scrollerKnobStyle", NSScroller.KnobStyle, .{} },
        .{ "scrollerStyle", NSScroller.Style, .{} },
        .{ "scrollsDynamically", objc.BOOL, .{} },
        .{ "setAllowsMagnification:", void, .{objc.BOOL} },
        .{ "setAutohidesScrollers:", void, .{objc.BOOL} },
        .{ "setAutomaticallyAdjustsContentInsets:", void, .{objc.BOOL} },
        .{ "setBackgroundColor:", void, .{NSColor} },
        .{ "setBorderType:", void, .{NSBorderType} },
        .{ "setContentInsets:", void, .{NSEdgeInsets} },
        .{ "setContentView:", void, .{NSClipView} },
        .{ "setDocumentCursor:", void, .{?NSCursor} },
        .{ "setDocumentView:", void, .{?NSView} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "setFindBarPosition:", void, .{NSScrollView.FindBarPosition} },
        .{ "setHasHorizontalRuler:", void, .{objc.BOOL} },
        .{ "setHasHorizontalScroller:", void, .{objc.BOOL} },
        .{ "setHasVerticalRuler:", void, .{objc.BOOL} },
        .{ "setHasVerticalScroller:", void, .{objc.BOOL} },
        .{ "setHorizontalLineScroll:", void, .{objc.CGFloat} },
        .{ "setHorizontalPageScroll:", void, .{objc.CGFloat} },
        .{ "setHorizontalRulerView:", void, .{?NSRulerView} },
        .{ "setHorizontalScrollElasticity:", void, .{NSScrollView.Elasticity} },
        .{ "setHorizontalScroller:", void, .{?NSScroller} },
        .{ "setLineScroll:", void, .{objc.CGFloat} },
        .{ "setMagnification:", void, .{objc.CGFloat} },
        .{ "setMagnification:centeredAtPoint:", void, .{ objc.CGFloat, NSPoint } },
        .{ "setMaxMagnification:", void, .{objc.CGFloat} },
        .{ "setMinMagnification:", void, .{objc.CGFloat} },
        .{ "setPageScroll:", void, .{objc.CGFloat} },
        .{ "setRulersVisible:", void, .{objc.BOOL} },
        .{ "setScrollerInsets:", void, .{NSEdgeInsets} },
        .{ "setScrollerKnobStyle:", void, .{NSScroller.KnobStyle} },
        .{ "setScrollerStyle:", void, .{NSScroller.Style} },
        .{ "setScrollsDynamically:", void, .{objc.BOOL} },
        .{ "setUsesPredominantAxisScrolling:", void, .{objc.BOOL} },
        .{ "setVerticalLineScroll:", void, .{objc.CGFloat} },
        .{ "setVerticalPageScroll:", void, .{objc.CGFloat} },
        .{ "setVerticalRulerView:", void, .{?NSRulerView} },
        .{ "setVerticalScrollElasticity:", void, .{NSScrollView.Elasticity} },
        .{ "setVerticalScroller:", void, .{?NSScroller} },
        .{ "tile", void, .{} },
        .{ "usesPredominantAxisScrolling", objc.BOOL, .{} },
        .{ "verticalLineScroll", objc.CGFloat, .{} },
        .{ "verticalPageScroll", objc.CGFloat, .{} },
        .{ "verticalRulerView", ?NSRulerView, .{} },
        .{ "verticalScrollElasticity", NSScrollView.Elasticity, .{} },
        .{ "verticalScroller", ?NSScroller, .{} },
    };

    pub fn send(self: NSScrollView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "contentSizeForFrameSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:", NSSize, .{ NSSize, ?AnyClass, ?AnyClass, NSBorderType, NSControl.ControlSize, NSScroller.Style } },
        .{ "frameSizeForContentSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:", NSSize, .{ NSSize, ?AnyClass, ?AnyClass, NSBorderType, NSControl.ControlSize, NSScroller.Style } },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithFrame:", Object, .{NSRect} },
        .{ "rulerViewClass", AnyClass, .{} },
        .{ "setRulerViewClass:", void, .{AnyClass} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScrollView", class_methods, selector, args);
    }

    pub const Elasticity = enum(i64) {
        automatic = 0,
        none = 1,
        allowed = 2,
    };
    pub const FindBarPosition = enum(i64) {
        aboveHorizontalRuler = 0,
        aboveContent = 1,
        belowContent = 2,
    };

    pub fn create() NSScrollView {
        const v = objc.msgSend(Object, objc.msgSendClass(Object, "NSScrollView", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 0, 0)});
        objc.msgSend(void, v, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        objc.msgSend(void, v, "setHasVerticalScroller:", .{@as(u8, 1)});
        objc.msgSend(void, v, "setAutohidesScrollers:", .{@as(u8, 1)});
        return .{ .obj = v };
    }
};

pub const NSScroller = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "arrowsPosition", NSScroller.ArrowPosition, .{} },
        .{ "checkSpaceForParts", void, .{} },
        .{ "controlSize", NSControl.ControlSize, .{} },
        .{ "controlTint", NSControlTint, .{} },
        .{ "drawArrow:highlight:", void, .{ NSScroller.Arrow, objc.BOOL } },
        .{ "drawKnob", void, .{} },
        .{ "drawKnobSlotInRect:highlight:", void, .{ NSRect, objc.BOOL } },
        .{ "highlight:", void, .{objc.BOOL} },
        .{ "hitPart", NSScroller.Part, .{} },
        .{ "knobProportion", objc.CGFloat, .{} },
        .{ "knobStyle", NSScroller.KnobStyle, .{} },
        .{ "rectForPart:", NSRect, .{NSScroller.Part} },
        .{ "scrollerStyle", NSScroller.Style, .{} },
        .{ "setArrowsPosition:", void, .{NSScroller.ArrowPosition} },
        .{ "setControlSize:", void, .{NSControl.ControlSize} },
        .{ "setControlTint:", void, .{NSControlTint} },
        .{ "setKnobProportion:", void, .{objc.CGFloat} },
        .{ "setKnobStyle:", void, .{NSScroller.KnobStyle} },
        .{ "setScrollerStyle:", void, .{NSScroller.Style} },
        .{ "testPart:", NSScroller.Part, .{NSPoint} },
        .{ "trackKnob:", void, .{NSEvent} },
        .{ "trackScrollButtons:", void, .{NSEvent} },
        .{ "usableParts", NSScroller.UsableParts, .{} },
    };

    pub fn send(self: NSScroller, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "compatibleWithOverlayScrollers", objc.BOOL, .{} },
        .{ "preferredScrollerStyle", NSScroller.Style, .{} },
        .{ "scrollerWidthForControlSize:scrollerStyle:", objc.CGFloat, .{ NSControl.ControlSize, NSScroller.Style } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScroller", class_methods, selector, args);
    }

    pub const Arrow = enum(i64) {
        incrementArrow = 0,
        decrementArrow = 1,
    };
    pub const ArrowPosition = enum(i64) {
        scrollerArrowsMaxEnd = 0,
        scrollerArrowsMinEnd = 1,
        scrollerArrowsNone = 2,
    };
    pub const KnobStyle = enum(i64) {
        default = 0,
        dark = 1,
        light = 2,
    };
    pub const Part = enum(i64) {
        noPart = 0,
        decrementPage = 1,
        knob = 2,
        incrementPage = 3,
        decrementLine = 4,
        incrementLine = 5,
        knobSlot = 6,
    };
    pub const Style = enum(i64) {
        legacy = 0,
        overlay = 1,
    };
    pub const UsableParts = enum(i64) {
        noScrollerParts = 0,
        onlyScrollerArrows = 1,
        allScrollerParts = 2,
    };
};

pub const NSScrubber = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "backgroundColor", ?NSColor, .{} },
        .{ "backgroundView", ?NSView, .{} },
        .{ "continuous", objc.BOOL, .{} },
        .{ "dataSource", ?NSScrubberDataSource, .{} },
        .{ "delegate", ?NSScrubberDelegate, .{} },
        .{ "floatsSelectionViews", objc.BOOL, .{} },
        .{ "highlightedIndex", objc.NSInteger, .{} },
        .{ "insertItemsAtIndexes:", void, .{Foundation.NSIndexSet} },
        .{ "itemAlignment", NSScrubber.Alignment, .{} },
        .{ "itemViewForItemAtIndex:", ?*anyopaque, .{objc.NSInteger} },
        .{ "makeItemWithIdentifier:owner:", ?*anyopaque, .{ objc.NSString, ?Any } },
        .{ "mode", NSScrubber.Mode, .{} },
        .{ "moveItemAtIndex:toIndex:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "numberOfItems", objc.NSInteger, .{} },
        .{ "performSequentialBatchUpdates:", void, .{void} },
        .{ "registerClass:forItemIdentifier:", void, .{ ?AnyClass, objc.NSString } },
        .{ "registerNib:forItemIdentifier:", void, .{ ?NSNib, objc.NSString } },
        .{ "reloadData", void, .{} },
        .{ "reloadItemsAtIndexes:", void, .{Foundation.NSIndexSet} },
        .{ "removeItemsAtIndexes:", void, .{Foundation.NSIndexSet} },
        .{ "scrollItemAtIndex:toAlignment:", void, .{ objc.NSInteger, NSScrubber.Alignment } },
        .{ "scrubberLayout", NSScrubberLayout, .{} },
        .{ "selectedIndex", objc.NSInteger, .{} },
        .{ "selectionBackgroundStyle", ?NSScrubberSelectionStyle, .{} },
        .{ "selectionOverlayStyle", ?NSScrubberSelectionStyle, .{} },
        .{ "setBackgroundColor:", void, .{?NSColor} },
        .{ "setBackgroundView:", void, .{?NSView} },
        .{ "setContinuous:", void, .{objc.BOOL} },
        .{ "setDataSource:", void, .{?NSScrubberDataSource} },
        .{ "setDelegate:", void, .{?NSScrubberDelegate} },
        .{ "setFloatsSelectionViews:", void, .{objc.BOOL} },
        .{ "setItemAlignment:", void, .{NSScrubber.Alignment} },
        .{ "setMode:", void, .{NSScrubber.Mode} },
        .{ "setScrubberLayout:", void, .{NSScrubberLayout} },
        .{ "setSelectedIndex:", void, .{objc.NSInteger} },
        .{ "setSelectionBackgroundStyle:", void, .{?NSScrubberSelectionStyle} },
        .{ "setSelectionOverlayStyle:", void, .{?NSScrubberSelectionStyle} },
        .{ "setShowsAdditionalContentIndicators:", void, .{objc.BOOL} },
        .{ "setShowsArrowButtons:", void, .{objc.BOOL} },
        .{ "showsAdditionalContentIndicators", objc.BOOL, .{} },
        .{ "showsArrowButtons", objc.BOOL, .{} },
    };

    pub fn send(self: NSScrubber, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithFrame:", Object, .{NSRect} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScrubber", class_methods, selector, args);
    }

    pub const Alignment = enum(i64) {
        none = 0,
        leading = 1,
        trailing = 2,
        center = 3,
    };
    pub const Mode = enum(i64) {
        fixed = 0,
        free = 1,
    };
};

pub const NSScrubberArrangedView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "applyLayoutAttributes:", void, .{NSScrubberLayoutAttributes} },
        .{ "highlighted", objc.BOOL, .{} },
        .{ "selected", objc.BOOL, .{} },
        .{ "setHighlighted:", void, .{objc.BOOL} },
        .{ "setSelected:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSScrubberArrangedView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSScrubberFlowLayout = struct {
    obj: Object,

    pub const Super = NSScrubberLayout;
    pub const methods = .{
        .{ "invalidateLayoutForItemsAtIndexes:", void, .{Foundation.NSIndexSet} },
        .{ "itemSize", NSSize, .{} },
        .{ "itemSpacing", objc.CGFloat, .{} },
        .{ "setItemSize:", void, .{NSSize} },
        .{ "setItemSpacing:", void, .{objc.CGFloat} },
    };

    pub fn send(self: NSScrubberFlowLayout, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSScrubberImageItemView = struct {
    obj: Object,

    pub const methods = .{
        .{ "image", NSImage, .{} },
        .{ "imageAlignment", NSImageAlignment, .{} },
        .{ "imageView", NSImageView, .{} },
        .{ "setImage:", void, .{NSImage} },
        .{ "setImageAlignment:", void, .{NSImageAlignment} },
    };

    pub fn send(self: NSScrubberImageItemView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSScrubberLayout = struct {
    obj: Object,

    pub const methods = .{
        .{ "automaticallyMirrorsInRightToLeftLayout", objc.BOOL, .{} },
        .{ "invalidateLayout", void, .{} },
        .{ "layoutAttributesForItemAtIndex:", ?NSScrubberLayoutAttributes, .{objc.NSInteger} },
        .{ "layoutAttributesForItemsInRect:", NSScrubberLayoutAttributes, .{NSRect} },
        .{ "prepareLayout", void, .{} },
        .{ "scrubber", ?NSScrubber, .{} },
        .{ "scrubberContentSize", NSSize, .{} },
        .{ "shouldInvalidateLayoutForChangeFromVisibleRect:toVisibleRect:", objc.BOOL, .{ NSRect, NSRect } },
        .{ "shouldInvalidateLayoutForHighlightChange", objc.BOOL, .{} },
        .{ "shouldInvalidateLayoutForSelectionChange", objc.BOOL, .{} },
        .{ "visibleRect", NSRect, .{} },
    };

    pub fn send(self: NSScrubberLayout, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "layoutAttributesClass", AnyClass, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScrubberLayout", class_methods, selector, args);
    }
};

pub const NSScrubberLayoutAttributes = struct {
    obj: Object,

    pub const methods = .{
        .{ "alpha", objc.CGFloat, .{} },
        .{ "frame", NSRect, .{} },
        .{ "itemIndex", objc.NSInteger, .{} },
        .{ "setAlpha:", void, .{objc.CGFloat} },
        .{ "setFrame:", void, .{NSRect} },
        .{ "setItemIndex:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSScrubberLayoutAttributes, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "layoutAttributesForItemAtIndex:", Object, .{objc.NSInteger} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScrubberLayoutAttributes", class_methods, selector, args);
    }
};

pub const NSScrubberProportionalLayout = struct {
    obj: Object,

    pub const Super = NSScrubberLayout;
    pub const methods = .{
        .{ "numberOfVisibleItems", objc.NSInteger, .{} },
        .{ "setNumberOfVisibleItems:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSScrubberProportionalLayout, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithNumberOfVisibleItems:", Object, .{objc.NSInteger} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScrubberProportionalLayout", class_methods, selector, args);
    }
};

pub const NSScrubberSelectionStyle = struct {
    obj: Object,

    pub const methods = .{
        .{ "makeSelectionView", ?*anyopaque, .{} },
    };

    pub fn send(self: NSScrubberSelectionStyle, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "outlineOverlayStyle", NSScrubberSelectionStyle, .{} },
        .{ "roundedBackgroundStyle", NSScrubberSelectionStyle, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScrubberSelectionStyle", class_methods, selector, args);
    }
};

pub const NSScrubberTextItemView = struct {
    obj: Object,

    pub const methods = .{
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "textField", NSTextField, .{} },
        .{ "title", objc.NSString, .{} },
    };

    pub fn send(self: NSScrubberTextItemView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSSearchField = struct {
    obj: Object,

    pub const Super = NSTextField;
    pub const methods = .{
        .{ "cancelButtonBounds", NSRect, .{} },
        .{ "centersPlaceholder", objc.BOOL, .{} },
        .{ "delegate", ?NSSearchFieldDelegate, .{} },
        .{ "maximumRecents", objc.NSInteger, .{} },
        .{ "recentSearches", Object, .{} },
        .{ "recentsAutosaveName", objc.NSString, .{} },
        .{ "rectForCancelButtonWhenCentered:", NSRect, .{objc.BOOL} },
        .{ "rectForSearchButtonWhenCentered:", NSRect, .{objc.BOOL} },
        .{ "rectForSearchTextWhenCentered:", NSRect, .{objc.BOOL} },
        .{ "searchButtonBounds", NSRect, .{} },
        .{ "searchMenuTemplate", ?NSMenu, .{} },
        .{ "searchTextBounds", NSRect, .{} },
        .{ "sendsSearchStringImmediately", objc.BOOL, .{} },
        .{ "sendsWholeSearchString", objc.BOOL, .{} },
        .{ "setCentersPlaceholder:", void, .{objc.BOOL} },
        .{ "setDelegate:", void, .{?NSSearchFieldDelegate} },
        .{ "setMaximumRecents:", void, .{objc.NSInteger} },
        .{ "setRecentSearches:", void, .{Object} },
        .{ "setRecentsAutosaveName:", void, .{objc.NSString} },
        .{ "setSearchMenuTemplate:", void, .{?NSMenu} },
        .{ "setSendsSearchStringImmediately:", void, .{objc.BOOL} },
        .{ "setSendsWholeSearchString:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSSearchField, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSSearchFieldCell = struct {
    obj: Object,

    pub const Super = NSTextFieldCell;
    pub const methods = .{
        .{ "cancelButtonCell", ?NSButtonCell, .{} },
        .{ "cancelButtonRectForBounds:", NSRect, .{NSRect} },
        .{ "maximumRecents", objc.NSInteger, .{} },
        .{ "recentSearches", Object, .{} },
        .{ "recentsAutosaveName", objc.NSString, .{} },
        .{ "resetCancelButtonCell", void, .{} },
        .{ "resetSearchButtonCell", void, .{} },
        .{ "searchButtonCell", ?NSButtonCell, .{} },
        .{ "searchButtonRectForBounds:", NSRect, .{NSRect} },
        .{ "searchMenuTemplate", ?NSMenu, .{} },
        .{ "searchTextRectForBounds:", NSRect, .{NSRect} },
        .{ "sendsSearchStringImmediately", objc.BOOL, .{} },
        .{ "sendsWholeSearchString", objc.BOOL, .{} },
        .{ "setCancelButtonCell:", void, .{?NSButtonCell} },
        .{ "setMaximumRecents:", void, .{objc.NSInteger} },
        .{ "setRecentSearches:", void, .{Object} },
        .{ "setRecentsAutosaveName:", void, .{objc.NSString} },
        .{ "setSearchButtonCell:", void, .{?NSButtonCell} },
        .{ "setSearchMenuTemplate:", void, .{?NSMenu} },
        .{ "setSendsSearchStringImmediately:", void, .{objc.BOOL} },
        .{ "setSendsWholeSearchString:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSSearchFieldCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initTextCell:", Object, .{objc.NSString} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSearchFieldCell", class_methods, selector, args);
    }
};

pub const NSSearchToolbarItem = struct {
    obj: Object,

    pub const Super = NSToolbarItem;
    pub const methods = .{
        .{ "beginSearchInteraction", void, .{} },
        .{ "endSearchInteraction", void, .{} },
        .{ "preferredWidthForSearchField", objc.CGFloat, .{} },
        .{ "resignsFirstResponderWithCancel", objc.BOOL, .{} },
        .{ "searchField", NSSearchField, .{} },
        .{ "setPreferredWidthForSearchField:", void, .{objc.CGFloat} },
        .{ "setResignsFirstResponderWithCancel:", void, .{objc.BOOL} },
        .{ "setSearchField:", void, .{NSSearchField} },
    };

    pub fn send(self: NSSearchToolbarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSSecureTextFieldCell = struct {
    obj: Object,

    pub const Super = NSTextFieldCell;
    pub const methods = .{
        .{ "echosBullets", objc.BOOL, .{} },
        .{ "setEchosBullets:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSSecureTextFieldCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSSegmentedCell = struct {
    obj: Object,

    pub const Super = NSActionCell;
    pub const methods = .{
        .{ "drawSegment:inFrame:withView:", void, .{ objc.NSInteger, NSRect, NSView } },
        .{ "imageForSegment:", ?NSImage, .{objc.NSInteger} },
        .{ "imageScalingForSegment:", NSImageScaling, .{objc.NSInteger} },
        .{ "interiorBackgroundStyleForSegment:", NSView.BackgroundStyle, .{objc.NSInteger} },
        .{ "isEnabledForSegment:", objc.BOOL, .{objc.NSInteger} },
        .{ "isSelectedForSegment:", objc.BOOL, .{objc.NSInteger} },
        .{ "labelForSegment:", ?objc.NSString, .{objc.NSInteger} },
        .{ "makeNextSegmentKey", void, .{} },
        .{ "makePreviousSegmentKey", void, .{} },
        .{ "menuForSegment:", ?NSMenu, .{objc.NSInteger} },
        .{ "segmentCount", objc.NSInteger, .{} },
        .{ "segmentStyle", NSSegmentedControl.Style, .{} },
        .{ "selectSegmentWithTag:", objc.BOOL, .{objc.NSInteger} },
        .{ "selectedSegment", objc.NSInteger, .{} },
        .{ "setEnabled:forSegment:", void, .{ objc.BOOL, objc.NSInteger } },
        .{ "setImage:forSegment:", void, .{ ?NSImage, objc.NSInteger } },
        .{ "setImageScaling:forSegment:", void, .{ NSImageScaling, objc.NSInteger } },
        .{ "setLabel:forSegment:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "setMenu:forSegment:", void, .{ ?NSMenu, objc.NSInteger } },
        .{ "setSegmentCount:", void, .{objc.NSInteger} },
        .{ "setSegmentStyle:", void, .{NSSegmentedControl.Style} },
        .{ "setSelected:forSegment:", void, .{ objc.BOOL, objc.NSInteger } },
        .{ "setSelectedSegment:", void, .{objc.NSInteger} },
        .{ "setTag:forSegment:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "setToolTip:forSegment:", void, .{ ?objc.NSString, objc.NSInteger } },
        .{ "setTrackingMode:", void, .{NSSegmentedControl.SwitchTracking} },
        .{ "setWidth:forSegment:", void, .{ objc.CGFloat, objc.NSInteger } },
        .{ "tagForSegment:", objc.NSInteger, .{objc.NSInteger} },
        .{ "toolTipForSegment:", ?objc.NSString, .{objc.NSInteger} },
        .{ "trackingMode", NSSegmentedControl.SwitchTracking, .{} },
        .{ "widthForSegment:", objc.CGFloat, .{objc.NSInteger} },
    };

    pub fn send(self: NSSegmentedCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSSegmentedControl = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "activeCompressionOptions", NSUserInterfaceCompressionOptions, .{} },
        .{ "alignmentForSegment:", NSTextAlignment, .{objc.NSInteger} },
        .{ "borderShape", NSControl.BorderShape, .{} },
        .{ "compressWithPrioritizedCompressionOptions:", void, .{void} },
        .{ "doubleValueForSelectedSegment", f64, .{} },
        .{ "imageForSegment:", ?NSImage, .{objc.NSInteger} },
        .{ "imageScalingForSegment:", NSImageScaling, .{objc.NSInteger} },
        .{ "indexOfSelectedItem", objc.NSInteger, .{} },
        .{ "isEnabledForSegment:", objc.BOOL, .{objc.NSInteger} },
        .{ "isSelectedForSegment:", objc.BOOL, .{objc.NSInteger} },
        .{ "labelForSegment:", ?objc.NSString, .{objc.NSInteger} },
        .{ "menuForSegment:", ?NSMenu, .{objc.NSInteger} },
        .{ "minimumSizeWithPrioritizedCompressionOptions:", NSSize, .{void} },
        .{ "segmentCount", objc.NSInteger, .{} },
        .{ "segmentDistribution", NSSegmentedControl.Distribution, .{} },
        .{ "segmentStyle", NSSegmentedControl.Style, .{} },
        .{ "selectSegmentWithTag:", objc.BOOL, .{objc.NSInteger} },
        .{ "selectedSegment", objc.NSInteger, .{} },
        .{ "selectedSegmentBezelColor", ?NSColor, .{} },
        .{ "setAlignment:forSegment:", void, .{ NSTextAlignment, objc.NSInteger } },
        .{ "setBorderShape:", void, .{NSControl.BorderShape} },
        .{ "setEnabled:forSegment:", void, .{ objc.BOOL, objc.NSInteger } },
        .{ "setImage:forSegment:", void, .{ ?NSImage, objc.NSInteger } },
        .{ "setImageScaling:forSegment:", void, .{ NSImageScaling, objc.NSInteger } },
        .{ "setLabel:forSegment:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "setMenu:forSegment:", void, .{ ?NSMenu, objc.NSInteger } },
        .{ "setSegmentCount:", void, .{objc.NSInteger} },
        .{ "setSegmentDistribution:", void, .{NSSegmentedControl.Distribution} },
        .{ "setSegmentStyle:", void, .{NSSegmentedControl.Style} },
        .{ "setSelected:forSegment:", void, .{ objc.BOOL, objc.NSInteger } },
        .{ "setSelectedSegment:", void, .{objc.NSInteger} },
        .{ "setSelectedSegmentBezelColor:", void, .{?NSColor} },
        .{ "setShowsMenuIndicator:forSegment:", void, .{ objc.BOOL, objc.NSInteger } },
        .{ "setSpringLoaded:", void, .{objc.BOOL} },
        .{ "setTag:forSegment:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "setToolTip:forSegment:", void, .{ ?objc.NSString, objc.NSInteger } },
        .{ "setTrackingMode:", void, .{NSSegmentedControl.SwitchTracking} },
        .{ "setWidth:forSegment:", void, .{ objc.CGFloat, objc.NSInteger } },
        .{ "showsMenuIndicatorForSegment:", objc.BOOL, .{objc.NSInteger} },
        .{ "springLoaded", objc.BOOL, .{} },
        .{ "tagForSegment:", objc.NSInteger, .{objc.NSInteger} },
        .{ "toolTipForSegment:", ?objc.NSString, .{objc.NSInteger} },
        .{ "trackingMode", NSSegmentedControl.SwitchTracking, .{} },
        .{ "widthForSegment:", objc.CGFloat, .{objc.NSInteger} },
    };

    pub fn send(self: NSSegmentedControl, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "segmentedControlWithImages:trackingMode:target:action:", Object, .{ void, NSSegmentedControl.SwitchTracking, ?Any, Selector } },
        .{ "segmentedControlWithLabels:trackingMode:target:action:", Object, .{ void, NSSegmentedControl.SwitchTracking, ?Any, Selector } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSegmentedControl", class_methods, selector, args);
    }

    pub const Distribution = enum(i64) {
        fit = 0,
        fill = 1,
        fillEqually = 2,
        fillProportionally = 3,
    };
    pub const Style = enum(i64) {
        automatic = 0,
        rounded = 1,
        texturedRounded = 2,
        roundRect = 3,
        texturedSquare = 4,
        capsule = 5,
        smallSquare = 6,
        separated = 8,
    };
    pub const SwitchTracking = enum(i64) {
        selectOne = 0,
        selectAny = 1,
        momentary = 2,
        momentaryAccelerator = 3,
    };

    pub fn create(frame: NSRect) NSSegmentedControl {
        const seg = objc.msgSend(Object, objc.msgSendClass(Object, "NSSegmentedControl", "alloc", .{}), "initWithFrame:", .{frame});
        objc.msgSend(void, seg, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = seg };
    }
};

pub const NSShadow = struct {
    obj: Object,

    pub const methods = .{
        .{ "set", void, .{} },
        .{ "setShadowBlurRadius:", void, .{objc.CGFloat} },
        .{ "setShadowColor:", void, .{?NSColor} },
        .{ "setShadowOffset:", void, .{NSSize} },
        .{ "shadowBlurRadius", objc.CGFloat, .{} },
        .{ "shadowColor", ?NSColor, .{} },
        .{ "shadowOffset", NSSize, .{} },
    };

    pub fn send(self: NSShadow, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSShadow", class_methods, selector, args);
    }
};

pub const NSSharingCollaborationModeRestriction = struct {
    obj: Object,

    pub const methods = .{
        .{ "alertDismissButtonTitle", ?objc.NSString, .{} },
        .{ "alertMessage", ?objc.NSString, .{} },
        .{ "alertRecoverySuggestionButtonLaunchURL", ?Foundation.NSURL, .{} },
        .{ "alertRecoverySuggestionButtonTitle", ?objc.NSString, .{} },
        .{ "alertTitle", ?objc.NSString, .{} },
        .{ "disabledMode", NSSharingCollaborationMode, .{} },
    };

    pub fn send(self: NSSharingCollaborationModeRestriction, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithDisabledMode:", Object, .{NSSharingCollaborationMode} },
        .{ "initWithDisabledMode:alertTitle:alertMessage:", Object, .{ NSSharingCollaborationMode, objc.NSString, objc.NSString } },
        .{ "initWithDisabledMode:alertTitle:alertMessage:alertDismissButtonTitle:", Object, .{ NSSharingCollaborationMode, objc.NSString, objc.NSString, objc.NSString } },
        .{ "initWithDisabledMode:alertTitle:alertMessage:alertDismissButtonTitle:alertRecoverySuggestionButtonTitle:alertRecoverySuggestionButtonLaunchURL:", Object, .{ NSSharingCollaborationMode, objc.NSString, objc.NSString, objc.NSString, objc.NSString, Foundation.NSURL } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSharingCollaborationModeRestriction", class_methods, selector, args);
    }
};

pub const NSSharingService = struct {
    obj: Object,

    pub const methods = .{
        .{ "accountName", ?objc.NSString, .{} },
        .{ "alternateImage", ?NSImage, .{} },
        .{ "attachmentFileURLs", ?*anyopaque, .{} },
        .{ "canPerformWithItems:", objc.BOOL, .{void} },
        .{ "delegate", ?NSSharingServiceDelegate, .{} },
        .{ "image", NSImage, .{} },
        .{ "menuItemTitle", objc.NSString, .{} },
        .{ "messageBody", ?objc.NSString, .{} },
        .{ "performWithItems:", void, .{void} },
        .{ "permanentLink", ?Foundation.NSURL, .{} },
        .{ "recipients", ?*anyopaque, .{} },
        .{ "setDelegate:", void, .{?NSSharingServiceDelegate} },
        .{ "setMenuItemTitle:", void, .{objc.NSString} },
        .{ "setRecipients:", void, .{?*anyopaque} },
        .{ "setSubject:", void, .{?objc.NSString} },
        .{ "subject", ?objc.NSString, .{} },
        .{ "title", objc.NSString, .{} },
    };

    pub fn send(self: NSSharingService, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithTitle:image:alternateImage:handler:", Object, .{ objc.NSString, NSImage, ?NSImage, void } },
        .{ "sharingServiceNamed:", Object, .{objc.NSString} },
        .{ "sharingServicesForItems:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSharingService", class_methods, selector, args);
    }

    pub const SharingContentScope = enum(i64) {
        item = 0,
        partial = 1,
        full = 2,
    };
};

pub const NSSharingServicePicker = struct {
    obj: Object,

    pub const methods = .{
        .{ "close", void, .{} },
        .{ "delegate", ?NSSharingServicePickerDelegate, .{} },
        .{ "setDelegate:", void, .{?NSSharingServicePickerDelegate} },
        .{ "showRelativeToRect:ofView:preferredEdge:", void, .{ NSRect, NSView, Foundation.NSRectEdge } },
        .{ "standardShareMenuItem", NSMenuItem, .{} },
    };

    pub fn send(self: NSSharingServicePicker, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithItems:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSharingServicePicker", class_methods, selector, args);
    }
};

pub const NSSharingServicePickerToolbarItem = struct {
    obj: Object,

    pub const Super = NSToolbarItem;
    pub const methods = .{
        .{ "delegate", ?NSSharingServicePickerToolbarItemDelegate, .{} },
        .{ "setDelegate:", void, .{?NSSharingServicePickerToolbarItemDelegate} },
    };

    pub fn send(self: NSSharingServicePickerToolbarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSSharingServicePickerTouchBarItem = struct {
    obj: Object,

    pub const Super = NSTouchBarItem;
    pub const methods = .{
        .{ "buttonImage", ?NSImage, .{} },
        .{ "buttonTitle", objc.NSString, .{} },
        .{ "delegate", ?NSSharingServicePickerTouchBarItemDelegate, .{} },
        .{ "enabled", objc.BOOL, .{} },
        .{ "setButtonImage:", void, .{?NSImage} },
        .{ "setButtonTitle:", void, .{objc.NSString} },
        .{ "setDelegate:", void, .{?NSSharingServicePickerTouchBarItemDelegate} },
        .{ "setEnabled:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSSharingServicePickerTouchBarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSSlider = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "acceptsFirstMouse:", objc.BOOL, .{?NSEvent} },
        .{ "allowsTickMarkValuesOnly", objc.BOOL, .{} },
        .{ "altIncrementValue", f64, .{} },
        .{ "closestTickMarkValueToValue:", f64, .{f64} },
        .{ "indexOfTickMarkAtPoint:", objc.NSInteger, .{NSPoint} },
        .{ "knobThickness", objc.CGFloat, .{} },
        .{ "maxValue", f64, .{} },
        .{ "minValue", f64, .{} },
        .{ "neutralValue", f64, .{} },
        .{ "numberOfTickMarks", objc.NSInteger, .{} },
        .{ "rectOfTickMarkAtIndex:", NSRect, .{objc.NSInteger} },
        .{ "setAllowsTickMarkValuesOnly:", void, .{objc.BOOL} },
        .{ "setAltIncrementValue:", void, .{f64} },
        .{ "setMaxValue:", void, .{f64} },
        .{ "setMinValue:", void, .{f64} },
        .{ "setNeutralValue:", void, .{f64} },
        .{ "setNumberOfTickMarks:", void, .{objc.NSInteger} },
        .{ "setSliderType:", void, .{NSSlider.SliderType} },
        .{ "setTickMarkPosition:", void, .{NSSlider.TickMarkPosition} },
        .{ "setTintProminence:", void, .{NSTintProminence} },
        .{ "setTrackFillColor:", void, .{?NSColor} },
        .{ "setVertical:", void, .{objc.BOOL} },
        .{ "sliderType", NSSlider.SliderType, .{} },
        .{ "tickMarkPosition", NSSlider.TickMarkPosition, .{} },
        .{ "tickMarkValueAtIndex:", f64, .{objc.NSInteger} },
        .{ "tintProminence", NSTintProminence, .{} },
        .{ "trackFillColor", ?NSColor, .{} },
        .{ "vertical", objc.BOOL, .{} },
    };

    pub fn send(self: NSSlider, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sliderWithTarget:action:", Object, .{ ?Any, Selector } },
        .{ "sliderWithValue:minValue:maxValue:target:action:", Object, .{ f64, f64, f64, ?Any, Selector } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSlider", class_methods, selector, args);
    }

    pub const SliderType = enum(i64) {
        linear = 0,
        circular = 1,
    };
    pub const TickMarkPosition = enum(i64) {
        below = 0,
        above = 1,
    };
};

pub const NSSliderAccessory = struct {
    obj: Object,

    pub const methods = .{
        .{ "behavior", NSSliderAccessoryBehavior, .{} },
        .{ "enabled", objc.BOOL, .{} },
        .{ "setBehavior:", void, .{NSSliderAccessoryBehavior} },
        .{ "setEnabled:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSSliderAccessory, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "accessoryWithImage:", Object, .{NSImage} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSliderAccessory", class_methods, selector, args);
    }
};

pub const NSSliderAccessoryBehavior = struct {
    obj: Object,

    pub const methods = .{
        .{ "handleAction:", void, .{NSSliderAccessory} },
    };

    pub fn send(self: NSSliderAccessoryBehavior, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "automaticBehavior", NSSliderAccessoryBehavior, .{} },
        .{ "behaviorWithHandler:", Object, .{void} },
        .{ "behaviorWithTarget:action:", Object, .{ ?Any, Selector } },
        .{ "setValueResetBehavior:", void, .{NSSliderAccessoryBehavior} },
        .{ "valueResetBehavior", NSSliderAccessoryBehavior, .{} },
        .{ "valueStepBehavior", NSSliderAccessoryBehavior, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSliderAccessoryBehavior", class_methods, selector, args);
    }
};

pub const NSSliderCell = struct {
    obj: Object,

    pub const Super = NSActionCell;
    pub const methods = .{
        .{ "allowsTickMarkValuesOnly", objc.BOOL, .{} },
        .{ "altIncrementValue", f64, .{} },
        .{ "barRectFlipped:", NSRect, .{objc.BOOL} },
        .{ "closestTickMarkValueToValue:", f64, .{f64} },
        .{ "drawBarInside:flipped:", void, .{ NSRect, objc.BOOL } },
        .{ "drawKnob", void, .{} },
        .{ "drawKnob:", void, .{NSRect} },
        .{ "drawTickMarks", void, .{} },
        .{ "indexOfTickMarkAtPoint:", objc.NSInteger, .{NSPoint} },
        .{ "knobRectFlipped:", NSRect, .{objc.BOOL} },
        .{ "knobThickness", objc.CGFloat, .{} },
        .{ "maxValue", f64, .{} },
        .{ "minValue", f64, .{} },
        .{ "numberOfTickMarks", objc.NSInteger, .{} },
        .{ "rectOfTickMarkAtIndex:", NSRect, .{objc.NSInteger} },
        .{ "setAllowsTickMarkValuesOnly:", void, .{objc.BOOL} },
        .{ "setAltIncrementValue:", void, .{f64} },
        .{ "setMaxValue:", void, .{f64} },
        .{ "setMinValue:", void, .{f64} },
        .{ "setNumberOfTickMarks:", void, .{objc.NSInteger} },
        .{ "setSliderType:", void, .{NSSlider.SliderType} },
        .{ "setTickMarkPosition:", void, .{NSSlider.TickMarkPosition} },
        .{ "setVertical:", void, .{objc.BOOL} },
        .{ "sliderType", NSSlider.SliderType, .{} },
        .{ "tickMarkPosition", NSSlider.TickMarkPosition, .{} },
        .{ "tickMarkValueAtIndex:", f64, .{objc.NSInteger} },
        .{ "trackRect", NSRect, .{} },
        .{ "vertical", objc.BOOL, .{} },
    };

    pub fn send(self: NSSliderCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "prefersTrackingUntilMouseUp", objc.BOOL, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSliderCell", class_methods, selector, args);
    }
};

pub const NSSliderTouchBarItem = struct {
    obj: Object,

    pub const Super = NSTouchBarItem;
    pub const methods = .{
        .{ "action", Selector, .{} },
        .{ "customizationLabel", objc.NSString, .{} },
        .{ "doubleValue", f64, .{} },
        .{ "label", ?objc.NSString, .{} },
        .{ "maximumSliderWidth", objc.CGFloat, .{} },
        .{ "maximumValueAccessory", ?NSSliderAccessory, .{} },
        .{ "minimumSliderWidth", objc.CGFloat, .{} },
        .{ "minimumValueAccessory", ?NSSliderAccessory, .{} },
        .{ "setAction:", void, .{Selector} },
        .{ "setCustomizationLabel:", void, .{objc.NSString} },
        .{ "setDoubleValue:", void, .{f64} },
        .{ "setLabel:", void, .{?objc.NSString} },
        .{ "setMaximumSliderWidth:", void, .{objc.CGFloat} },
        .{ "setMaximumValueAccessory:", void, .{?NSSliderAccessory} },
        .{ "setMinimumSliderWidth:", void, .{objc.CGFloat} },
        .{ "setMinimumValueAccessory:", void, .{?NSSliderAccessory} },
        .{ "setSlider:", void, .{NSSlider} },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "setValueAccessoryWidth:", void, .{objc.CGFloat} },
        .{ "slider", NSSlider, .{} },
        .{ "target", ?AnyObject, .{} },
        .{ "valueAccessoryWidth", objc.CGFloat, .{} },
        .{ "view", NSUserInterfaceCompression, .{} },
    };

    pub fn send(self: NSSliderTouchBarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSSound = struct {
    obj: Object,

    pub const methods = .{
        .{ "currentTime", TimeInterval, .{} },
        .{ "delegate", ?NSSoundDelegate, .{} },
        .{ "duration", TimeInterval, .{} },
        .{ "loops", objc.BOOL, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "pause", objc.BOOL, .{} },
        .{ "play", objc.BOOL, .{} },
        .{ "playbackDeviceIdentifier", objc.NSString, .{} },
        .{ "playing", objc.BOOL, .{} },
        .{ "resume", objc.BOOL, .{} },
        .{ "setCurrentTime:", void, .{TimeInterval} },
        .{ "setDelegate:", void, .{?NSSoundDelegate} },
        .{ "setLoops:", void, .{objc.BOOL} },
        .{ "setName:", objc.BOOL, .{objc.NSString} },
        .{ "setPlaybackDeviceIdentifier:", void, .{objc.NSString} },
        .{ "setVolume:", void, .{f32} },
        .{ "stop", objc.BOOL, .{} },
        .{ "volume", f32, .{} },
        .{ "writeToPasteboard:", void, .{NSPasteboard} },
    };

    pub fn send(self: NSSound, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "canInitWithPasteboard:", objc.BOOL, .{NSPasteboard} },
        .{ "initWithContentsOfFile:byReference:", Object, .{ objc.NSString, objc.BOOL } },
        .{ "initWithContentsOfURL:byReference:", Object, .{ Foundation.NSURL, objc.BOOL } },
        .{ "initWithData:", Object, .{Foundation.NSData} },
        .{ "initWithPasteboard:", Object, .{NSPasteboard} },
        .{ "soundNamed:", Object, .{objc.NSString} },
        .{ "soundUnfilteredTypes", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSound", class_methods, selector, args);
    }
};

pub const NSSpeechRecognizer = struct {
    obj: Object,

    pub const methods = .{
        .{ "blocksOtherRecognizers", objc.BOOL, .{} },
        .{ "commands", ?*anyopaque, .{} },
        .{ "delegate", ?NSSpeechRecognizerDelegate, .{} },
        .{ "displayedCommandsTitle", ?objc.NSString, .{} },
        .{ "listensInForegroundOnly", objc.BOOL, .{} },
        .{ "setBlocksOtherRecognizers:", void, .{objc.BOOL} },
        .{ "setCommands:", void, .{?*anyopaque} },
        .{ "setDelegate:", void, .{?NSSpeechRecognizerDelegate} },
        .{ "setDisplayedCommandsTitle:", void, .{?objc.NSString} },
        .{ "setListensInForegroundOnly:", void, .{objc.BOOL} },
        .{ "startListening", void, .{} },
        .{ "stopListening", void, .{} },
    };

    pub fn send(self: NSSpeechRecognizer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSpeechRecognizer", class_methods, selector, args);
    }
};

pub const NSSpeechSynthesizer = struct {
    obj: Object,

    pub const methods = .{
        .{ "addSpeechDictionary:", void, .{Any} },
        .{ "continueSpeaking", void, .{} },
        .{ "delegate", ?NSSpeechSynthesizerDelegate, .{} },
        .{ "objectForProperty:error:", Any, .{objc.NSString} },
        .{ "pauseSpeakingAtBoundary:", void, .{NSSpeechSynthesizer.Boundary} },
        .{ "phonemesFromText:", objc.NSString, .{objc.NSString} },
        .{ "rate", f32, .{} },
        .{ "setDelegate:", void, .{?NSSpeechSynthesizerDelegate} },
        .{ "setObject:forProperty:error:", void, .{ ?Any, objc.NSString } },
        .{ "setRate:", void, .{f32} },
        .{ "setUsesFeedbackWindow:", void, .{objc.BOOL} },
        .{ "setVoice:", objc.BOOL, .{objc.NSString} },
        .{ "setVolume:", void, .{f32} },
        .{ "speaking", objc.BOOL, .{} },
        .{ "startSpeakingString:", objc.BOOL, .{objc.NSString} },
        .{ "startSpeakingString:toURL:", objc.BOOL, .{ objc.NSString, Foundation.NSURL } },
        .{ "stopSpeaking", void, .{} },
        .{ "stopSpeakingAtBoundary:", void, .{NSSpeechSynthesizer.Boundary} },
        .{ "usesFeedbackWindow", objc.BOOL, .{} },
        .{ "voice", objc.NSString, .{} },
        .{ "volume", f32, .{} },
    };

    pub fn send(self: NSSpeechSynthesizer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "anyApplicationSpeaking", objc.BOOL, .{} },
        .{ "attributesForVoice:", Object, .{objc.NSString} },
        .{ "availableVoices", Object, .{} },
        .{ "defaultVoice", objc.NSString, .{} },
        .{ "initWithVoice:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSpeechSynthesizer", class_methods, selector, args);
    }

    pub const Boundary = enum(i64) {
        immediateBoundary = 0,
        wordBoundary = 1,
        sentenceBoundary = 2,
    };
};

pub const NSSpellChecker = struct {
    obj: Object,

    pub const methods = .{
        .{ "accessoryView", ?NSView, .{} },
        .{ "automaticallyIdentifiesLanguages", objc.BOOL, .{} },
        .{ "availableLanguages", Object, .{} },
        .{ "checkGrammarOfString:startingAt:language:wrap:inSpellDocumentWithTag:details:", NSRange, .{ objc.NSString, objc.NSInteger, ?objc.NSString, objc.BOOL, objc.NSInteger, ?Foundation.NSArray } },
        .{ "checkSpellingOfString:startingAt:", NSRange, .{ objc.NSString, objc.NSInteger } },
        .{ "checkSpellingOfString:startingAt:language:wrap:inSpellDocumentWithTag:wordCount:", NSRange, .{ objc.NSString, objc.NSInteger, ?objc.NSString, objc.BOOL, objc.NSInteger, objc.NSInteger } },
        .{ "checkString:range:types:options:inSpellDocumentWithTag:orthography:wordCount:", Object, .{ objc.NSString, NSRange, u64, ?Any, objc.NSInteger, ?Foundation.NSOrthography, objc.NSInteger } },
        .{ "closeSpellDocumentWithTag:", void, .{objc.NSInteger} },
        .{ "completionsForPartialWordRange:inString:language:inSpellDocumentWithTag:", ?*anyopaque, .{ NSRange, objc.NSString, ?objc.NSString, objc.NSInteger } },
        .{ "correctionForWordRange:inString:language:inSpellDocumentWithTag:", ?objc.NSString, .{ NSRange, objc.NSString, objc.NSString, objc.NSInteger } },
        .{ "countWordsInString:language:", objc.NSInteger, .{ objc.NSString, ?objc.NSString } },
        .{ "deletesAutospaceBetweenString:andString:language:", objc.BOOL, .{ objc.NSString, objc.NSString, ?objc.NSString } },
        .{ "dismissCorrectionIndicatorForView:", void, .{NSView} },
        .{ "guessesForWordRange:inString:language:inSpellDocumentWithTag:", ?*anyopaque, .{ NSRange, objc.NSString, ?objc.NSString, objc.NSInteger } },
        .{ "hasLearnedWord:", objc.BOOL, .{objc.NSString} },
        .{ "ignoreWord:inSpellDocumentWithTag:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "ignoredWordsInSpellDocumentWithTag:", ?*anyopaque, .{objc.NSInteger} },
        .{ "language", objc.NSString, .{} },
        .{ "languageForWordRange:inString:orthography:", ?objc.NSString, .{ NSRange, objc.NSString, ?Foundation.NSOrthography } },
        .{ "learnWord:", void, .{objc.NSString} },
        .{ "menuForResult:string:options:atLocation:inView:", ?NSMenu, .{ Foundation.NSTextCheckingResult, objc.NSString, ?Any, NSPoint, NSView } },
        .{ "preventsAutocorrectionBeforeString:language:", objc.BOOL, .{ objc.NSString, ?objc.NSString } },
        .{ "recordResponse:toCorrection:forWord:language:inSpellDocumentWithTag:", void, .{ NSSpellChecker.CorrectionResponse, objc.NSString, objc.NSString, ?objc.NSString, objc.NSInteger } },
        .{ "requestCandidatesForSelectedRange:inString:types:options:inSpellDocumentWithTag:completionHandler:", objc.NSInteger, .{ NSRange, objc.NSString, u64, ?Any, objc.NSInteger, void } },
        .{ "requestCheckingOfString:range:types:options:inSpellDocumentWithTag:completionHandler:", objc.NSInteger, .{ objc.NSString, NSRange, u64, ?Any, objc.NSInteger, void } },
        .{ "setAccessoryView:", void, .{?NSView} },
        .{ "setAutomaticallyIdentifiesLanguages:", void, .{objc.BOOL} },
        .{ "setIgnoredWords:inSpellDocumentWithTag:", void, .{ void, objc.NSInteger } },
        .{ "setLanguage:", objc.BOOL, .{objc.NSString} },
        .{ "setSubstitutionsPanelAccessoryViewController:", void, .{?NSViewController} },
        .{ "setWordFieldStringValue:", void, .{objc.NSString} },
        .{ "showCorrectionIndicatorOfType:primaryString:alternativeStrings:forStringInRect:view:completionHandler:", void, .{ NSSpellChecker.CorrectionIndicatorType, objc.NSString, void, NSRect, NSView, void } },
        .{ "showInlinePredictionForCandidates:client:", void, .{ void, void } },
        .{ "spellingPanel", NSPanel, .{} },
        .{ "substitutionsPanel", NSPanel, .{} },
        .{ "substitutionsPanelAccessoryViewController", ?NSViewController, .{} },
        .{ "unlearnWord:", void, .{objc.NSString} },
        .{ "updatePanels", void, .{} },
        .{ "updateSpellingPanelWithGrammarString:detail:", void, .{ objc.NSString, Any } },
        .{ "updateSpellingPanelWithMisspelledWord:", void, .{objc.NSString} },
        .{ "userPreferredLanguages", Object, .{} },
        .{ "userQuotesArrayForLanguage:", Object, .{objc.NSString} },
        .{ "userReplacementsDictionary", Object, .{} },
    };

    pub fn send(self: NSSpellChecker, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "automaticCapitalizationEnabled", objc.BOOL, .{} },
        .{ "automaticDashSubstitutionEnabled", objc.BOOL, .{} },
        .{ "automaticInlinePredictionEnabled", objc.BOOL, .{} },
        .{ "automaticPeriodSubstitutionEnabled", objc.BOOL, .{} },
        .{ "automaticQuoteSubstitutionEnabled", objc.BOOL, .{} },
        .{ "automaticSpellingCorrectionEnabled", objc.BOOL, .{} },
        .{ "automaticTextCompletionEnabled", objc.BOOL, .{} },
        .{ "automaticTextReplacementEnabled", objc.BOOL, .{} },
        .{ "sharedSpellChecker", NSSpellChecker, .{} },
        .{ "sharedSpellCheckerExists", objc.BOOL, .{} },
        .{ "uniqueSpellDocumentTag", objc.NSInteger, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSpellChecker", class_methods, selector, args);
    }

    pub const CorrectionIndicatorType = enum(i64) {
        default = 0,
        reversion = 1,
        guesses = 2,
    };
    pub const CorrectionResponse = enum(i64) {
        none = 0,
        accepted = 1,
        rejected = 2,
        ignored = 3,
        edited = 4,
        reverted = 5,
    };
};

pub const NSSplitView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "addArrangedSubview:", void, .{NSView} },
        .{ "adjustSubviews", void, .{} },
        .{ "arrangedSubviews", Object, .{} },
        .{ "arrangesAllSubviews", objc.BOOL, .{} },
        .{ "autosaveName", objc.NSString, .{} },
        .{ "delegate", ?NSSplitViewDelegate, .{} },
        .{ "dividerColor", NSColor, .{} },
        .{ "dividerStyle", NSSplitView.DividerStyle, .{} },
        .{ "dividerThickness", objc.CGFloat, .{} },
        .{ "drawDividerInRect:", void, .{NSRect} },
        .{ "holdingPriorityForSubviewAtIndex:", f32, .{objc.NSInteger} },
        .{ "insertArrangedSubview:atIndex:", void, .{ NSView, objc.NSInteger } },
        .{ "isSubviewCollapsed:", objc.BOOL, .{NSView} },
        .{ "maxPossiblePositionOfDividerAtIndex:", objc.CGFloat, .{objc.NSInteger} },
        .{ "minPossiblePositionOfDividerAtIndex:", objc.CGFloat, .{objc.NSInteger} },
        .{ "removeArrangedSubview:", void, .{NSView} },
        .{ "setArrangesAllSubviews:", void, .{objc.BOOL} },
        .{ "setAutosaveName:", void, .{objc.NSString} },
        .{ "setDelegate:", void, .{?NSSplitViewDelegate} },
        .{ "setDividerStyle:", void, .{NSSplitView.DividerStyle} },
        .{ "setHoldingPriority:forSubviewAtIndex:", void, .{ f32, objc.NSInteger } },
        .{ "setPosition:ofDividerAtIndex:", void, .{ objc.CGFloat, objc.NSInteger } },
        .{ "setVertical:", void, .{objc.BOOL} },
        .{ "vertical", objc.BOOL, .{} },
    };

    pub fn send(self: NSSplitView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const DividerStyle = enum(i64) {
        thick = 1,
        thin = 2,
        paneSplitter = 3,
    };
};

pub const NSSplitViewController = struct {
    obj: Object,

    pub const Super = NSViewController;
    pub const methods = .{
        .{ "addSplitViewItem:", void, .{NSSplitViewItem} },
        .{ "insertSplitViewItem:atIndex:", void, .{ NSSplitViewItem, objc.NSInteger } },
        .{ "minimumThicknessForInlineSidebars", objc.CGFloat, .{} },
        .{ "removeSplitViewItem:", void, .{NSSplitViewItem} },
        .{ "setMinimumThicknessForInlineSidebars:", void, .{objc.CGFloat} },
        .{ "setSplitView:", void, .{NSSplitView} },
        .{ "setSplitViewItems:", void, .{Object} },
        .{ "splitView", NSSplitView, .{} },
        .{ "splitView:additionalEffectiveRectOfDividerAtIndex:", NSRect, .{ NSSplitView, objc.NSInteger } },
        .{ "splitView:canCollapseSubview:", objc.BOOL, .{ NSSplitView, NSView } },
        .{ "splitView:effectiveRect:forDrawnRect:ofDividerAtIndex:", NSRect, .{ NSSplitView, NSRect, NSRect, objc.NSInteger } },
        .{ "splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:", objc.BOOL, .{ NSSplitView, NSView, objc.NSInteger } },
        .{ "splitView:shouldHideDividerAtIndex:", objc.BOOL, .{ NSSplitView, objc.NSInteger } },
        .{ "splitViewItemForViewController:", ?NSSplitViewItem, .{NSViewController} },
        .{ "splitViewItems", Object, .{} },
        .{ "toggleInspector:", void, .{?Any} },
        .{ "toggleSidebar:", void, .{?Any} },
        .{ "validateUserInterfaceItem:", objc.BOOL, .{void} },
        .{ "viewDidLoad", void, .{} },
    };

    pub fn send(self: NSSplitViewController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSSplitViewItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "addBottomAlignedAccessoryViewController:", void, .{NSSplitViewItemAccessoryViewController} },
        .{ "addTopAlignedAccessoryViewController:", void, .{NSSplitViewItemAccessoryViewController} },
        .{ "allowsFullHeightLayout", objc.BOOL, .{} },
        .{ "automaticMaximumThickness", objc.CGFloat, .{} },
        .{ "automaticallyAdjustsSafeAreaInsets", objc.BOOL, .{} },
        .{ "behavior", NSSplitViewItem.Behavior, .{} },
        .{ "bottomAlignedAccessoryViewControllers", Object, .{} },
        .{ "canCollapse", objc.BOOL, .{} },
        .{ "canCollapseFromWindowResize", objc.BOOL, .{} },
        .{ "collapseBehavior", NSSplitViewItem.CollapseBehavior, .{} },
        .{ "collapsed", objc.BOOL, .{} },
        .{ "holdingPriority", f32, .{} },
        .{ "insertBottomAlignedAccessoryViewController:atIndex:", void, .{ NSSplitViewItemAccessoryViewController, objc.NSInteger } },
        .{ "insertTopAlignedAccessoryViewController:atIndex:", void, .{ NSSplitViewItemAccessoryViewController, objc.NSInteger } },
        .{ "maximumThickness", objc.CGFloat, .{} },
        .{ "minimumThickness", objc.CGFloat, .{} },
        .{ "preferredThicknessFraction", objc.CGFloat, .{} },
        .{ "removeBottomAlignedAccessoryViewControllerAtIndex:", void, .{objc.NSInteger} },
        .{ "removeTopAlignedAccessoryViewControllerAtIndex:", void, .{objc.NSInteger} },
        .{ "setAllowsFullHeightLayout:", void, .{objc.BOOL} },
        .{ "setAutomaticMaximumThickness:", void, .{objc.CGFloat} },
        .{ "setAutomaticallyAdjustsSafeAreaInsets:", void, .{objc.BOOL} },
        .{ "setBottomAlignedAccessoryViewControllers:", void, .{Object} },
        .{ "setCanCollapse:", void, .{objc.BOOL} },
        .{ "setCanCollapseFromWindowResize:", void, .{objc.BOOL} },
        .{ "setCollapseBehavior:", void, .{NSSplitViewItem.CollapseBehavior} },
        .{ "setCollapsed:", void, .{objc.BOOL} },
        .{ "setHoldingPriority:", void, .{f32} },
        .{ "setMaximumThickness:", void, .{objc.CGFloat} },
        .{ "setMinimumThickness:", void, .{objc.CGFloat} },
        .{ "setPreferredThicknessFraction:", void, .{objc.CGFloat} },
        .{ "setSpringLoaded:", void, .{objc.BOOL} },
        .{ "setTitlebarSeparatorStyle:", void, .{NSTitlebarSeparatorStyle} },
        .{ "setTopAlignedAccessoryViewControllers:", void, .{Object} },
        .{ "setViewController:", void, .{NSViewController} },
        .{ "springLoaded", objc.BOOL, .{} },
        .{ "titlebarSeparatorStyle", NSTitlebarSeparatorStyle, .{} },
        .{ "topAlignedAccessoryViewControllers", Object, .{} },
        .{ "viewController", NSViewController, .{} },
    };

    pub fn send(self: NSSplitViewItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "contentListWithViewController:", Object, .{NSViewController} },
        .{ "inspectorWithViewController:", Object, .{NSViewController} },
        .{ "sidebarWithViewController:", Object, .{NSViewController} },
        .{ "splitViewItemWithViewController:", Object, .{NSViewController} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSplitViewItem", class_methods, selector, args);
    }

    pub const Behavior = enum(i64) {
        default = 0,
        sidebar = 1,
        contentList = 2,
        inspector = 3,
    };
    pub const CollapseBehavior = enum(i64) {
        default = 0,
        preferResizingSplitViewWithFixedSiblings = 1,
        preferResizingSiblingsWithFixedSplitView = 2,
        useConstraints = 3,
    };
};

pub const NSSplitViewItemAccessoryViewController = struct {
    obj: Object,

    pub const Super = NSViewController;
    pub const methods = .{
        .{ "automaticallyAppliesContentInsets", objc.BOOL, .{} },
        .{ "hidden", objc.BOOL, .{} },
        .{ "preferredScrollEdgeEffectStyle", NSScrollEdgeEffectStyle, .{} },
        .{ "setAutomaticallyAppliesContentInsets:", void, .{objc.BOOL} },
        .{ "setHidden:", void, .{objc.BOOL} },
        .{ "setPreferredScrollEdgeEffectStyle:", void, .{NSScrollEdgeEffectStyle} },
        .{ "viewDidAppear", void, .{} },
        .{ "viewDidDisappear", void, .{} },
        .{ "viewWillAppear", void, .{} },
        .{ "viewWillDisappear", void, .{} },
    };

    pub fn send(self: NSSplitViewItemAccessoryViewController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSStackView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "addArrangedSubview:", void, .{NSView} },
        .{ "addView:inGravity:", void, .{ NSView, NSStackView.Gravity } },
        .{ "alignment", NSLayoutConstraint.Attribute, .{} },
        .{ "arrangedSubviews", Object, .{} },
        .{ "clippingResistancePriorityForOrientation:", f32, .{NSLayoutConstraint.Orientation} },
        .{ "customSpacingAfterView:", objc.CGFloat, .{NSView} },
        .{ "delegate", ?NSStackViewDelegate, .{} },
        .{ "detachedViews", Object, .{} },
        .{ "detachesHiddenViews", objc.BOOL, .{} },
        .{ "distribution", NSStackView.Distribution, .{} },
        .{ "edgeInsets", NSEdgeInsets, .{} },
        .{ "hasEqualSpacing", objc.BOOL, .{} },
        .{ "huggingPriorityForOrientation:", f32, .{NSLayoutConstraint.Orientation} },
        .{ "insertArrangedSubview:atIndex:", void, .{ NSView, objc.NSInteger } },
        .{ "insertView:atIndex:inGravity:", void, .{ NSView, objc.NSInteger, NSStackView.Gravity } },
        .{ "orientation", NSUserInterfaceLayoutOrientation, .{} },
        .{ "removeArrangedSubview:", void, .{NSView} },
        .{ "removeView:", void, .{NSView} },
        .{ "setAlignment:", void, .{NSLayoutConstraint.Attribute} },
        .{ "setClippingResistancePriority:forOrientation:", void, .{ f32, NSLayoutConstraint.Orientation } },
        .{ "setCustomSpacing:afterView:", void, .{ objc.CGFloat, NSView } },
        .{ "setDelegate:", void, .{?NSStackViewDelegate} },
        .{ "setDetachesHiddenViews:", void, .{objc.BOOL} },
        .{ "setDistribution:", void, .{NSStackView.Distribution} },
        .{ "setEdgeInsets:", void, .{NSEdgeInsets} },
        .{ "setHasEqualSpacing:", void, .{objc.BOOL} },
        .{ "setHuggingPriority:forOrientation:", void, .{ f32, NSLayoutConstraint.Orientation } },
        .{ "setOrientation:", void, .{NSUserInterfaceLayoutOrientation} },
        .{ "setSpacing:", void, .{objc.CGFloat} },
        .{ "setViews:inGravity:", void, .{ void, NSStackView.Gravity } },
        .{ "setVisibilityPriority:forView:", void, .{ f32, NSView } },
        .{ "spacing", objc.CGFloat, .{} },
        .{ "views", Object, .{} },
        .{ "viewsInGravity:", Object, .{NSStackView.Gravity} },
        .{ "visibilityPriorityForView:", f32, .{NSView} },
    };

    pub fn send(self: NSStackView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "stackViewWithViews:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSStackView", class_methods, selector, args);
    }

    pub const Distribution = enum(i64) {
        gravityAreas = -1,
        fill = 0,
        fillEqually = 1,
        fillProportionally = 2,
        equalSpacing = 3,
        equalCentering = 4,
    };
    pub const Gravity = enum(i64) {
        top = 1,
        center = 2,
        bottom = 3,
    };

    pub fn create(orientation: NSUserInterfaceLayoutOrientation) NSStackView {
        const v = objc.msgSend(Object, objc.msgSendClass(Object, "NSStackView", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 0, 0)});
        objc.msgSend(void, v, "setOrientation:", .{@intFromEnum(orientation)});
        objc.msgSend(void, v, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = v };
    }
};

pub const NSStatusBar = struct {
    obj: Object,

    pub const methods = .{
        .{ "removeStatusItem:", void, .{NSStatusItem} },
        .{ "statusItemWithLength:", NSStatusItem, .{objc.CGFloat} },
        .{ "thickness", objc.CGFloat, .{} },
        .{ "vertical", objc.BOOL, .{} },
    };

    pub fn send(self: NSStatusBar, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "systemStatusBar", NSStatusBar, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSStatusBar", class_methods, selector, args);
    }
};

pub const NSStatusBarButton = struct {
    obj: Object,

    pub const Super = NSButton;
    pub const methods = .{
        .{ "appearsDisabled", objc.BOOL, .{} },
        .{ "setAppearsDisabled:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSStatusBarButton, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSStatusItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "action", Selector, .{} },
        .{ "alternateImage", ?NSImage, .{} },
        .{ "attributedTitle", ?Foundation.NSAttributedString, .{} },
        .{ "autosaveName", objc.NSString, .{} },
        .{ "behavior", objc.NSInteger, .{} },
        .{ "button", ?NSStatusBarButton, .{} },
        .{ "doubleAction", Selector, .{} },
        .{ "drawStatusBarBackgroundInRect:withHighlight:", void, .{ NSRect, objc.BOOL } },
        .{ "enabled", objc.BOOL, .{} },
        .{ "highlightMode", objc.BOOL, .{} },
        .{ "image", ?NSImage, .{} },
        .{ "length", objc.CGFloat, .{} },
        .{ "menu", ?NSMenu, .{} },
        .{ "popUpStatusItemMenu:", void, .{NSMenu} },
        .{ "sendActionOn:", objc.NSInteger, .{objc.NSInteger} },
        .{ "setAction:", void, .{Selector} },
        .{ "setAlternateImage:", void, .{?NSImage} },
        .{ "setAttributedTitle:", void, .{?Foundation.NSAttributedString} },
        .{ "setAutosaveName:", void, .{objc.NSString} },
        .{ "setBehavior:", void, .{objc.NSInteger} },
        .{ "setDoubleAction:", void, .{Selector} },
        .{ "setEnabled:", void, .{objc.BOOL} },
        .{ "setHighlightMode:", void, .{objc.BOOL} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setLength:", void, .{objc.CGFloat} },
        .{ "setMenu:", void, .{?NSMenu} },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "setTitle:", void, .{?objc.NSString} },
        .{ "setToolTip:", void, .{?objc.NSString} },
        .{ "setView:", void, .{?NSView} },
        .{ "setVisible:", void, .{objc.BOOL} },
        .{ "statusBar", ?NSStatusBar, .{} },
        .{ "target", ?AnyObject, .{} },
        .{ "title", ?objc.NSString, .{} },
        .{ "toolTip", ?objc.NSString, .{} },
        .{ "view", ?NSView, .{} },
        .{ "visible", objc.BOOL, .{} },
    };

    pub fn send(self: NSStatusItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSStepper = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "autorepeat", objc.BOOL, .{} },
        .{ "increment", f64, .{} },
        .{ "maxValue", f64, .{} },
        .{ "minValue", f64, .{} },
        .{ "setAutorepeat:", void, .{objc.BOOL} },
        .{ "setIncrement:", void, .{f64} },
        .{ "setMaxValue:", void, .{f64} },
        .{ "setMinValue:", void, .{f64} },
        .{ "setValueWraps:", void, .{objc.BOOL} },
        .{ "valueWraps", objc.BOOL, .{} },
    };

    pub fn send(self: NSStepper, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSStepperCell = struct {
    obj: Object,

    pub const Super = NSActionCell;
    pub const methods = .{
        .{ "autorepeat", objc.BOOL, .{} },
        .{ "increment", f64, .{} },
        .{ "maxValue", f64, .{} },
        .{ "minValue", f64, .{} },
        .{ "setAutorepeat:", void, .{objc.BOOL} },
        .{ "setIncrement:", void, .{f64} },
        .{ "setMaxValue:", void, .{f64} },
        .{ "setMinValue:", void, .{f64} },
        .{ "setValueWraps:", void, .{objc.BOOL} },
        .{ "valueWraps", objc.BOOL, .{} },
    };

    pub fn send(self: NSStepperCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSStepperTouchBarItem = struct {
    obj: Object,

    pub const Super = NSTouchBarItem;
    pub const methods = .{
        .{ "action", Selector, .{} },
        .{ "customizationLabel", objc.NSString, .{} },
        .{ "increment", f64, .{} },
        .{ "maxValue", f64, .{} },
        .{ "minValue", f64, .{} },
        .{ "setAction:", void, .{Selector} },
        .{ "setCustomizationLabel:", void, .{objc.NSString} },
        .{ "setIncrement:", void, .{f64} },
        .{ "setMaxValue:", void, .{f64} },
        .{ "setMinValue:", void, .{f64} },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "setValue:", void, .{f64} },
        .{ "target", ?AnyObject, .{} },
        .{ "value", f64, .{} },
    };

    pub fn send(self: NSStepperTouchBarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "stepperTouchBarItemWithIdentifier:drawingHandler:", Object, .{ objc.NSString, void } },
        .{ "stepperTouchBarItemWithIdentifier:formatter:", Object, .{ objc.NSString, Foundation.NSFormatter } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSStepperTouchBarItem", class_methods, selector, args);
    }
};

pub const NSStoryboard = struct {
    obj: Object,

    pub const methods = .{
        .{ "instantiateControllerWithIdentifier:", Any, .{objc.NSString} },
        .{ "instantiateInitialController", ?Any, .{} },
    };

    pub fn send(self: NSStoryboard, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "mainStoryboard", ?NSStoryboard, .{} },
        .{ "storyboardWithName:bundle:", Object, .{ objc.NSString, ?Foundation.NSBundle } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSStoryboard", class_methods, selector, args);
    }
};

pub const NSStoryboardSegue = struct {
    obj: Object,

    pub const methods = .{
        .{ "destinationController", Any, .{} },
        .{ "identifier", objc.NSString, .{} },
        .{ "perform", void, .{} },
        .{ "sourceController", Any, .{} },
    };

    pub fn send(self: NSStoryboardSegue, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithIdentifier:source:destination:", Object, .{ objc.NSString, Any, Any } },
        .{ "segueWithIdentifier:source:destination:performHandler:", Object, .{ objc.NSString, Any, Any, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSStoryboardSegue", class_methods, selector, args);
    }
};

pub const NSStringDrawingContext = struct {
    obj: Object,

    pub const methods = .{
        .{ "actualScaleFactor", objc.CGFloat, .{} },
        .{ "minimumScaleFactor", objc.CGFloat, .{} },
        .{ "setMinimumScaleFactor:", void, .{objc.CGFloat} },
        .{ "totalBounds", NSRect, .{} },
    };

    pub fn send(self: NSStringDrawingContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSSwitch = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "setState:", void, .{objc.NSInteger} },
        .{ "state", objc.NSInteger, .{} },
    };

    pub fn send(self: NSSwitch, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSTabView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "addTabViewItem:", void, .{NSTabViewItem} },
        .{ "allowsTruncatedLabels", objc.BOOL, .{} },
        .{ "contentRect", NSRect, .{} },
        .{ "controlSize", NSControl.ControlSize, .{} },
        .{ "controlTint", NSControlTint, .{} },
        .{ "delegate", ?NSTabViewDelegate, .{} },
        .{ "drawsBackground", objc.BOOL, .{} },
        .{ "font", NSFont, .{} },
        .{ "indexOfTabViewItem:", objc.NSInteger, .{NSTabViewItem} },
        .{ "indexOfTabViewItemWithIdentifier:", objc.NSInteger, .{Any} },
        .{ "insertTabViewItem:atIndex:", void, .{ NSTabViewItem, objc.NSInteger } },
        .{ "minimumSize", NSSize, .{} },
        .{ "numberOfTabViewItems", objc.NSInteger, .{} },
        .{ "removeTabViewItem:", void, .{NSTabViewItem} },
        .{ "selectFirstTabViewItem:", void, .{?Any} },
        .{ "selectLastTabViewItem:", void, .{?Any} },
        .{ "selectNextTabViewItem:", void, .{?Any} },
        .{ "selectPreviousTabViewItem:", void, .{?Any} },
        .{ "selectTabViewItem:", void, .{?NSTabViewItem} },
        .{ "selectTabViewItemAtIndex:", void, .{objc.NSInteger} },
        .{ "selectTabViewItemWithIdentifier:", void, .{Any} },
        .{ "selectedTabViewItem", ?NSTabViewItem, .{} },
        .{ "setAllowsTruncatedLabels:", void, .{objc.BOOL} },
        .{ "setControlSize:", void, .{NSControl.ControlSize} },
        .{ "setControlTint:", void, .{NSControlTint} },
        .{ "setDelegate:", void, .{?NSTabViewDelegate} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "setFont:", void, .{NSFont} },
        .{ "setTabPosition:", void, .{NSTabView.TabPosition} },
        .{ "setTabViewBorderType:", void, .{NSTabView.TabViewBorderType} },
        .{ "setTabViewItems:", void, .{Object} },
        .{ "setTabViewType:", void, .{NSTabView.TabType} },
        .{ "tabPosition", NSTabView.TabPosition, .{} },
        .{ "tabViewBorderType", NSTabView.TabViewBorderType, .{} },
        .{ "tabViewItemAtIndex:", NSTabViewItem, .{objc.NSInteger} },
        .{ "tabViewItemAtPoint:", ?NSTabViewItem, .{NSPoint} },
        .{ "tabViewItems", Object, .{} },
        .{ "tabViewType", NSTabView.TabType, .{} },
        .{ "takeSelectedTabViewItemFromSender:", void, .{?Any} },
    };

    pub fn send(self: NSTabView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const TabPosition = enum(i64) {
        none = 0,
        top = 1,
        left = 2,
        bottom = 3,
        right = 4,
    };
    pub const TabType = enum(i64) {
        topTabsBezelBorder = 0,
        leftTabsBezelBorder = 1,
        bottomTabsBezelBorder = 2,
        rightTabsBezelBorder = 3,
        noTabsBezelBorder = 4,
        noTabsLineBorder = 5,
        noTabsNoBorder = 6,
    };
    pub const TabViewBorderType = enum(i64) {
        none = 0,
        line = 1,
        bezel = 2,
    };
};

pub const NSTabViewController = struct {
    obj: Object,

    pub const Super = NSViewController;
    pub const methods = .{
        .{ "addTabViewItem:", void, .{NSTabViewItem} },
        .{ "canPropagateSelectedChildViewControllerTitle", objc.BOOL, .{} },
        .{ "insertTabViewItem:atIndex:", void, .{ NSTabViewItem, objc.NSInteger } },
        .{ "removeTabViewItem:", void, .{NSTabViewItem} },
        .{ "selectedTabViewItemIndex", objc.NSInteger, .{} },
        .{ "setCanPropagateSelectedChildViewControllerTitle:", void, .{objc.BOOL} },
        .{ "setSelectedTabViewItemIndex:", void, .{objc.NSInteger} },
        .{ "setTabStyle:", void, .{NSTabViewController.TabStyle} },
        .{ "setTabView:", void, .{NSTabView} },
        .{ "setTabViewItems:", void, .{Object} },
        .{ "setTransitionOptions:", void, .{objc.NSInteger} },
        .{ "tabStyle", NSTabViewController.TabStyle, .{} },
        .{ "tabView", NSTabView, .{} },
        .{ "tabView:didSelectTabViewItem:", void, .{ NSTabView, ?NSTabViewItem } },
        .{ "tabView:shouldSelectTabViewItem:", objc.BOOL, .{ NSTabView, ?NSTabViewItem } },
        .{ "tabView:willSelectTabViewItem:", void, .{ NSTabView, ?NSTabViewItem } },
        .{ "tabViewItemForViewController:", ?NSTabViewItem, .{NSViewController} },
        .{ "tabViewItems", Object, .{} },
        .{ "toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:", ?NSToolbarItem, .{ NSToolbar, objc.NSString, objc.BOOL } },
        .{ "toolbarAllowedItemIdentifiers:", Object, .{NSToolbar} },
        .{ "toolbarDefaultItemIdentifiers:", Object, .{NSToolbar} },
        .{ "toolbarSelectableItemIdentifiers:", Object, .{NSToolbar} },
        .{ "transitionOptions", objc.NSInteger, .{} },
        .{ "viewDidLoad", void, .{} },
    };

    pub fn send(self: NSTabViewController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const TabStyle = enum(i64) {
        unspecified = -1,
        segmentedControlOnTop = 0,
        segmentedControlOnBottom = 1,
        toolbar = 2,
    };
};

pub const NSTabViewItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "color", NSColor, .{} },
        .{ "drawLabel:inRect:", void, .{ objc.BOOL, NSRect } },
        .{ "identifier", ?Any, .{} },
        .{ "image", ?NSImage, .{} },
        .{ "initialFirstResponder", ?NSView, .{} },
        .{ "label", objc.NSString, .{} },
        .{ "setColor:", void, .{NSColor} },
        .{ "setIdentifier:", void, .{?Any} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setInitialFirstResponder:", void, .{?NSView} },
        .{ "setLabel:", void, .{objc.NSString} },
        .{ "setToolTip:", void, .{?objc.NSString} },
        .{ "setView:", void, .{?NSView} },
        .{ "setViewController:", void, .{?NSViewController} },
        .{ "sizeOfLabel:", NSSize, .{objc.BOOL} },
        .{ "tabState", NSTabViewItem.State, .{} },
        .{ "tabView", ?NSTabView, .{} },
        .{ "toolTip", ?objc.NSString, .{} },
        .{ "view", ?NSView, .{} },
        .{ "viewController", ?NSViewController, .{} },
    };

    pub fn send(self: NSTabViewItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithIdentifier:", Object, .{?Any} },
        .{ "tabViewItemWithViewController:", Object, .{NSViewController} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTabViewItem", class_methods, selector, args);
    }

    pub const State = enum(i64) {
        selectedTab = 0,
        backgroundTab = 1,
        pressedTab = 2,
    };
};

pub const NSTableCellView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "backgroundStyle", NSView.BackgroundStyle, .{} },
        .{ "draggingImageComponents", Object, .{} },
        .{ "imageView", ?NSImageView, .{} },
        .{ "objectValue", ?Any, .{} },
        .{ "rowSizeStyle", NSTableView.RowSizeStyle, .{} },
        .{ "setBackgroundStyle:", void, .{NSView.BackgroundStyle} },
        .{ "setImageView:", void, .{?NSImageView} },
        .{ "setObjectValue:", void, .{?Any} },
        .{ "setRowSizeStyle:", void, .{NSTableView.RowSizeStyle} },
        .{ "setTextField:", void, .{?NSTextField} },
        .{ "textField", ?NSTextField, .{} },
    };

    pub fn send(self: NSTableCellView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSTableColumn = struct {
    obj: Object,

    pub const methods = .{
        .{ "dataCell", Any, .{} },
        .{ "dataCellForRow:", Any, .{objc.NSInteger} },
        .{ "editable", objc.BOOL, .{} },
        .{ "headerCell", NSTableHeaderCell, .{} },
        .{ "headerToolTip", ?objc.NSString, .{} },
        .{ "hidden", objc.BOOL, .{} },
        .{ "identifier", objc.NSString, .{} },
        .{ "maxWidth", objc.CGFloat, .{} },
        .{ "minWidth", objc.CGFloat, .{} },
        .{ "resizingMask", objc.NSInteger, .{} },
        .{ "setDataCell:", void, .{Any} },
        .{ "setEditable:", void, .{objc.BOOL} },
        .{ "setHeaderCell:", void, .{NSTableHeaderCell} },
        .{ "setHeaderToolTip:", void, .{?objc.NSString} },
        .{ "setHidden:", void, .{objc.BOOL} },
        .{ "setIdentifier:", void, .{objc.NSString} },
        .{ "setMaxWidth:", void, .{objc.CGFloat} },
        .{ "setMinWidth:", void, .{objc.CGFloat} },
        .{ "setResizingMask:", void, .{objc.NSInteger} },
        .{ "setSortDescriptorPrototype:", void, .{?Foundation.NSSortDescriptor} },
        .{ "setTableView:", void, .{?NSTableView} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setWidth:", void, .{objc.CGFloat} },
        .{ "sizeToFit", void, .{} },
        .{ "sortDescriptorPrototype", ?Foundation.NSSortDescriptor, .{} },
        .{ "tableView", ?NSTableView, .{} },
        .{ "title", objc.NSString, .{} },
        .{ "width", objc.CGFloat, .{} },
    };

    pub fn send(self: NSTableColumn, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithIdentifier:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTableColumn", class_methods, selector, args);
    }
};

pub const NSTableHeaderCell = struct {
    obj: Object,

    pub const Super = NSTextFieldCell;
    pub const methods = .{
        .{ "drawSortIndicatorWithFrame:inView:ascending:priority:", void, .{ NSRect, NSView, objc.BOOL, objc.NSInteger } },
        .{ "sortIndicatorRectForBounds:", NSRect, .{NSRect} },
    };

    pub fn send(self: NSTableHeaderCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSTableHeaderView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "columnAtPoint:", objc.NSInteger, .{NSPoint} },
        .{ "draggedColumn", objc.NSInteger, .{} },
        .{ "draggedDistance", objc.CGFloat, .{} },
        .{ "headerRectOfColumn:", NSRect, .{objc.NSInteger} },
        .{ "resizedColumn", objc.NSInteger, .{} },
        .{ "setTableView:", void, .{?NSTableView} },
        .{ "tableView", ?NSTableView, .{} },
    };

    pub fn send(self: NSTableHeaderView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSTableRowView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "backgroundColor", NSColor, .{} },
        .{ "draggingDestinationFeedbackStyle", NSTableView.DraggingDestinationFeedbackStyle, .{} },
        .{ "drawBackgroundInRect:", void, .{NSRect} },
        .{ "drawDraggingDestinationFeedbackInRect:", void, .{NSRect} },
        .{ "drawSelectionInRect:", void, .{NSRect} },
        .{ "drawSeparatorInRect:", void, .{NSRect} },
        .{ "emphasized", objc.BOOL, .{} },
        .{ "floating", objc.BOOL, .{} },
        .{ "groupRowStyle", objc.BOOL, .{} },
        .{ "indentationForDropOperation", objc.CGFloat, .{} },
        .{ "interiorBackgroundStyle", NSView.BackgroundStyle, .{} },
        .{ "nextRowSelected", objc.BOOL, .{} },
        .{ "numberOfColumns", objc.NSInteger, .{} },
        .{ "previousRowSelected", objc.BOOL, .{} },
        .{ "selected", objc.BOOL, .{} },
        .{ "selectionHighlightStyle", NSTableView.SelectionHighlightStyle, .{} },
        .{ "setBackgroundColor:", void, .{NSColor} },
        .{ "setDraggingDestinationFeedbackStyle:", void, .{NSTableView.DraggingDestinationFeedbackStyle} },
        .{ "setEmphasized:", void, .{objc.BOOL} },
        .{ "setFloating:", void, .{objc.BOOL} },
        .{ "setGroupRowStyle:", void, .{objc.BOOL} },
        .{ "setIndentationForDropOperation:", void, .{objc.CGFloat} },
        .{ "setNextRowSelected:", void, .{objc.BOOL} },
        .{ "setPreviousRowSelected:", void, .{objc.BOOL} },
        .{ "setSelected:", void, .{objc.BOOL} },
        .{ "setSelectionHighlightStyle:", void, .{NSTableView.SelectionHighlightStyle} },
        .{ "setTargetForDropOperation:", void, .{objc.BOOL} },
        .{ "targetForDropOperation", objc.BOOL, .{} },
        .{ "viewAtColumn:", ?Any, .{objc.NSInteger} },
    };

    pub fn send(self: NSTableRowView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSTableView = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "addTableColumn:", void, .{NSTableColumn} },
        .{ "allowsColumnReordering", objc.BOOL, .{} },
        .{ "allowsColumnResizing", objc.BOOL, .{} },
        .{ "allowsColumnSelection", objc.BOOL, .{} },
        .{ "allowsEmptySelection", objc.BOOL, .{} },
        .{ "allowsMultipleSelection", objc.BOOL, .{} },
        .{ "allowsTypeSelect", objc.BOOL, .{} },
        .{ "autosaveName", objc.NSString, .{} },
        .{ "autosaveTableColumns", objc.BOOL, .{} },
        .{ "backgroundColor", NSColor, .{} },
        .{ "beginUpdates", void, .{} },
        .{ "canDragRowsWithIndexes:atPoint:", objc.BOOL, .{ Foundation.NSIndexSet, NSPoint } },
        .{ "clickedColumn", objc.NSInteger, .{} },
        .{ "clickedRow", objc.NSInteger, .{} },
        .{ "columnAtPoint:", objc.NSInteger, .{NSPoint} },
        .{ "columnAutoresizingStyle", NSTableView.ColumnAutoresizingStyle, .{} },
        .{ "columnForView:", objc.NSInteger, .{NSView} },
        .{ "columnIndexesInRect:", Foundation.NSIndexSet, .{NSRect} },
        .{ "columnWithIdentifier:", objc.NSInteger, .{objc.NSString} },
        .{ "cornerView", ?NSView, .{} },
        .{ "dataSource", ?NSTableViewDataSource, .{} },
        .{ "delegate", ?NSTableViewDelegate, .{} },
        .{ "deselectAll:", void, .{?Any} },
        .{ "deselectColumn:", void, .{objc.NSInteger} },
        .{ "deselectRow:", void, .{objc.NSInteger} },
        .{ "didAddRowView:forRow:", void, .{ NSTableRowView, objc.NSInteger } },
        .{ "didRemoveRowView:forRow:", void, .{ NSTableRowView, objc.NSInteger } },
        .{ "doubleAction", Selector, .{} },
        .{ "dragImageForRowsWithIndexes:tableColumns:event:offset:", NSImage, .{ Foundation.NSIndexSet, void, NSEvent, NSPoint } },
        .{ "draggingDestinationFeedbackStyle", NSTableView.DraggingDestinationFeedbackStyle, .{} },
        .{ "drawBackgroundInClipRect:", void, .{NSRect} },
        .{ "drawGridInClipRect:", void, .{NSRect} },
        .{ "drawRow:clipRect:", void, .{ objc.NSInteger, NSRect } },
        .{ "editColumn:row:withEvent:select:", void, .{ objc.NSInteger, objc.NSInteger, ?NSEvent, objc.BOOL } },
        .{ "editedColumn", objc.NSInteger, .{} },
        .{ "editedRow", objc.NSInteger, .{} },
        .{ "effectiveRowSizeStyle", NSTableView.RowSizeStyle, .{} },
        .{ "effectiveStyle", NSTableView.Style, .{} },
        .{ "endUpdates", void, .{} },
        .{ "enumerateAvailableRowViewsUsingBlock:", void, .{void} },
        .{ "floatsGroupRows", objc.BOOL, .{} },
        .{ "focusedColumn", objc.NSInteger, .{} },
        .{ "frameOfCellAtColumn:row:", NSRect, .{ objc.NSInteger, objc.NSInteger } },
        .{ "gridColor", NSColor, .{} },
        .{ "gridStyleMask", objc.NSInteger, .{} },
        .{ "headerView", ?NSTableHeaderView, .{} },
        .{ "hiddenRowIndexes", Foundation.NSIndexSet, .{} },
        .{ "hideRowsAtIndexes:withAnimation:", void, .{ Foundation.NSIndexSet, objc.NSInteger } },
        .{ "highlightSelectionInClipRect:", void, .{NSRect} },
        .{ "highlightedTableColumn", ?NSTableColumn, .{} },
        .{ "indicatorImageInTableColumn:", ?NSImage, .{NSTableColumn} },
        .{ "insertRowsAtIndexes:withAnimation:", void, .{ Foundation.NSIndexSet, objc.NSInteger } },
        .{ "intercellSpacing", NSSize, .{} },
        .{ "isColumnSelected:", objc.BOOL, .{objc.NSInteger} },
        .{ "isRowSelected:", objc.BOOL, .{objc.NSInteger} },
        .{ "makeViewWithIdentifier:owner:", ?NSView, .{ objc.NSString, ?Any } },
        .{ "moveColumn:toColumn:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "moveRowAtIndex:toIndex:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "noteHeightOfRowsWithIndexesChanged:", void, .{Foundation.NSIndexSet} },
        .{ "noteNumberOfRowsChanged", void, .{} },
        .{ "numberOfColumns", objc.NSInteger, .{} },
        .{ "numberOfRows", objc.NSInteger, .{} },
        .{ "numberOfSelectedColumns", objc.NSInteger, .{} },
        .{ "numberOfSelectedRows", objc.NSInteger, .{} },
        .{ "performClickOnCellAtColumn:row:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "preparedCellAtColumn:row:", ?NSCell, .{ objc.NSInteger, objc.NSInteger } },
        .{ "rectOfColumn:", NSRect, .{objc.NSInteger} },
        .{ "rectOfRow:", NSRect, .{objc.NSInteger} },
        .{ "registerNib:forIdentifier:", void, .{ ?NSNib, objc.NSString } },
        .{ "registeredNibsByIdentifier", ?*anyopaque, .{} },
        .{ "reloadData", void, .{} },
        .{ "reloadDataForRowIndexes:columnIndexes:", void, .{ Foundation.NSIndexSet, Foundation.NSIndexSet } },
        .{ "removeRowsAtIndexes:withAnimation:", void, .{ Foundation.NSIndexSet, objc.NSInteger } },
        .{ "removeTableColumn:", void, .{NSTableColumn} },
        .{ "rowActionsVisible", objc.BOOL, .{} },
        .{ "rowAtPoint:", objc.NSInteger, .{NSPoint} },
        .{ "rowForView:", objc.NSInteger, .{NSView} },
        .{ "rowHeight", objc.CGFloat, .{} },
        .{ "rowSizeStyle", NSTableView.RowSizeStyle, .{} },
        .{ "rowViewAtRow:makeIfNecessary:", ?NSTableRowView, .{ objc.NSInteger, objc.BOOL } },
        .{ "rowsInRect:", NSRange, .{NSRect} },
        .{ "scrollColumnToVisible:", void, .{objc.NSInteger} },
        .{ "scrollRowToVisible:", void, .{objc.NSInteger} },
        .{ "selectAll:", void, .{?Any} },
        .{ "selectColumnIndexes:byExtendingSelection:", void, .{ Foundation.NSIndexSet, objc.BOOL } },
        .{ "selectRowIndexes:byExtendingSelection:", void, .{ Foundation.NSIndexSet, objc.BOOL } },
        .{ "selectedColumn", objc.NSInteger, .{} },
        .{ "selectedColumnIndexes", Foundation.NSIndexSet, .{} },
        .{ "selectedRow", objc.NSInteger, .{} },
        .{ "selectedRowIndexes", Foundation.NSIndexSet, .{} },
        .{ "selectionHighlightStyle", NSTableView.SelectionHighlightStyle, .{} },
        .{ "setAllowsColumnReordering:", void, .{objc.BOOL} },
        .{ "setAllowsColumnResizing:", void, .{objc.BOOL} },
        .{ "setAllowsColumnSelection:", void, .{objc.BOOL} },
        .{ "setAllowsEmptySelection:", void, .{objc.BOOL} },
        .{ "setAllowsMultipleSelection:", void, .{objc.BOOL} },
        .{ "setAllowsTypeSelect:", void, .{objc.BOOL} },
        .{ "setAutosaveName:", void, .{objc.NSString} },
        .{ "setAutosaveTableColumns:", void, .{objc.BOOL} },
        .{ "setBackgroundColor:", void, .{NSColor} },
        .{ "setColumnAutoresizingStyle:", void, .{NSTableView.ColumnAutoresizingStyle} },
        .{ "setCornerView:", void, .{?NSView} },
        .{ "setDataSource:", void, .{?NSTableViewDataSource} },
        .{ "setDelegate:", void, .{?NSTableViewDelegate} },
        .{ "setDoubleAction:", void, .{Selector} },
        .{ "setDraggingDestinationFeedbackStyle:", void, .{NSTableView.DraggingDestinationFeedbackStyle} },
        .{ "setDraggingSourceOperationMask:forLocal:", void, .{ objc.NSInteger, objc.BOOL } },
        .{ "setDropRow:dropOperation:", void, .{ objc.NSInteger, NSTableView.DropOperation } },
        .{ "setFloatsGroupRows:", void, .{objc.BOOL} },
        .{ "setFocusedColumn:", void, .{objc.NSInteger} },
        .{ "setGridColor:", void, .{NSColor} },
        .{ "setGridStyleMask:", void, .{objc.NSInteger} },
        .{ "setHeaderView:", void, .{?NSTableHeaderView} },
        .{ "setHighlightedTableColumn:", void, .{?NSTableColumn} },
        .{ "setIndicatorImage:inTableColumn:", void, .{ ?NSImage, NSTableColumn } },
        .{ "setIntercellSpacing:", void, .{NSSize} },
        .{ "setRowActionsVisible:", void, .{objc.BOOL} },
        .{ "setRowHeight:", void, .{objc.CGFloat} },
        .{ "setRowSizeStyle:", void, .{NSTableView.RowSizeStyle} },
        .{ "setSelectionHighlightStyle:", void, .{NSTableView.SelectionHighlightStyle} },
        .{ "setSortDescriptors:", void, .{Object} },
        .{ "setStyle:", void, .{NSTableView.Style} },
        .{ "setUserInterfaceLayoutDirection:", void, .{NSUserInterfaceLayoutDirection} },
        .{ "setUsesAlternatingRowBackgroundColors:", void, .{objc.BOOL} },
        .{ "setUsesAutomaticRowHeights:", void, .{objc.BOOL} },
        .{ "setUsesStaticContents:", void, .{objc.BOOL} },
        .{ "setVerticalMotionCanBeginDrag:", void, .{objc.BOOL} },
        .{ "shouldFocusCell:atColumn:row:", objc.BOOL, .{ NSCell, objc.NSInteger, objc.NSInteger } },
        .{ "sizeLastColumnToFit", void, .{} },
        .{ "sizeToFit", void, .{} },
        .{ "sortDescriptors", Object, .{} },
        .{ "style", NSTableView.Style, .{} },
        .{ "tableColumnWithIdentifier:", ?NSTableColumn, .{objc.NSString} },
        .{ "tableColumns", Object, .{} },
        .{ "tile", void, .{} },
        .{ "unhideRowsAtIndexes:withAnimation:", void, .{ Foundation.NSIndexSet, objc.NSInteger } },
        .{ "userInterfaceLayoutDirection", NSUserInterfaceLayoutDirection, .{} },
        .{ "usesAlternatingRowBackgroundColors", objc.BOOL, .{} },
        .{ "usesAutomaticRowHeights", objc.BOOL, .{} },
        .{ "usesStaticContents", objc.BOOL, .{} },
        .{ "verticalMotionCanBeginDrag", objc.BOOL, .{} },
        .{ "viewAtColumn:row:makeIfNecessary:", ?NSView, .{ objc.NSInteger, objc.NSInteger, objc.BOOL } },
    };

    pub fn send(self: NSTableView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithFrame:", Object, .{NSRect} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTableView", class_methods, selector, args);
    }

    pub const ColumnAutoresizingStyle = enum(i64) {
        noColumnAutoresizing = 0,
        uniformColumnAutoresizingStyle = 1,
        sequentialColumnAutoresizingStyle = 2,
        reverseSequentialColumnAutoresizingStyle = 3,
        lastColumnOnlyAutoresizingStyle = 4,
        firstColumnOnlyAutoresizingStyle = 5,
    };
    pub const DraggingDestinationFeedbackStyle = enum(i64) {
        none = -1,
        regular = 0,
        sourceList = 1,
        gap = 2,
    };
    pub const DropOperation = enum(i64) {
        on = 0,
        above = 1,
    };
    pub const RowActionEdge = enum(i64) {
        leading = 0,
        trailing = 1,
    };
    pub const RowSizeStyle = enum(i64) {
        default = -1,
        custom = 0,
        small = 1,
        medium = 2,
        large = 3,
    };
    pub const SelectionHighlightStyle = enum(i64) {
        none = -1,
        regular = 0,
        sourceList = 1,
    };
    pub const Style = enum(i64) {
        automatic = 0,
        fullWidth = 1,
        inset = 2,
        sourceList = 3,
        plain = 4,
    };
};

pub const NSTableViewDiffableDataSource = struct {
    obj: Object,

    pub const methods = .{
        .{ "applySnapshot:animatingDifferences:", void, .{ NSDiffableDataSourceSnapshot, objc.BOOL } },
        .{ "applySnapshot:animatingDifferences:completion:", void, .{ NSDiffableDataSourceSnapshot, objc.BOOL, void } },
        .{ "defaultRowAnimation", objc.NSInteger, .{} },
        .{ "itemIdentifierForRow:", ?*anyopaque, .{objc.NSInteger} },
        .{ "rowForItemIdentifier:", objc.NSInteger, .{?*anyopaque} },
        .{ "rowForSectionIdentifier:", objc.NSInteger, .{?*anyopaque} },
        .{ "rowViewProvider", ?*anyopaque, .{} },
        .{ "sectionHeaderViewProvider", ?*anyopaque, .{} },
        .{ "sectionIdentifierForRow:", ?*anyopaque, .{objc.NSInteger} },
        .{ "setDefaultRowAnimation:", void, .{objc.NSInteger} },
        .{ "setRowViewProvider:", void, .{?*anyopaque} },
        .{ "setSectionHeaderViewProvider:", void, .{?*anyopaque} },
        .{ "snapshot", NSDiffableDataSourceSnapshot, .{} },
    };

    pub fn send(self: NSTableViewDiffableDataSource, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithTableView:cellProvider:", Object, .{ NSTableView, objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTableViewDiffableDataSource", class_methods, selector, args);
    }
};

pub const NSTableViewRowAction = struct {
    obj: Object,

    pub const methods = .{
        .{ "backgroundColor", NSColor, .{} },
        .{ "image", ?NSImage, .{} },
        .{ "setBackgroundColor:", void, .{NSColor} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "style", NSTableViewRowAction.Style, .{} },
        .{ "title", objc.NSString, .{} },
    };

    pub fn send(self: NSTableViewRowAction, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "rowActionWithStyle:title:handler:", Object, .{ NSTableViewRowAction.Style, objc.NSString, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTableViewRowAction", class_methods, selector, args);
    }

    pub const Style = enum(i64) {
        regular = 0,
        destructive = 1,
    };
};

pub const NSText = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "RTFDFromRange:", ?Foundation.NSData, .{NSRange} },
        .{ "RTFFromRange:", ?Foundation.NSData, .{NSRange} },
        .{ "alignCenter:", void, .{?Any} },
        .{ "alignLeft:", void, .{?Any} },
        .{ "alignRight:", void, .{?Any} },
        .{ "alignment", NSTextAlignment, .{} },
        .{ "backgroundColor", ?NSColor, .{} },
        .{ "baseWritingDirection", NSWritingDirection, .{} },
        .{ "changeFont:", void, .{?Any} },
        .{ "checkSpelling:", void, .{?Any} },
        .{ "copy:", void, .{?Any} },
        .{ "copyFont:", void, .{?Any} },
        .{ "copyRuler:", void, .{?Any} },
        .{ "cut:", void, .{?Any} },
        .{ "delegate", ?NSTextDelegate, .{} },
        .{ "delete:", void, .{?Any} },
        .{ "drawsBackground", objc.BOOL, .{} },
        .{ "editable", objc.BOOL, .{} },
        .{ "fieldEditor", objc.BOOL, .{} },
        .{ "font", ?NSFont, .{} },
        .{ "horizontallyResizable", objc.BOOL, .{} },
        .{ "importsGraphics", objc.BOOL, .{} },
        .{ "maxSize", NSSize, .{} },
        .{ "minSize", NSSize, .{} },
        .{ "paste:", void, .{?Any} },
        .{ "pasteFont:", void, .{?Any} },
        .{ "pasteRuler:", void, .{?Any} },
        .{ "readRTFDFromFile:", objc.BOOL, .{objc.NSString} },
        .{ "replaceCharactersInRange:withRTF:", void, .{ NSRange, Foundation.NSData } },
        .{ "replaceCharactersInRange:withRTFD:", void, .{ NSRange, Foundation.NSData } },
        .{ "replaceCharactersInRange:withString:", void, .{ NSRange, objc.NSString } },
        .{ "richText", objc.BOOL, .{} },
        .{ "rulerVisible", objc.BOOL, .{} },
        .{ "scrollRangeToVisible:", void, .{NSRange} },
        .{ "selectAll:", void, .{?Any} },
        .{ "selectable", objc.BOOL, .{} },
        .{ "selectedRange", NSRange, .{} },
        .{ "setAlignment:", void, .{NSTextAlignment} },
        .{ "setBackgroundColor:", void, .{?NSColor} },
        .{ "setBaseWritingDirection:", void, .{NSWritingDirection} },
        .{ "setDelegate:", void, .{?NSTextDelegate} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "setEditable:", void, .{objc.BOOL} },
        .{ "setFieldEditor:", void, .{objc.BOOL} },
        .{ "setFont:", void, .{?NSFont} },
        .{ "setFont:range:", void, .{ NSFont, NSRange } },
        .{ "setHorizontallyResizable:", void, .{objc.BOOL} },
        .{ "setImportsGraphics:", void, .{objc.BOOL} },
        .{ "setMaxSize:", void, .{NSSize} },
        .{ "setMinSize:", void, .{NSSize} },
        .{ "setRichText:", void, .{objc.BOOL} },
        .{ "setSelectable:", void, .{objc.BOOL} },
        .{ "setSelectedRange:", void, .{NSRange} },
        .{ "setString:", void, .{objc.NSString} },
        .{ "setTextColor:", void, .{?NSColor} },
        .{ "setTextColor:range:", void, .{ ?NSColor, NSRange } },
        .{ "setUsesFontPanel:", void, .{objc.BOOL} },
        .{ "setVerticallyResizable:", void, .{objc.BOOL} },
        .{ "showGuessPanel:", void, .{?Any} },
        .{ "sizeToFit", void, .{} },
        .{ "string", objc.NSString, .{} },
        .{ "subscript:", void, .{?Any} },
        .{ "superscript:", void, .{?Any} },
        .{ "textColor", ?NSColor, .{} },
        .{ "toggleRuler:", void, .{?Any} },
        .{ "underline:", void, .{?Any} },
        .{ "unscript:", void, .{?Any} },
        .{ "usesFontPanel", objc.BOOL, .{} },
        .{ "verticallyResizable", objc.BOOL, .{} },
        .{ "writeRTFDToFile:atomically:", objc.BOOL, .{ objc.NSString, objc.BOOL } },
    };

    pub fn send(self: NSText, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithFrame:", Object, .{NSRect} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSText", class_methods, selector, args);
    }
};

pub const NSTextAlternatives = struct {
    obj: Object,

    pub const methods = .{
        .{ "alternativeStrings", Object, .{} },
        .{ "noteSelectedAlternativeString:", void, .{objc.NSString} },
        .{ "primaryString", objc.NSString, .{} },
    };

    pub fn send(self: NSTextAlternatives, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithPrimaryString:alternativeStrings:", Object, .{ objc.NSString, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextAlternatives", class_methods, selector, args);
    }
};

pub const NSTextAttachment = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowsTextAttachmentView", objc.BOOL, .{} },
        .{ "attachmentCell", ?NSTextAttachmentCellProtocol, .{} },
        .{ "bounds", NSRect, .{} },
        .{ "contents", ?Foundation.NSData, .{} },
        .{ "fileType", ?objc.NSString, .{} },
        .{ "fileWrapper", ?Foundation.NSFileWrapper, .{} },
        .{ "image", ?NSImage, .{} },
        .{ "lineLayoutPadding", objc.CGFloat, .{} },
        .{ "setAllowsTextAttachmentView:", void, .{objc.BOOL} },
        .{ "setAttachmentCell:", void, .{?NSTextAttachmentCellProtocol} },
        .{ "setBounds:", void, .{NSRect} },
        .{ "setContents:", void, .{?Foundation.NSData} },
        .{ "setFileType:", void, .{?objc.NSString} },
        .{ "setFileWrapper:", void, .{?Foundation.NSFileWrapper} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setLineLayoutPadding:", void, .{objc.CGFloat} },
        .{ "usesTextAttachmentView", objc.BOOL, .{} },
    };

    pub fn send(self: NSTextAttachment, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithData:ofType:", Object, .{ ?Foundation.NSData, ?objc.NSString } },
        .{ "initWithFileWrapper:", Object, .{?Foundation.NSFileWrapper} },
        .{ "registerTextAttachmentViewProviderClass:forFileType:", void, .{ AnyClass, objc.NSString } },
        .{ "textAttachmentViewProviderClassForFileType:", ?AnyClass, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextAttachment", class_methods, selector, args);
    }
};

pub const NSTextAttachmentViewProvider = struct {
    obj: Object,

    pub const methods = .{
        .{ "attachmentBoundsForAttributes:location:textContainer:proposedLineFragment:position:", NSRect, .{ Any, void, ?NSTextContainer, NSRect, NSPoint } },
        .{ "loadView", void, .{} },
        .{ "location", NSTextLocation, .{} },
        .{ "setTracksTextAttachmentViewBounds:", void, .{objc.BOOL} },
        .{ "setView:", void, .{?NSView} },
        .{ "textAttachment", ?NSTextAttachment, .{} },
        .{ "textLayoutManager", ?NSTextLayoutManager, .{} },
        .{ "tracksTextAttachmentViewBounds", objc.BOOL, .{} },
        .{ "view", ?NSView, .{} },
    };

    pub fn send(self: NSTextAttachmentViewProvider, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithTextAttachment:parentView:textLayoutManager:location:", Object, .{ NSTextAttachment, ?NSView, ?NSTextLayoutManager, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextAttachmentViewProvider", class_methods, selector, args);
    }
};

pub const NSTextBlock = struct {
    obj: Object,

    pub const methods = .{
        .{ "backgroundColor", ?NSColor, .{} },
        .{ "borderColorForEdge:", ?NSColor, .{Foundation.NSRectEdge} },
        .{ "boundsRectForContentRect:inRect:textContainer:characterRange:", NSRect, .{ NSRect, NSRect, NSTextContainer, NSRange } },
        .{ "contentWidth", objc.CGFloat, .{} },
        .{ "contentWidthValueType", NSTextBlock.ValueType, .{} },
        .{ "drawBackgroundWithFrame:inView:characterRange:layoutManager:", void, .{ NSRect, NSView, NSRange, NSLayoutManager } },
        .{ "rectForLayoutAtPoint:inRect:textContainer:characterRange:", NSRect, .{ NSPoint, NSRect, NSTextContainer, NSRange } },
        .{ "setBackgroundColor:", void, .{?NSColor} },
        .{ "setBorderColor:", void, .{?NSColor} },
        .{ "setBorderColor:forEdge:", void, .{ ?NSColor, Foundation.NSRectEdge } },
        .{ "setContentWidth:type:", void, .{ objc.CGFloat, NSTextBlock.ValueType } },
        .{ "setValue:type:forDimension:", void, .{ objc.CGFloat, NSTextBlock.ValueType, NSTextBlock.Dimension } },
        .{ "setVerticalAlignment:", void, .{NSTextBlock.VerticalAlignment} },
        .{ "setWidth:type:forLayer:", void, .{ objc.CGFloat, NSTextBlock.ValueType, NSTextBlock.Layer } },
        .{ "setWidth:type:forLayer:edge:", void, .{ objc.CGFloat, NSTextBlock.ValueType, NSTextBlock.Layer, Foundation.NSRectEdge } },
        .{ "valueForDimension:", objc.CGFloat, .{NSTextBlock.Dimension} },
        .{ "valueTypeForDimension:", NSTextBlock.ValueType, .{NSTextBlock.Dimension} },
        .{ "verticalAlignment", NSTextBlock.VerticalAlignment, .{} },
        .{ "widthForLayer:edge:", objc.CGFloat, .{ NSTextBlock.Layer, Foundation.NSRectEdge } },
        .{ "widthValueTypeForLayer:edge:", NSTextBlock.ValueType, .{ NSTextBlock.Layer, Foundation.NSRectEdge } },
    };

    pub fn send(self: NSTextBlock, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextBlock", class_methods, selector, args);
    }

    pub const Dimension = enum(i64) {
        width = 0,
        minimumWidth = 1,
        maximumWidth = 2,
        height = 4,
        minimumHeight = 5,
        maximumHeight = 6,
    };
    pub const Layer = enum(i64) {
        padding = -1,
        border = 0,
        margin = 1,
    };
    pub const ValueType = enum(i64) {
        absoluteValueType = 0,
        percentageValueType = 1,
    };
    pub const VerticalAlignment = enum(i64) {
        topAlignment = 0,
        middleAlignment = 1,
        bottomAlignment = 2,
        baselineAlignment = 3,
    };
};

pub const NSTextCheckingController = struct {
    obj: Object,

    pub const methods = .{
        .{ "changeSpelling:", void, .{?Any} },
        .{ "checkSpelling:", void, .{?Any} },
        .{ "checkTextInDocument:", void, .{?Any} },
        .{ "checkTextInRange:types:options:", void, .{ NSRange, u64, Any } },
        .{ "checkTextInSelection:", void, .{?Any} },
        .{ "client", NSTextCheckingClient, .{} },
        .{ "considerTextCheckingForRange:", void, .{NSRange} },
        .{ "didChangeSelectedRange", void, .{} },
        .{ "didChangeTextInRange:", void, .{NSRange} },
        .{ "ignoreSpelling:", void, .{?Any} },
        .{ "insertedTextInRange:", void, .{NSRange} },
        .{ "invalidate", void, .{} },
        .{ "menuAtIndex:clickedOnSelection:effectiveRange:", ?NSMenu, .{ objc.NSInteger, objc.BOOL, NSRange } },
        .{ "orderFrontSubstitutionsPanel:", void, .{?Any} },
        .{ "setSpellCheckerDocumentTag:", void, .{objc.NSInteger} },
        .{ "showGuessPanel:", void, .{?Any} },
        .{ "spellCheckerDocumentTag", objc.NSInteger, .{} },
        .{ "updateCandidates", void, .{} },
        .{ "validAnnotations", Object, .{} },
    };

    pub fn send(self: NSTextCheckingController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithClient:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextCheckingController", class_methods, selector, args);
    }
};

pub const NSTextContainer = struct {
    obj: Object,

    pub const methods = .{
        .{ "containerSize", NSSize, .{} },
        .{ "containsPoint:", objc.BOOL, .{NSPoint} },
        .{ "exclusionPaths", Object, .{} },
        .{ "heightTracksTextView", objc.BOOL, .{} },
        .{ "layoutManager", ?NSLayoutManager, .{} },
        .{ "lineBreakMode", NSLineBreakMode, .{} },
        .{ "lineFragmentPadding", objc.CGFloat, .{} },
        .{ "lineFragmentRectForProposedRect:atIndex:writingDirection:remainingRect:", NSRect, .{ NSRect, objc.NSInteger, NSWritingDirection, NSRect } },
        .{ "lineFragmentRectForProposedRect:sweepDirection:movementDirection:remainingRect:", NSRect, .{ NSRect, objc.NSInteger, objc.NSInteger, NSRect } },
        .{ "maximumNumberOfLines", objc.NSInteger, .{} },
        .{ "replaceLayoutManager:", void, .{NSLayoutManager} },
        .{ "setContainerSize:", void, .{NSSize} },
        .{ "setExclusionPaths:", void, .{Object} },
        .{ "setHeightTracksTextView:", void, .{objc.BOOL} },
        .{ "setLayoutManager:", void, .{?NSLayoutManager} },
        .{ "setLineBreakMode:", void, .{NSLineBreakMode} },
        .{ "setLineFragmentPadding:", void, .{objc.CGFloat} },
        .{ "setMaximumNumberOfLines:", void, .{objc.NSInteger} },
        .{ "setSize:", void, .{NSSize} },
        .{ "setTextView:", void, .{?NSTextView} },
        .{ "setWidthTracksTextView:", void, .{objc.BOOL} },
        .{ "simpleRectangularTextContainer", objc.BOOL, .{} },
        .{ "size", NSSize, .{} },
        .{ "textLayoutManager", ?NSTextLayoutManager, .{} },
        .{ "textView", ?NSTextView, .{} },
        .{ "widthTracksTextView", objc.BOOL, .{} },
    };

    pub fn send(self: NSTextContainer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithContainerSize:", Object, .{NSSize} },
        .{ "initWithSize:", Object, .{NSSize} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextContainer", class_methods, selector, args);
    }
};

pub const NSTextContentManager = struct {
    obj: Object,

    pub const methods = .{
        .{ "addTextLayoutManager:", void, .{NSTextLayoutManager} },
        .{ "automaticallySynchronizesTextLayoutManagers", objc.BOOL, .{} },
        .{ "automaticallySynchronizesToBackingStore", objc.BOOL, .{} },
        .{ "delegate", ?NSTextContentManagerDelegate, .{} },
        .{ "hasEditingTransaction", objc.BOOL, .{} },
        .{ "performEditingTransactionUsingBlock:", void, .{void} },
        .{ "primaryTextLayoutManager", ?NSTextLayoutManager, .{} },
        .{ "recordEditActionInRange:newTextRange:", void, .{ NSTextRange, NSTextRange } },
        .{ "removeTextLayoutManager:", void, .{NSTextLayoutManager} },
        .{ "setAutomaticallySynchronizesTextLayoutManagers:", void, .{objc.BOOL} },
        .{ "setAutomaticallySynchronizesToBackingStore:", void, .{objc.BOOL} },
        .{ "setDelegate:", void, .{?NSTextContentManagerDelegate} },
        .{ "setPrimaryTextLayoutManager:", void, .{?NSTextLayoutManager} },
        .{ "synchronizeTextLayoutManagers:", void, .{void} },
        .{ "textElementsForRange:", Object, .{NSTextRange} },
        .{ "textLayoutManagers", Object, .{} },
    };

    pub fn send(self: NSTextContentManager, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextContentManager", class_methods, selector, args);
    }
};

pub const NSTextContentStorage = struct {
    obj: Object,

    pub const Super = NSTextContentManager;
    pub const methods = .{
        .{ "adjustedRangeFromRange:forEditingTextSelection:", ?NSTextRange, .{ NSTextRange, objc.BOOL } },
        .{ "attributedString", ?Foundation.NSAttributedString, .{} },
        .{ "attributedStringForTextElement:", ?Foundation.NSAttributedString, .{NSTextElement} },
        .{ "delegate", ?NSTextContentStorageDelegate, .{} },
        .{ "includesTextListMarkers", objc.BOOL, .{} },
        .{ "locationFromLocation:withOffset:", ?NSTextLocation, .{ void, objc.NSInteger } },
        .{ "offsetFromLocation:toLocation:", objc.NSInteger, .{ void, void } },
        .{ "setAttributedString:", void, .{?Foundation.NSAttributedString} },
        .{ "setDelegate:", void, .{?NSTextContentStorageDelegate} },
        .{ "setIncludesTextListMarkers:", void, .{objc.BOOL} },
        .{ "textElementForAttributedString:", ?NSTextElement, .{Foundation.NSAttributedString} },
    };

    pub fn send(self: NSTextContentStorage, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSTextElement = struct {
    obj: Object,

    pub const methods = .{
        .{ "childElements", Object, .{} },
        .{ "elementRange", ?NSTextRange, .{} },
        .{ "isRepresentedElement", objc.BOOL, .{} },
        .{ "parentElement", ?NSTextElement, .{} },
        .{ "setElementRange:", void, .{?NSTextRange} },
        .{ "setTextContentManager:", void, .{?NSTextContentManager} },
        .{ "textContentManager", ?NSTextContentManager, .{} },
    };

    pub fn send(self: NSTextElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithTextContentManager:", Object, .{?NSTextContentManager} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextElement", class_methods, selector, args);
    }
};

pub const NSTextField = struct {
    obj: Object,

    pub const Super = NSControl;
    pub const methods = .{
        .{ "acceptsFirstResponder", objc.BOOL, .{} },
        .{ "allowsCharacterPickerTouchBarItem", objc.BOOL, .{} },
        .{ "allowsDefaultTighteningForTruncation", objc.BOOL, .{} },
        .{ "allowsEditingTextAttributes", objc.BOOL, .{} },
        .{ "allowsWritingTools", objc.BOOL, .{} },
        .{ "allowsWritingToolsAffordance", objc.BOOL, .{} },
        .{ "automaticTextCompletionEnabled", objc.BOOL, .{} },
        .{ "backgroundColor", ?NSColor, .{} },
        .{ "bezelStyle", NSTextField.BezelStyle, .{} },
        .{ "bezeled", objc.BOOL, .{} },
        .{ "bordered", objc.BOOL, .{} },
        .{ "delegate", ?NSTextFieldDelegate, .{} },
        .{ "drawsBackground", objc.BOOL, .{} },
        .{ "editable", objc.BOOL, .{} },
        .{ "importsGraphics", objc.BOOL, .{} },
        .{ "lineBreakStrategy", objc.NSInteger, .{} },
        .{ "maximumNumberOfLines", objc.NSInteger, .{} },
        .{ "placeholderAttributedString", ?Foundation.NSAttributedString, .{} },
        .{ "placeholderAttributedStrings", Object, .{} },
        .{ "placeholderString", ?objc.NSString, .{} },
        .{ "placeholderStrings", Object, .{} },
        .{ "preferredMaxLayoutWidth", objc.CGFloat, .{} },
        .{ "resolvesNaturalAlignmentWithBaseWritingDirection", objc.BOOL, .{} },
        .{ "selectText:", void, .{?Any} },
        .{ "selectable", objc.BOOL, .{} },
        .{ "setAllowsCharacterPickerTouchBarItem:", void, .{objc.BOOL} },
        .{ "setAllowsDefaultTighteningForTruncation:", void, .{objc.BOOL} },
        .{ "setAllowsEditingTextAttributes:", void, .{objc.BOOL} },
        .{ "setAllowsWritingTools:", void, .{objc.BOOL} },
        .{ "setAllowsWritingToolsAffordance:", void, .{objc.BOOL} },
        .{ "setAutomaticTextCompletionEnabled:", void, .{objc.BOOL} },
        .{ "setBackgroundColor:", void, .{?NSColor} },
        .{ "setBezelStyle:", void, .{NSTextField.BezelStyle} },
        .{ "setBezeled:", void, .{objc.BOOL} },
        .{ "setBordered:", void, .{objc.BOOL} },
        .{ "setDelegate:", void, .{?NSTextFieldDelegate} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "setEditable:", void, .{objc.BOOL} },
        .{ "setImportsGraphics:", void, .{objc.BOOL} },
        .{ "setLineBreakStrategy:", void, .{objc.NSInteger} },
        .{ "setMaximumNumberOfLines:", void, .{objc.NSInteger} },
        .{ "setPlaceholderAttributedString:", void, .{?Foundation.NSAttributedString} },
        .{ "setPlaceholderAttributedStrings:", void, .{Object} },
        .{ "setPlaceholderString:", void, .{?objc.NSString} },
        .{ "setPlaceholderStrings:", void, .{Object} },
        .{ "setPreferredMaxLayoutWidth:", void, .{objc.CGFloat} },
        .{ "setResolvesNaturalAlignmentWithBaseWritingDirection:", void, .{objc.BOOL} },
        .{ "setSelectable:", void, .{objc.BOOL} },
        .{ "setTextColor:", void, .{?NSColor} },
        .{ "textColor", ?NSColor, .{} },
        .{ "textDidBeginEditing:", void, .{Foundation.NSNotification} },
        .{ "textDidChange:", void, .{Foundation.NSNotification} },
        .{ "textDidEndEditing:", void, .{Foundation.NSNotification} },
        .{ "textShouldBeginEditing:", objc.BOOL, .{NSText} },
        .{ "textShouldEndEditing:", objc.BOOL, .{NSText} },
    };

    pub fn send(self: NSTextField, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "labelWithAttributedString:", Object, .{Foundation.NSAttributedString} },
        .{ "labelWithString:", Object, .{objc.NSString} },
        .{ "textFieldWithString:", Object, .{objc.NSString} },
        .{ "wrappingLabelWithString:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextField", class_methods, selector, args);
    }

    pub const BezelStyle = enum(i64) {
        squareBezel = 0,
        roundedBezel = 1,
    };

    pub fn createLabel(text: [*:0]const u8) NSTextField {
        const label = objc.msgSendClass(Object, "NSTextField", "labelWithString:", .{objc.nsString(text)});
        objc.msgSend(void, label, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = label };
    }
    pub fn createInput(placeholder: [*:0]const u8) NSTextField {
        const field = objc.msgSend(Object, objc.msgSendClass(Object, "NSTextField", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 200, 24)});
        objc.msgSend(void, field, "setPlaceholderString:", .{objc.nsString(placeholder)});
        objc.msgSend(void, field, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = field };
    }
    pub fn stringValueZ(self: NSTextField) ?[*:0]const u8 {
        const ns_str = objc.msgSend(Object, self.obj, "stringValue", .{});
        return objc.toZigString(ns_str);
    }
    pub fn setLineBreakMode(self: NSTextField, mode: i64) void {
        const cell = objc.msgSend(Object, self.obj, "cell", .{});
        objc.msgSend(void, cell, "setLineBreakMode:", .{mode});
    }
};

pub const NSTextFieldCell = struct {
    obj: Object,

    pub const Super = NSActionCell;
    pub const methods = .{
        .{ "allowedInputSourceLocales", ?*anyopaque, .{} },
        .{ "backgroundColor", ?NSColor, .{} },
        .{ "bezelStyle", NSTextField.BezelStyle, .{} },
        .{ "drawsBackground", objc.BOOL, .{} },
        .{ "placeholderAttributedString", ?Foundation.NSAttributedString, .{} },
        .{ "placeholderString", ?objc.NSString, .{} },
        .{ "setAllowedInputSourceLocales:", void, .{?*anyopaque} },
        .{ "setBackgroundColor:", void, .{?NSColor} },
        .{ "setBezelStyle:", void, .{NSTextField.BezelStyle} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "setPlaceholderAttributedString:", void, .{?Foundation.NSAttributedString} },
        .{ "setPlaceholderString:", void, .{?objc.NSString} },
        .{ "setTextColor:", void, .{?NSColor} },
        .{ "setUpFieldEditorAttributes:", NSText, .{NSText} },
        .{ "setWantsNotificationForMarkedText:", void, .{objc.BOOL} },
        .{ "textColor", ?NSColor, .{} },
    };

    pub fn send(self: NSTextFieldCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initTextCell:", Object, .{objc.NSString} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextFieldCell", class_methods, selector, args);
    }
};

pub const NSTextFinder = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancelFindIndicator", void, .{} },
        .{ "client", ?NSTextFinderClient, .{} },
        .{ "findBarContainer", ?NSTextFinderBarContainer, .{} },
        .{ "findIndicatorNeedsUpdate", objc.BOOL, .{} },
        .{ "incrementalMatchRanges", Object, .{} },
        .{ "incrementalSearchingEnabled", objc.BOOL, .{} },
        .{ "incrementalSearchingShouldDimContentView", objc.BOOL, .{} },
        .{ "noteClientStringWillChange", void, .{} },
        .{ "performAction:", void, .{NSTextFinder.Action} },
        .{ "setClient:", void, .{?NSTextFinderClient} },
        .{ "setFindBarContainer:", void, .{?NSTextFinderBarContainer} },
        .{ "setFindIndicatorNeedsUpdate:", void, .{objc.BOOL} },
        .{ "setIncrementalSearchingEnabled:", void, .{objc.BOOL} },
        .{ "setIncrementalSearchingShouldDimContentView:", void, .{objc.BOOL} },
        .{ "validateAction:", objc.BOOL, .{NSTextFinder.Action} },
    };

    pub fn send(self: NSTextFinder, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "drawIncrementalMatchHighlightInRect:", void, .{NSRect} },
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextFinder", class_methods, selector, args);
    }

    pub const Action = enum(i64) {
        showFindInterface = 1,
        nextMatch = 2,
        previousMatch = 3,
        replaceAll = 4,
        replace = 5,
        replaceAndFind = 6,
        setSearchString = 7,
        replaceAllInSelection = 8,
        selectAll = 9,
        selectAllInSelection = 10,
        hideFindInterface = 11,
        showReplaceInterface = 12,
        hideReplaceInterface = 13,
    };
    pub const MatchingType = enum(i64) {
        contains = 0,
        startsWith = 1,
        fullWord = 2,
        endsWith = 3,
    };
};

pub const NSTextInputContext = struct {
    obj: Object,

    pub const methods = .{
        .{ "acceptsGlyphInfo", objc.BOOL, .{} },
        .{ "activate", void, .{} },
        .{ "allowedInputSourceLocales", ?*anyopaque, .{} },
        .{ "client", NSTextInputClient, .{} },
        .{ "deactivate", void, .{} },
        .{ "discardMarkedText", void, .{} },
        .{ "handleEvent:", objc.BOOL, .{NSEvent} },
        .{ "invalidateCharacterCoordinates", void, .{} },
        .{ "keyboardInputSources", ?*anyopaque, .{} },
        .{ "selectedKeyboardInputSource", objc.NSString, .{} },
        .{ "setAcceptsGlyphInfo:", void, .{objc.BOOL} },
        .{ "setAllowedInputSourceLocales:", void, .{?*anyopaque} },
        .{ "setSelectedKeyboardInputSource:", void, .{objc.NSString} },
        .{ "textInputClientDidEndScrollingOrZooming", void, .{} },
        .{ "textInputClientDidScroll", void, .{} },
        .{ "textInputClientDidUpdateSelection", void, .{} },
        .{ "textInputClientWillStartScrollingOrZooming", void, .{} },
    };

    pub fn send(self: NSTextInputContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentInputContext", ?NSTextInputContext, .{} },
        .{ "initWithClient:", Object, .{void} },
        .{ "localizedNameForInputSource:", ?objc.NSString, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextInputContext", class_methods, selector, args);
    }
};

pub const NSTextInsertionIndicator = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "automaticModeOptions", objc.NSInteger, .{} },
        .{ "color", NSColor, .{} },
        .{ "displayMode", NSTextInsertionIndicator.DisplayMode, .{} },
        .{ "effectsViewInserter", void, .{} },
        .{ "setAutomaticModeOptions:", void, .{objc.NSInteger} },
        .{ "setColor:", void, .{NSColor} },
        .{ "setDisplayMode:", void, .{NSTextInsertionIndicator.DisplayMode} },
        .{ "setEffectsViewInserter:", void, .{void} },
    };

    pub fn send(self: NSTextInsertionIndicator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const DisplayMode = enum(i64) {
        automatic = 0,
        hidden = 1,
        visible = 2,
    };
};

pub const NSTextLayoutFragment = struct {
    obj: Object,

    pub const methods = .{
        .{ "bottomMargin", objc.CGFloat, .{} },
        .{ "drawAtPoint:inContext:", void, .{ NSPoint, ?*anyopaque } },
        .{ "frameForTextAttachmentAtLocation:", NSRect, .{void} },
        .{ "invalidateLayout", void, .{} },
        .{ "layoutFragmentFrame", NSRect, .{} },
        .{ "layoutQueue", ?Foundation.NSOperationQueue, .{} },
        .{ "leadingPadding", objc.CGFloat, .{} },
        .{ "rangeInElement", NSTextRange, .{} },
        .{ "renderingSurfaceBounds", NSRect, .{} },
        .{ "setLayoutQueue:", void, .{?Foundation.NSOperationQueue} },
        .{ "state", NSTextLayoutFragment.State, .{} },
        .{ "textAttachmentViewProviders", Object, .{} },
        .{ "textElement", ?NSTextElement, .{} },
        .{ "textLayoutManager", ?NSTextLayoutManager, .{} },
        .{ "textLineFragmentForTextLocation:isUpstreamAffinity:", ?NSTextLineFragment, .{ void, objc.BOOL } },
        .{ "textLineFragmentForVerticalOffset:requiresExactMatch:", ?NSTextLineFragment, .{ objc.CGFloat, objc.BOOL } },
        .{ "textLineFragments", Object, .{} },
        .{ "topMargin", objc.CGFloat, .{} },
        .{ "trailingPadding", objc.CGFloat, .{} },
    };

    pub fn send(self: NSTextLayoutFragment, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithTextElement:range:", Object, .{ NSTextElement, ?NSTextRange } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextLayoutFragment", class_methods, selector, args);
    }

    pub const State = enum(i64) {
        none = 0,
        estimatedUsageBounds = 1,
        calculatedUsageBounds = 2,
        layoutAvailable = 3,
    };
};

pub const NSTextLayoutManager = struct {
    obj: Object,

    pub const methods = .{
        .{ "addRenderingAttribute:value:forTextRange:", void, .{ objc.NSString, ?Any, NSTextRange } },
        .{ "delegate", ?NSTextLayoutManagerDelegate, .{} },
        .{ "ensureLayoutForBounds:", void, .{NSRect} },
        .{ "ensureLayoutForRange:", void, .{NSTextRange} },
        .{ "enumerateRenderingAttributesFromLocation:reverse:usingBlock:", void, .{ void, objc.BOOL, objc.BOOL } },
        .{ "enumerateTextLayoutFragmentsFromLocation:options:usingBlock:", ?NSTextLocation, .{ void, objc.NSInteger, void } },
        .{ "enumerateTextSegmentsInRange:type:options:usingBlock:", void, .{ NSTextRange, NSTextLayoutManager.SegmentType, objc.NSInteger, void } },
        .{ "invalidateLayoutForRange:", void, .{NSTextRange} },
        .{ "invalidateRenderingAttributesForTextRange:", void, .{NSTextRange} },
        .{ "layoutQueue", ?Foundation.NSOperationQueue, .{} },
        .{ "limitsLayoutForSuspiciousContents", objc.BOOL, .{} },
        .{ "removeRenderingAttribute:forTextRange:", void, .{ objc.NSString, NSTextRange } },
        .{ "renderingAttributesForLink:atLocation:", Object, .{ Any, void } },
        .{ "renderingAttributesValidator", void, .{} },
        .{ "replaceContentsInRange:withAttributedString:", void, .{ NSTextRange, Foundation.NSAttributedString } },
        .{ "replaceContentsInRange:withTextElements:", void, .{ NSTextRange, void } },
        .{ "replaceTextContentManager:", void, .{NSTextContentManager} },
        .{ "resolvesNaturalAlignmentWithBaseWritingDirection", objc.BOOL, .{} },
        .{ "setDelegate:", void, .{?NSTextLayoutManagerDelegate} },
        .{ "setLayoutQueue:", void, .{?Foundation.NSOperationQueue} },
        .{ "setLimitsLayoutForSuspiciousContents:", void, .{objc.BOOL} },
        .{ "setRenderingAttributes:forTextRange:", void, .{ Any, NSTextRange } },
        .{ "setRenderingAttributesValidator:", void, .{void} },
        .{ "setResolvesNaturalAlignmentWithBaseWritingDirection:", void, .{objc.BOOL} },
        .{ "setTextContainer:", void, .{?NSTextContainer} },
        .{ "setTextSelectionNavigation:", void, .{NSTextSelectionNavigation} },
        .{ "setTextSelections:", void, .{Object} },
        .{ "setUsesFontLeading:", void, .{objc.BOOL} },
        .{ "setUsesHyphenation:", void, .{objc.BOOL} },
        .{ "textContainer", ?NSTextContainer, .{} },
        .{ "textContentManager", ?NSTextContentManager, .{} },
        .{ "textLayoutFragmentForLocation:", ?NSTextLayoutFragment, .{void} },
        .{ "textLayoutFragmentForPosition:", ?NSTextLayoutFragment, .{NSPoint} },
        .{ "textSelectionNavigation", NSTextSelectionNavigation, .{} },
        .{ "textSelections", Object, .{} },
        .{ "textViewportLayoutController", NSTextViewportLayoutController, .{} },
        .{ "usageBoundsForTextContainer", NSRect, .{} },
        .{ "usesFontLeading", objc.BOOL, .{} },
        .{ "usesHyphenation", objc.BOOL, .{} },
    };

    pub fn send(self: NSTextLayoutManager, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "linkRenderingAttributes", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextLayoutManager", class_methods, selector, args);
    }

    pub const SegmentType = enum(i64) {
        standard = 0,
        selection = 1,
        highlight = 2,
    };
};

pub const NSTextLineFragment = struct {
    obj: Object,

    pub const methods = .{
        .{ "attributedString", Foundation.NSAttributedString, .{} },
        .{ "characterIndexForPoint:", objc.NSInteger, .{NSPoint} },
        .{ "characterRange", NSRange, .{} },
        .{ "drawAtPoint:inContext:", void, .{ NSPoint, ?*anyopaque } },
        .{ "fractionOfDistanceThroughGlyphForPoint:", objc.CGFloat, .{NSPoint} },
        .{ "glyphOrigin", NSPoint, .{} },
        .{ "locationForCharacterAtIndex:", NSPoint, .{objc.NSInteger} },
        .{ "typographicBounds", NSRect, .{} },
    };

    pub fn send(self: NSTextLineFragment, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithAttributedString:range:", Object, .{ Foundation.NSAttributedString, NSRange } },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithString:attributes:range:", Object, .{ objc.NSString, Any, NSRange } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextLineFragment", class_methods, selector, args);
    }
};

pub const NSTextList = struct {
    obj: Object,

    pub const methods = .{
        .{ "listOptions", objc.NSInteger, .{} },
        .{ "markerForItemNumber:", objc.NSString, .{objc.NSInteger} },
        .{ "markerFormat", objc.NSString, .{} },
        .{ "ordered", objc.BOOL, .{} },
        .{ "setStartingItemNumber:", void, .{objc.NSInteger} },
        .{ "startingItemNumber", objc.NSInteger, .{} },
    };

    pub fn send(self: NSTextList, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "includesTextListMarkers", objc.BOOL, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithMarkerFormat:options:", Object, .{ objc.NSString, objc.NSInteger } },
        .{ "initWithMarkerFormat:options:startingItemNumber:", Object, .{ objc.NSString, objc.NSInteger, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextList", class_methods, selector, args);
    }
};

pub const NSTextListElement = struct {
    obj: Object,

    pub const Super = NSTextParagraph;
    pub const methods = .{
        .{ "attributedString", Foundation.NSAttributedString, .{} },
        .{ "childElements", Object, .{} },
        .{ "contents", ?Foundation.NSAttributedString, .{} },
        .{ "markerAttributes", ?*anyopaque, .{} },
        .{ "parentElement", ?NSTextListElement, .{} },
        .{ "textList", NSTextList, .{} },
    };

    pub fn send(self: NSTextListElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithParentElement:textList:contents:markerAttributes:childElements:", Object, .{ ?NSTextListElement, NSTextList, ?Foundation.NSAttributedString, ?Any, void } },
        .{ "textListElementWithChildElements:textList:nestingLevel:", Object, .{ void, NSTextList, objc.NSInteger } },
        .{ "textListElementWithContents:markerAttributes:textList:childElements:", Object, .{ Foundation.NSAttributedString, ?Any, NSTextList, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextListElement", class_methods, selector, args);
    }
};

pub const NSTextParagraph = struct {
    obj: Object,

    pub const Super = NSTextElement;
    pub const methods = .{
        .{ "attributedString", Foundation.NSAttributedString, .{} },
        .{ "paragraphContentRange", ?NSTextRange, .{} },
        .{ "paragraphSeparatorRange", ?NSTextRange, .{} },
    };

    pub fn send(self: NSTextParagraph, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithAttributedString:", Object, .{?Foundation.NSAttributedString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextParagraph", class_methods, selector, args);
    }
};

pub const NSTextPreview = struct {
    obj: Object,

    pub const methods = .{
        .{ "candidateRects", Object, .{} },
        .{ "presentationFrame", NSRect, .{} },
        .{ "previewImage", ?*anyopaque, .{} },
    };

    pub fn send(self: NSTextPreview, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithSnapshotImage:presentationFrame:", Object, .{ ?*anyopaque, NSRect } },
        .{ "initWithSnapshotImage:presentationFrame:candidateRects:", Object, .{ ?*anyopaque, NSRect, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextPreview", class_methods, selector, args);
    }
};

pub const NSTextRange = struct {
    obj: Object,

    pub const methods = .{
        .{ "containsLocation:", objc.BOOL, .{void} },
        .{ "containsRange:", objc.BOOL, .{NSTextRange} },
        .{ "empty", objc.BOOL, .{} },
        .{ "endLocation", NSTextLocation, .{} },
        .{ "intersectsWithTextRange:", objc.BOOL, .{NSTextRange} },
        .{ "isEqualToTextRange:", objc.BOOL, .{NSTextRange} },
        .{ "location", NSTextLocation, .{} },
        .{ "textRangeByFormingUnionWithTextRange:", ?*anyopaque, .{NSTextRange} },
        .{ "textRangeByIntersectingWithTextRange:", ?*anyopaque, .{NSTextRange} },
    };

    pub fn send(self: NSTextRange, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithLocation:", Object, .{void} },
        .{ "initWithLocation:endLocation:", Object, .{ void, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextRange", class_methods, selector, args);
    }
};

pub const NSTextSelection = struct {
    obj: Object,

    pub const methods = .{
        .{ "affinity", NSTextSelection.Affinity, .{} },
        .{ "anchorPositionOffset", objc.CGFloat, .{} },
        .{ "granularity", NSTextSelection.Granularity, .{} },
        .{ "logical", objc.BOOL, .{} },
        .{ "secondarySelectionLocation", ?NSTextLocation, .{} },
        .{ "setAnchorPositionOffset:", void, .{objc.CGFloat} },
        .{ "setLogical:", void, .{objc.BOOL} },
        .{ "setSecondarySelectionLocation:", void, .{?NSTextLocation} },
        .{ "setTypingAttributes:", void, .{Object} },
        .{ "textRanges", Object, .{} },
        .{ "textSelectionWithTextRanges:", NSTextSelection, .{void} },
        .{ "transient", objc.BOOL, .{} },
        .{ "typingAttributes", Object, .{} },
    };

    pub fn send(self: NSTextSelection, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithLocation:affinity:", Object, .{ void, NSTextSelection.Affinity } },
        .{ "initWithRange:affinity:granularity:", Object, .{ NSTextRange, NSTextSelection.Affinity, NSTextSelection.Granularity } },
        .{ "initWithRanges:affinity:granularity:", Object, .{ void, NSTextSelection.Affinity, NSTextSelection.Granularity } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextSelection", class_methods, selector, args);
    }

    pub const Affinity = enum(i64) {
        upstream = 0,
        downstream = 1,
    };
    pub const Granularity = enum(i64) {
        character = 0,
        word = 1,
        paragraph = 2,
        line = 3,
        sentence = 4,
    };
};

pub const NSTextSelectionNavigation = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowsNonContiguousRanges", objc.BOOL, .{} },
        .{ "deletionRangesForTextSelection:direction:destination:allowsDecomposition:", Object, .{ NSTextSelection, NSTextSelectionNavigation.Direction, NSTextSelectionNavigation.Destination, objc.BOOL } },
        .{ "destinationSelectionForTextSelection:direction:destination:extending:confined:", ?NSTextSelection, .{ NSTextSelection, NSTextSelectionNavigation.Direction, NSTextSelectionNavigation.Destination, objc.BOOL, objc.BOOL } },
        .{ "flushLayoutCache", void, .{} },
        .{ "resolvedInsertionLocationForTextSelection:writingDirection:", ?NSTextLocation, .{ NSTextSelection, NSTextSelectionNavigation.WritingDirection } },
        .{ "rotatesCoordinateSystemForLayoutOrientation", objc.BOOL, .{} },
        .{ "setAllowsNonContiguousRanges:", void, .{objc.BOOL} },
        .{ "setRotatesCoordinateSystemForLayoutOrientation:", void, .{objc.BOOL} },
        .{ "textSelectionDataSource", ?NSTextSelectionDataSource, .{} },
        .{ "textSelectionForSelectionGranularity:enclosingPoint:inContainerAtLocation:", ?NSTextSelection, .{ NSTextSelection.Granularity, NSPoint, void } },
        .{ "textSelectionForSelectionGranularity:enclosingTextSelection:", NSTextSelection, .{ NSTextSelection.Granularity, NSTextSelection } },
        .{ "textSelectionsInteractingAtPoint:inContainerAtLocation:anchors:modifiers:selecting:bounds:", Object, .{ NSPoint, void, void, objc.NSInteger, objc.BOOL, NSRect } },
    };

    pub fn send(self: NSTextSelectionNavigation, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithDataSource:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextSelectionNavigation", class_methods, selector, args);
    }

    pub const Destination = enum(i64) {
        character = 0,
        word = 1,
        line = 2,
        sentence = 3,
        paragraph = 4,
        container = 5,
        document = 6,
    };
    pub const Direction = enum(i64) {
        forward = 0,
        backward = 1,
        right = 2,
        left = 3,
        up = 4,
        down = 5,
    };
    pub const LayoutOrientation = enum(i64) {
        horizontal = 0,
        vertical = 1,
    };
    pub const WritingDirection = enum(i64) {
        leftToRight = 0,
        rightToLeft = 1,
    };
};

pub const NSTextStorage = struct {
    obj: Object,

    pub const Super = Foundation.NSMutableAttributedString;
    pub const methods = .{
        .{ "addLayoutManager:", void, .{NSLayoutManager} },
        .{ "attributeRuns", Object, .{} },
        .{ "changeInLength", objc.NSInteger, .{} },
        .{ "characters", Object, .{} },
        .{ "delegate", ?NSTextStorageDelegate, .{} },
        .{ "edited:range:changeInLength:", void, .{ objc.NSInteger, NSRange, objc.NSInteger } },
        .{ "editedMask", objc.NSInteger, .{} },
        .{ "editedRange", NSRange, .{} },
        .{ "ensureAttributesAreFixedInRange:", void, .{NSRange} },
        .{ "fixesAttributesLazily", objc.BOOL, .{} },
        .{ "font", ?NSFont, .{} },
        .{ "foregroundColor", ?NSColor, .{} },
        .{ "invalidateAttributesInRange:", void, .{NSRange} },
        .{ "layoutManagers", Object, .{} },
        .{ "paragraphs", Object, .{} },
        .{ "processEditing", void, .{} },
        .{ "removeLayoutManager:", void, .{NSLayoutManager} },
        .{ "setAttributeRuns:", void, .{Object} },
        .{ "setCharacters:", void, .{Object} },
        .{ "setDelegate:", void, .{?NSTextStorageDelegate} },
        .{ "setFont:", void, .{?NSFont} },
        .{ "setForegroundColor:", void, .{?NSColor} },
        .{ "setParagraphs:", void, .{Object} },
        .{ "setTextStorageObserver:", void, .{?NSTextStorageObserving} },
        .{ "setWords:", void, .{Object} },
        .{ "textStorageObserver", ?NSTextStorageObserving, .{} },
        .{ "words", Object, .{} },
    };

    pub fn send(self: NSTextStorage, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSTextTab = struct {
    obj: Object,

    pub const methods = .{
        .{ "alignment", NSTextAlignment, .{} },
        .{ "location", objc.CGFloat, .{} },
        .{ "options", Object, .{} },
        .{ "tabStopType", NSParagraphStyle.TextTabType, .{} },
    };

    pub fn send(self: NSTextTab, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "columnTerminatorsForLocale:", ?*anyopaque, .{?Foundation.NSLocale} },
        .{ "initWithTextAlignment:location:options:", Object, .{ NSTextAlignment, objc.CGFloat, Any } },
        .{ "initWithType:location:", Object, .{ NSParagraphStyle.TextTabType, objc.CGFloat } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextTab", class_methods, selector, args);
    }
};

pub const NSTextTable = struct {
    obj: Object,

    pub const Super = NSTextBlock;
    pub const methods = .{
        .{ "boundsRectForBlock:contentRect:inRect:textContainer:characterRange:", NSRect, .{ NSTextTableBlock, NSRect, NSRect, NSTextContainer, NSRange } },
        .{ "collapsesBorders", objc.BOOL, .{} },
        .{ "drawBackgroundForBlock:withFrame:inView:characterRange:layoutManager:", void, .{ NSTextTableBlock, NSRect, NSView, NSRange, NSLayoutManager } },
        .{ "hidesEmptyCells", objc.BOOL, .{} },
        .{ "layoutAlgorithm", NSTextTable.LayoutAlgorithm, .{} },
        .{ "numberOfColumns", objc.NSInteger, .{} },
        .{ "rectForBlock:layoutAtPoint:inRect:textContainer:characterRange:", NSRect, .{ NSTextTableBlock, NSPoint, NSRect, NSTextContainer, NSRange } },
        .{ "setCollapsesBorders:", void, .{objc.BOOL} },
        .{ "setHidesEmptyCells:", void, .{objc.BOOL} },
        .{ "setLayoutAlgorithm:", void, .{NSTextTable.LayoutAlgorithm} },
        .{ "setNumberOfColumns:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSTextTable, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const LayoutAlgorithm = enum(i64) {
        automaticLayoutAlgorithm = 0,
        fixedLayoutAlgorithm = 1,
    };
};

pub const NSTextTableBlock = struct {
    obj: Object,

    pub const Super = NSTextBlock;
    pub const methods = .{
        .{ "columnSpan", objc.NSInteger, .{} },
        .{ "rowSpan", objc.NSInteger, .{} },
        .{ "startingColumn", objc.NSInteger, .{} },
        .{ "startingRow", objc.NSInteger, .{} },
        .{ "table", NSTextTable, .{} },
    };

    pub fn send(self: NSTextTableBlock, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithTable:startingRow:rowSpan:startingColumn:columnSpan:", Object, .{ NSTextTable, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextTableBlock", class_methods, selector, args);
    }
};

pub const NSTextView = struct {
    obj: Object,

    pub const Super = NSText;
    pub const methods = .{
        .{ "acceptableDragTypes", Object, .{} },
        .{ "acceptsGlyphInfo", objc.BOOL, .{} },
        .{ "alignJustified:", void, .{?Any} },
        .{ "allowedInputSourceLocales", ?*anyopaque, .{} },
        .{ "allowedWritingToolsResultOptions", objc.NSInteger, .{} },
        .{ "allowsCharacterPickerTouchBarItem", objc.BOOL, .{} },
        .{ "allowsDocumentBackgroundColorChange", objc.BOOL, .{} },
        .{ "allowsImageEditing", objc.BOOL, .{} },
        .{ "allowsUndo", objc.BOOL, .{} },
        .{ "automaticDashSubstitutionEnabled", objc.BOOL, .{} },
        .{ "automaticDataDetectionEnabled", objc.BOOL, .{} },
        .{ "automaticLinkDetectionEnabled", objc.BOOL, .{} },
        .{ "automaticQuoteSubstitutionEnabled", objc.BOOL, .{} },
        .{ "automaticSpellingCorrectionEnabled", objc.BOOL, .{} },
        .{ "automaticTextCompletionEnabled", objc.BOOL, .{} },
        .{ "automaticTextReplacementEnabled", objc.BOOL, .{} },
        .{ "backgroundColor", NSColor, .{} },
        .{ "breakUndoCoalescing", void, .{} },
        .{ "candidateListTouchBarItem", ?NSCandidateListTouchBarItem, .{} },
        .{ "changeAttributes:", void, .{?Any} },
        .{ "changeColor:", void, .{?Any} },
        .{ "changeDocumentBackgroundColor:", void, .{?Any} },
        .{ "changeLayoutOrientation:", void, .{?Any} },
        .{ "characterIndexForInsertionAtPoint:", objc.NSInteger, .{NSPoint} },
        .{ "checkTextInDocument:", void, .{?Any} },
        .{ "checkTextInRange:types:options:", void, .{ NSRange, u64, Any } },
        .{ "checkTextInSelection:", void, .{?Any} },
        .{ "cleanUpAfterDragOperation", void, .{} },
        .{ "clickedOnLink:atIndex:", void, .{ Any, objc.NSInteger } },
        .{ "coalescingUndo", objc.BOOL, .{} },
        .{ "complete:", void, .{?Any} },
        .{ "completionsForPartialWordRange:indexOfSelectedItem:", ?*anyopaque, .{ NSRange, objc.NSInteger } },
        .{ "continuousSpellCheckingEnabled", objc.BOOL, .{} },
        .{ "defaultParagraphStyle", ?NSParagraphStyle, .{} },
        .{ "delegate", ?NSTextViewDelegate, .{} },
        .{ "didChangeText", void, .{} },
        .{ "displaysLinkToolTips", objc.BOOL, .{} },
        .{ "dragImageForSelectionWithEvent:origin:", ?NSImage, .{ NSEvent, NSPoint } },
        .{ "dragOperationForDraggingInfo:type:", objc.NSInteger, .{ void, objc.NSString } },
        .{ "dragSelectionWithEvent:offset:slideBack:", objc.BOOL, .{ NSEvent, NSSize, objc.BOOL } },
        .{ "drawInsertionPointInRect:color:turnedOn:", void, .{ NSRect, NSColor, objc.BOOL } },
        .{ "drawTextHighlightBackgroundForTextRange:origin:", void, .{ NSTextRange, NSPoint } },
        .{ "drawViewBackgroundInRect:", void, .{NSRect} },
        .{ "drawsBackground", objc.BOOL, .{} },
        .{ "editable", objc.BOOL, .{} },
        .{ "enabledTextCheckingTypes", u64, .{} },
        .{ "fieldEditor", objc.BOOL, .{} },
        .{ "grammarCheckingEnabled", objc.BOOL, .{} },
        .{ "handleTextCheckingResults:forRange:types:options:orthography:wordCount:", void, .{ void, NSRange, u64, Any, Foundation.NSOrthography, objc.NSInteger } },
        .{ "highlight:", void, .{?Any} },
        .{ "importsGraphics", objc.BOOL, .{} },
        .{ "incrementalSearchingEnabled", objc.BOOL, .{} },
        .{ "inlinePredictionType", NSTextInputTraitType, .{} },
        .{ "insertCompletion:forPartialWordRange:movement:isFinal:", void, .{ objc.NSString, NSRange, objc.NSInteger, objc.BOOL } },
        .{ "insertText:", void, .{Any} },
        .{ "insertionPointColor", NSColor, .{} },
        .{ "invalidateTextContainerOrigin", void, .{} },
        .{ "layoutManager", ?NSLayoutManager, .{} },
        .{ "linkTextAttributes", ?*anyopaque, .{} },
        .{ "loosenKerning:", void, .{?Any} },
        .{ "lowerBaseline:", void, .{?Any} },
        .{ "markedTextAttributes", ?*anyopaque, .{} },
        .{ "mathExpressionCompletionType", NSTextInputTraitType, .{} },
        .{ "orderFrontLinkPanel:", void, .{?Any} },
        .{ "orderFrontListPanel:", void, .{?Any} },
        .{ "orderFrontSharingServicePicker:", void, .{?Any} },
        .{ "orderFrontSpacingPanel:", void, .{?Any} },
        .{ "orderFrontSubstitutionsPanel:", void, .{?Any} },
        .{ "orderFrontTablePanel:", void, .{?Any} },
        .{ "outline:", void, .{?Any} },
        .{ "pasteAsPlainText:", void, .{?Any} },
        .{ "pasteAsRichText:", void, .{?Any} },
        .{ "performFindPanelAction:", void, .{?Any} },
        .{ "performValidatedReplacementInRange:withAttributedString:", objc.BOOL, .{ NSRange, Foundation.NSAttributedString } },
        .{ "preferredPasteboardTypeFromArray:restrictedToTypesFromArray:", objc.NSString, .{ void, void } },
        .{ "quickLookPreviewableItemsInRanges:", Object, .{void} },
        .{ "raiseBaseline:", void, .{?Any} },
        .{ "rangeForUserCharacterAttributeChange", NSRange, .{} },
        .{ "rangeForUserCompletion", NSRange, .{} },
        .{ "rangeForUserParagraphAttributeChange", NSRange, .{} },
        .{ "rangeForUserTextChange", NSRange, .{} },
        .{ "rangesForUserCharacterAttributeChange", ?*anyopaque, .{} },
        .{ "rangesForUserParagraphAttributeChange", ?*anyopaque, .{} },
        .{ "rangesForUserTextChange", ?*anyopaque, .{} },
        .{ "readSelectionFromPasteboard:", objc.BOOL, .{NSPasteboard} },
        .{ "readSelectionFromPasteboard:type:", objc.BOOL, .{ NSPasteboard, objc.NSString } },
        .{ "readablePasteboardTypes", Object, .{} },
        .{ "replaceTextContainer:", void, .{NSTextContainer} },
        .{ "richText", objc.BOOL, .{} },
        .{ "rulerView:didAddMarker:", void, .{ NSRulerView, NSRulerMarker } },
        .{ "rulerView:didMoveMarker:", void, .{ NSRulerView, NSRulerMarker } },
        .{ "rulerView:didRemoveMarker:", void, .{ NSRulerView, NSRulerMarker } },
        .{ "rulerView:handleMouseDown:", void, .{ NSRulerView, NSEvent } },
        .{ "rulerView:shouldAddMarker:", objc.BOOL, .{ NSRulerView, NSRulerMarker } },
        .{ "rulerView:shouldMoveMarker:", objc.BOOL, .{ NSRulerView, NSRulerMarker } },
        .{ "rulerView:shouldRemoveMarker:", objc.BOOL, .{ NSRulerView, NSRulerMarker } },
        .{ "rulerView:willAddMarker:atLocation:", objc.CGFloat, .{ NSRulerView, NSRulerMarker, objc.CGFloat } },
        .{ "rulerView:willMoveMarker:toLocation:", objc.CGFloat, .{ NSRulerView, NSRulerMarker, objc.CGFloat } },
        .{ "rulerVisible", objc.BOOL, .{} },
        .{ "selectable", objc.BOOL, .{} },
        .{ "selectedRanges", Object, .{} },
        .{ "selectedTextAttributes", Object, .{} },
        .{ "selectionAffinity", NSSelectionAffinity, .{} },
        .{ "selectionGranularity", NSSelectionGranularity, .{} },
        .{ "selectionRangeForProposedRange:granularity:", NSRange, .{ NSRange, NSSelectionGranularity } },
        .{ "setAcceptsGlyphInfo:", void, .{objc.BOOL} },
        .{ "setAlignment:range:", void, .{ NSTextAlignment, NSRange } },
        .{ "setAllowedInputSourceLocales:", void, .{?*anyopaque} },
        .{ "setAllowedWritingToolsResultOptions:", void, .{objc.NSInteger} },
        .{ "setAllowsCharacterPickerTouchBarItem:", void, .{objc.BOOL} },
        .{ "setAllowsDocumentBackgroundColorChange:", void, .{objc.BOOL} },
        .{ "setAllowsImageEditing:", void, .{objc.BOOL} },
        .{ "setAllowsUndo:", void, .{objc.BOOL} },
        .{ "setAutomaticDashSubstitutionEnabled:", void, .{objc.BOOL} },
        .{ "setAutomaticDataDetectionEnabled:", void, .{objc.BOOL} },
        .{ "setAutomaticLinkDetectionEnabled:", void, .{objc.BOOL} },
        .{ "setAutomaticQuoteSubstitutionEnabled:", void, .{objc.BOOL} },
        .{ "setAutomaticSpellingCorrectionEnabled:", void, .{objc.BOOL} },
        .{ "setAutomaticTextCompletionEnabled:", void, .{objc.BOOL} },
        .{ "setAutomaticTextReplacementEnabled:", void, .{objc.BOOL} },
        .{ "setBackgroundColor:", void, .{NSColor} },
        .{ "setBaseWritingDirection:range:", void, .{ NSWritingDirection, NSRange } },
        .{ "setConstrainedFrameSize:", void, .{NSSize} },
        .{ "setContinuousSpellCheckingEnabled:", void, .{objc.BOOL} },
        .{ "setDefaultParagraphStyle:", void, .{?NSParagraphStyle} },
        .{ "setDelegate:", void, .{?NSTextViewDelegate} },
        .{ "setDisplaysLinkToolTips:", void, .{objc.BOOL} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "setEditable:", void, .{objc.BOOL} },
        .{ "setEnabledTextCheckingTypes:", void, .{u64} },
        .{ "setFieldEditor:", void, .{objc.BOOL} },
        .{ "setGrammarCheckingEnabled:", void, .{objc.BOOL} },
        .{ "setImportsGraphics:", void, .{objc.BOOL} },
        .{ "setIncrementalSearchingEnabled:", void, .{objc.BOOL} },
        .{ "setInlinePredictionType:", void, .{NSTextInputTraitType} },
        .{ "setInsertionPointColor:", void, .{NSColor} },
        .{ "setLayoutOrientation:", void, .{NSLayoutManager.TextLayoutOrientation} },
        .{ "setLinkTextAttributes:", void, .{?*anyopaque} },
        .{ "setMarkedTextAttributes:", void, .{?*anyopaque} },
        .{ "setMathExpressionCompletionType:", void, .{NSTextInputTraitType} },
        .{ "setNeedsDisplayInRect:avoidAdditionalLayout:", void, .{ NSRect, objc.BOOL } },
        .{ "setRichText:", void, .{objc.BOOL} },
        .{ "setRulerVisible:", void, .{objc.BOOL} },
        .{ "setSelectable:", void, .{objc.BOOL} },
        .{ "setSelectedRange:", void, .{NSRange} },
        .{ "setSelectedRange:affinity:stillSelecting:", void, .{ NSRange, NSSelectionAffinity, objc.BOOL } },
        .{ "setSelectedRanges:", void, .{Object} },
        .{ "setSelectedRanges:affinity:stillSelecting:", void, .{ void, NSSelectionAffinity, objc.BOOL } },
        .{ "setSelectedTextAttributes:", void, .{Object} },
        .{ "setSelectionGranularity:", void, .{NSSelectionGranularity} },
        .{ "setSmartInsertDeleteEnabled:", void, .{objc.BOOL} },
        .{ "setSpellingState:range:", void, .{ objc.NSInteger, NSRange } },
        .{ "setTextContainer:", void, .{?NSTextContainer} },
        .{ "setTextContainerInset:", void, .{NSSize} },
        .{ "setTextHighlightAttributes:", void, .{Object} },
        .{ "setTypingAttributes:", void, .{Object} },
        .{ "setUsesAdaptiveColorMappingForDarkAppearance:", void, .{objc.BOOL} },
        .{ "setUsesFindBar:", void, .{objc.BOOL} },
        .{ "setUsesFindPanel:", void, .{objc.BOOL} },
        .{ "setUsesFontPanel:", void, .{objc.BOOL} },
        .{ "setUsesInspectorBar:", void, .{objc.BOOL} },
        .{ "setUsesRolloverButtonForSelection:", void, .{objc.BOOL} },
        .{ "setUsesRuler:", void, .{objc.BOOL} },
        .{ "setWritingToolsBehavior:", void, .{NSWritingToolsBehavior} },
        .{ "shouldChangeTextInRange:replacementString:", objc.BOOL, .{ NSRange, ?objc.NSString } },
        .{ "shouldChangeTextInRanges:replacementStrings:", objc.BOOL, .{ void, void } },
        .{ "shouldDrawInsertionPoint", objc.BOOL, .{} },
        .{ "showFindIndicatorForRange:", void, .{NSRange} },
        .{ "smartDeleteRangeForProposedRange:", NSRange, .{NSRange} },
        .{ "smartInsertAfterStringForString:replacingRange:", ?objc.NSString, .{ objc.NSString, NSRange } },
        .{ "smartInsertBeforeStringForString:replacingRange:", ?objc.NSString, .{ objc.NSString, NSRange } },
        .{ "smartInsertDeleteEnabled", objc.BOOL, .{} },
        .{ "smartInsertForString:replacingRange:beforeString:afterString:", void, .{ objc.NSString, NSRange, ?objc.NSString, ?objc.NSString } },
        .{ "spellCheckerDocumentTag", objc.NSInteger, .{} },
        .{ "startSpeaking:", void, .{?Any} },
        .{ "stopSpeaking:", void, .{?Any} },
        .{ "textContainer", ?NSTextContainer, .{} },
        .{ "textContainerInset", NSSize, .{} },
        .{ "textContainerOrigin", NSPoint, .{} },
        .{ "textContentStorage", ?NSTextContentStorage, .{} },
        .{ "textHighlightAttributes", Object, .{} },
        .{ "textLayoutManager", ?NSTextLayoutManager, .{} },
        .{ "textStorage", ?NSTextStorage, .{} },
        .{ "tightenKerning:", void, .{?Any} },
        .{ "toggleAutomaticDashSubstitution:", void, .{?Any} },
        .{ "toggleAutomaticDataDetection:", void, .{?Any} },
        .{ "toggleAutomaticLinkDetection:", void, .{?Any} },
        .{ "toggleAutomaticQuoteSubstitution:", void, .{?Any} },
        .{ "toggleAutomaticSpellingCorrection:", void, .{?Any} },
        .{ "toggleAutomaticTextCompletion:", void, .{?Any} },
        .{ "toggleAutomaticTextReplacement:", void, .{?Any} },
        .{ "toggleContinuousSpellChecking:", void, .{?Any} },
        .{ "toggleGrammarChecking:", void, .{?Any} },
        .{ "toggleQuickLookPreviewPanel:", void, .{?Any} },
        .{ "toggleSmartInsertDelete:", void, .{?Any} },
        .{ "toggleTraditionalCharacterShape:", void, .{?Any} },
        .{ "turnOffKerning:", void, .{?Any} },
        .{ "turnOffLigatures:", void, .{?Any} },
        .{ "typingAttributes", Object, .{} },
        .{ "updateCandidates", void, .{} },
        .{ "updateDragTypeRegistration", void, .{} },
        .{ "updateFontPanel", void, .{} },
        .{ "updateInsertionPointStateAndRestartTimer:", void, .{objc.BOOL} },
        .{ "updateQuickLookPreviewPanel", void, .{} },
        .{ "updateRuler", void, .{} },
        .{ "updateTextTouchBarItems", void, .{} },
        .{ "updateTouchBarItemIdentifiers", void, .{} },
        .{ "useAllLigatures:", void, .{?Any} },
        .{ "useStandardKerning:", void, .{?Any} },
        .{ "useStandardLigatures:", void, .{?Any} },
        .{ "usesAdaptiveColorMappingForDarkAppearance", objc.BOOL, .{} },
        .{ "usesFindBar", objc.BOOL, .{} },
        .{ "usesFindPanel", objc.BOOL, .{} },
        .{ "usesFontPanel", objc.BOOL, .{} },
        .{ "usesInspectorBar", objc.BOOL, .{} },
        .{ "usesRolloverButtonForSelection", objc.BOOL, .{} },
        .{ "usesRuler", objc.BOOL, .{} },
        .{ "validRequestorForSendType:returnType:", ?Any, .{ objc.NSString, objc.NSString } },
        .{ "writablePasteboardTypes", Object, .{} },
        .{ "writeSelectionToPasteboard:type:", objc.BOOL, .{ NSPasteboard, objc.NSString } },
        .{ "writeSelectionToPasteboard:types:", objc.BOOL, .{ NSPasteboard, void } },
        .{ "writingToolsActive", objc.BOOL, .{} },
        .{ "writingToolsBehavior", NSWritingToolsBehavior, .{} },
    };

    pub fn send(self: NSTextView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "fieldEditor", ?*anyopaque, .{} },
        .{ "initUsingTextLayoutManager:", Object, .{objc.BOOL} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithFrame:", Object, .{NSRect} },
        .{ "initWithFrame:textContainer:", Object, .{ NSRect, ?NSTextContainer } },
        .{ "registerForServices", void, .{} },
        .{ "scrollableDocumentContentTextView", NSScrollView, .{} },
        .{ "scrollablePlainDocumentContentTextView", NSScrollView, .{} },
        .{ "scrollableTextView", NSScrollView, .{} },
        .{ "stronglyReferencesTextStorage", objc.BOOL, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextView", class_methods, selector, args);
    }
};

pub const NSTextViewportLayoutController = struct {
    obj: Object,

    pub const methods = .{
        .{ "adjustViewportByVerticalOffset:", void, .{objc.CGFloat} },
        .{ "delegate", ?NSTextViewportLayoutControllerDelegate, .{} },
        .{ "layoutViewport", void, .{} },
        .{ "relocateViewportToTextLocation:", objc.CGFloat, .{void} },
        .{ "setDelegate:", void, .{?NSTextViewportLayoutControllerDelegate} },
        .{ "textLayoutManager", ?NSTextLayoutManager, .{} },
        .{ "viewportBounds", NSRect, .{} },
        .{ "viewportRange", ?NSTextRange, .{} },
    };

    pub fn send(self: NSTextViewportLayoutController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithTextLayoutManager:", Object, .{NSTextLayoutManager} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextViewportLayoutController", class_methods, selector, args);
    }
};

pub const NSTintConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "adaptsToUserAccentColor", objc.BOOL, .{} },
        .{ "baseTintColor", ?NSColor, .{} },
        .{ "equivalentContentTintColor", ?NSColor, .{} },
    };

    pub fn send(self: NSTintConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultTintConfiguration", NSTintConfiguration, .{} },
        .{ "monochromeTintConfiguration", NSTintConfiguration, .{} },
        .{ "tintConfigurationWithFixedColor:", Object, .{NSColor} },
        .{ "tintConfigurationWithPreferredColor:", Object, .{NSColor} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTintConfiguration", class_methods, selector, args);
    }
};

pub const NSTitlebarAccessoryViewController = struct {
    obj: Object,

    pub const Super = NSViewController;
    pub const methods = .{
        .{ "automaticallyAdjustsSize", objc.BOOL, .{} },
        .{ "fullScreenMinHeight", objc.CGFloat, .{} },
        .{ "hidden", objc.BOOL, .{} },
        .{ "layoutAttribute", NSLayoutConstraint.Attribute, .{} },
        .{ "preferredScrollEdgeEffectStyle", NSScrollEdgeEffectStyle, .{} },
        .{ "setAutomaticallyAdjustsSize:", void, .{objc.BOOL} },
        .{ "setFullScreenMinHeight:", void, .{objc.CGFloat} },
        .{ "setHidden:", void, .{objc.BOOL} },
        .{ "setLayoutAttribute:", void, .{NSLayoutConstraint.Attribute} },
        .{ "setPreferredScrollEdgeEffectStyle:", void, .{NSScrollEdgeEffectStyle} },
        .{ "viewDidAppear", void, .{} },
        .{ "viewDidDisappear", void, .{} },
        .{ "viewWillAppear", void, .{} },
    };

    pub fn send(self: NSTitlebarAccessoryViewController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSTokenField = struct {
    obj: Object,

    pub const Super = NSTextField;
    pub const methods = .{
        .{ "completionDelay", TimeInterval, .{} },
        .{ "delegate", ?NSTokenFieldDelegate, .{} },
        .{ "setCompletionDelay:", void, .{TimeInterval} },
        .{ "setDelegate:", void, .{?NSTokenFieldDelegate} },
        .{ "setTokenStyle:", void, .{NSTokenField.TokenStyle} },
        .{ "setTokenizingCharacterSet:", void, .{?*anyopaque} },
        .{ "tokenStyle", NSTokenField.TokenStyle, .{} },
        .{ "tokenizingCharacterSet", ?*anyopaque, .{} },
    };

    pub fn send(self: NSTokenField, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultCompletionDelay", TimeInterval, .{} },
        .{ "defaultTokenizingCharacterSet", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTokenField", class_methods, selector, args);
    }

    pub const TokenStyle = enum(i64) {
        default = 0,
        none = 1,
        rounded = 2,
        squared = 3,
        plainSquared = 4,
    };
};

pub const NSTokenFieldCell = struct {
    obj: Object,

    pub const Super = NSTextFieldCell;
    pub const methods = .{
        .{ "completionDelay", TimeInterval, .{} },
        .{ "delegate", ?NSTokenFieldCellDelegate, .{} },
        .{ "setCompletionDelay:", void, .{TimeInterval} },
        .{ "setDelegate:", void, .{?NSTokenFieldCellDelegate} },
        .{ "setTokenStyle:", void, .{NSTokenField.TokenStyle} },
        .{ "setTokenizingCharacterSet:", void, .{?*anyopaque} },
        .{ "tokenStyle", NSTokenField.TokenStyle, .{} },
        .{ "tokenizingCharacterSet", ?*anyopaque, .{} },
    };

    pub fn send(self: NSTokenFieldCell, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultCompletionDelay", TimeInterval, .{} },
        .{ "defaultTokenizingCharacterSet", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTokenFieldCell", class_methods, selector, args);
    }
};

pub const NSToolbar = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowsDisplayModeCustomization", objc.BOOL, .{} },
        .{ "allowsExtensionItems", objc.BOOL, .{} },
        .{ "allowsUserCustomization", objc.BOOL, .{} },
        .{ "autosavesConfiguration", objc.BOOL, .{} },
        .{ "centeredItemIdentifier", objc.NSString, .{} },
        .{ "centeredItemIdentifiers", objc.NSString, .{} },
        .{ "configurationDictionary", Object, .{} },
        .{ "customizationPaletteIsRunning", objc.BOOL, .{} },
        .{ "delegate", ?NSToolbarDelegate, .{} },
        .{ "displayMode", NSToolbar.DisplayMode, .{} },
        .{ "fullScreenAccessoryView", ?NSView, .{} },
        .{ "fullScreenAccessoryViewMaxHeight", objc.CGFloat, .{} },
        .{ "fullScreenAccessoryViewMinHeight", objc.CGFloat, .{} },
        .{ "identifier", objc.NSString, .{} },
        .{ "insertItemWithItemIdentifier:atIndex:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "itemIdentifiers", Object, .{} },
        .{ "items", Object, .{} },
        .{ "removeItemAtIndex:", void, .{objc.NSInteger} },
        .{ "removeItemWithItemIdentifier:", void, .{objc.NSString} },
        .{ "runCustomizationPalette:", void, .{?Any} },
        .{ "selectedItemIdentifier", objc.NSString, .{} },
        .{ "setAllowsDisplayModeCustomization:", void, .{objc.BOOL} },
        .{ "setAllowsExtensionItems:", void, .{objc.BOOL} },
        .{ "setAllowsUserCustomization:", void, .{objc.BOOL} },
        .{ "setAutosavesConfiguration:", void, .{objc.BOOL} },
        .{ "setCenteredItemIdentifier:", void, .{objc.NSString} },
        .{ "setCenteredItemIdentifiers:", void, .{objc.NSString} },
        .{ "setConfigurationFromDictionary:", void, .{Any} },
        .{ "setDelegate:", void, .{?NSToolbarDelegate} },
        .{ "setDisplayMode:", void, .{NSToolbar.DisplayMode} },
        .{ "setFullScreenAccessoryView:", void, .{?NSView} },
        .{ "setFullScreenAccessoryViewMaxHeight:", void, .{objc.CGFloat} },
        .{ "setFullScreenAccessoryViewMinHeight:", void, .{objc.CGFloat} },
        .{ "setItemIdentifiers:", void, .{Object} },
        .{ "setSelectedItemIdentifier:", void, .{objc.NSString} },
        .{ "setShowsBaselineSeparator:", void, .{objc.BOOL} },
        .{ "setSizeMode:", void, .{NSToolbar.SizeMode} },
        .{ "setVisible:", void, .{objc.BOOL} },
        .{ "showsBaselineSeparator", objc.BOOL, .{} },
        .{ "sizeMode", NSToolbar.SizeMode, .{} },
        .{ "validateVisibleItems", void, .{} },
        .{ "visible", objc.BOOL, .{} },
        .{ "visibleItems", ?*anyopaque, .{} },
    };

    pub fn send(self: NSToolbar, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithIdentifier:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSToolbar", class_methods, selector, args);
    }

    pub const DisplayMode = enum(i64) {
        default = 0,
        iconAndLabel = 1,
        iconOnly = 2,
        labelOnly = 3,
    };
    pub const SizeMode = enum(i64) {
        default = 0,
        regular = 1,
        small = 2,
    };

    pub fn create(identifier: [*:0]const u8) NSToolbar {
        return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSToolbar", "alloc", .{}), "initWithIdentifier:", .{objc.nsString(identifier)}) };
    }
};

pub const NSToolbarItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "action", Selector, .{} },
        .{ "allowsDuplicatesInToolbar", objc.BOOL, .{} },
        .{ "autovalidates", objc.BOOL, .{} },
        .{ "backgroundTintColor", ?NSColor, .{} },
        .{ "bordered", objc.BOOL, .{} },
        .{ "enabled", objc.BOOL, .{} },
        .{ "hidden", objc.BOOL, .{} },
        .{ "image", ?NSImage, .{} },
        .{ "itemIdentifier", objc.NSString, .{} },
        .{ "label", objc.NSString, .{} },
        .{ "maxSize", NSSize, .{} },
        .{ "menuFormRepresentation", ?NSMenuItem, .{} },
        .{ "minSize", NSSize, .{} },
        .{ "navigational", objc.BOOL, .{} },
        .{ "paletteLabel", objc.NSString, .{} },
        .{ "possibleLabels", objc.NSString, .{} },
        .{ "setAction:", void, .{Selector} },
        .{ "setAutovalidates:", void, .{objc.BOOL} },
        .{ "setBackgroundTintColor:", void, .{?NSColor} },
        .{ "setBordered:", void, .{objc.BOOL} },
        .{ "setEnabled:", void, .{objc.BOOL} },
        .{ "setHidden:", void, .{objc.BOOL} },
        .{ "setImage:", void, .{?NSImage} },
        .{ "setLabel:", void, .{objc.NSString} },
        .{ "setMaxSize:", void, .{NSSize} },
        .{ "setMenuFormRepresentation:", void, .{?NSMenuItem} },
        .{ "setMinSize:", void, .{NSSize} },
        .{ "setNavigational:", void, .{objc.BOOL} },
        .{ "setPaletteLabel:", void, .{objc.NSString} },
        .{ "setPossibleLabels:", void, .{objc.NSString} },
        .{ "setStyle:", void, .{NSToolbarItem.Style} },
        .{ "setTag:", void, .{objc.NSInteger} },
        .{ "setTarget:", void, .{?AnyObject} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setToolTip:", void, .{?objc.NSString} },
        .{ "setView:", void, .{?NSView} },
        .{ "setVisibilityPriority:", void, .{objc.NSInteger} },
        .{ "style", NSToolbarItem.Style, .{} },
        .{ "tag", objc.NSInteger, .{} },
        .{ "target", ?AnyObject, .{} },
        .{ "title", objc.NSString, .{} },
        .{ "toolTip", ?objc.NSString, .{} },
        .{ "toolbar", ?NSToolbar, .{} },
        .{ "validate", void, .{} },
        .{ "view", ?NSView, .{} },
        .{ "visibilityPriority", objc.NSInteger, .{} },
        .{ "visible", objc.BOOL, .{} },
    };

    pub fn send(self: NSToolbarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithItemIdentifier:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSToolbarItem", class_methods, selector, args);
    }

    pub const Style = enum(i64) {
        plain = 0,
        prominent = 1,
    };

    pub fn create(identifier: Object) NSToolbarItem {
        return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSToolbarItem", "alloc", .{}), "initWithItemIdentifier:", .{identifier}) };
    }
};

pub const NSToolbarItemGroup = struct {
    obj: Object,

    pub const Super = NSToolbarItem;
    pub const methods = .{
        .{ "controlRepresentation", NSToolbarItemGroup.ControlRepresentation, .{} },
        .{ "isSelectedAtIndex:", objc.BOOL, .{objc.NSInteger} },
        .{ "selectedIndex", objc.NSInteger, .{} },
        .{ "selectionMode", NSToolbarItemGroup.SelectionMode, .{} },
        .{ "setControlRepresentation:", void, .{NSToolbarItemGroup.ControlRepresentation} },
        .{ "setSelected:atIndex:", void, .{ objc.BOOL, objc.NSInteger } },
        .{ "setSelectedIndex:", void, .{objc.NSInteger} },
        .{ "setSelectionMode:", void, .{NSToolbarItemGroup.SelectionMode} },
        .{ "setSubitems:", void, .{Object} },
        .{ "subitems", Object, .{} },
    };

    pub fn send(self: NSToolbarItemGroup, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "groupWithItemIdentifier:images:selectionMode:labels:target:action:", Object, .{ objc.NSString, void, NSToolbarItemGroup.SelectionMode, void, ?Any, Selector } },
        .{ "groupWithItemIdentifier:titles:selectionMode:labels:target:action:", Object, .{ objc.NSString, void, NSToolbarItemGroup.SelectionMode, void, ?Any, Selector } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSToolbarItemGroup", class_methods, selector, args);
    }

    pub const ControlRepresentation = enum(i64) {
        automatic = 0,
        expanded = 1,
        collapsed = 2,
    };
    pub const SelectionMode = enum(i64) {
        selectOne = 0,
        selectAny = 1,
        momentary = 2,
    };
};

pub const NSTouch = struct {
    obj: Object,

    pub const methods = .{
        .{ "device", ?Any, .{} },
        .{ "deviceSize", NSSize, .{} },
        .{ "identity", NSObjectProtocol, .{} },
        .{ "locationInView:", NSPoint, .{?NSView} },
        .{ "normalizedPosition", NSPoint, .{} },
        .{ "phase", objc.NSInteger, .{} },
        .{ "previousLocationInView:", NSPoint, .{?NSView} },
        .{ "resting", objc.BOOL, .{} },
        .{ "type", NSTouch.TouchType, .{} },
    };

    pub fn send(self: NSTouch, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const TouchType = enum(i64) {
        direct = 0,
        indirect = 1,
    };
};

pub const NSTouchBar = struct {
    obj: Object,

    pub const methods = .{
        .{ "customizationAllowedItemIdentifiers", Object, .{} },
        .{ "customizationIdentifier", objc.NSString, .{} },
        .{ "customizationRequiredItemIdentifiers", Object, .{} },
        .{ "defaultItemIdentifiers", Object, .{} },
        .{ "delegate", ?NSTouchBarDelegate, .{} },
        .{ "escapeKeyReplacementItemIdentifier", objc.NSString, .{} },
        .{ "itemForIdentifier:", ?NSTouchBarItem, .{objc.NSString} },
        .{ "itemIdentifiers", Object, .{} },
        .{ "principalItemIdentifier", objc.NSString, .{} },
        .{ "setCustomizationAllowedItemIdentifiers:", void, .{Object} },
        .{ "setCustomizationIdentifier:", void, .{objc.NSString} },
        .{ "setCustomizationRequiredItemIdentifiers:", void, .{Object} },
        .{ "setDefaultItemIdentifiers:", void, .{Object} },
        .{ "setDelegate:", void, .{?NSTouchBarDelegate} },
        .{ "setEscapeKeyReplacementItemIdentifier:", void, .{objc.NSString} },
        .{ "setPrincipalItemIdentifier:", void, .{objc.NSString} },
        .{ "setTemplateItems:", void, .{NSTouchBarItem} },
        .{ "templateItems", NSTouchBarItem, .{} },
        .{ "visible", objc.BOOL, .{} },
    };

    pub fn send(self: NSTouchBar, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "automaticCustomizeTouchBarMenuItemEnabled", objc.BOOL, .{} },
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "setAutomaticCustomizeTouchBarMenuItemEnabled:", void, .{objc.BOOL} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTouchBar", class_methods, selector, args);
    }
};

pub const NSTouchBarItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "customizationLabel", objc.NSString, .{} },
        .{ "identifier", objc.NSString, .{} },
        .{ "setVisibilityPriority:", void, .{f32} },
        .{ "view", ?NSView, .{} },
        .{ "viewController", ?NSViewController, .{} },
        .{ "visibilityPriority", f32, .{} },
        .{ "visible", objc.BOOL, .{} },
    };

    pub fn send(self: NSTouchBarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithIdentifier:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTouchBarItem", class_methods, selector, args);
    }
};

pub const NSTrackingArea = struct {
    obj: Object,

    pub const methods = .{
        .{ "options", objc.NSInteger, .{} },
        .{ "owner", ?AnyObject, .{} },
        .{ "rect", NSRect, .{} },
        .{ "userInfo", ?*anyopaque, .{} },
    };

    pub fn send(self: NSTrackingArea, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithRect:options:owner:userInfo:", Object, .{ NSRect, objc.NSInteger, ?Any, ?Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTrackingArea", class_methods, selector, args);
    }
};

pub const NSTrackingSeparatorToolbarItem = struct {
    obj: Object,

    pub const Super = NSToolbarItem;
    pub const methods = .{
        .{ "dividerIndex", objc.NSInteger, .{} },
        .{ "setDividerIndex:", void, .{objc.NSInteger} },
        .{ "setSplitView:", void, .{NSSplitView} },
        .{ "splitView", NSSplitView, .{} },
    };

    pub fn send(self: NSTrackingSeparatorToolbarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "trackingSeparatorToolbarItemWithIdentifier:splitView:dividerIndex:", Object, .{ objc.NSString, NSSplitView, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTrackingSeparatorToolbarItem", class_methods, selector, args);
    }
};

pub const NSTreeController = struct {
    obj: Object,

    pub const Super = NSObjectController;
    pub const methods = .{
        .{ "add:", void, .{?Any} },
        .{ "addChild:", void, .{?Any} },
        .{ "addSelectionIndexPaths:", objc.BOOL, .{void} },
        .{ "alwaysUsesMultipleValuesMarker", objc.BOOL, .{} },
        .{ "arrangedObjects", NSTreeNode, .{} },
        .{ "avoidsEmptySelection", objc.BOOL, .{} },
        .{ "canAddChild", objc.BOOL, .{} },
        .{ "canInsert", objc.BOOL, .{} },
        .{ "canInsertChild", objc.BOOL, .{} },
        .{ "childrenKeyPath", ?objc.NSString, .{} },
        .{ "childrenKeyPathForNode:", ?objc.NSString, .{NSTreeNode} },
        .{ "content", ?Any, .{} },
        .{ "countKeyPath", ?objc.NSString, .{} },
        .{ "countKeyPathForNode:", ?objc.NSString, .{NSTreeNode} },
        .{ "insert:", void, .{?Any} },
        .{ "insertChild:", void, .{?Any} },
        .{ "insertObject:atArrangedObjectIndexPath:", void, .{ ?Any, ?*anyopaque } },
        .{ "insertObjects:atArrangedObjectIndexPaths:", void, .{ void, void } },
        .{ "leafKeyPath", ?objc.NSString, .{} },
        .{ "leafKeyPathForNode:", ?objc.NSString, .{NSTreeNode} },
        .{ "moveNode:toIndexPath:", void, .{ NSTreeNode, ?*anyopaque } },
        .{ "moveNodes:toIndexPath:", void, .{ void, ?*anyopaque } },
        .{ "preservesSelection", objc.BOOL, .{} },
        .{ "rearrangeObjects", void, .{} },
        .{ "remove:", void, .{?Any} },
        .{ "removeObjectAtArrangedObjectIndexPath:", void, .{?*anyopaque} },
        .{ "removeObjectsAtArrangedObjectIndexPaths:", void, .{void} },
        .{ "removeSelectionIndexPaths:", objc.BOOL, .{void} },
        .{ "selectedNodes", Object, .{} },
        .{ "selectedObjects", Object, .{} },
        .{ "selectionIndexPath", ?*anyopaque, .{} },
        .{ "selectionIndexPaths", Object, .{} },
        .{ "selectsInsertedObjects", objc.BOOL, .{} },
        .{ "setAlwaysUsesMultipleValuesMarker:", void, .{objc.BOOL} },
        .{ "setAvoidsEmptySelection:", void, .{objc.BOOL} },
        .{ "setChildrenKeyPath:", void, .{?objc.NSString} },
        .{ "setContent:", void, .{?Any} },
        .{ "setCountKeyPath:", void, .{?objc.NSString} },
        .{ "setLeafKeyPath:", void, .{?objc.NSString} },
        .{ "setPreservesSelection:", void, .{objc.BOOL} },
        .{ "setSelectionIndexPath:", objc.BOOL, .{?*anyopaque} },
        .{ "setSelectionIndexPaths:", objc.BOOL, .{void} },
        .{ "setSelectsInsertedObjects:", void, .{objc.BOOL} },
        .{ "setSortDescriptors:", void, .{Object} },
        .{ "sortDescriptors", Object, .{} },
    };

    pub fn send(self: NSTreeController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSTreeNode = struct {
    obj: Object,

    pub const methods = .{
        .{ "childNodes", ?*anyopaque, .{} },
        .{ "descendantNodeAtIndexPath:", ?NSTreeNode, .{?*anyopaque} },
        .{ "indexPath", ?*anyopaque, .{} },
        .{ "leaf", objc.BOOL, .{} },
        .{ "mutableChildNodes", Foundation.NSMutableArray, .{} },
        .{ "parentNode", ?NSTreeNode, .{} },
        .{ "representedObject", ?Any, .{} },
        .{ "sortWithSortDescriptors:recursively:", void, .{ void, objc.BOOL } },
    };

    pub fn send(self: NSTreeNode, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithRepresentedObject:", Object, .{?Any} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTreeNode", class_methods, selector, args);
    }
};

pub const NSTypesetter = struct {
    obj: Object,

    pub const methods = .{
        .{ "actionForControlCharacterAtIndex:", objc.NSInteger, .{objc.NSInteger} },
        .{ "attributedString", ?Foundation.NSAttributedString, .{} },
        .{ "attributesForExtraLineFragment", Object, .{} },
        .{ "baselineOffsetInLayoutManager:glyphIndex:", objc.CGFloat, .{ NSLayoutManager, objc.NSInteger } },
        .{ "beginLineWithGlyphAtIndex:", void, .{objc.NSInteger} },
        .{ "beginParagraph", void, .{} },
        .{ "bidiProcessingEnabled", objc.BOOL, .{} },
        .{ "boundingBoxForControlGlyphAtIndex:forTextContainer:proposedLineFragment:glyphPosition:characterIndex:", NSRect, .{ objc.NSInteger, NSTextContainer, NSRect, NSPoint, objc.NSInteger } },
        .{ "characterRangeForGlyphRange:actualGlyphRange:", NSRange, .{ NSRange, NSRange } },
        .{ "currentParagraphStyle", ?NSParagraphStyle, .{} },
        .{ "currentTextContainer", ?NSTextContainer, .{} },
        .{ "deleteGlyphsInRange:", void, .{NSRange} },
        .{ "endLineWithGlyphRange:", void, .{NSRange} },
        .{ "endParagraph", void, .{} },
        .{ "getGlyphsInRange:glyphs:characterIndexes:glyphInscriptions:elasticBits:bidiLevels:", objc.NSInteger, .{ NSRange, u32, objc.NSInteger, objc.NSInteger, ?*anyopaque, u8 } },
        .{ "getLineFragmentRect:usedRect:forParagraphSeparatorGlyphRange:atProposedOrigin:", void, .{ NSRect, NSRect, NSRange, NSPoint } },
        .{ "getLineFragmentRect:usedRect:remainingRect:forStartingGlyphAtIndex:proposedRect:lineSpacing:paragraphSpacingBefore:paragraphSpacingAfter:", void, .{ NSRect, NSRect, NSRect, objc.NSInteger, NSRect, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "glyphRangeForCharacterRange:actualCharacterRange:", NSRange, .{ NSRange, NSRange } },
        .{ "hyphenCharacterForGlyphAtIndex:", objc.NSString, .{objc.NSInteger} },
        .{ "hyphenationFactor", f32, .{} },
        .{ "hyphenationFactorForGlyphAtIndex:", f32, .{objc.NSInteger} },
        .{ "insertGlyph:atGlyphIndex:characterIndex:", void, .{ u32, objc.NSInteger, objc.NSInteger } },
        .{ "layoutCharactersInRange:forLayoutManager:maximumNumberOfLineFragments:", NSRange, .{ NSRange, NSLayoutManager, objc.NSInteger } },
        .{ "layoutGlyphsInLayoutManager:startingAtGlyphIndex:maxNumberOfLineFragments:nextGlyphIndex:", void, .{ NSLayoutManager, objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "layoutManager", ?NSLayoutManager, .{} },
        .{ "layoutParagraphAtPoint:", objc.NSInteger, .{NSPoint} },
        .{ "lineFragmentPadding", objc.CGFloat, .{} },
        .{ "lineSpacingAfterGlyphAtIndex:withProposedLineFragmentRect:", objc.CGFloat, .{ objc.NSInteger, NSRect } },
        .{ "paragraphCharacterRange", NSRange, .{} },
        .{ "paragraphGlyphRange", NSRange, .{} },
        .{ "paragraphSeparatorCharacterRange", NSRange, .{} },
        .{ "paragraphSeparatorGlyphRange", NSRange, .{} },
        .{ "paragraphSpacingAfterGlyphAtIndex:withProposedLineFragmentRect:", objc.CGFloat, .{ objc.NSInteger, NSRect } },
        .{ "paragraphSpacingBeforeGlyphAtIndex:withProposedLineFragmentRect:", objc.CGFloat, .{ objc.NSInteger, NSRect } },
        .{ "setAttachmentSize:forGlyphRange:", void, .{ NSSize, NSRange } },
        .{ "setAttributedString:", void, .{?Foundation.NSAttributedString} },
        .{ "setBidiLevels:forGlyphRange:", void, .{ u8, NSRange } },
        .{ "setBidiProcessingEnabled:", void, .{objc.BOOL} },
        .{ "setDrawsOutsideLineFragment:forGlyphRange:", void, .{ objc.BOOL, NSRange } },
        .{ "setHardInvalidation:forGlyphRange:", void, .{ objc.BOOL, NSRange } },
        .{ "setHyphenationFactor:", void, .{f32} },
        .{ "setLineFragmentPadding:", void, .{objc.CGFloat} },
        .{ "setLineFragmentRect:forGlyphRange:usedRect:baselineOffset:", void, .{ NSRect, NSRange, NSRect, objc.CGFloat } },
        .{ "setLocation:withAdvancements:forStartOfGlyphRange:", void, .{ NSPoint, objc.CGFloat, NSRange } },
        .{ "setNotShownAttribute:forGlyphRange:", void, .{ objc.BOOL, NSRange } },
        .{ "setParagraphGlyphRange:separatorGlyphRange:", void, .{ NSRange, NSRange } },
        .{ "setTypesetterBehavior:", void, .{NSLayoutManager.TypesetterBehavior} },
        .{ "setUsesFontLeading:", void, .{objc.BOOL} },
        .{ "shouldBreakLineByHyphenatingBeforeCharacterAtIndex:", objc.BOOL, .{objc.NSInteger} },
        .{ "shouldBreakLineByWordBeforeCharacterAtIndex:", objc.BOOL, .{objc.NSInteger} },
        .{ "substituteFontForFont:", NSFont, .{NSFont} },
        .{ "substituteGlyphsInRange:withGlyphs:", void, .{ NSRange, u32 } },
        .{ "textContainers", ?Foundation.NSArray, .{} },
        .{ "textTabForGlyphLocation:writingDirection:maxLocation:", ?NSTextTab, .{ objc.CGFloat, NSWritingDirection, objc.CGFloat } },
        .{ "typesetterBehavior", NSLayoutManager.TypesetterBehavior, .{} },
        .{ "usesFontLeading", objc.BOOL, .{} },
        .{ "willSetLineFragmentRect:forGlyphRange:usedRect:baselineOffset:", void, .{ NSRect, NSRange, NSRect, objc.CGFloat } },
    };

    pub fn send(self: NSTypesetter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultTypesetterBehavior", NSLayoutManager.TypesetterBehavior, .{} },
        .{ "printingAdjustmentInLayoutManager:forNominallySpacedGlyphRange:packedGlyphs:count:", NSSize, .{ NSLayoutManager, NSRange, u8, objc.NSInteger } },
        .{ "setDefaultTypesetterBehavior:", void, .{NSLayoutManager.TypesetterBehavior} },
        .{ "setSharedSystemTypesetter:", void, .{NSTypesetter} },
        .{ "sharedSystemTypesetter", NSTypesetter, .{} },
        .{ "sharedSystemTypesetterForBehavior:", Any, .{NSLayoutManager.TypesetterBehavior} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTypesetter", class_methods, selector, args);
    }
};

pub const NSUserDefaultsController = struct {
    obj: Object,

    pub const Super = NSController;
    pub const methods = .{
        .{ "appliesImmediately", objc.BOOL, .{} },
        .{ "defaults", Foundation.NSUserDefaults, .{} },
        .{ "hasUnappliedChanges", objc.BOOL, .{} },
        .{ "initialValues", ?*anyopaque, .{} },
        .{ "revert:", void, .{?Any} },
        .{ "revertToInitialValues:", void, .{?Any} },
        .{ "save:", void, .{?Any} },
        .{ "setAppliesImmediately:", void, .{objc.BOOL} },
        .{ "setInitialValues:", void, .{?*anyopaque} },
        .{ "values", Any, .{} },
    };

    pub fn send(self: NSUserDefaultsController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithDefaults:initialValues:", Object, .{ ?Foundation.NSUserDefaults, ?Any } },
        .{ "sharedUserDefaultsController", NSUserDefaultsController, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUserDefaultsController", class_methods, selector, args);
    }
};

pub const NSUserInterfaceCompressionOptions = struct {
    obj: Object,

    pub const methods = .{
        .{ "containsOptions:", objc.BOOL, .{NSUserInterfaceCompressionOptions} },
        .{ "empty", objc.BOOL, .{} },
        .{ "intersectsOptions:", objc.BOOL, .{NSUserInterfaceCompressionOptions} },
        .{ "optionsByAddingOptions:", NSUserInterfaceCompressionOptions, .{NSUserInterfaceCompressionOptions} },
        .{ "optionsByRemovingOptions:", NSUserInterfaceCompressionOptions, .{NSUserInterfaceCompressionOptions} },
    };

    pub fn send(self: NSUserInterfaceCompressionOptions, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "breakEqualWidthsOption", NSUserInterfaceCompressionOptions, .{} },
        .{ "hideImagesOption", NSUserInterfaceCompressionOptions, .{} },
        .{ "hideTextOption", NSUserInterfaceCompressionOptions, .{} },
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithCompressionOptions:", Object, .{NSUserInterfaceCompressionOptions} },
        .{ "initWithIdentifier:", Object, .{objc.NSString} },
        .{ "reduceMetricsOption", NSUserInterfaceCompressionOptions, .{} },
        .{ "standardOptions", NSUserInterfaceCompressionOptions, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUserInterfaceCompressionOptions", class_methods, selector, args);
    }
};

pub const NSView = struct {
    obj: Object,

    pub const Super = NSResponder;
    pub const methods = .{
        .{ "acceptsFirstMouse:", objc.BOOL, .{?NSEvent} },
        .{ "acceptsTouchEvents", objc.BOOL, .{} },
        .{ "addConstraint:", void, .{NSLayoutConstraint} },
        .{ "addConstraints:", void, .{void} },
        .{ "addCursorRect:cursor:", void, .{ NSRect, NSCursor } },
        .{ "addGestureRecognizer:", void, .{NSGestureRecognizer} },
        .{ "addLayoutGuide:", void, .{NSLayoutGuide} },
        .{ "addSubview:", void, .{NSView} },
        .{ "addSubview:positioned:relativeTo:", void, .{ NSView, NSWindow.OrderingMode, ?NSView } },
        .{ "addToolTipRect:owner:userData:", objc.NSInteger, .{ NSRect, Any, ?UnsafeMutableRawPointer } },
        .{ "addTrackingArea:", void, .{NSTrackingArea} },
        .{ "addTrackingRect:owner:userData:assumeInside:", objc.NSInteger, .{ NSRect, Any, ?UnsafeMutableRawPointer, objc.BOOL } },
        .{ "additionalSafeAreaInsets", NSEdgeInsets, .{} },
        .{ "adjustPageHeightNew:top:bottom:limit:", void, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "adjustPageWidthNew:left:right:limit:", void, .{ objc.CGFloat, objc.CGFloat, objc.CGFloat, objc.CGFloat } },
        .{ "adjustScroll:", NSRect, .{NSRect} },
        .{ "alignmentRectForFrame:", NSRect, .{NSRect} },
        .{ "alignmentRectInsets", NSEdgeInsets, .{} },
        .{ "allocateGState", void, .{} },
        .{ "allowedTouchTypes", objc.NSInteger, .{} },
        .{ "allowsVibrancy", objc.BOOL, .{} },
        .{ "alphaValue", objc.CGFloat, .{} },
        .{ "ancestorSharedWithView:", ?NSView, .{NSView} },
        .{ "autoresizesSubviews", objc.BOOL, .{} },
        .{ "autoresizingMask", objc.NSInteger, .{} },
        .{ "autoscroll:", objc.BOOL, .{NSEvent} },
        .{ "backgroundFilters", Object, .{} },
        .{ "backingAlignedRect:options:", NSRect, .{ NSRect, objc.NSInteger } },
        .{ "baselineOffsetFromBottom", objc.CGFloat, .{} },
        .{ "beginDocument", void, .{} },
        .{ "beginDraggingSessionWithItems:event:source:", NSDraggingSession, .{ void, NSEvent, void } },
        .{ "beginPageInRect:atPlacement:", void, .{ NSRect, NSPoint } },
        .{ "bitmapImageRepForCachingDisplayInRect:", ?NSBitmapImageRep, .{NSRect} },
        .{ "bottomAnchor", NSLayoutYAxisAnchor, .{} },
        .{ "bounds", NSRect, .{} },
        .{ "boundsRotation", objc.CGFloat, .{} },
        .{ "cacheDisplayInRect:toBitmapImageRep:", void, .{ NSRect, NSBitmapImageRep } },
        .{ "canBecomeKeyView", objc.BOOL, .{} },
        .{ "canDraw", objc.BOOL, .{} },
        .{ "canDrawConcurrently", objc.BOOL, .{} },
        .{ "canDrawSubviewsIntoLayer", objc.BOOL, .{} },
        .{ "candidateListTouchBarItem", ?NSCandidateListTouchBarItem, .{} },
        .{ "centerScanRect:", NSRect, .{NSRect} },
        .{ "centerXAnchor", NSLayoutXAxisAnchor, .{} },
        .{ "centerYAnchor", NSLayoutYAxisAnchor, .{} },
        .{ "clipsToBounds", objc.BOOL, .{} },
        .{ "compositingFilter", ?*anyopaque, .{} },
        .{ "constraints", Object, .{} },
        .{ "constraintsAffectingLayoutForOrientation:", Object, .{NSLayoutConstraint.Orientation} },
        .{ "contentCompressionResistancePriorityForOrientation:", f32, .{NSLayoutConstraint.Orientation} },
        .{ "contentFilters", Object, .{} },
        .{ "contentHuggingPriorityForOrientation:", f32, .{NSLayoutConstraint.Orientation} },
        .{ "convertPoint:fromView:", NSPoint, .{ NSPoint, ?NSView } },
        .{ "convertPoint:toView:", NSPoint, .{ NSPoint, ?NSView } },
        .{ "convertPointFromBacking:", NSPoint, .{NSPoint} },
        .{ "convertPointFromLayer:", NSPoint, .{NSPoint} },
        .{ "convertPointToBacking:", NSPoint, .{NSPoint} },
        .{ "convertPointToLayer:", NSPoint, .{NSPoint} },
        .{ "convertRect:fromView:", NSRect, .{ NSRect, ?NSView } },
        .{ "convertRect:toView:", NSRect, .{ NSRect, ?NSView } },
        .{ "convertRectFromBacking:", NSRect, .{NSRect} },
        .{ "convertRectFromLayer:", NSRect, .{NSRect} },
        .{ "convertRectToBacking:", NSRect, .{NSRect} },
        .{ "convertRectToLayer:", NSRect, .{NSRect} },
        .{ "convertSize:fromView:", NSSize, .{ NSSize, ?NSView } },
        .{ "convertSize:toView:", NSSize, .{ NSSize, ?NSView } },
        .{ "convertSizeFromBacking:", NSSize, .{NSSize} },
        .{ "convertSizeFromLayer:", NSSize, .{NSSize} },
        .{ "convertSizeToBacking:", NSSize, .{NSSize} },
        .{ "convertSizeToLayer:", NSSize, .{NSSize} },
        .{ "dataWithEPSInsideRect:", Foundation.NSData, .{NSRect} },
        .{ "dataWithPDFInsideRect:", Foundation.NSData, .{NSRect} },
        .{ "didAddSubview:", void, .{NSView} },
        .{ "didCloseMenu:withEvent:", void, .{ NSMenu, ?NSEvent } },
        .{ "discardCursorRects", void, .{} },
        .{ "display", void, .{} },
        .{ "displayIfNeeded", void, .{} },
        .{ "displayIfNeededIgnoringOpacity", void, .{} },
        .{ "displayIfNeededInRect:", void, .{NSRect} },
        .{ "displayIfNeededInRectIgnoringOpacity:", void, .{NSRect} },
        .{ "displayLinkWithTarget:selector:", Object, .{ Any, Selector } },
        .{ "displayRect:", void, .{NSRect} },
        .{ "displayRectIgnoringOpacity:", void, .{NSRect} },
        .{ "displayRectIgnoringOpacity:inContext:", void, .{ NSRect, NSGraphicsContext } },
        .{ "dragFile:fromRect:slideBack:event:", objc.BOOL, .{ objc.NSString, NSRect, objc.BOOL, NSEvent } },
        .{ "dragPromisedFilesOfTypes:fromRect:source:slideBack:event:", objc.BOOL, .{ void, NSRect, Any, objc.BOOL, NSEvent } },
        .{ "drawFocusRingMask", void, .{} },
        .{ "drawPageBorderWithSize:", void, .{NSSize} },
        .{ "drawRect:", void, .{NSRect} },
        .{ "drawSheetBorderWithSize:", void, .{NSSize} },
        .{ "drawingFindIndicator", objc.BOOL, .{} },
        .{ "enclosingMenuItem", ?NSMenuItem, .{} },
        .{ "enclosingScrollView", ?NSScrollView, .{} },
        .{ "endDocument", void, .{} },
        .{ "endPage", void, .{} },
        .{ "enterFullScreenMode:withOptions:", objc.BOOL, .{ NSScreen, ?Any } },
        .{ "exerciseAmbiguityInLayout", void, .{} },
        .{ "exitFullScreenModeWithOptions:", void, .{?Any} },
        .{ "firstBaselineAnchor", NSLayoutYAxisAnchor, .{} },
        .{ "firstBaselineOffsetFromTop", objc.CGFloat, .{} },
        .{ "fittingSize", NSSize, .{} },
        .{ "flipped", objc.BOOL, .{} },
        .{ "focusRingMaskBounds", NSRect, .{} },
        .{ "focusRingType", NSFocusRingType, .{} },
        .{ "frame", NSRect, .{} },
        .{ "frameCenterRotation", objc.CGFloat, .{} },
        .{ "frameForAlignmentRect:", NSRect, .{NSRect} },
        .{ "frameRotation", objc.CGFloat, .{} },
        .{ "gState", objc.NSInteger, .{} },
        .{ "gestureRecognizers", Object, .{} },
        .{ "getRectsBeingDrawn:count:", void, .{ NSRect, objc.NSInteger } },
        .{ "getRectsExposedDuringLiveResize:count:", void, .{ NSRect, objc.NSInteger } },
        .{ "hasAmbiguousLayout", objc.BOOL, .{} },
        .{ "heightAdjustLimit", objc.CGFloat, .{} },
        .{ "heightAnchor", NSLayoutDimension, .{} },
        .{ "hidden", objc.BOOL, .{} },
        .{ "hiddenOrHasHiddenAncestor", objc.BOOL, .{} },
        .{ "hitTest:", ?NSView, .{NSPoint} },
        .{ "horizontalContentSizeConstraintActive", objc.BOOL, .{} },
        .{ "inFullScreenMode", objc.BOOL, .{} },
        .{ "inLiveResize", objc.BOOL, .{} },
        .{ "inputContext", ?NSTextInputContext, .{} },
        .{ "intrinsicContentSize", NSSize, .{} },
        .{ "invalidateIntrinsicContentSize", void, .{} },
        .{ "isDescendantOf:", objc.BOOL, .{NSView} },
        .{ "knowsPageRange:", objc.BOOL, .{NSRange} },
        .{ "lastBaselineAnchor", NSLayoutYAxisAnchor, .{} },
        .{ "lastBaselineOffsetFromBottom", objc.CGFloat, .{} },
        .{ "layer", ?*anyopaque, .{} },
        .{ "layerContentsPlacement", NSView.LayerContentsPlacement, .{} },
        .{ "layerContentsRedrawPolicy", NSView.LayerContentsRedrawPolicy, .{} },
        .{ "layerUsesCoreImageFilters", objc.BOOL, .{} },
        .{ "layout", void, .{} },
        .{ "layoutGuides", Object, .{} },
        .{ "layoutMarginsGuide", NSLayoutGuide, .{} },
        .{ "layoutSubtreeIfNeeded", void, .{} },
        .{ "leadingAnchor", NSLayoutXAxisAnchor, .{} },
        .{ "leftAnchor", NSLayoutXAxisAnchor, .{} },
        .{ "locationOfPrintRect:", NSPoint, .{NSRect} },
        .{ "lockFocus", void, .{} },
        .{ "lockFocusIfCanDraw", objc.BOOL, .{} },
        .{ "lockFocusIfCanDrawInContext:", objc.BOOL, .{NSGraphicsContext} },
        .{ "makeBackingLayer", Object, .{} },
        .{ "menuForEvent:", ?NSMenu, .{NSEvent} },
        .{ "mouse:inRect:", objc.BOOL, .{ NSPoint, NSRect } },
        .{ "mouseDownCanMoveWindow", objc.BOOL, .{} },
        .{ "needsDisplay", objc.BOOL, .{} },
        .{ "needsLayout", objc.BOOL, .{} },
        .{ "needsPanelToBecomeKey", objc.BOOL, .{} },
        .{ "needsToDrawRect:", objc.BOOL, .{NSRect} },
        .{ "needsUpdateConstraints", objc.BOOL, .{} },
        .{ "nextKeyView", ?NSView, .{} },
        .{ "nextValidKeyView", ?NSView, .{} },
        .{ "noteFocusRingMaskChanged", void, .{} },
        .{ "opaque", objc.BOOL, .{} },
        .{ "opaqueAncestor", ?NSView, .{} },
        .{ "pageFooter", Foundation.NSAttributedString, .{} },
        .{ "pageHeader", Foundation.NSAttributedString, .{} },
        .{ "performKeyEquivalent:", objc.BOOL, .{NSEvent} },
        .{ "postsBoundsChangedNotifications", objc.BOOL, .{} },
        .{ "postsFrameChangedNotifications", objc.BOOL, .{} },
        .{ "prefersCompactControlSizeMetrics", objc.BOOL, .{} },
        .{ "prepareContentInRect:", void, .{NSRect} },
        .{ "prepareForReuse", void, .{} },
        .{ "preparedContentRect", NSRect, .{} },
        .{ "preservesContentDuringLiveResize", objc.BOOL, .{} },
        .{ "pressureConfiguration", ?NSPressureConfiguration, .{} },
        .{ "previousKeyView", ?NSView, .{} },
        .{ "previousValidKeyView", ?NSView, .{} },
        .{ "print:", void, .{?Any} },
        .{ "printJobTitle", objc.NSString, .{} },
        .{ "rectForPage:", NSRect, .{objc.NSInteger} },
        .{ "rectForSmartMagnificationAtPoint:inRect:", NSRect, .{ NSPoint, NSRect } },
        .{ "rectPreservedDuringLiveResize", NSRect, .{} },
        .{ "reflectScrolledClipView:", void, .{NSClipView} },
        .{ "registerForDraggedTypes:", void, .{void} },
        .{ "registeredDraggedTypes", Object, .{} },
        .{ "releaseGState", void, .{} },
        .{ "removeAllToolTips", void, .{} },
        .{ "removeConstraint:", void, .{NSLayoutConstraint} },
        .{ "removeConstraints:", void, .{void} },
        .{ "removeCursorRect:cursor:", void, .{ NSRect, NSCursor } },
        .{ "removeFromSuperview", void, .{} },
        .{ "removeFromSuperviewWithoutNeedingDisplay", void, .{} },
        .{ "removeGestureRecognizer:", void, .{NSGestureRecognizer} },
        .{ "removeLayoutGuide:", void, .{NSLayoutGuide} },
        .{ "removeToolTip:", void, .{objc.NSInteger} },
        .{ "removeTrackingArea:", void, .{NSTrackingArea} },
        .{ "removeTrackingRect:", void, .{objc.NSInteger} },
        .{ "renewGState", void, .{} },
        .{ "replaceSubview:with:", void, .{ NSView, NSView } },
        .{ "resetCursorRects", void, .{} },
        .{ "resizeSubviewsWithOldSize:", void, .{NSSize} },
        .{ "resizeWithOldSuperviewSize:", void, .{NSSize} },
        .{ "rightAnchor", NSLayoutXAxisAnchor, .{} },
        .{ "rotateByAngle:", void, .{objc.CGFloat} },
        .{ "rotatedFromBase", objc.BOOL, .{} },
        .{ "rotatedOrScaledFromBase", objc.BOOL, .{} },
        .{ "rulerView:didAddMarker:", void, .{ NSRulerView, NSRulerMarker } },
        .{ "rulerView:didMoveMarker:", void, .{ NSRulerView, NSRulerMarker } },
        .{ "rulerView:didRemoveMarker:", void, .{ NSRulerView, NSRulerMarker } },
        .{ "rulerView:handleMouseDown:", void, .{ NSRulerView, NSEvent } },
        .{ "rulerView:locationForPoint:", objc.CGFloat, .{ NSRulerView, NSPoint } },
        .{ "rulerView:pointForLocation:", NSPoint, .{ NSRulerView, objc.CGFloat } },
        .{ "rulerView:shouldAddMarker:", objc.BOOL, .{ NSRulerView, NSRulerMarker } },
        .{ "rulerView:shouldMoveMarker:", objc.BOOL, .{ NSRulerView, NSRulerMarker } },
        .{ "rulerView:shouldRemoveMarker:", objc.BOOL, .{ NSRulerView, NSRulerMarker } },
        .{ "rulerView:willAddMarker:atLocation:", objc.CGFloat, .{ NSRulerView, NSRulerMarker, objc.CGFloat } },
        .{ "rulerView:willMoveMarker:toLocation:", objc.CGFloat, .{ NSRulerView, NSRulerMarker, objc.CGFloat } },
        .{ "rulerView:willSetClientView:", void, .{ NSRulerView, NSView } },
        .{ "safeAreaInsets", NSEdgeInsets, .{} },
        .{ "safeAreaLayoutGuide", NSLayoutGuide, .{} },
        .{ "safeAreaRect", NSRect, .{} },
        .{ "scaleUnitSquareToSize:", void, .{NSSize} },
        .{ "scrollClipView:toPoint:", void, .{ NSClipView, NSPoint } },
        .{ "scrollPoint:", void, .{NSPoint} },
        .{ "scrollRect:by:", void, .{ NSRect, NSSize } },
        .{ "scrollRectToVisible:", objc.BOOL, .{NSRect} },
        .{ "setAcceptsTouchEvents:", void, .{objc.BOOL} },
        .{ "setAdditionalSafeAreaInsets:", void, .{NSEdgeInsets} },
        .{ "setAlignmentRectInsets:", void, .{NSEdgeInsets} },
        .{ "setAllowedTouchTypes:", void, .{objc.NSInteger} },
        .{ "setAlphaValue:", void, .{objc.CGFloat} },
        .{ "setAutoresizesSubviews:", void, .{objc.BOOL} },
        .{ "setAutoresizingMask:", void, .{objc.NSInteger} },
        .{ "setBackgroundFilters:", void, .{Object} },
        .{ "setBaselineOffsetFromBottom:", void, .{objc.CGFloat} },
        .{ "setBounds:", void, .{NSRect} },
        .{ "setBoundsOrigin:", void, .{NSPoint} },
        .{ "setBoundsRotation:", void, .{objc.CGFloat} },
        .{ "setBoundsSize:", void, .{NSSize} },
        .{ "setCanDrawConcurrently:", void, .{objc.BOOL} },
        .{ "setCanDrawSubviewsIntoLayer:", void, .{objc.BOOL} },
        .{ "setClipsToBounds:", void, .{objc.BOOL} },
        .{ "setCompositingFilter:", void, .{?*anyopaque} },
        .{ "setContentCompressionResistancePriority:forOrientation:", void, .{ f32, NSLayoutConstraint.Orientation } },
        .{ "setContentFilters:", void, .{Object} },
        .{ "setContentHuggingPriority:forOrientation:", void, .{ f32, NSLayoutConstraint.Orientation } },
        .{ "setFirstBaselineOffsetFromTop:", void, .{objc.CGFloat} },
        .{ "setFocusRingType:", void, .{NSFocusRingType} },
        .{ "setFrame:", void, .{NSRect} },
        .{ "setFrameCenterRotation:", void, .{objc.CGFloat} },
        .{ "setFrameOrigin:", void, .{NSPoint} },
        .{ "setFrameRotation:", void, .{objc.CGFloat} },
        .{ "setFrameSize:", void, .{NSSize} },
        .{ "setGestureRecognizers:", void, .{Object} },
        .{ "setHidden:", void, .{objc.BOOL} },
        .{ "setHorizontalContentSizeConstraintActive:", void, .{objc.BOOL} },
        .{ "setKeyboardFocusRingNeedsDisplayInRect:", void, .{NSRect} },
        .{ "setLastBaselineOffsetFromBottom:", void, .{objc.CGFloat} },
        .{ "setLayer:", void, .{?*anyopaque} },
        .{ "setLayerContentsPlacement:", void, .{NSView.LayerContentsPlacement} },
        .{ "setLayerContentsRedrawPolicy:", void, .{NSView.LayerContentsRedrawPolicy} },
        .{ "setLayerUsesCoreImageFilters:", void, .{objc.BOOL} },
        .{ "setNeedsDisplay:", void, .{objc.BOOL} },
        .{ "setNeedsDisplayInRect:", void, .{NSRect} },
        .{ "setNeedsLayout:", void, .{objc.BOOL} },
        .{ "setNeedsUpdateConstraints:", void, .{objc.BOOL} },
        .{ "setNextKeyView:", void, .{?NSView} },
        .{ "setPostsBoundsChangedNotifications:", void, .{objc.BOOL} },
        .{ "setPostsFrameChangedNotifications:", void, .{objc.BOOL} },
        .{ "setPrefersCompactControlSizeMetrics:", void, .{objc.BOOL} },
        .{ "setPreparedContentRect:", void, .{NSRect} },
        .{ "setPressureConfiguration:", void, .{?NSPressureConfiguration} },
        .{ "setSafeAreaInsets:", void, .{NSEdgeInsets} },
        .{ "setShadow:", void, .{?NSShadow} },
        .{ "setSubviews:", void, .{Object} },
        .{ "setToolTip:", void, .{?objc.NSString} },
        .{ "setTranslatesAutoresizingMaskIntoConstraints:", void, .{objc.BOOL} },
        .{ "setUpGState", void, .{} },
        .{ "setUserInterfaceLayoutDirection:", void, .{NSUserInterfaceLayoutDirection} },
        .{ "setVerticalContentSizeConstraintActive:", void, .{objc.BOOL} },
        .{ "setWantsBestResolutionOpenGLSurface:", void, .{objc.BOOL} },
        .{ "setWantsExtendedDynamicRangeOpenGLSurface:", void, .{objc.BOOL} },
        .{ "setWantsLayer:", void, .{objc.BOOL} },
        .{ "setWantsRestingTouches:", void, .{objc.BOOL} },
        .{ "setWritingToolsCoordinator:", void, .{?NSWritingToolsCoordinator} },
        .{ "shadow", ?NSShadow, .{} },
        .{ "shouldDelayWindowOrderingForEvent:", objc.BOOL, .{NSEvent} },
        .{ "shouldDrawColor", objc.BOOL, .{} },
        .{ "showDefinitionForAttributedString:atPoint:", void, .{ ?Foundation.NSAttributedString, NSPoint } },
        .{ "showDefinitionForAttributedString:range:options:baselineOriginProvider:", void, .{ ?Foundation.NSAttributedString, NSRange, ?Any, void } },
        .{ "sortSubviewsUsingFunction:context:", void, .{ void, ?UnsafeMutableRawPointer } },
        .{ "subviews", Object, .{} },
        .{ "superview", ?NSView, .{} },
        .{ "tag", objc.NSInteger, .{} },
        .{ "toolTip", ?objc.NSString, .{} },
        .{ "topAnchor", NSLayoutYAxisAnchor, .{} },
        .{ "trackingAreas", Object, .{} },
        .{ "trailingAnchor", NSLayoutXAxisAnchor, .{} },
        .{ "translateOriginToPoint:", void, .{NSPoint} },
        .{ "translateRectsNeedingDisplayInRect:by:", void, .{ NSRect, NSSize } },
        .{ "translatesAutoresizingMaskIntoConstraints", objc.BOOL, .{} },
        .{ "unlockFocus", void, .{} },
        .{ "unregisterDraggedTypes", void, .{} },
        .{ "updateConstraints", void, .{} },
        .{ "updateConstraintsForSubtreeIfNeeded", void, .{} },
        .{ "updateLayer", void, .{} },
        .{ "updateTrackingAreas", void, .{} },
        .{ "userInterfaceLayoutDirection", NSUserInterfaceLayoutDirection, .{} },
        .{ "verticalContentSizeConstraintActive", objc.BOOL, .{} },
        .{ "viewDidChangeBackingProperties", void, .{} },
        .{ "viewDidChangeEffectiveAppearance", void, .{} },
        .{ "viewDidEndLiveResize", void, .{} },
        .{ "viewDidHide", void, .{} },
        .{ "viewDidMoveToSuperview", void, .{} },
        .{ "viewDidMoveToWindow", void, .{} },
        .{ "viewDidUnhide", void, .{} },
        .{ "viewWillDraw", void, .{} },
        .{ "viewWillMoveToSuperview:", void, .{?NSView} },
        .{ "viewWillMoveToWindow:", void, .{?NSWindow} },
        .{ "viewWillStartLiveResize", void, .{} },
        .{ "viewWithTag:", ?NSView, .{objc.NSInteger} },
        .{ "visibleRect", NSRect, .{} },
        .{ "wantsBestResolutionOpenGLSurface", objc.BOOL, .{} },
        .{ "wantsDefaultClipping", objc.BOOL, .{} },
        .{ "wantsExtendedDynamicRangeOpenGLSurface", objc.BOOL, .{} },
        .{ "wantsLayer", objc.BOOL, .{} },
        .{ "wantsRestingTouches", objc.BOOL, .{} },
        .{ "wantsUpdateLayer", objc.BOOL, .{} },
        .{ "widthAdjustLimit", objc.CGFloat, .{} },
        .{ "widthAnchor", NSLayoutDimension, .{} },
        .{ "willOpenMenu:withEvent:", void, .{ NSMenu, NSEvent } },
        .{ "willRemoveSubview:", void, .{NSView} },
        .{ "window", ?NSWindow, .{} },
        .{ "writeEPSInsideRect:toPasteboard:", void, .{ NSRect, NSPasteboard } },
        .{ "writePDFInsideRect:toPasteboard:", void, .{ NSRect, NSPasteboard } },
        .{ "writingToolsCoordinator", ?NSWritingToolsCoordinator, .{} },
    };

    pub fn send(self: NSView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "compatibleWithResponsiveScrolling", objc.BOOL, .{} },
        .{ "defaultFocusRingType", NSFocusRingType, .{} },
        .{ "defaultMenu", ?NSMenu, .{} },
        .{ "focusView", ?NSView, .{} },
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithFrame:", Object, .{NSRect} },
        .{ "requiresConstraintBasedLayout", objc.BOOL, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSView", class_methods, selector, args);
    }

    pub const BackgroundStyle = enum(i64) {
        normal = 0,
        emphasized = 1,
        raised = 2,
        lowered = 3,
    };
    pub const LayerContentsPlacement = enum(i64) {
        scaleAxesIndependently = 0,
        scaleProportionallyToFit = 1,
        scaleProportionallyToFill = 2,
        center = 3,
        top = 4,
        topRight = 5,
        right = 6,
        bottomRight = 7,
        bottom = 8,
        bottomLeft = 9,
        left = 10,
        topLeft = 11,
    };
    pub const LayerContentsRedrawPolicy = enum(i64) {
        never = 0,
        onSetNeedsDisplay = 1,
        duringViewResize = 2,
        beforeViewResize = 3,
        crossfade = 4,
    };
};

pub const NSViewAnimation = struct {
    obj: Object,

    pub const Super = NSAnimation;
    pub const methods = .{
        .{ "setViewAnimations:", void, .{Object} },
        .{ "viewAnimations", Object, .{} },
    };

    pub fn send(self: NSViewAnimation, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithViewAnimations:", Object, .{Any} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSViewAnimation", class_methods, selector, args);
    }
};

pub const NSViewController = struct {
    obj: Object,

    pub const Super = NSResponder;
    pub const methods = .{
        .{ "addChildViewController:", void, .{NSViewController} },
        .{ "childViewControllers", Object, .{} },
        .{ "commitEditing", objc.BOOL, .{} },
        .{ "commitEditingWithDelegate:didCommitSelector:contextInfo:", void, .{ ?Any, Selector, ?UnsafeMutableRawPointer } },
        .{ "discardEditing", void, .{} },
        .{ "dismissController:", void, .{?Any} },
        .{ "dismissViewController:", void, .{NSViewController} },
        .{ "extensionContext", ?Foundation.NSExtensionContext, .{} },
        .{ "insertChildViewController:atIndex:", void, .{ NSViewController, objc.NSInteger } },
        .{ "loadView", void, .{} },
        .{ "loadViewIfNeeded", void, .{} },
        .{ "nibBundle", ?Foundation.NSBundle, .{} },
        .{ "nibName", objc.NSString, .{} },
        .{ "parentViewController", ?NSViewController, .{} },
        .{ "preferredContentSize", NSSize, .{} },
        .{ "preferredContentSizeDidChangeForViewController:", void, .{NSViewController} },
        .{ "preferredMaximumSize", NSSize, .{} },
        .{ "preferredMinimumSize", NSSize, .{} },
        .{ "preferredScreenOrigin", NSPoint, .{} },
        .{ "presentViewController:animator:", void, .{ NSViewController, void } },
        .{ "presentViewController:asPopoverRelativeToRect:ofView:preferredEdge:behavior:", void, .{ NSViewController, NSRect, NSView, Foundation.NSRectEdge, NSPopover.Behavior } },
        .{ "presentViewController:asPopoverRelativeToRect:ofView:preferredEdge:behavior:hasFullSizeContent:", void, .{ NSViewController, NSRect, NSView, Foundation.NSRectEdge, NSPopover.Behavior, objc.BOOL } },
        .{ "presentViewControllerAsModalWindow:", void, .{NSViewController} },
        .{ "presentViewControllerAsSheet:", void, .{NSViewController} },
        .{ "presentedViewControllers", ?*anyopaque, .{} },
        .{ "presentingViewController", ?NSViewController, .{} },
        .{ "removeChildViewControllerAtIndex:", void, .{objc.NSInteger} },
        .{ "removeFromParentViewController", void, .{} },
        .{ "representedObject", ?Any, .{} },
        .{ "setChildViewControllers:", void, .{Object} },
        .{ "setPreferredContentSize:", void, .{NSSize} },
        .{ "setPreferredScreenOrigin:", void, .{NSPoint} },
        .{ "setRepresentedObject:", void, .{?Any} },
        .{ "setSourceItemView:", void, .{?NSView} },
        .{ "setTitle:", void, .{?objc.NSString} },
        .{ "setView:", void, .{NSView} },
        .{ "sourceItemView", ?NSView, .{} },
        .{ "storyboard", ?NSStoryboard, .{} },
        .{ "title", ?objc.NSString, .{} },
        .{ "transitionFromViewController:toViewController:options:completionHandler:", void, .{ NSViewController, NSViewController, objc.NSInteger, void } },
        .{ "updateViewConstraints", void, .{} },
        .{ "view", NSView, .{} },
        .{ "viewDidAppear", void, .{} },
        .{ "viewDidDisappear", void, .{} },
        .{ "viewDidLayout", void, .{} },
        .{ "viewDidLoad", void, .{} },
        .{ "viewIfLoaded", ?NSView, .{} },
        .{ "viewLoaded", objc.BOOL, .{} },
        .{ "viewWillAppear", void, .{} },
        .{ "viewWillDisappear", void, .{} },
        .{ "viewWillLayout", void, .{} },
        .{ "viewWillTransitionToSize:", void, .{NSSize} },
    };

    pub fn send(self: NSViewController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithNibName:bundle:", Object, .{ objc.NSString, ?Foundation.NSBundle } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSViewController", class_methods, selector, args);
    }
};

pub const NSVisualEffectView = struct {
    obj: Object,

    pub const Super = NSView;
    pub const methods = .{
        .{ "blendingMode", NSVisualEffectView.BlendingMode, .{} },
        .{ "emphasized", objc.BOOL, .{} },
        .{ "interiorBackgroundStyle", NSView.BackgroundStyle, .{} },
        .{ "maskImage", ?NSImage, .{} },
        .{ "material", NSVisualEffectView.Material, .{} },
        .{ "setBlendingMode:", void, .{NSVisualEffectView.BlendingMode} },
        .{ "setEmphasized:", void, .{objc.BOOL} },
        .{ "setMaskImage:", void, .{?NSImage} },
        .{ "setMaterial:", void, .{NSVisualEffectView.Material} },
        .{ "setState:", void, .{NSVisualEffectView.State} },
        .{ "state", NSVisualEffectView.State, .{} },
        .{ "viewDidMoveToWindow", void, .{} },
        .{ "viewWillMoveToWindow:", void, .{?NSWindow} },
    };

    pub fn send(self: NSVisualEffectView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const BlendingMode = enum(i64) {
        behindWindow = 0,
        withinWindow = 1,
    };
    pub const Material = enum(i64) {
        appearanceBased = 0,
        light = 1,
        dark = 2,
        titlebar = 3,
        selection = 4,
        menu = 5,
        popover = 6,
        sidebar = 7,
        mediumLight = 8,
        ultraDark = 9,
        headerView = 10,
        sheet = 11,
        windowBackground = 12,
        hudWindow = 13,
        fullScreenUI = 15,
        toolTip = 17,
        contentBackground = 18,
        underWindowBackground = 21,
        underPageBackground = 22,
    };
    pub const State = enum(i64) {
        followsWindowActiveState = 0,
        active = 1,
        inactive = 2,
    };
};

pub const NSWindow = struct {
    obj: Object,

    pub const Super = NSResponder;
    pub const methods = .{
        .{ "acceptsMouseMovedEvents", objc.BOOL, .{} },
        .{ "addChildWindow:ordered:", void, .{ NSWindow, NSWindow.OrderingMode } },
        .{ "addTabbedWindow:ordered:", void, .{ NSWindow, NSWindow.OrderingMode } },
        .{ "addTitlebarAccessoryViewController:", void, .{NSTitlebarAccessoryViewController} },
        .{ "allowsConcurrentViewDrawing", objc.BOOL, .{} },
        .{ "allowsToolTipsWhenApplicationIsInactive", objc.BOOL, .{} },
        .{ "alphaValue", objc.CGFloat, .{} },
        .{ "anchorAttributeForOrientation:", NSLayoutConstraint.Attribute, .{NSLayoutConstraint.Orientation} },
        .{ "animationBehavior", NSWindow.AnimationBehavior, .{} },
        .{ "animationResizeTime:", TimeInterval, .{NSRect} },
        .{ "appearanceSource", NSAppearanceCustomization, .{} },
        .{ "areCursorRectsEnabled", objc.BOOL, .{} },
        .{ "aspectRatio", NSSize, .{} },
        .{ "attachedSheet", ?NSWindow, .{} },
        .{ "autodisplay", objc.BOOL, .{} },
        .{ "autorecalculatesContentBorderThicknessForEdge:", objc.BOOL, .{Foundation.NSRectEdge} },
        .{ "autorecalculatesKeyViewLoop", objc.BOOL, .{} },
        .{ "backgroundColor", NSColor, .{} },
        .{ "backingAlignedRect:options:", NSRect, .{ NSRect, objc.NSInteger } },
        .{ "backingLocation", NSWindow.BackingLocation, .{} },
        .{ "backingScaleFactor", objc.CGFloat, .{} },
        .{ "backingType", NSWindow.BackingStoreType, .{} },
        .{ "becomeKeyWindow", void, .{} },
        .{ "becomeMainWindow", void, .{} },
        .{ "beginCriticalSheet:completionHandler:", void, .{ NSWindow, void } },
        .{ "beginDraggingSessionWithItems:event:source:", NSDraggingSession, .{ void, NSEvent, void } },
        .{ "beginSheet:completionHandler:", void, .{ NSWindow, void } },
        .{ "cacheImageInRect:", void, .{NSRect} },
        .{ "canBecomeKeyWindow", objc.BOOL, .{} },
        .{ "canBecomeMainWindow", objc.BOOL, .{} },
        .{ "canBecomeVisibleWithoutLogin", objc.BOOL, .{} },
        .{ "canHide", objc.BOOL, .{} },
        .{ "canRepresentDisplayGamut:", objc.BOOL, .{NSDisplayGamut} },
        .{ "canStoreColor", objc.BOOL, .{} },
        .{ "cascadeTopLeftFromPoint:", NSPoint, .{NSPoint} },
        .{ "cascadingReferenceFrame", NSRect, .{} },
        .{ "center", void, .{} },
        .{ "childWindows", ?*anyopaque, .{} },
        .{ "close", void, .{} },
        .{ "collectionBehavior", objc.NSInteger, .{} },
        .{ "colorSpace", ?NSColorSpace, .{} },
        .{ "constrainFrameRect:toScreen:", NSRect, .{ NSRect, ?NSScreen } },
        .{ "contentAspectRatio", NSSize, .{} },
        .{ "contentBorderThicknessForEdge:", objc.CGFloat, .{Foundation.NSRectEdge} },
        .{ "contentLayoutGuide", ?Any, .{} },
        .{ "contentLayoutRect", NSRect, .{} },
        .{ "contentMaxSize", NSSize, .{} },
        .{ "contentMinSize", NSSize, .{} },
        .{ "contentRectForFrameRect:", NSRect, .{NSRect} },
        .{ "contentResizeIncrements", NSSize, .{} },
        .{ "contentView", ?NSView, .{} },
        .{ "contentViewController", ?NSViewController, .{} },
        .{ "convertPointFromBacking:", NSPoint, .{NSPoint} },
        .{ "convertPointFromScreen:", NSPoint, .{NSPoint} },
        .{ "convertPointToBacking:", NSPoint, .{NSPoint} },
        .{ "convertPointToScreen:", NSPoint, .{NSPoint} },
        .{ "convertRectFromBacking:", NSRect, .{NSRect} },
        .{ "convertRectFromScreen:", NSRect, .{NSRect} },
        .{ "convertRectToBacking:", NSRect, .{NSRect} },
        .{ "convertRectToScreen:", NSRect, .{NSRect} },
        .{ "currentEvent", ?NSEvent, .{} },
        .{ "dataWithEPSInsideRect:", Foundation.NSData, .{NSRect} },
        .{ "dataWithPDFInsideRect:", Foundation.NSData, .{NSRect} },
        .{ "deepestScreen", ?NSScreen, .{} },
        .{ "defaultButtonCell", ?NSButtonCell, .{} },
        .{ "delegate", ?NSWindowDelegate, .{} },
        .{ "deminiaturize:", void, .{?Any} },
        .{ "depthLimit", NSWindow.Depth, .{} },
        .{ "deviceDescription", Object, .{} },
        .{ "disableCursorRects", void, .{} },
        .{ "disableFlushWindow", void, .{} },
        .{ "disableKeyEquivalentForDefaultButtonCell", void, .{} },
        .{ "disableScreenUpdatesUntilFlush", void, .{} },
        .{ "disableSnapshotRestoration", void, .{} },
        .{ "discardCachedImage", void, .{} },
        .{ "discardCursorRects", void, .{} },
        .{ "discardEventsMatchingMask:beforeEvent:", void, .{ objc.NSInteger, ?NSEvent } },
        .{ "display", void, .{} },
        .{ "displayIfNeeded", void, .{} },
        .{ "displayLinkWithTarget:selector:", Object, .{ Any, Selector } },
        .{ "displaysWhenScreenProfileChanges", objc.BOOL, .{} },
        .{ "dockTile", NSDockTile, .{} },
        .{ "documentEdited", objc.BOOL, .{} },
        .{ "dragImage:at:offset:event:pasteboard:source:slideBack:", void, .{ NSImage, NSPoint, NSSize, NSEvent, NSPasteboard, Any, objc.BOOL } },
        .{ "drawers", ?*anyopaque, .{} },
        .{ "enableCursorRects", void, .{} },
        .{ "enableFlushWindow", void, .{} },
        .{ "enableKeyEquivalentForDefaultButtonCell", void, .{} },
        .{ "enableSnapshotRestoration", void, .{} },
        .{ "endEditingFor:", void, .{?Any} },
        .{ "endSheet:", void, .{NSWindow} },
        .{ "endSheet:returnCode:", void, .{ NSWindow, objc.NSInteger } },
        .{ "excludedFromWindowsMenu", objc.BOOL, .{} },
        .{ "fieldEditor:forObject:", ?NSText, .{ objc.BOOL, ?Any } },
        .{ "firstResponder", ?NSResponder, .{} },
        .{ "floatingPanel", objc.BOOL, .{} },
        .{ "flushWindow", void, .{} },
        .{ "flushWindowDisabled", objc.BOOL, .{} },
        .{ "flushWindowIfNeeded", void, .{} },
        .{ "frame", NSRect, .{} },
        .{ "frameAutosaveName", objc.NSString, .{} },
        .{ "frameRectForContentRect:", NSRect, .{NSRect} },
        .{ "gState", objc.NSInteger, .{} },
        .{ "graphicsContext", ?NSGraphicsContext, .{} },
        .{ "handleCloseScriptCommand:", ?Any, .{Foundation.NSCloseCommand} },
        .{ "handlePrintScriptCommand:", ?Any, .{Foundation.NSScriptCommand} },
        .{ "handleSaveScriptCommand:", ?Any, .{Foundation.NSScriptCommand} },
        .{ "hasActiveWindowSharingSession", objc.BOOL, .{} },
        .{ "hasCloseBox", objc.BOOL, .{} },
        .{ "hasDynamicDepthLimit", objc.BOOL, .{} },
        .{ "hasShadow", objc.BOOL, .{} },
        .{ "hasTitleBar", objc.BOOL, .{} },
        .{ "hidesOnDeactivate", objc.BOOL, .{} },
        .{ "ignoresMouseEvents", objc.BOOL, .{} },
        .{ "inLiveResize", objc.BOOL, .{} },
        .{ "initialFirstResponder", ?NSView, .{} },
        .{ "insertTitlebarAccessoryViewController:atIndex:", void, .{ NSTitlebarAccessoryViewController, objc.NSInteger } },
        .{ "invalidateCursorRectsForView:", void, .{NSView} },
        .{ "invalidateShadow", void, .{} },
        .{ "keyViewSelectionDirection", NSWindow.SelectionDirection, .{} },
        .{ "keyWindow", objc.BOOL, .{} },
        .{ "layoutIfNeeded", void, .{} },
        .{ "level", objc.NSInteger, .{} },
        .{ "mainWindow", objc.BOOL, .{} },
        .{ "makeFirstResponder:", objc.BOOL, .{?NSResponder} },
        .{ "makeKeyAndOrderFront:", void, .{?Any} },
        .{ "makeKeyWindow", void, .{} },
        .{ "makeMainWindow", void, .{} },
        .{ "maxFullScreenContentSize", NSSize, .{} },
        .{ "maxSize", NSSize, .{} },
        .{ "mergeAllWindows:", void, .{?Any} },
        .{ "minFullScreenContentSize", NSSize, .{} },
        .{ "minSize", NSSize, .{} },
        .{ "miniaturizable", objc.BOOL, .{} },
        .{ "miniaturize:", void, .{?Any} },
        .{ "miniaturized", objc.BOOL, .{} },
        .{ "miniwindowImage", ?NSImage, .{} },
        .{ "miniwindowTitle", objc.NSString, .{} },
        .{ "modalPanel", objc.BOOL, .{} },
        .{ "mouseLocationOutsideOfEventStream", NSPoint, .{} },
        .{ "movable", objc.BOOL, .{} },
        .{ "movableByWindowBackground", objc.BOOL, .{} },
        .{ "moveTabToNewWindow:", void, .{?Any} },
        .{ "nextEventMatchingMask:", ?NSEvent, .{objc.NSInteger} },
        .{ "nextEventMatchingMask:untilDate:inMode:dequeue:", ?NSEvent, .{ objc.NSInteger, ?Foundation.NSDate, objc.NSString, objc.BOOL } },
        .{ "occlusionState", objc.NSInteger, .{} },
        .{ "onActiveSpace", objc.BOOL, .{} },
        .{ "oneShot", objc.BOOL, .{} },
        .{ "opaque", objc.BOOL, .{} },
        .{ "orderBack:", void, .{?Any} },
        .{ "orderFront:", void, .{?Any} },
        .{ "orderFrontRegardless", void, .{} },
        .{ "orderOut:", void, .{?Any} },
        .{ "orderWindow:relativeTo:", void, .{ NSWindow.OrderingMode, objc.NSInteger } },
        .{ "orderedIndex", objc.NSInteger, .{} },
        .{ "parentWindow", ?NSWindow, .{} },
        .{ "performClose:", void, .{?Any} },
        .{ "performMiniaturize:", void, .{?Any} },
        .{ "performWindowDragWithEvent:", void, .{NSEvent} },
        .{ "performZoom:", void, .{?Any} },
        .{ "postEvent:atStart:", void, .{ NSEvent, objc.BOOL } },
        .{ "preferredBackingLocation", NSWindow.BackingLocation, .{} },
        .{ "preservesContentDuringLiveResize", objc.BOOL, .{} },
        .{ "preventsApplicationTerminationWhenModal", objc.BOOL, .{} },
        .{ "print:", void, .{?Any} },
        .{ "recalculateKeyViewLoop", void, .{} },
        .{ "registerForDraggedTypes:", void, .{void} },
        .{ "releasedWhenClosed", objc.BOOL, .{} },
        .{ "removeChildWindow:", void, .{NSWindow} },
        .{ "removeTitlebarAccessoryViewControllerAtIndex:", void, .{objc.NSInteger} },
        .{ "representedFilename", objc.NSString, .{} },
        .{ "representedURL", ?Foundation.NSURL, .{} },
        .{ "requestSharingOfWindow:completionHandler:", void, .{ NSWindow, void } },
        .{ "requestSharingOfWindowUsingPreview:title:completionHandler:", void, .{ NSImage, objc.NSString, void } },
        .{ "resetCursorRects", void, .{} },
        .{ "resignKeyWindow", void, .{} },
        .{ "resignMainWindow", void, .{} },
        .{ "resizable", objc.BOOL, .{} },
        .{ "resizeFlags", objc.NSInteger, .{} },
        .{ "resizeIncrements", NSSize, .{} },
        .{ "restorable", objc.BOOL, .{} },
        .{ "restorationClass", ?NSWindowRestoration, .{} },
        .{ "restoreCachedImage", void, .{} },
        .{ "runToolbarCustomizationPalette:", void, .{?Any} },
        .{ "saveFrameUsingName:", void, .{objc.NSString} },
        .{ "screen", ?NSScreen, .{} },
        .{ "selectKeyViewFollowingView:", void, .{NSView} },
        .{ "selectKeyViewPrecedingView:", void, .{NSView} },
        .{ "selectNextKeyView:", void, .{?Any} },
        .{ "selectNextTab:", void, .{?Any} },
        .{ "selectPreviousKeyView:", void, .{?Any} },
        .{ "selectPreviousTab:", void, .{?Any} },
        .{ "sendEvent:", void, .{NSEvent} },
        .{ "setAcceptsMouseMovedEvents:", void, .{objc.BOOL} },
        .{ "setAllowsConcurrentViewDrawing:", void, .{objc.BOOL} },
        .{ "setAllowsToolTipsWhenApplicationIsInactive:", void, .{objc.BOOL} },
        .{ "setAlphaValue:", void, .{objc.CGFloat} },
        .{ "setAnchorAttribute:forOrientation:", void, .{ NSLayoutConstraint.Attribute, NSLayoutConstraint.Orientation } },
        .{ "setAnimationBehavior:", void, .{NSWindow.AnimationBehavior} },
        .{ "setAppearanceSource:", void, .{NSAppearanceCustomization} },
        .{ "setAspectRatio:", void, .{NSSize} },
        .{ "setAutodisplay:", void, .{objc.BOOL} },
        .{ "setAutorecalculatesContentBorderThickness:forEdge:", void, .{ objc.BOOL, Foundation.NSRectEdge } },
        .{ "setAutorecalculatesKeyViewLoop:", void, .{objc.BOOL} },
        .{ "setBackgroundColor:", void, .{NSColor} },
        .{ "setBackingType:", void, .{NSWindow.BackingStoreType} },
        .{ "setCanBecomeVisibleWithoutLogin:", void, .{objc.BOOL} },
        .{ "setCanHide:", void, .{objc.BOOL} },
        .{ "setCollectionBehavior:", void, .{objc.NSInteger} },
        .{ "setColorSpace:", void, .{?NSColorSpace} },
        .{ "setContentAspectRatio:", void, .{NSSize} },
        .{ "setContentBorderThickness:forEdge:", void, .{ objc.CGFloat, Foundation.NSRectEdge } },
        .{ "setContentMaxSize:", void, .{NSSize} },
        .{ "setContentMinSize:", void, .{NSSize} },
        .{ "setContentResizeIncrements:", void, .{NSSize} },
        .{ "setContentSize:", void, .{NSSize} },
        .{ "setContentView:", void, .{?NSView} },
        .{ "setContentViewController:", void, .{?NSViewController} },
        .{ "setDefaultButtonCell:", void, .{?NSButtonCell} },
        .{ "setDelegate:", void, .{?NSWindowDelegate} },
        .{ "setDepthLimit:", void, .{NSWindow.Depth} },
        .{ "setDisplaysWhenScreenProfileChanges:", void, .{objc.BOOL} },
        .{ "setDocumentEdited:", void, .{objc.BOOL} },
        .{ "setDynamicDepthLimit:", void, .{objc.BOOL} },
        .{ "setExcludedFromWindowsMenu:", void, .{objc.BOOL} },
        .{ "setFrame:display:", void, .{ NSRect, objc.BOOL } },
        .{ "setFrame:display:animate:", void, .{ NSRect, objc.BOOL, objc.BOOL } },
        .{ "setFrameAutosaveName:", objc.BOOL, .{objc.NSString} },
        .{ "setFrameFromString:", void, .{objc.NSString} },
        .{ "setFrameOrigin:", void, .{NSPoint} },
        .{ "setFrameTopLeftPoint:", void, .{NSPoint} },
        .{ "setFrameUsingName:", objc.BOOL, .{objc.NSString} },
        .{ "setFrameUsingName:force:", objc.BOOL, .{ objc.NSString, objc.BOOL } },
        .{ "setHasShadow:", void, .{objc.BOOL} },
        .{ "setHidesOnDeactivate:", void, .{objc.BOOL} },
        .{ "setIgnoresMouseEvents:", void, .{objc.BOOL} },
        .{ "setInitialFirstResponder:", void, .{?NSView} },
        .{ "setIsMiniaturized:", void, .{objc.BOOL} },
        .{ "setIsVisible:", void, .{objc.BOOL} },
        .{ "setIsZoomed:", void, .{objc.BOOL} },
        .{ "setLevel:", void, .{objc.NSInteger} },
        .{ "setMaxFullScreenContentSize:", void, .{NSSize} },
        .{ "setMaxSize:", void, .{NSSize} },
        .{ "setMinFullScreenContentSize:", void, .{NSSize} },
        .{ "setMinSize:", void, .{NSSize} },
        .{ "setMiniwindowImage:", void, .{?NSImage} },
        .{ "setMiniwindowTitle:", void, .{objc.NSString} },
        .{ "setMovable:", void, .{objc.BOOL} },
        .{ "setMovableByWindowBackground:", void, .{objc.BOOL} },
        .{ "setOneShot:", void, .{objc.BOOL} },
        .{ "setOpaque:", void, .{objc.BOOL} },
        .{ "setOrderedIndex:", void, .{objc.NSInteger} },
        .{ "setParentWindow:", void, .{?NSWindow} },
        .{ "setPreferredBackingLocation:", void, .{NSWindow.BackingLocation} },
        .{ "setPreservesContentDuringLiveResize:", void, .{objc.BOOL} },
        .{ "setPreventsApplicationTerminationWhenModal:", void, .{objc.BOOL} },
        .{ "setReleasedWhenClosed:", void, .{objc.BOOL} },
        .{ "setRepresentedFilename:", void, .{objc.NSString} },
        .{ "setRepresentedURL:", void, .{?Foundation.NSURL} },
        .{ "setResizeIncrements:", void, .{NSSize} },
        .{ "setRestorable:", void, .{objc.BOOL} },
        .{ "setRestorationClass:", void, .{?NSWindowRestoration} },
        .{ "setSharingType:", void, .{NSWindow.SharingType} },
        .{ "setShowsResizeIndicator:", void, .{objc.BOOL} },
        .{ "setShowsToolbarButton:", void, .{objc.BOOL} },
        .{ "setStyleMask:", void, .{objc.NSInteger} },
        .{ "setSubtitle:", void, .{objc.NSString} },
        .{ "setTabbingIdentifier:", void, .{objc.NSString} },
        .{ "setTabbingMode:", void, .{NSWindow.TabbingMode} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setTitleVisibility:", void, .{NSWindow.TitleVisibility} },
        .{ "setTitleWithRepresentedFilename:", void, .{objc.NSString} },
        .{ "setTitlebarAccessoryViewControllers:", void, .{Object} },
        .{ "setTitlebarAppearsTransparent:", void, .{objc.BOOL} },
        .{ "setTitlebarSeparatorStyle:", void, .{NSTitlebarSeparatorStyle} },
        .{ "setToolbar:", void, .{?NSToolbar} },
        .{ "setToolbarStyle:", void, .{NSWindow.ToolbarStyle} },
        .{ "setViewsNeedDisplay:", void, .{objc.BOOL} },
        .{ "setWindowController:", void, .{?NSWindowController} },
        .{ "sharingType", NSWindow.SharingType, .{} },
        .{ "sheet", objc.BOOL, .{} },
        .{ "sheetParent", ?NSWindow, .{} },
        .{ "sheets", Object, .{} },
        .{ "showsResizeIndicator", objc.BOOL, .{} },
        .{ "showsToolbarButton", objc.BOOL, .{} },
        .{ "standardWindowButton:", ?NSButton, .{NSWindow.ButtonType} },
        .{ "stringWithSavedFrame", objc.NSString, .{} },
        .{ "styleMask", objc.NSInteger, .{} },
        .{ "subtitle", objc.NSString, .{} },
        .{ "tab", NSWindowTab, .{} },
        .{ "tabGroup", ?NSWindowTabGroup, .{} },
        .{ "tabbedWindows", ?*anyopaque, .{} },
        .{ "tabbingIdentifier", objc.NSString, .{} },
        .{ "tabbingMode", NSWindow.TabbingMode, .{} },
        .{ "title", objc.NSString, .{} },
        .{ "titleVisibility", NSWindow.TitleVisibility, .{} },
        .{ "titlebarAccessoryViewControllers", Object, .{} },
        .{ "titlebarAppearsTransparent", objc.BOOL, .{} },
        .{ "titlebarSeparatorStyle", NSTitlebarSeparatorStyle, .{} },
        .{ "toggleFullScreen:", void, .{?Any} },
        .{ "toggleTabBar:", void, .{?Any} },
        .{ "toggleTabOverview:", void, .{?Any} },
        .{ "toggleToolbarShown:", void, .{?Any} },
        .{ "toolbar", ?NSToolbar, .{} },
        .{ "toolbarStyle", NSWindow.ToolbarStyle, .{} },
        .{ "trackEventsMatchingMask:timeout:mode:handler:", void, .{ objc.NSInteger, TimeInterval, objc.NSString, void } },
        .{ "transferWindowSharingToWindow:completionHandler:", void, .{ NSWindow, void } },
        .{ "tryToPerform:with:", objc.BOOL, .{ Selector, ?Any } },
        .{ "unregisterDraggedTypes", void, .{} },
        .{ "update", void, .{} },
        .{ "updateConstraintsIfNeeded", void, .{} },
        .{ "useOptimizedDrawing:", void, .{objc.BOOL} },
        .{ "validRequestorForSendType:returnType:", ?Any, .{ objc.NSString, objc.NSString } },
        .{ "viewsNeedDisplay", objc.BOOL, .{} },
        .{ "visible", objc.BOOL, .{} },
        .{ "visualizeConstraints:", void, .{void} },
        .{ "windowController", ?NSWindowController, .{} },
        .{ "windowNumber", objc.NSInteger, .{} },
        .{ "windowRef", UnsafeMutableRawPointer, .{} },
        .{ "windowTitlebarLayoutDirection", NSUserInterfaceLayoutDirection, .{} },
        .{ "worksWhenModal", objc.BOOL, .{} },
        .{ "zoom:", void, .{?Any} },
        .{ "zoomable", objc.BOOL, .{} },
        .{ "zoomed", objc.BOOL, .{} },
    };

    pub fn send(self: NSWindow, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "allowsAutomaticWindowTabbing", objc.BOOL, .{} },
        .{ "contentRectForFrameRect:styleMask:", NSRect, .{ NSRect, objc.NSInteger } },
        .{ "defaultDepthLimit", NSWindow.Depth, .{} },
        .{ "frameRectForContentRect:styleMask:", NSRect, .{ NSRect, objc.NSInteger } },
        .{ "initWithContentRect:styleMask:backing:defer:", Object, .{ NSRect, objc.NSInteger, NSWindow.BackingStoreType, objc.BOOL } },
        .{ "initWithContentRect:styleMask:backing:defer:screen:", Object, .{ NSRect, objc.NSInteger, NSWindow.BackingStoreType, objc.BOOL, ?NSScreen } },
        .{ "initWithWindowRef:", Object, .{UnsafeMutableRawPointer} },
        .{ "menuChanged:", void, .{NSMenu} },
        .{ "minFrameWidthWithTitle:styleMask:", objc.CGFloat, .{ objc.NSString, objc.NSInteger } },
        .{ "removeFrameUsingName:", void, .{objc.NSString} },
        .{ "setAllowsAutomaticWindowTabbing:", void, .{objc.BOOL} },
        .{ "standardWindowButton:forStyleMask:", ?NSButton, .{ NSWindow.ButtonType, objc.NSInteger } },
        .{ "userTabbingPreference", NSWindow.UserTabbingPreference, .{} },
        .{ "windowNumberAtPoint:belowWindowWithWindowNumber:", objc.NSInteger, .{ NSPoint, objc.NSInteger } },
        .{ "windowNumbersWithOptions:", ?*anyopaque, .{objc.NSInteger} },
        .{ "windowWithContentViewController:", Object, .{NSViewController} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSWindow", class_methods, selector, args);
    }

    pub const AnimationBehavior = enum(i64) {
        default = 0,
        none = 2,
        documentWindow = 3,
        utilityWindow = 4,
        alertPanel = 5,
    };
    pub const BackingLocation = enum(i64) {
        default = 0,
        videoMemory = 1,
        mainMemory = 2,
    };
    pub const BackingStoreType = enum(i64) {
        retained = 0,
        nonretained = 1,
        buffered = 2,
    };
    pub const ButtonType = enum(i64) {
        closeButton = 0,
        miniaturizeButton = 1,
        zoomButton = 2,
        toolbarButton = 3,
        documentIconButton = 4,
        documentVersionsButton = 6,
    };
    pub const Depth = enum(i64) {
        twentyfourBitRGB = 520,
        sixtyfourBitRGB = 528,
        onehundredtwentyeightBitRGB = 544,
    };
    pub const OrderingMode = enum(i64) {
        below = -1,
        out = 0,
        above = 1,
    };
    pub const SelectionDirection = enum(i64) {
        directSelection = 0,
        selectingNext = 1,
        selectingPrevious = 2,
    };
    pub const SharingType = enum(i64) {
        none = 0,
        readOnly = 1,
    };
    pub const TabbingMode = enum(i64) {
        automatic = 0,
        preferred = 1,
        disallowed = 2,
    };
    pub const TitleVisibility = enum(i64) {
        visible = 0,
        hidden = 1,
    };
    pub const ToolbarStyle = enum(i64) {
        automatic = 0,
        expanded = 1,
        preference = 2,
        unified = 3,
        unifiedCompact = 4,
    };
    pub const UserTabbingPreference = enum(i64) {
        manual = 0,
        always = 1,
        inFullScreen = 2,
    };

    pub const Style = struct { titled: bool = true, closable: bool = true, miniaturizable: bool = true, resizable: bool = true };
    pub const Config = struct { title: [*:0]const u8 = "Untitled", x: f64 = 200, y: f64 = 200, width: f64 = 600, height: f64 = 400, style: Style = .{} };
    pub fn create(cfg: Config) NSWindow {
        var mask: c_ulong = 0;
        if (cfg.style.titled) mask |= (1 << 0);
        if (cfg.style.closable) mask |= (1 << 1);
        if (cfg.style.miniaturizable) mask |= (1 << 2);
        if (cfg.style.resizable) mask |= (1 << 3);
        const alloc = objc.msgSendClass(Object, "NSWindow", "alloc", .{});
        const win = objc.msgSend(Object, alloc, "initWithContentRect:styleMask:backing:defer:", .{ NSRect.make(cfg.x, cfg.y, cfg.width, cfg.height), mask, @as(c_ulong, 2), @as(u8, 0) });
        objc.msgSend(void, win, "setTitle:", .{objc.nsString(cfg.title)});
        objc.msgSend(void, win, "center", .{});
        return .{ .obj = win };
    }
};

pub const NSWindowController = struct {
    obj: Object,

    pub const Super = NSResponder;
    pub const methods = .{
        .{ "close", void, .{} },
        .{ "contentViewController", ?NSViewController, .{} },
        .{ "dismissController:", void, .{?Any} },
        .{ "document", ?AnyObject, .{} },
        .{ "loadWindow", void, .{} },
        .{ "owner", ?AnyObject, .{} },
        .{ "previewRepresentableActivityItems", ?*anyopaque, .{} },
        .{ "setContentViewController:", void, .{?NSViewController} },
        .{ "setDocument:", void, .{?AnyObject} },
        .{ "setDocumentEdited:", void, .{objc.BOOL} },
        .{ "setPreviewRepresentableActivityItems:", void, .{?*anyopaque} },
        .{ "setShouldCascadeWindows:", void, .{objc.BOOL} },
        .{ "setShouldCloseDocument:", void, .{objc.BOOL} },
        .{ "setWindow:", void, .{?NSWindow} },
        .{ "setWindowFrameAutosaveName:", void, .{objc.NSString} },
        .{ "shouldCascadeWindows", objc.BOOL, .{} },
        .{ "shouldCloseDocument", objc.BOOL, .{} },
        .{ "showWindow:", void, .{?Any} },
        .{ "storyboard", ?NSStoryboard, .{} },
        .{ "synchronizeWindowTitleWithDocumentName", void, .{} },
        .{ "window", ?NSWindow, .{} },
        .{ "windowDidLoad", void, .{} },
        .{ "windowFrameAutosaveName", objc.NSString, .{} },
        .{ "windowLoaded", objc.BOOL, .{} },
        .{ "windowNibName", objc.NSString, .{} },
        .{ "windowNibPath", ?objc.NSString, .{} },
        .{ "windowTitleForDocumentDisplayName:", objc.NSString, .{objc.NSString} },
        .{ "windowWillLoad", void, .{} },
    };

    pub fn send(self: NSWindowController, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{Foundation.NSCoder} },
        .{ "initWithWindow:", Object, .{?NSWindow} },
        .{ "initWithWindowNibName:", Object, .{objc.NSString} },
        .{ "initWithWindowNibName:owner:", Object, .{ objc.NSString, Any } },
        .{ "initWithWindowNibPath:owner:", Object, .{ objc.NSString, Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSWindowController", class_methods, selector, args);
    }
};

pub const NSWindowTab = struct {
    obj: Object,

    pub const methods = .{
        .{ "accessoryView", ?NSView, .{} },
        .{ "attributedTitle", ?Foundation.NSAttributedString, .{} },
        .{ "setAccessoryView:", void, .{?NSView} },
        .{ "setAttributedTitle:", void, .{?Foundation.NSAttributedString} },
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setToolTip:", void, .{objc.NSString} },
        .{ "title", objc.NSString, .{} },
        .{ "toolTip", objc.NSString, .{} },
    };

    pub fn send(self: NSWindowTab, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSWindowTabGroup = struct {
    obj: Object,

    pub const methods = .{
        .{ "addWindow:", void, .{NSWindow} },
        .{ "identifier", objc.NSString, .{} },
        .{ "insertWindow:atIndex:", void, .{ NSWindow, objc.NSInteger } },
        .{ "overviewVisible", objc.BOOL, .{} },
        .{ "removeWindow:", void, .{NSWindow} },
        .{ "selectedWindow", ?NSWindow, .{} },
        .{ "setOverviewVisible:", void, .{objc.BOOL} },
        .{ "setSelectedWindow:", void, .{?NSWindow} },
        .{ "tabBarVisible", objc.BOOL, .{} },
        .{ "windows", Object, .{} },
    };

    pub fn send(self: NSWindowTabGroup, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSWorkspace = struct {
    obj: Object,

    pub const methods = .{
        .{ "URLForApplicationToOpenContentType:", ?Foundation.NSURL, .{?*anyopaque} },
        .{ "URLForApplicationToOpenURL:", ?Foundation.NSURL, .{Foundation.NSURL} },
        .{ "URLForApplicationWithBundleIdentifier:", ?Foundation.NSURL, .{objc.NSString} },
        .{ "URLsForApplicationsToOpenContentType:", Object, .{?*anyopaque} },
        .{ "URLsForApplicationsToOpenURL:", Object, .{Foundation.NSURL} },
        .{ "URLsForApplicationsWithBundleIdentifier:", Object, .{objc.NSString} },
        .{ "absolutePathForAppBundleWithIdentifier:", ?objc.NSString, .{objc.NSString} },
        .{ "accessibilityDisplayShouldDifferentiateWithoutColor", objc.BOOL, .{} },
        .{ "accessibilityDisplayShouldIncreaseContrast", objc.BOOL, .{} },
        .{ "accessibilityDisplayShouldInvertColors", objc.BOOL, .{} },
        .{ "accessibilityDisplayShouldReduceMotion", objc.BOOL, .{} },
        .{ "accessibilityDisplayShouldReduceTransparency", objc.BOOL, .{} },
        .{ "activateFileViewerSelectingURLs:", void, .{void} },
        .{ "activeApplication", ?*anyopaque, .{} },
        .{ "desktopImageOptionsForScreen:", ?*anyopaque, .{NSScreen} },
        .{ "desktopImageURLForScreen:", ?Foundation.NSURL, .{NSScreen} },
        .{ "duplicateURLs:completionHandler:", void, .{ void, void } },
        .{ "extendPowerOffBy:", objc.NSInteger, .{objc.NSInteger} },
        .{ "fileLabelColors", Object, .{} },
        .{ "fileLabels", Object, .{} },
        .{ "filenameExtension:isValidForType:", objc.BOOL, .{ objc.NSString, objc.NSString } },
        .{ "frontmostApplication", ?NSRunningApplication, .{} },
        .{ "fullPathForApplication:", ?objc.NSString, .{objc.NSString} },
        .{ "getFileSystemInfoForPath:isRemovable:isWritable:isUnmountable:description:type:", objc.BOOL, .{ objc.NSString, ?*anyopaque, ?*anyopaque, ?*anyopaque, ?objc.NSString, ?objc.NSString } },
        .{ "getInfoForFile:application:type:", objc.BOOL, .{ objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "hideOtherApplications", void, .{} },
        .{ "iconForContentType:", NSImage, .{?*anyopaque} },
        .{ "iconForFile:", NSImage, .{objc.NSString} },
        .{ "iconForFileType:", NSImage, .{objc.NSString} },
        .{ "iconForFiles:", ?NSImage, .{void} },
        .{ "isFilePackageAtPath:", objc.BOOL, .{objc.NSString} },
        .{ "launchAppWithBundleIdentifier:options:additionalEventParamDescriptor:launchIdentifier:", objc.BOOL, .{ objc.NSString, objc.NSInteger, ?Foundation.NSAppleEventDescriptor, ?Foundation.NSNumber } },
        .{ "launchApplication:", objc.BOOL, .{objc.NSString} },
        .{ "launchApplication:showIcon:autolaunch:", objc.BOOL, .{ objc.NSString, objc.BOOL, objc.BOOL } },
        .{ "launchApplicationAtURL:options:configuration:error:", NSRunningApplication, .{ Foundation.NSURL, objc.NSInteger, Any } },
        .{ "localizedDescriptionForType:", ?objc.NSString, .{objc.NSString} },
        .{ "menuBarOwningApplication", ?NSRunningApplication, .{} },
        .{ "mountedLocalVolumePaths", ?*anyopaque, .{} },
        .{ "mountedRemovableMedia", ?*anyopaque, .{} },
        .{ "noteFileSystemChanged:", void, .{objc.NSString} },
        .{ "notificationCenter", Foundation.NSNotificationCenter, .{} },
        .{ "openApplicationAtURL:configuration:completionHandler:", void, .{ Foundation.NSURL, NSWorkspaceOpenConfiguration, void } },
        .{ "openFile:", objc.BOOL, .{objc.NSString} },
        .{ "openFile:fromImage:at:inView:", objc.BOOL, .{ objc.NSString, ?NSImage, NSPoint, ?NSView } },
        .{ "openFile:withApplication:", objc.BOOL, .{ objc.NSString, ?objc.NSString } },
        .{ "openFile:withApplication:andDeactivate:", objc.BOOL, .{ objc.NSString, ?objc.NSString, objc.BOOL } },
        .{ "openURL:", objc.BOOL, .{Foundation.NSURL} },
        .{ "openURL:configuration:completionHandler:", void, .{ Foundation.NSURL, NSWorkspaceOpenConfiguration, void } },
        .{ "openURL:options:configuration:error:", NSRunningApplication, .{ Foundation.NSURL, objc.NSInteger, Any } },
        .{ "openURLs:withAppBundleIdentifier:options:additionalEventParamDescriptor:launchIdentifiers:", objc.BOOL, .{ void, ?objc.NSString, objc.NSInteger, ?Foundation.NSAppleEventDescriptor, ?Foundation.NSArray } },
        .{ "openURLs:withApplicationAtURL:configuration:completionHandler:", void, .{ void, Foundation.NSURL, NSWorkspaceOpenConfiguration, void } },
        .{ "openURLs:withApplicationAtURL:options:configuration:error:", NSRunningApplication, .{ void, Foundation.NSURL, objc.NSInteger, Any } },
        .{ "performFileOperation:source:destination:files:tag:", objc.BOOL, .{ objc.NSString, objc.NSString, objc.NSString, void, objc.NSInteger } },
        .{ "preferredFilenameExtensionForType:", ?objc.NSString, .{objc.NSString} },
        .{ "recycleURLs:completionHandler:", void, .{ void, void } },
        .{ "requestAuthorizationOfType:completionHandler:", void, .{ NSWorkspace.AuthorizationType, void } },
        .{ "runningApplications", Object, .{} },
        .{ "selectFile:inFileViewerRootedAtPath:", objc.BOOL, .{ ?objc.NSString, objc.NSString } },
        .{ "setDefaultApplicationAtURL:toOpenContentType:completionHandler:", void, .{ Foundation.NSURL, ?*anyopaque, void } },
        .{ "setDefaultApplicationAtURL:toOpenContentTypeOfFileAtURL:completionHandler:", void, .{ Foundation.NSURL, Foundation.NSURL, void } },
        .{ "setDefaultApplicationAtURL:toOpenFileAtURL:completionHandler:", void, .{ Foundation.NSURL, Foundation.NSURL, void } },
        .{ "setDefaultApplicationAtURL:toOpenURLsWithScheme:completionHandler:", void, .{ Foundation.NSURL, objc.NSString, void } },
        .{ "setDesktopImageURL:forScreen:options:error:", void, .{ Foundation.NSURL, NSScreen, Any } },
        .{ "setIcon:forFile:options:", objc.BOOL, .{ ?NSImage, objc.NSString, objc.NSInteger } },
        .{ "showSearchResultsForQueryString:", objc.BOOL, .{objc.NSString} },
        .{ "switchControlEnabled", objc.BOOL, .{} },
        .{ "type:conformsToType:", objc.BOOL, .{ objc.NSString, objc.NSString } },
        .{ "typeOfFile:error:", objc.NSString, .{objc.NSString} },
        .{ "unmountAndEjectDeviceAtPath:", objc.BOOL, .{objc.NSString} },
        .{ "unmountAndEjectDeviceAtURL:error:", void, .{Foundation.NSURL} },
        .{ "voiceOverEnabled", objc.BOOL, .{} },
    };

    pub fn send(self: NSWorkspace, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedWorkspace", NSWorkspace, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSWorkspace", class_methods, selector, args);
    }

    pub const AuthorizationType = enum(i64) {
        createSymbolicLink = 0,
        setAttributes = 1,
        replaceFile = 2,
    };
};

pub const NSWorkspaceOpenConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "activates", objc.BOOL, .{} },
        .{ "addsToRecentItems", objc.BOOL, .{} },
        .{ "allowsRunningApplicationSubstitution", objc.BOOL, .{} },
        .{ "appleEvent", ?Foundation.NSAppleEventDescriptor, .{} },
        .{ "architecture", objc.NSString, .{} },
        .{ "arguments", Object, .{} },
        .{ "createsNewApplicationInstance", objc.BOOL, .{} },
        .{ "environment", Object, .{} },
        .{ "forPrinting", objc.BOOL, .{} },
        .{ "hides", objc.BOOL, .{} },
        .{ "hidesOthers", objc.BOOL, .{} },
        .{ "promptsUserIfNeeded", objc.BOOL, .{} },
        .{ "requiresUniversalLinks", objc.BOOL, .{} },
        .{ "setActivates:", void, .{objc.BOOL} },
        .{ "setAddsToRecentItems:", void, .{objc.BOOL} },
        .{ "setAllowsRunningApplicationSubstitution:", void, .{objc.BOOL} },
        .{ "setAppleEvent:", void, .{?Foundation.NSAppleEventDescriptor} },
        .{ "setArchitecture:", void, .{objc.NSString} },
        .{ "setArguments:", void, .{Object} },
        .{ "setCreatesNewApplicationInstance:", void, .{objc.BOOL} },
        .{ "setEnvironment:", void, .{Object} },
        .{ "setForPrinting:", void, .{objc.BOOL} },
        .{ "setHides:", void, .{objc.BOOL} },
        .{ "setHidesOthers:", void, .{objc.BOOL} },
        .{ "setPromptsUserIfNeeded:", void, .{objc.BOOL} },
        .{ "setRequiresUniversalLinks:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSWorkspaceOpenConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSWritingToolsCoordinator = struct {
    obj: Object,

    pub const methods = .{
        .{ "behavior", NSWritingToolsBehavior, .{} },
        .{ "decorationContainerView", ?NSView, .{} },
        .{ "delegate", ?NSWritingToolsCoordinator.Delegate, .{} },
        .{ "effectContainerView", ?NSView, .{} },
        .{ "includesTextListMarkers", objc.BOOL, .{} },
        .{ "preferredBehavior", NSWritingToolsBehavior, .{} },
        .{ "preferredResultOptions", objc.NSInteger, .{} },
        .{ "resultOptions", objc.NSInteger, .{} },
        .{ "setDecorationContainerView:", void, .{?NSView} },
        .{ "setEffectContainerView:", void, .{?NSView} },
        .{ "setIncludesTextListMarkers:", void, .{objc.BOOL} },
        .{ "setPreferredBehavior:", void, .{NSWritingToolsBehavior} },
        .{ "setPreferredResultOptions:", void, .{objc.NSInteger} },
        .{ "state", NSWritingToolsCoordinator.State, .{} },
        .{ "stopWritingTools", void, .{} },
        .{ "updateForReflowedTextInContextWithIdentifier:", void, .{?*anyopaque} },
        .{ "updateRange:withText:reason:forContextWithIdentifier:", void, .{ NSRange, Foundation.NSAttributedString, NSWritingToolsCoordinator.TextUpdateReason, ?*anyopaque } },
        .{ "view", ?NSView, .{} },
    };

    pub fn send(self: NSWritingToolsCoordinator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithDelegate:", Object, .{void} },
        .{ "isWritingToolsAvailable", objc.BOOL, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSWritingToolsCoordinator", class_methods, selector, args);
    }

    pub const ContextScope = enum(i64) {
        userSelection = 0,
        fullDocument = 1,
        visibleArea = 2,
    };
    pub const State = enum(i64) {
        inactive = 0,
        noninteractive = 1,
        interactiveResting = 2,
        interactiveStreaming = 3,
    };
    pub const TextAnimation = enum(i64) {
        anticipate = 0,
        remove = 1,
        insert = 2,
        anticipateInactive = 8,
        translate = 9,
    };
    pub const TextReplacementReason = enum(i64) {
        interactive = 0,
        noninteractive = 1,
    };
    pub const TextUpdateReason = enum(i64) {
        typing = 0,
        undoRedo = 1,
    };
};

pub const NSWritingToolsCoordinatorAnimationParameters = struct {
    obj: Object,

    pub const methods = .{
        .{ "completionHandler", void, .{} },
        .{ "delay", objc.CGFloat, .{} },
        .{ "duration", objc.CGFloat, .{} },
        .{ "progressHandler", void, .{} },
        .{ "setCompletionHandler:", void, .{void} },
        .{ "setProgressHandler:", void, .{void} },
    };

    pub fn send(self: NSWritingToolsCoordinatorAnimationParameters, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSWritingToolsCoordinatorContext = struct {
    obj: Object,

    pub const methods = .{
        .{ "attributedString", Foundation.NSAttributedString, .{} },
        .{ "identifier", ?*anyopaque, .{} },
        .{ "range", NSRange, .{} },
        .{ "resolvedRange", NSRange, .{} },
    };

    pub fn send(self: NSWritingToolsCoordinatorContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithAttributedString:range:", Object, .{ Foundation.NSAttributedString, NSRange } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSWritingToolsCoordinatorContext", class_methods, selector, args);
    }
};

pub const NSToolbarItemIdentifier = struct {
    pub const flexibleSpace = "NSToolbarFlexibleSpaceItem";
    pub const space = "NSToolbarSpaceItem";
    pub const showColors = "NSToolbarShowColorsItem";
    pub const showFonts = "NSToolbarShowFontsItem";
    pub const print = "NSToolbarPrintItem";
};
pub const NSArrayObj = struct {
    obj: Object,

    pub const methods = .{ .{ "count", c_ulong, .{} }, .{ "objectAtIndex:", Object, .{c_ulong} }, .{ "firstObject", Object, .{} }, .{ "lastObject", Object, .{} }, .{ "containsObject:", objc.BOOL, .{Object} } };
    pub fn send(self: NSArrayObj, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};
pub const CALayer = struct {
    obj: Object,

    pub const methods = .{ .{ "setBackgroundColor:", void, .{?*anyopaque} }, .{ "setBorderColor:", void, .{?*anyopaque} }, .{ "setBorderWidth:", void, .{objc.CGFloat} }, .{ "setCornerRadius:", void, .{objc.CGFloat} }, .{ "setMasksToBounds:", void, .{objc.BOOL} }, .{ "setShadowColor:", void, .{?*anyopaque} }, .{ "setShadowOpacity:", void, .{f32} }, .{ "setShadowRadius:", void, .{objc.CGFloat} }, .{ "setShadowOffset:", void, .{NSSize} }, .{ "setOpacity:", void, .{f32} }, .{ "setHidden:", void, .{objc.BOOL} } };
    pub fn send(self: CALayer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
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
