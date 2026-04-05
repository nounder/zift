//! Foundation bindings for Zig — AUTO-GENERATED from Swift symbol graph
//! Run: python3 scripts/gen_framework.py Foundation

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
pub const WebKit = @import("WebKit.zig");

pub const NSPoint = extern struct { x: f64 = 0, y: f64 = 0 };
pub const NSSize = extern struct { width: f64 = 0, height: f64 = 0 };
pub const NSRect = extern struct {
    origin: NSPoint = .{},
    size: NSSize = .{},
    pub fn make(x: f64, y: f64, w: f64, h: f64) NSRect {
        return .{ .origin = .{ .x = x, .y = y }, .size = .{ .width = w, .height = h } };
    }
};
pub const NSRange = extern struct { location: c_ulong, length: c_ulong };
pub const NSEdgeInsets = extern struct { top: f64, left: f64, bottom: f64, right: f64 };

pub const NSCollectionChangeType = enum(i64) {
    insert = 0,
    remove = 1,
};

pub const ComparisonResult = enum(i64) {
    orderedAscending = -1,
    orderedSame = 0,
    orderedDescending = 1,
};

pub const NSFileManagerResumeSyncBehavior = enum(i64) {
    preserveLocalChanges = 0,
    afterUploadWithFailOnConflict = 1,
    dropLocalChanges = 2,
};

pub const NSFileManagerUploadLocalVersionConflictPolicy = enum(i64) {
    conflictPolicyDefault = 0,
    conflictPolicyFailOnConflict = 1,
};

pub const NSGrammaticalCase = enum(i64) {
    notSet = 0,
    nominative = 1,
    accusative = 2,
    dative = 3,
    genitive = 4,
    prepositional = 5,
    ablative = 6,
    adessive = 7,
    allative = 8,
    elative = 9,
    illative = 10,
    essive = 11,
    inessive = 12,
    locative = 13,
    translative = 14,
};

pub const NSGrammaticalDefiniteness = enum(i64) {
    notSet = 0,
    indefinite = 1,
    definite = 2,
};

pub const NSGrammaticalDetermination = enum(i64) {
    notSet = 0,
    independent = 1,
    dependent = 2,
};

pub const NSGrammaticalGender = enum(i64) {
    notSet = 0,
    feminine = 1,
    masculine = 2,
    neuter = 3,
};

pub const NSGrammaticalNumber = enum(i64) {
    notSet = 0,
    singular = 1,
    zero = 2,
    plural = 3,
    pluralTwo = 4,
    pluralFew = 5,
    pluralMany = 6,
};

pub const NSGrammaticalPartOfSpeech = enum(i64) {
    notSet = 0,
    determiner = 1,
    pronoun = 2,
    letter = 3,
    adverb = 4,
    particle = 5,
    adjective = 6,
    adposition = 7,
    verb = 8,
    noun = 9,
    conjunction = 10,
    numeral = 11,
    interjection = 12,
    preposition = 13,
    abbreviation = 14,
};

pub const NSGrammaticalPerson = enum(i64) {
    notSet = 0,
    first = 1,
    second = 2,
    third = 3,
};

pub const NSGrammaticalPronounType = enum(i64) {
    notSet = 0,
    personal = 1,
    reflexive = 2,
    possessive = 3,
};

pub const NSItemProviderRepresentationVisibility = enum(i64) {
    all = 0,
    group = 2,
    ownProcess = 3,
};

pub const NSKeyValueChange = enum(i64) {
    setting = 1,
    insertion = 2,
    removal = 3,
    replacement = 4,
};

pub const NSKeyValueSetMutationKind = enum(i64) {
    @"union" = 1,
    minus = 2,
    intersect = 3,
    set = 4,
};

pub const NSLinguisticTaggerUnit = enum(i64) {
    word = 0,
    sentence = 1,
    paragraph = 2,
    document = 3,
};

pub const QualityOfService = enum(i64) {
    default = -1,
    background = 9,
    utility = 17,
    userInitiated = 25,
    userInteractive = 33,
};

pub const NSRectEdge = enum(i64) {
    minX = 0,
    minY = 1,
    maxX = 2,
    maxY = 3,
};

pub const NSSaveOptions = enum(i64) {
    yes = 0,
    no = 1,
    ask = 2,
};

pub const NSCacheDelegate = *anyopaque;
pub const NSCoding = *anyopaque;
pub const NSCopying = *anyopaque;
pub const NSDecimalNumberBehaviors = *anyopaque;
pub const NSDiscardableContent = *anyopaque;
pub const NSExtensionRequestHandling = *anyopaque;
pub const NSFastEnumeration = *anyopaque;
pub const FileManagerDelegate = *anyopaque;
pub const NSFilePresenter = *anyopaque;
pub const NSItemProviderReading = *anyopaque;
pub const NSItemProviderWriting = *anyopaque;
pub const NSKeyedArchiverDelegate = *anyopaque;
pub const NSKeyedUnarchiverDelegate = *anyopaque;
pub const NSLocking = *anyopaque;
pub const NSMachPortDelegate = *anyopaque;
pub const NSMetadataQueryDelegate = *anyopaque;
pub const NSMutableCopying = *anyopaque;
pub const NetServiceBrowserDelegate = *anyopaque;
pub const NetServiceDelegate = *anyopaque;
pub const NSObjectProtocol = *anyopaque;
pub const PortDelegate = *anyopaque;
pub const ProgressReporting = *anyopaque;
pub const NSSecureCoding = *anyopaque;
pub const NSSpellServerDelegate = *anyopaque;
pub const StreamDelegate = *anyopaque;
pub const URLAuthenticationChallengeSender = *anyopaque;
pub const NSURLConnectionDataDelegate = *anyopaque;
pub const NSURLConnectionDelegate = *anyopaque;
pub const NSURLConnectionDownloadDelegate = *anyopaque;
pub const NSURLDownloadDelegate = *anyopaque;
pub const URLProtocolClient = *anyopaque;
pub const URLSessionDataDelegate = *anyopaque;
pub const URLSessionDelegate = *anyopaque;
pub const URLSessionDownloadDelegate = *anyopaque;
pub const URLSessionStreamDelegate = *anyopaque;
pub const URLSessionTaskDelegate = *anyopaque;
pub const URLSessionWebSocketDelegate = *anyopaque;
pub const NSUserActivityDelegate = *anyopaque;
pub const NSUserNotificationCenterDelegate = *anyopaque;
pub const XMLParserDelegate = *anyopaque;
pub const NSXPCListenerDelegate = *anyopaque;
pub const NSXPCProxyCreating = *anyopaque;

pub const NSAffineTransform = struct {
    obj: Object,

    pub const methods = .{
        .{ "appendTransform:", void, .{NSAffineTransform} },
        .{ "initWithTransform:", NSAffineTransform, .{NSAffineTransform} },
        .{ "invert", void, .{} },
        .{ "prependTransform:", void, .{NSAffineTransform} },
        .{ "rotateByDegrees:", void, .{f64} },
        .{ "rotateByRadians:", void, .{f64} },
        .{ "scaleBy:", void, .{f64} },
        .{ "scaleXBy:yBy:", void, .{ f64, f64 } },
        .{ "setTransformStruct:", void, .{Object} },
        .{ "transformPoint:", NSPoint, .{NSPoint} },
        .{ "transformSize:", NSSize, .{NSSize} },
        .{ "transformStruct", Object, .{} },
        .{ "translateXBy:yBy:", void, .{ f64, f64 } },
    };

    pub fn send(self: NSAffineTransform, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSAffineTransform", class_methods, selector, args);
    }
};

pub const NSAppleEventDescriptor = struct {
    obj: Object,

    pub const methods = .{
        .{ "aeDesc", ?*anyopaque, .{} },
        .{ "attributeDescriptorForKeyword:", ?NSAppleEventDescriptor, .{objc.NSString} },
        .{ "booleanValue", objc.BOOL, .{} },
        .{ "coerceToDescriptorType:", ?NSAppleEventDescriptor, .{objc.NSString} },
        .{ "data", NSData, .{} },
        .{ "dateValue", ?NSDate, .{} },
        .{ "descriptorAtIndex:", ?NSAppleEventDescriptor, .{objc.NSInteger} },
        .{ "descriptorForKeyword:", ?NSAppleEventDescriptor, .{objc.NSString} },
        .{ "descriptorType", objc.NSString, .{} },
        .{ "doubleValue", f64, .{} },
        .{ "enumCodeValue", objc.NSString, .{} },
        .{ "eventClass", objc.NSString, .{} },
        .{ "eventID", objc.NSString, .{} },
        .{ "fileURLValue", ?NSURL, .{} },
        .{ "initListDescriptor", NSAppleEventDescriptor, .{void} },
        .{ "initRecordDescriptor", NSAppleEventDescriptor, .{void} },
        .{ "initWithAEDescNoCopy:", NSAppleEventDescriptor, .{?*anyopaque} },
        .{ "initWithDescriptorType:bytes:length:", NSAppleEventDescriptor, .{ objc.NSString, ?UnsafeRawPointer, objc.NSInteger } },
        .{ "initWithDescriptorType:data:", NSAppleEventDescriptor, .{ objc.NSString, ?NSData } },
        .{ "initWithEventClass:eventID:targetDescriptor:returnID:transactionID:", NSAppleEventDescriptor, .{ objc.NSString, objc.NSString, ?NSAppleEventDescriptor, objc.NSString, objc.NSString } },
        .{ "insertDescriptor:atIndex:", void, .{ NSAppleEventDescriptor, objc.NSInteger } },
        .{ "int32Value", i32, .{} },
        .{ "isRecordDescriptor", objc.BOOL, .{} },
        .{ "keywordForDescriptorAtIndex:", objc.NSString, .{objc.NSInteger} },
        .{ "numberOfItems", objc.NSInteger, .{} },
        .{ "paramDescriptorForKeyword:", ?NSAppleEventDescriptor, .{objc.NSString} },
        .{ "removeDescriptorAtIndex:", void, .{objc.NSInteger} },
        .{ "removeDescriptorWithKeyword:", void, .{objc.NSString} },
        .{ "removeParamDescriptorWithKeyword:", void, .{objc.NSString} },
        .{ "returnID", objc.NSString, .{} },
        .{ "sendEventWithOptions:timeout:error:", NSAppleEventDescriptor, .{ objc.NSInteger, TimeInterval } },
        .{ "setAttributeDescriptor:forKeyword:", void, .{ NSAppleEventDescriptor, objc.NSString } },
        .{ "setDescriptor:forKeyword:", void, .{ NSAppleEventDescriptor, objc.NSString } },
        .{ "setParamDescriptor:forKeyword:", void, .{ NSAppleEventDescriptor, objc.NSString } },
        .{ "stringValue", ?objc.NSString, .{} },
        .{ "transactionID", objc.NSString, .{} },
        .{ "typeCodeValue", objc.NSString, .{} },
    };

    pub fn send(self: NSAppleEventDescriptor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "appleEventWithEventClass:eventID:targetDescriptor:returnID:transactionID:", NSAppleEventDescriptor, .{ objc.NSString, objc.NSString, ?NSAppleEventDescriptor, objc.NSString, objc.NSString } },
        .{ "currentProcessDescriptor", NSAppleEventDescriptor, .{} },
        .{ "descriptorWithApplicationURL:", Object, .{NSURL} },
        .{ "descriptorWithBoolean:", Object, .{objc.BOOL} },
        .{ "descriptorWithBundleIdentifier:", Object, .{objc.NSString} },
        .{ "descriptorWithDate:", Object, .{NSDate} },
        .{ "descriptorWithDouble:", Object, .{f64} },
        .{ "descriptorWithEnumCode:", Object, .{objc.NSString} },
        .{ "descriptorWithFileURL:", Object, .{NSURL} },
        .{ "descriptorWithInt32:", Object, .{i32} },
        .{ "descriptorWithProcessIdentifier:", Object, .{pid_t} },
        .{ "descriptorWithString:", Object, .{objc.NSString} },
        .{ "descriptorWithTypeCode:", Object, .{objc.NSString} },
        .{ "listDescriptor", NSAppleEventDescriptor, .{} },
        .{ "nullDescriptor", NSAppleEventDescriptor, .{} },
        .{ "recordDescriptor", NSAppleEventDescriptor, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSAppleEventDescriptor", class_methods, selector, args);
    }
};

pub const NSAppleEventManager = struct {
    obj: Object,

    pub const methods = .{
        .{ "appleEventForSuspensionID:", NSAppleEventDescriptor, .{OpaquePointer} },
        .{ "currentAppleEvent", ?NSAppleEventDescriptor, .{} },
        .{ "currentReplyAppleEvent", ?NSAppleEventDescriptor, .{} },
        .{ "dispatchRawAppleEvent:withRawReply:handlerRefCon:", objc.NSString, .{ objc.NSString, objc.NSString, objc.NSString } },
        .{ "removeEventHandlerForEventClass:andEventID:", void, .{ objc.NSString, objc.NSString } },
        .{ "replyAppleEventForSuspensionID:", NSAppleEventDescriptor, .{OpaquePointer} },
        .{ "resumeWithSuspensionID:", void, .{OpaquePointer} },
        .{ "setCurrentAppleEventAndReplyEventWithSuspensionID:", void, .{OpaquePointer} },
        .{ "setEventHandler:andSelector:forEventClass:andEventID:", void, .{ Any, Selector, objc.NSString, objc.NSString } },
        .{ "suspendCurrentAppleEvent", OpaquePointer, .{} },
    };

    pub fn send(self: NSAppleEventManager, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedAppleEventManager", NSAppleEventManager, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSAppleEventManager", class_methods, selector, args);
    }
};

pub const NSAppleScript = struct {
    obj: Object,

    pub const methods = .{
        .{ "compileAndReturnError:", objc.BOOL, .{?NSDictionary} },
        .{ "compiled", objc.BOOL, .{} },
        .{ "executeAndReturnError:", NSAppleEventDescriptor, .{?NSDictionary} },
        .{ "executeAppleEvent:error:", NSAppleEventDescriptor, .{ NSAppleEventDescriptor, ?NSDictionary } },
        .{ "initWithContentsOfURL:error:", NSAppleScript, .{ NSURL, ?NSDictionary } },
        .{ "initWithSource:", NSAppleScript, .{objc.NSString} },
        .{ "source", ?objc.NSString, .{} },
    };

    pub fn send(self: NSAppleScript, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSAppleScript", class_methods, selector, args);
    }
};

pub const NSArchiver = struct {
    obj: Object,

    pub const Super = NSCoder;
    pub const methods = .{
        .{ "archiverData", NSMutableData, .{} },
        .{ "classNameEncodedForTrueClassName:", ?objc.NSString, .{objc.NSString} },
        .{ "encodeClassName:intoClassName:", void, .{ objc.NSString, objc.NSString } },
        .{ "encodeConditionalObject:", void, .{?Any} },
        .{ "encodeRootObject:", void, .{Any} },
        .{ "initForWritingWithMutableData:", NSArchiver, .{NSMutableData} },
        .{ "replaceObject:withObject:", void, .{ Any, Any } },
    };

    pub fn send(self: NSArchiver, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "archiveRootObject:toFile:", objc.BOOL, .{ Any, objc.NSString } },
        .{ "archivedDataWithRootObject:", NSData, .{Any} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSArchiver", class_methods, selector, args);
    }
};

pub const NSArray = struct {
    obj: Object,

    pub const methods = .{
        .{ "addObserver:forKeyPath:options:context:", void, .{ Object, objc.NSString, objc.NSInteger, ?UnsafeMutableRawPointer } },
        .{ "addObserver:toObjectsAtIndexes:forKeyPath:options:context:", void, .{ Object, NSIndexSet, objc.NSString, objc.NSInteger, ?UnsafeMutableRawPointer } },
        .{ "arrayByAddingObject:", Object, .{Any} },
        .{ "arrayByAddingObjectsFromArray:", Object, .{Object} },
        .{ "componentsJoinedByString:", objc.NSString, .{objc.NSString} },
        .{ "containsObject:", objc.BOOL, .{Any} },
        .{ "count", objc.NSInteger, .{} },
        .{ "description", objc.NSString, .{} },
        .{ "descriptionWithLocale:", objc.NSString, .{?Any} },
        .{ "descriptionWithLocale:indent:", objc.NSString, .{ ?Any, objc.NSInteger } },
        .{ "enumerateObjectsAtIndexes:options:usingBlock:", void, .{ NSIndexSet, objc.NSInteger, ?*anyopaque } },
        .{ "enumerateObjectsUsingBlock:", void, .{?*anyopaque} },
        .{ "enumerateObjectsWithOptions:usingBlock:", void, .{ objc.NSInteger, ?*anyopaque } },
        .{ "filteredArrayUsingPredicate:", Object, .{NSPredicate} },
        .{ "firstObject", ?Any, .{} },
        .{ "firstObjectCommonWithArray:", ?Any, .{Object} },
        .{ "indexOfObject:", objc.NSInteger, .{Any} },
        .{ "indexOfObject:inRange:", objc.NSInteger, .{ Any, NSRange } },
        .{ "indexOfObject:inSortedRange:options:usingComparator:", objc.NSInteger, .{ Any, NSRange, objc.NSInteger, ?*anyopaque } },
        .{ "indexOfObjectAtIndexes:options:passingTest:", objc.NSInteger, .{ NSIndexSet, objc.NSInteger, ?*anyopaque } },
        .{ "indexOfObjectIdenticalTo:", objc.NSInteger, .{Any} },
        .{ "indexOfObjectIdenticalTo:inRange:", objc.NSInteger, .{ Any, NSRange } },
        .{ "indexOfObjectPassingTest:", objc.NSInteger, .{?*anyopaque} },
        .{ "indexOfObjectWithOptions:passingTest:", objc.NSInteger, .{ objc.NSInteger, ?*anyopaque } },
        .{ "indexesOfObjectsAtIndexes:options:passingTest:", NSIndexSet, .{ NSIndexSet, objc.NSInteger, ?*anyopaque } },
        .{ "indexesOfObjectsPassingTest:", NSIndexSet, .{?*anyopaque} },
        .{ "indexesOfObjectsWithOptions:passingTest:", NSIndexSet, .{ objc.NSInteger, ?*anyopaque } },
        .{ "initWithArray:", NSArray, .{Object} },
        .{ "initWithArray:copyItems:", NSArray, .{ Object, objc.BOOL } },
        .{ "initWithCoder:", NSArray, .{NSCoder} },
        .{ "initWithContentsOfFile:", NSArray, .{objc.NSString} },
        .{ "initWithContentsOfURL:", NSArray, .{NSURL} },
        .{ "initWithContentsOfURL:error:", NSArray, .{ NSURL, void } },
        .{ "initWithObjects:count:", NSArray, .{ ?UnsafePointer, objc.NSInteger } },
        .{ "isEqualToArray:", objc.BOOL, .{Object} },
        .{ "lastObject", ?Any, .{} },
        .{ "objectAtIndex:", Any, .{objc.NSInteger} },
        .{ "objectEnumerator", NSEnumerator, .{} },
        .{ "objectsAtIndexes:", Object, .{NSIndexSet} },
        .{ "pathsMatchingExtensions:", Object, .{Object} },
        .{ "removeObserver:forKeyPath:", void, .{ Object, objc.NSString } },
        .{ "removeObserver:forKeyPath:context:", void, .{ Object, objc.NSString, ?UnsafeMutableRawPointer } },
        .{ "removeObserver:fromObjectsAtIndexes:forKeyPath:", void, .{ Object, NSIndexSet, objc.NSString } },
        .{ "removeObserver:fromObjectsAtIndexes:forKeyPath:context:", void, .{ Object, NSIndexSet, objc.NSString, ?UnsafeMutableRawPointer } },
        .{ "reverseObjectEnumerator", NSEnumerator, .{} },
        .{ "setValue:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "sortedArrayHint", NSData, .{} },
        .{ "sortedArrayUsingComparator:", Object, .{?*anyopaque} },
        .{ "sortedArrayUsingDescriptors:", Object, .{Object} },
        .{ "sortedArrayUsingFunction:context:", Object, .{ ?*anyopaque, ?UnsafeMutableRawPointer } },
        .{ "sortedArrayUsingFunction:context:hint:", Object, .{ ?*anyopaque, ?UnsafeMutableRawPointer, ?NSData } },
        .{ "sortedArrayUsingSelector:", Object, .{Selector} },
        .{ "sortedArrayWithOptions:usingComparator:", Object, .{ objc.NSInteger, ?*anyopaque } },
        .{ "subarrayWithRange:", Object, .{NSRange} },
        .{ "valueForKey:", Any, .{objc.NSString} },
        .{ "writeToFile:atomically:", objc.BOOL, .{ objc.NSString, objc.BOOL } },
        .{ "writeToURL:atomically:", objc.BOOL, .{ NSURL, objc.BOOL } },
        .{ "writeToURL:error:", void, .{NSURL} },
    };

    pub fn send(self: NSArray, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "arrayWithContentsOfURL:", Object, .{NSURL} },
        .{ "arrayWithObject:", Object, .{Any} },
        .{ "arrayWithObjects:count:", Object, .{ UnsafePointer, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSArray", class_methods, selector, args);
    }
};

pub const NSAssertionHandler = struct {
    pub const class_methods = .{
        .{ "currentHandler", NSAssertionHandler, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSAssertionHandler", class_methods, selector, args);
    }
};

pub const NSAttributedString = struct {
    obj: Object,

    pub const methods = .{
        .{ "attribute:atIndex:effectiveRange:", ?Any, .{ objc.NSString, objc.NSInteger, NSRange } },
        .{ "attribute:atIndex:longestEffectiveRange:inRange:", ?Any, .{ objc.NSString, objc.NSInteger, NSRange, NSRange } },
        .{ "attributedStringByInflectingString", NSAttributedString, .{} },
        .{ "attributedSubstringFromRange:", NSAttributedString, .{NSRange} },
        .{ "attributesAtIndex:effectiveRange:", Object, .{ objc.NSInteger, NSRange } },
        .{ "attributesAtIndex:longestEffectiveRange:inRange:", Object, .{ objc.NSInteger, NSRange, NSRange } },
        .{ "enumerateAttribute:inRange:options:usingBlock:", void, .{ objc.NSString, NSRange, objc.NSInteger, ?*anyopaque } },
        .{ "enumerateAttributesInRange:options:usingBlock:", void, .{ NSRange, objc.NSInteger, ?*anyopaque } },
        .{ "initWithAttributedString:", NSAttributedString, .{NSAttributedString} },
        .{ "initWithString:", NSAttributedString, .{objc.NSString} },
        .{ "initWithString:attributes:", NSAttributedString, .{ objc.NSString, ?*anyopaque } },
        .{ "isEqualToAttributedString:", objc.BOOL, .{NSAttributedString} },
        .{ "length", objc.NSInteger, .{} },
        .{ "string", objc.NSString, .{} },
    };

    pub fn send(self: NSAttributedString, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSAttributedString", class_methods, selector, args);
    }
};

pub const NSBackgroundActivityScheduler = struct {
    obj: Object,

    pub const methods = .{
        .{ "identifier", objc.NSString, .{} },
        .{ "initWithIdentifier:", NSBackgroundActivityScheduler, .{objc.NSString} },
        .{ "interval", TimeInterval, .{} },
        .{ "invalidate", void, .{} },
        .{ "qualityOfService", QualityOfService, .{} },
        .{ "repeats", objc.BOOL, .{} },
        .{ "scheduleWithBlock:", void, .{?*anyopaque} },
        .{ "setInterval:", void, .{TimeInterval} },
        .{ "setQualityOfService:", void, .{QualityOfService} },
        .{ "setRepeats:", void, .{objc.BOOL} },
        .{ "setTolerance:", void, .{TimeInterval} },
        .{ "shouldDefer", objc.BOOL, .{} },
        .{ "tolerance", TimeInterval, .{} },
    };

    pub fn send(self: NSBackgroundActivityScheduler, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSBackgroundActivityScheduler", class_methods, selector, args);
    }

    pub const Result = enum(i64) {
        finished = 1,
        deferred = 2,
    };
};

pub const BlockOperation = struct {
    obj: Object,

    pub const Super = Operation;
    pub const methods = .{
        .{ "addExecutionBlock:", void, .{?*anyopaque} },
        .{ "executionBlocks", Object, .{} },
    };

    pub fn send(self: BlockOperation, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "blockOperationWithBlock:", Object, .{?*anyopaque} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSBlockOperation", class_methods, selector, args);
    }
};

pub const Bundle = struct {
    obj: Object,

    pub const methods = .{
        .{ "URLForAuxiliaryExecutable:", ?NSURL, .{objc.NSString} },
        .{ "URLForResource:withExtension:", ?NSURL, .{ ?objc.NSString, ?objc.NSString } },
        .{ "URLForResource:withExtension:subdirectory:", ?NSURL, .{ ?objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "URLForResource:withExtension:subdirectory:localization:", ?NSURL, .{ ?objc.NSString, ?objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "URLsForResourcesWithExtension:subdirectory:", ?*anyopaque, .{ ?objc.NSString, ?objc.NSString } },
        .{ "URLsForResourcesWithExtension:subdirectory:localization:", ?*anyopaque, .{ ?objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "appStoreReceiptURL", ?NSURL, .{} },
        .{ "builtInPlugInsPath", ?objc.NSString, .{} },
        .{ "builtInPlugInsURL", ?NSURL, .{} },
        .{ "bundleIdentifier", ?objc.NSString, .{} },
        .{ "bundlePath", objc.NSString, .{} },
        .{ "bundleURL", NSURL, .{} },
        .{ "classNamed:", ?AnyClass, .{objc.NSString} },
        .{ "developmentLocalization", ?objc.NSString, .{} },
        .{ "executableArchitectures", ?*anyopaque, .{} },
        .{ "executablePath", ?objc.NSString, .{} },
        .{ "executableURL", ?NSURL, .{} },
        .{ "infoDictionary", ?*anyopaque, .{} },
        .{ "initWithPath:", Bundle, .{objc.NSString} },
        .{ "initWithURL:", Bundle, .{NSURL} },
        .{ "load", objc.BOOL, .{} },
        .{ "loadAndReturnError:", void, .{} },
        .{ "loaded", objc.BOOL, .{} },
        .{ "localizations", Object, .{} },
        .{ "localizedInfoDictionary", ?*anyopaque, .{} },
        .{ "localizedStringForKey:value:table:", objc.NSString, .{ objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "objectForInfoDictionaryKey:", ?Any, .{objc.NSString} },
        .{ "pathForAuxiliaryExecutable:", ?objc.NSString, .{objc.NSString} },
        .{ "pathForResource:ofType:", ?objc.NSString, .{ ?objc.NSString, ?objc.NSString } },
        .{ "pathForResource:ofType:inDirectory:", ?objc.NSString, .{ ?objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "pathForResource:ofType:inDirectory:forLocalization:", ?objc.NSString, .{ ?objc.NSString, ?objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "pathsForResourcesOfType:inDirectory:", Object, .{ ?objc.NSString, ?objc.NSString } },
        .{ "pathsForResourcesOfType:inDirectory:forLocalization:", Object, .{ ?objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "preferredLocalizations", Object, .{} },
        .{ "preflightAndReturnError:", void, .{} },
        .{ "principalClass", ?AnyClass, .{} },
        .{ "privateFrameworksPath", ?objc.NSString, .{} },
        .{ "privateFrameworksURL", ?NSURL, .{} },
        .{ "resourcePath", ?objc.NSString, .{} },
        .{ "resourceURL", ?NSURL, .{} },
        .{ "sharedFrameworksPath", ?objc.NSString, .{} },
        .{ "sharedFrameworksURL", ?NSURL, .{} },
        .{ "sharedSupportPath", ?objc.NSString, .{} },
        .{ "sharedSupportURL", ?NSURL, .{} },
        .{ "unload", objc.BOOL, .{} },
    };

    pub fn send(self: Bundle, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "URLForResource:withExtension:subdirectory:inBundleWithURL:", ?NSURL, .{ ?objc.NSString, ?objc.NSString, ?objc.NSString, NSURL } },
        .{ "URLsForResourcesWithExtension:subdirectory:inBundleWithURL:", ?*anyopaque, .{ ?objc.NSString, ?objc.NSString, NSURL } },
        .{ "allBundles", Object, .{} },
        .{ "allFrameworks", Object, .{} },
        .{ "bundleForClass:", Object, .{AnyClass} },
        .{ "bundleWithIdentifier:", Object, .{objc.NSString} },
        .{ "mainBundle", Bundle, .{} },
        .{ "pathForResource:ofType:inDirectory:", ?objc.NSString, .{ ?objc.NSString, ?objc.NSString, objc.NSString } },
        .{ "pathsForResourcesOfType:inDirectory:", Object, .{ ?objc.NSString, objc.NSString } },
        .{ "preferredLocalizationsFromArray:", Object, .{Object} },
        .{ "preferredLocalizationsFromArray:forPreferences:", Object, .{ Object, ?*anyopaque } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSBundle", class_methods, selector, args);
    }
};

pub const ByteCountFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "adaptive", objc.BOOL, .{} },
        .{ "allowedUnits", objc.NSInteger, .{} },
        .{ "allowsNonnumericFormatting", objc.BOOL, .{} },
        .{ "countStyle", ByteCountFormatter.CountStyle, .{} },
        .{ "formattingContext", Formatter.Context, .{} },
        .{ "includesActualByteCount", objc.BOOL, .{} },
        .{ "includesCount", objc.BOOL, .{} },
        .{ "includesUnit", objc.BOOL, .{} },
        .{ "setAdaptive:", void, .{objc.BOOL} },
        .{ "setAllowedUnits:", void, .{objc.NSInteger} },
        .{ "setAllowsNonnumericFormatting:", void, .{objc.BOOL} },
        .{ "setCountStyle:", void, .{ByteCountFormatter.CountStyle} },
        .{ "setFormattingContext:", void, .{Formatter.Context} },
        .{ "setIncludesActualByteCount:", void, .{objc.BOOL} },
        .{ "setIncludesCount:", void, .{objc.BOOL} },
        .{ "setIncludesUnit:", void, .{objc.BOOL} },
        .{ "setZeroPadsFractionDigits:", void, .{objc.BOOL} },
        .{ "stringForObjectValue:", ?objc.NSString, .{?Any} },
        .{ "stringFromByteCount:", objc.NSString, .{i64} },
        .{ "stringFromMeasurement:", objc.NSString, .{UnitInformationStorage} },
        .{ "zeroPadsFractionDigits", objc.BOOL, .{} },
    };

    pub fn send(self: ByteCountFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "stringFromByteCount:countStyle:", objc.NSString, .{ i64, ByteCountFormatter.CountStyle } },
        .{ "stringFromMeasurement:countStyle:", objc.NSString, .{ UnitInformationStorage, ByteCountFormatter.CountStyle } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSByteCountFormatter", class_methods, selector, args);
    }

    pub const CountStyle = enum(i64) {
        file = 0,
        memory = 1,
        decimal = 2,
        binary = 3,
    };
};

pub const NSCache = struct {
    obj: Object,

    pub const methods = .{
        .{ "countLimit", objc.NSInteger, .{} },
        .{ "delegate", ?NSCacheDelegate, .{} },
        .{ "evictsObjectsWithDiscardedContent", objc.BOOL, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "objectForKey:", ?*anyopaque, .{?*anyopaque} },
        .{ "removeAllObjects", void, .{} },
        .{ "removeObjectForKey:", void, .{?*anyopaque} },
        .{ "setCountLimit:", void, .{objc.NSInteger} },
        .{ "setDelegate:", void, .{?NSCacheDelegate} },
        .{ "setEvictsObjectsWithDiscardedContent:", void, .{objc.BOOL} },
        .{ "setName:", void, .{objc.NSString} },
        .{ "setObject:forKey:", void, .{ ?*anyopaque, ?*anyopaque } },
        .{ "setObject:forKey:cost:", void, .{ ?*anyopaque, ?*anyopaque, objc.NSInteger } },
        .{ "setTotalCostLimit:", void, .{objc.NSInteger} },
        .{ "totalCostLimit", objc.NSInteger, .{} },
    };

    pub fn send(self: NSCache, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSCache", class_methods, selector, args);
    }
};

pub const CachedURLResponse = struct {
    obj: Object,

    pub const methods = .{
        .{ "data", NSData, .{} },
        .{ "initWithResponse:data:", CachedURLResponse, .{ URLResponse, NSData } },
        .{ "initWithResponse:data:userInfo:storagePolicy:", CachedURLResponse, .{ URLResponse, NSData, ?*anyopaque, URLCache.StoragePolicy } },
        .{ "response", URLResponse, .{} },
        .{ "storagePolicy", URLCache.StoragePolicy, .{} },
        .{ "userInfo", ?*anyopaque, .{} },
    };

    pub fn send(self: CachedURLResponse, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSCachedURLResponse", class_methods, selector, args);
    }
};

pub const NSCalendar = struct {
    obj: Object,

    pub const methods = .{
        .{ "AMSymbol", objc.NSString, .{} },
        .{ "PMSymbol", objc.NSString, .{} },
        .{ "calendarIdentifier", objc.NSString, .{} },
        .{ "compareDate:toDate:toUnitGranularity:", ComparisonResult, .{ NSDate, NSDate, objc.NSInteger } },
        .{ "component:fromDate:", objc.NSInteger, .{ objc.NSInteger, NSDate } },
        .{ "components:fromDate:", NSDateComponents, .{ objc.NSInteger, NSDate } },
        .{ "components:fromDate:toDate:options:", NSDateComponents, .{ objc.NSInteger, NSDate, NSDate, objc.NSInteger } },
        .{ "components:fromDateComponents:toDateComponents:options:", NSDateComponents, .{ objc.NSInteger, NSDateComponents, NSDateComponents, objc.NSInteger } },
        .{ "componentsInTimeZone:fromDate:", NSDateComponents, .{ NSTimeZone, NSDate } },
        .{ "date:matchesComponents:", objc.BOOL, .{ NSDate, NSDateComponents } },
        .{ "dateByAddingComponents:toDate:options:", ?NSDate, .{ NSDateComponents, NSDate, objc.NSInteger } },
        .{ "dateByAddingUnit:value:toDate:options:", ?NSDate, .{ objc.NSInteger, objc.NSInteger, NSDate, objc.NSInteger } },
        .{ "dateBySettingHour:minute:second:ofDate:options:", ?NSDate, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, NSDate, objc.NSInteger } },
        .{ "dateBySettingUnit:value:ofDate:options:", ?NSDate, .{ objc.NSInteger, objc.NSInteger, NSDate, objc.NSInteger } },
        .{ "dateFromComponents:", ?NSDate, .{NSDateComponents} },
        .{ "dateWithEra:year:month:day:hour:minute:second:nanosecond:", ?NSDate, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "dateWithEra:yearForWeekOfYear:weekOfYear:weekday:hour:minute:second:nanosecond:", ?NSDate, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "enumerateDatesStartingAfterDate:matchingComponents:options:usingBlock:", void, .{ NSDate, NSDateComponents, objc.NSInteger, ?*anyopaque } },
        .{ "eraSymbols", Object, .{} },
        .{ "firstWeekday", objc.NSInteger, .{} },
        .{ "getEra:year:month:day:fromDate:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, NSDate } },
        .{ "getEra:yearForWeekOfYear:weekOfYear:weekday:fromDate:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, NSDate } },
        .{ "getHour:minute:second:nanosecond:fromDate:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, NSDate } },
        .{ "initWithCalendarIdentifier:", NSCalendar, .{objc.NSString} },
        .{ "isDate:equalToDate:toUnitGranularity:", objc.BOOL, .{ NSDate, NSDate, objc.NSInteger } },
        .{ "isDate:inSameDayAsDate:", objc.BOOL, .{ NSDate, NSDate } },
        .{ "isDateInToday:", objc.BOOL, .{NSDate} },
        .{ "isDateInTomorrow:", objc.BOOL, .{NSDate} },
        .{ "isDateInWeekend:", objc.BOOL, .{NSDate} },
        .{ "isDateInYesterday:", objc.BOOL, .{NSDate} },
        .{ "locale", ?NSLocale, .{} },
        .{ "longEraSymbols", Object, .{} },
        .{ "maximumRangeOfUnit:", NSRange, .{objc.NSInteger} },
        .{ "minimumDaysInFirstWeek", objc.NSInteger, .{} },
        .{ "minimumRangeOfUnit:", NSRange, .{objc.NSInteger} },
        .{ "monthSymbols", Object, .{} },
        .{ "nextDateAfterDate:matchingComponents:options:", ?NSDate, .{ NSDate, NSDateComponents, objc.NSInteger } },
        .{ "nextDateAfterDate:matchingHour:minute:second:options:", ?NSDate, .{ NSDate, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "nextDateAfterDate:matchingUnit:value:options:", ?NSDate, .{ NSDate, objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "nextWeekendStartDate:interval:options:afterDate:", objc.BOOL, .{ ?NSDate, TimeInterval, objc.NSInteger, NSDate } },
        .{ "ordinalityOfUnit:inUnit:forDate:", objc.NSInteger, .{ objc.NSInteger, objc.NSInteger, NSDate } },
        .{ "quarterSymbols", Object, .{} },
        .{ "rangeOfUnit:inUnit:forDate:", NSRange, .{ objc.NSInteger, objc.NSInteger, NSDate } },
        .{ "rangeOfUnit:startDate:interval:forDate:", objc.BOOL, .{ objc.NSInteger, ?NSDate, TimeInterval, NSDate } },
        .{ "rangeOfWeekendStartDate:interval:containingDate:", objc.BOOL, .{ ?NSDate, TimeInterval, NSDate } },
        .{ "setFirstWeekday:", void, .{objc.NSInteger} },
        .{ "setLocale:", void, .{?NSLocale} },
        .{ "setMinimumDaysInFirstWeek:", void, .{objc.NSInteger} },
        .{ "setTimeZone:", void, .{NSTimeZone} },
        .{ "shortMonthSymbols", Object, .{} },
        .{ "shortQuarterSymbols", Object, .{} },
        .{ "shortStandaloneMonthSymbols", Object, .{} },
        .{ "shortStandaloneQuarterSymbols", Object, .{} },
        .{ "shortStandaloneWeekdaySymbols", Object, .{} },
        .{ "shortWeekdaySymbols", Object, .{} },
        .{ "standaloneMonthSymbols", Object, .{} },
        .{ "standaloneQuarterSymbols", Object, .{} },
        .{ "standaloneWeekdaySymbols", Object, .{} },
        .{ "startOfDayForDate:", NSDate, .{NSDate} },
        .{ "timeZone", NSTimeZone, .{} },
        .{ "veryShortMonthSymbols", Object, .{} },
        .{ "veryShortStandaloneMonthSymbols", Object, .{} },
        .{ "veryShortStandaloneWeekdaySymbols", Object, .{} },
        .{ "veryShortWeekdaySymbols", Object, .{} },
        .{ "weekdaySymbols", Object, .{} },
    };

    pub fn send(self: NSCalendar, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "autoupdatingCurrentCalendar", NSCalendar, .{} },
        .{ "calendarWithIdentifier:", Object, .{objc.NSString} },
        .{ "currentCalendar", NSCalendar, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSCalendar", class_methods, selector, args);
    }
};

pub const NSCharacterSet = struct {
    obj: Object,

    pub const methods = .{
        .{ "bitmapRepresentation", NSData, .{} },
        .{ "characterIsMember:", objc.BOOL, .{u16} },
        .{ "hasMemberInPlane:", objc.BOOL, .{u8} },
        .{ "initWithCoder:", NSCharacterSet, .{NSCoder} },
        .{ "invertedSet", NSCharacterSet, .{} },
        .{ "isSupersetOfSet:", objc.BOOL, .{NSCharacterSet} },
        .{ "longCharacterIsMember:", objc.BOOL, .{objc.NSString} },
    };

    pub fn send(self: NSCharacterSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "URLFragmentAllowedCharacterSet", NSCharacterSet, .{} },
        .{ "URLHostAllowedCharacterSet", NSCharacterSet, .{} },
        .{ "URLPasswordAllowedCharacterSet", NSCharacterSet, .{} },
        .{ "URLPathAllowedCharacterSet", NSCharacterSet, .{} },
        .{ "URLQueryAllowedCharacterSet", NSCharacterSet, .{} },
        .{ "URLUserAllowedCharacterSet", NSCharacterSet, .{} },
        .{ "alphanumericCharacterSet", NSCharacterSet, .{} },
        .{ "capitalizedLetterCharacterSet", NSCharacterSet, .{} },
        .{ "characterSetWithBitmapRepresentation:", Object, .{NSData} },
        .{ "characterSetWithCharactersInString:", Object, .{objc.NSString} },
        .{ "characterSetWithContentsOfFile:", Object, .{objc.NSString} },
        .{ "characterSetWithRange:", Object, .{NSRange} },
        .{ "controlCharacterSet", NSCharacterSet, .{} },
        .{ "decimalDigitCharacterSet", NSCharacterSet, .{} },
        .{ "decomposableCharacterSet", NSCharacterSet, .{} },
        .{ "illegalCharacterSet", NSCharacterSet, .{} },
        .{ "letterCharacterSet", NSCharacterSet, .{} },
        .{ "lowercaseLetterCharacterSet", NSCharacterSet, .{} },
        .{ "newlineCharacterSet", NSCharacterSet, .{} },
        .{ "nonBaseCharacterSet", NSCharacterSet, .{} },
        .{ "punctuationCharacterSet", NSCharacterSet, .{} },
        .{ "symbolCharacterSet", NSCharacterSet, .{} },
        .{ "uppercaseLetterCharacterSet", NSCharacterSet, .{} },
        .{ "whitespaceAndNewlineCharacterSet", NSCharacterSet, .{} },
        .{ "whitespaceCharacterSet", NSCharacterSet, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSCharacterSet", class_methods, selector, args);
    }
};

pub const NSClassDescription = struct {
    obj: Object,

    pub const methods = .{
        .{ "attributeKeys", Object, .{} },
        .{ "inverseForRelationshipKey:", ?objc.NSString, .{objc.NSString} },
        .{ "toManyRelationshipKeys", Object, .{} },
        .{ "toOneRelationshipKeys", Object, .{} },
    };

    pub fn send(self: NSClassDescription, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "classDescriptionForClass:", Object, .{AnyClass} },
        .{ "invalidateClassDescriptionCache", void, .{} },
        .{ "registerClassDescription:forClass:", void, .{ NSClassDescription, AnyClass } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSClassDescription", class_methods, selector, args);
    }
};

pub const NSCloneCommand = struct {
    obj: Object,

    pub const Super = NSScriptCommand;
    pub const methods = .{
        .{ "keySpecifier", NSScriptObjectSpecifier, .{} },
        .{ "setReceiversSpecifier:", void, .{?NSScriptObjectSpecifier} },
    };

    pub fn send(self: NSCloneCommand, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSCloneCommand", class_methods, selector, args);
    }
};

pub const NSCloseCommand = struct {
    obj: Object,

    pub const Super = NSScriptCommand;
    pub const methods = .{
        .{ "saveOptions", NSSaveOptions, .{} },
    };

    pub fn send(self: NSCloseCommand, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSCloseCommand", class_methods, selector, args);
    }
};

pub const NSCoder = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowedClasses", ?*anyopaque, .{} },
        .{ "allowsKeyedCoding", objc.BOOL, .{} },
        .{ "containsValueForKey:", objc.BOOL, .{objc.NSString} },
        .{ "decodeArrayOfObjCType:count:at:", void, .{ ?*anyopaque, objc.NSInteger, UnsafeMutableRawPointer } },
        .{ "decodeBoolForKey:", objc.BOOL, .{objc.NSString} },
        .{ "decodeBytesForKey:minimumLength:", u8, .{ objc.NSString, objc.NSInteger } },
        .{ "decodeBytesForKey:returnedLength:", u8, .{ objc.NSString, objc.NSInteger } },
        .{ "decodeBytesWithMinimumLength:", ?UnsafeMutableRawPointer, .{objc.NSInteger} },
        .{ "decodeBytesWithReturnedLength:", ?UnsafeMutableRawPointer, .{objc.NSInteger} },
        .{ "decodeDataObject", ?NSData, .{} },
        .{ "decodeDoubleForKey:", f64, .{objc.NSString} },
        .{ "decodeFloatForKey:", f32, .{objc.NSString} },
        .{ "decodeInt32ForKey:", i32, .{objc.NSString} },
        .{ "decodeInt64ForKey:", i64, .{objc.NSString} },
        .{ "decodeIntForKey:", i32, .{objc.NSString} },
        .{ "decodeIntegerForKey:", objc.NSInteger, .{objc.NSString} },
        .{ "decodeObject", ?Any, .{} },
        .{ "decodeObjectForKey:", ?Any, .{objc.NSString} },
        .{ "decodePoint", NSPoint, .{} },
        .{ "decodePointForKey:", NSPoint, .{objc.NSString} },
        .{ "decodePropertyList", ?Any, .{} },
        .{ "decodePropertyListForKey:", ?Any, .{objc.NSString} },
        .{ "decodeRect", NSRect, .{} },
        .{ "decodeRectForKey:", NSRect, .{objc.NSString} },
        .{ "decodeSize", NSSize, .{} },
        .{ "decodeSizeForKey:", NSSize, .{objc.NSString} },
        .{ "decodeValueOfObjCType:at:", void, .{ ?*anyopaque, UnsafeMutableRawPointer } },
        .{ "decodeValueOfObjCType:at:size:", void, .{ ?*anyopaque, UnsafeMutableRawPointer, objc.NSInteger } },
        .{ "decodingFailurePolicy", NSCoder.DecodingFailurePolicy, .{} },
        .{ "encodeArrayOfObjCType:count:at:", void, .{ ?*anyopaque, objc.NSInteger, UnsafeRawPointer } },
        .{ "encodeBool:forKey:", void, .{ objc.BOOL, objc.NSString } },
        .{ "encodeBycopyObject:", void, .{?Any} },
        .{ "encodeByrefObject:", void, .{?Any} },
        .{ "encodeBytes:length:", void, .{ ?UnsafeRawPointer, objc.NSInteger } },
        .{ "encodeBytes:length:forKey:", void, .{ u8, objc.NSInteger, objc.NSString } },
        .{ "encodeConditionalObject:", void, .{?Any} },
        .{ "encodeConditionalObject:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "encodeDataObject:", void, .{NSData} },
        .{ "encodeDouble:forKey:", void, .{ f64, objc.NSString } },
        .{ "encodeFloat:forKey:", void, .{ f32, objc.NSString } },
        .{ "encodeInt32:forKey:", void, .{ i32, objc.NSString } },
        .{ "encodeInt64:forKey:", void, .{ i64, objc.NSString } },
        .{ "encodeInt:forKey:", void, .{ i32, objc.NSString } },
        .{ "encodeInteger:forKey:", void, .{ objc.NSInteger, objc.NSString } },
        .{ "encodeObject:", void, .{?Any} },
        .{ "encodeObject:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "encodePoint:", void, .{NSPoint} },
        .{ "encodePoint:forKey:", void, .{ NSPoint, objc.NSString } },
        .{ "encodePropertyList:", void, .{Any} },
        .{ "encodeRect:", void, .{NSRect} },
        .{ "encodeRect:forKey:", void, .{ NSRect, objc.NSString } },
        .{ "encodeRootObject:", void, .{Any} },
        .{ "encodeSize:", void, .{NSSize} },
        .{ "encodeSize:forKey:", void, .{ NSSize, objc.NSString } },
        .{ "encodeValueOfObjCType:at:", void, .{ ?*anyopaque, UnsafeRawPointer } },
        .{ "error", ?*anyopaque, .{} },
        .{ "failWithError:", void, .{?*anyopaque} },
        .{ "requiresSecureCoding", objc.BOOL, .{} },
        .{ "systemVersion", u32, .{} },
        .{ "versionForClassName:", objc.NSInteger, .{objc.NSString} },
    };

    pub fn send(self: NSCoder, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSCoder", class_methods, selector, args);
    }

    pub const DecodingFailurePolicy = enum(i64) {
        raiseException = 0,
        setErrorAndReturn = 1,
    };
};

pub const NSComparisonPredicate = struct {
    obj: Object,

    pub const Super = NSPredicate;
    pub const methods = .{
        .{ "comparisonPredicateModifier", NSComparisonPredicate.Modifier, .{} },
        .{ "customSelector", Selector, .{} },
        .{ "initWithCoder:", NSComparisonPredicate, .{NSCoder} },
        .{ "initWithLeftExpression:rightExpression:customSelector:", NSComparisonPredicate, .{ NSExpression, NSExpression, Selector } },
        .{ "initWithLeftExpression:rightExpression:modifier:type:options:", NSComparisonPredicate, .{ NSExpression, NSExpression, NSComparisonPredicate.Modifier, NSComparisonPredicate.Operator, objc.NSInteger } },
        .{ "leftExpression", NSExpression, .{} },
        .{ "options", objc.NSInteger, .{} },
        .{ "predicateOperatorType", NSComparisonPredicate.Operator, .{} },
        .{ "rightExpression", NSExpression, .{} },
    };

    pub fn send(self: NSComparisonPredicate, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSComparisonPredicate", class_methods, selector, args);
    }

    pub const Modifier = enum(i64) {
        direct = 0,
        all = 1,
        any = 2,
    };
    pub const Operator = enum(i64) {
        lessThan = 0,
        lessThanOrEqualTo = 1,
        greaterThan = 2,
        greaterThanOrEqualTo = 3,
        equalTo = 4,
        notEqualTo = 5,
        matches = 6,
        like = 7,
        beginsWith = 8,
        endsWith = 9,
        in = 10,
        customSelector = 11,
        contains = 99,
        between = 100,
    };
};

pub const NSCompoundPredicate = struct {
    obj: Object,

    pub const Super = NSPredicate;
    pub const methods = .{
        .{ "compoundPredicateType", NSCompoundPredicate.LogicalType, .{} },
        .{ "initWithCoder:", NSCompoundPredicate, .{NSCoder} },
        .{ "initWithType:subpredicates:", NSCompoundPredicate, .{ NSCompoundPredicate.LogicalType, Object } },
        .{ "subpredicates", Object, .{} },
    };

    pub fn send(self: NSCompoundPredicate, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "andPredicateWithSubpredicates:", Object, .{Object} },
        .{ "notPredicateWithSubpredicate:", Object, .{NSPredicate} },
        .{ "orPredicateWithSubpredicates:", Object, .{Object} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSCompoundPredicate", class_methods, selector, args);
    }

    pub const LogicalType = enum(i64) {
        not = 0,
        @"and" = 1,
        @"or" = 2,
    };
};

pub const NSCondition = struct {
    obj: Object,

    pub const methods = .{
        .{ "broadcast", void, .{} },
        .{ "name", ?objc.NSString, .{} },
        .{ "setName:", void, .{?objc.NSString} },
        .{ "signal", void, .{} },
        .{ "wait", void, .{} },
        .{ "waitUntilDate:", objc.BOOL, .{NSDate} },
    };

    pub fn send(self: NSCondition, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSCondition", class_methods, selector, args);
    }
};

pub const NSConditionLock = struct {
    obj: Object,

    pub const methods = .{
        .{ "condition", objc.NSInteger, .{} },
        .{ "initWithCondition:", NSConditionLock, .{objc.NSInteger} },
        .{ "lockBeforeDate:", objc.BOOL, .{NSDate} },
        .{ "lockWhenCondition:", void, .{objc.NSInteger} },
        .{ "lockWhenCondition:beforeDate:", objc.BOOL, .{ objc.NSInteger, NSDate } },
        .{ "name", ?objc.NSString, .{} },
        .{ "setName:", void, .{?objc.NSString} },
        .{ "tryLock", objc.BOOL, .{} },
        .{ "tryLockWhenCondition:", objc.BOOL, .{objc.NSInteger} },
        .{ "unlockWithCondition:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSConditionLock, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSConditionLock", class_methods, selector, args);
    }
};

pub const NSCountedSet = struct {
    obj: Object,

    pub const Super = NSMutableSet;
    pub const methods = .{
        .{ "addObject:", void, .{Any} },
        .{ "countForObject:", objc.NSInteger, .{Any} },
        .{ "initWithArray:", NSCountedSet, .{Object} },
        .{ "initWithCapacity:", NSCountedSet, .{objc.NSInteger} },
        .{ "initWithSet:", NSCountedSet, .{?*anyopaque} },
        .{ "objectEnumerator", NSEnumerator, .{} },
        .{ "removeObject:", void, .{Any} },
    };

    pub fn send(self: NSCountedSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSCountedSet", class_methods, selector, args);
    }
};

pub const NSCreateCommand = struct {
    obj: Object,

    pub const Super = NSScriptCommand;
    pub const methods = .{
        .{ "createClassDescription", NSScriptClassDescription, .{} },
        .{ "resolvedKeyDictionary", Object, .{} },
    };

    pub fn send(self: NSCreateCommand, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSCreateCommand", class_methods, selector, args);
    }
};

pub const NSData = struct {
    obj: Object,

    pub const methods = .{
        .{ "base64EncodedDataWithOptions:", NSData, .{objc.NSInteger} },
        .{ "base64EncodedStringWithOptions:", objc.NSString, .{objc.NSInteger} },
        .{ "bytes", UnsafeRawPointer, .{} },
        .{ "compressedDataUsingAlgorithm:error:", ?*anyopaque, .{NSData.CompressionAlgorithm} },
        .{ "decompressedDataUsingAlgorithm:error:", ?*anyopaque, .{NSData.CompressionAlgorithm} },
        .{ "description", objc.NSString, .{} },
        .{ "enumerateByteRangesUsingBlock:", void, .{?*anyopaque} },
        .{ "getBytes:", void, .{UnsafeMutableRawPointer} },
        .{ "getBytes:length:", void, .{ UnsafeMutableRawPointer, objc.NSInteger } },
        .{ "getBytes:range:", void, .{ UnsafeMutableRawPointer, NSRange } },
        .{ "initWithBase64EncodedData:options:", NSData, .{ NSData, objc.NSInteger } },
        .{ "initWithBase64EncodedString:options:", NSData, .{ objc.NSString, objc.NSInteger } },
        .{ "initWithBytes:length:", NSData, .{ ?UnsafeRawPointer, objc.NSInteger } },
        .{ "initWithBytesNoCopy:length:", NSData, .{ UnsafeMutableRawPointer, objc.NSInteger } },
        .{ "initWithBytesNoCopy:length:deallocator:", NSData, .{ UnsafeMutableRawPointer, objc.NSInteger, ?*anyopaque } },
        .{ "initWithBytesNoCopy:length:freeWhenDone:", NSData, .{ UnsafeMutableRawPointer, objc.NSInteger, objc.BOOL } },
        .{ "initWithContentsOfFile:", NSData, .{objc.NSString} },
        .{ "initWithContentsOfFile:options:error:", NSData, .{ objc.NSString, objc.NSInteger } },
        .{ "initWithContentsOfMappedFile:", NSData, .{objc.NSString} },
        .{ "initWithContentsOfURL:", NSData, .{NSURL} },
        .{ "initWithContentsOfURL:options:error:", NSData, .{ NSURL, objc.NSInteger } },
        .{ "initWithData:", NSData, .{NSData} },
        .{ "isEqualToData:", objc.BOOL, .{NSData} },
        .{ "length", objc.NSInteger, .{} },
        .{ "rangeOfData:options:range:", NSRange, .{ NSData, objc.NSInteger, NSRange } },
        .{ "subdataWithRange:", NSData, .{NSRange} },
        .{ "writeToFile:atomically:", objc.BOOL, .{ objc.NSString, objc.BOOL } },
        .{ "writeToFile:options:error:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "writeToURL:atomically:", objc.BOOL, .{ NSURL, objc.BOOL } },
        .{ "writeToURL:options:error:", void, .{ NSURL, objc.NSInteger } },
    };

    pub fn send(self: NSData, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dataWithContentsOfMappedFile:", ?Any, .{objc.NSString} },
        .{ "dataWithContentsOfURL:", Object, .{NSURL} },
        .{ "dataWithContentsOfURL:options:error:", Object, .{ NSURL, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSData", class_methods, selector, args);
    }

    pub const CompressionAlgorithm = enum(i64) {
        lzfse = 0,
        lz4 = 1,
        lzma = 2,
        zlib = 3,
    };
};

pub const NSDataDetector = struct {
    obj: Object,

    pub const Super = NSRegularExpression;
    pub const methods = .{
        .{ "checkingTypes", u64, .{} },
        .{ "initWithTypes:error:", NSDataDetector, .{u64} },
    };

    pub fn send(self: NSDataDetector, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDataDetector", class_methods, selector, args);
    }
};

pub const NSDate = struct {
    obj: Object,

    pub const methods = .{
        .{ "compare:", ComparisonResult, .{NSDate} },
        .{ "dateByAddingTimeInterval:", ?*anyopaque, .{TimeInterval} },
        .{ "dateWithCalendarFormat:timeZone:", Object, .{ ?objc.NSString, ?NSTimeZone } },
        .{ "description", objc.NSString, .{} },
        .{ "descriptionWithCalendarFormat:timeZone:locale:", ?objc.NSString, .{ ?objc.NSString, ?NSTimeZone, ?Any } },
        .{ "descriptionWithLocale:", objc.NSString, .{?Any} },
        .{ "earlierDate:", NSDate, .{NSDate} },
        .{ "initWithCoder:", NSDate, .{NSCoder} },
        .{ "initWithString:", NSDate, .{objc.NSString} },
        .{ "initWithTimeInterval:sinceDate:", NSDate, .{ TimeInterval, NSDate } },
        .{ "initWithTimeIntervalSince1970:", NSDate, .{TimeInterval} },
        .{ "initWithTimeIntervalSinceNow:", NSDate, .{TimeInterval} },
        .{ "initWithTimeIntervalSinceReferenceDate:", NSDate, .{TimeInterval} },
        .{ "isEqualToDate:", objc.BOOL, .{NSDate} },
        .{ "laterDate:", NSDate, .{NSDate} },
        .{ "timeIntervalSince1970", TimeInterval, .{} },
        .{ "timeIntervalSinceDate:", TimeInterval, .{NSDate} },
        .{ "timeIntervalSinceNow", TimeInterval, .{} },
        .{ "timeIntervalSinceReferenceDate", TimeInterval, .{} },
    };

    pub fn send(self: NSDate, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dateWithNaturalLanguageString:", ?Any, .{objc.NSString} },
        .{ "dateWithNaturalLanguageString:locale:", ?Any, .{ objc.NSString, ?Any } },
        .{ "dateWithString:", Any, .{objc.NSString} },
        .{ "dateWithTimeInterval:sinceDate:", Object, .{ TimeInterval, NSDate } },
        .{ "distantFuture", NSDate, .{} },
        .{ "distantPast", NSDate, .{} },
        .{ "now", NSDate, .{} },
        .{ "timeIntervalSinceReferenceDate", TimeInterval, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDate", class_methods, selector, args);
    }
};

pub const NSDateComponents = struct {
    obj: Object,

    pub const methods = .{
        .{ "calendar", ?NSCalendar, .{} },
        .{ "date", ?NSDate, .{} },
        .{ "day", objc.NSInteger, .{} },
        .{ "dayOfYear", objc.NSInteger, .{} },
        .{ "era", objc.NSInteger, .{} },
        .{ "hour", objc.NSInteger, .{} },
        .{ "isValidDateInCalendar:", objc.BOOL, .{NSCalendar} },
        .{ "leapMonth", objc.BOOL, .{} },
        .{ "minute", objc.NSInteger, .{} },
        .{ "month", objc.NSInteger, .{} },
        .{ "nanosecond", objc.NSInteger, .{} },
        .{ "quarter", objc.NSInteger, .{} },
        .{ "repeatedDay", objc.BOOL, .{} },
        .{ "second", objc.NSInteger, .{} },
        .{ "setCalendar:", void, .{?NSCalendar} },
        .{ "setDay:", void, .{objc.NSInteger} },
        .{ "setDayOfYear:", void, .{objc.NSInteger} },
        .{ "setEra:", void, .{objc.NSInteger} },
        .{ "setHour:", void, .{objc.NSInteger} },
        .{ "setLeapMonth:", void, .{objc.BOOL} },
        .{ "setMinute:", void, .{objc.NSInteger} },
        .{ "setMonth:", void, .{objc.NSInteger} },
        .{ "setNanosecond:", void, .{objc.NSInteger} },
        .{ "setQuarter:", void, .{objc.NSInteger} },
        .{ "setRepeatedDay:", void, .{objc.BOOL} },
        .{ "setSecond:", void, .{objc.NSInteger} },
        .{ "setTimeZone:", void, .{?NSTimeZone} },
        .{ "setValue:forComponent:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "setWeekOfMonth:", void, .{objc.NSInteger} },
        .{ "setWeekOfYear:", void, .{objc.NSInteger} },
        .{ "setWeekday:", void, .{objc.NSInteger} },
        .{ "setWeekdayOrdinal:", void, .{objc.NSInteger} },
        .{ "setYear:", void, .{objc.NSInteger} },
        .{ "setYearForWeekOfYear:", void, .{objc.NSInteger} },
        .{ "timeZone", ?NSTimeZone, .{} },
        .{ "validDate", objc.BOOL, .{} },
        .{ "valueForComponent:", objc.NSInteger, .{objc.NSInteger} },
        .{ "weekOfMonth", objc.NSInteger, .{} },
        .{ "weekOfYear", objc.NSInteger, .{} },
        .{ "weekday", objc.NSInteger, .{} },
        .{ "weekdayOrdinal", objc.NSInteger, .{} },
        .{ "year", objc.NSInteger, .{} },
        .{ "yearForWeekOfYear", objc.NSInteger, .{} },
    };

    pub fn send(self: NSDateComponents, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDateComponents", class_methods, selector, args);
    }
};

pub const DateComponentsFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "allowedUnits", objc.NSInteger, .{} },
        .{ "allowsFractionalUnits", objc.BOOL, .{} },
        .{ "calendar", ?NSCalendar, .{} },
        .{ "collapsesLargestUnit", objc.BOOL, .{} },
        .{ "formattingContext", Formatter.Context, .{} },
        .{ "getObjectValue:forString:errorDescription:", objc.BOOL, .{ ?*anyopaque, objc.NSString, ?objc.NSString } },
        .{ "includesApproximationPhrase", objc.BOOL, .{} },
        .{ "includesTimeRemainingPhrase", objc.BOOL, .{} },
        .{ "maximumUnitCount", objc.NSInteger, .{} },
        .{ "referenceDate", ?NSDate, .{} },
        .{ "setAllowedUnits:", void, .{objc.NSInteger} },
        .{ "setAllowsFractionalUnits:", void, .{objc.BOOL} },
        .{ "setCalendar:", void, .{?NSCalendar} },
        .{ "setCollapsesLargestUnit:", void, .{objc.BOOL} },
        .{ "setFormattingContext:", void, .{Formatter.Context} },
        .{ "setIncludesApproximationPhrase:", void, .{objc.BOOL} },
        .{ "setIncludesTimeRemainingPhrase:", void, .{objc.BOOL} },
        .{ "setMaximumUnitCount:", void, .{objc.NSInteger} },
        .{ "setReferenceDate:", void, .{?NSDate} },
        .{ "setUnitsStyle:", void, .{DateComponentsFormatter.UnitsStyle} },
        .{ "setZeroFormattingBehavior:", void, .{objc.NSInteger} },
        .{ "stringForObjectValue:", ?objc.NSString, .{?Any} },
        .{ "stringFromDate:toDate:", ?objc.NSString, .{ NSDate, NSDate } },
        .{ "stringFromDateComponents:", ?objc.NSString, .{NSDateComponents} },
        .{ "stringFromTimeInterval:", ?objc.NSString, .{TimeInterval} },
        .{ "unitsStyle", DateComponentsFormatter.UnitsStyle, .{} },
        .{ "zeroFormattingBehavior", objc.NSInteger, .{} },
    };

    pub fn send(self: DateComponentsFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "localizedStringFromDateComponents:unitsStyle:", ?objc.NSString, .{ NSDateComponents, DateComponentsFormatter.UnitsStyle } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDateComponentsFormatter", class_methods, selector, args);
    }

    pub const UnitsStyle = enum(i64) {
        positional = 0,
        abbreviated = 1,
        short = 2,
        full = 3,
        spellOut = 4,
        brief = 5,
    };
};

pub const DateFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "AMSymbol", objc.NSString, .{} },
        .{ "PMSymbol", objc.NSString, .{} },
        .{ "calendar", NSCalendar, .{} },
        .{ "dateFormat", objc.NSString, .{} },
        .{ "dateFromString:", ?NSDate, .{objc.NSString} },
        .{ "dateStyle", DateFormatter.Style, .{} },
        .{ "defaultDate", ?NSDate, .{} },
        .{ "doesRelativeDateFormatting", objc.BOOL, .{} },
        .{ "eraSymbols", Object, .{} },
        .{ "formatterBehavior", DateFormatter.Behavior, .{} },
        .{ "formattingContext", Formatter.Context, .{} },
        .{ "generatesCalendarDates", objc.BOOL, .{} },
        .{ "getObjectValue:forString:range:error:", void, .{ ?*anyopaque, objc.NSString, NSRange } },
        .{ "gregorianStartDate", ?NSDate, .{} },
        .{ "lenient", objc.BOOL, .{} },
        .{ "locale", NSLocale, .{} },
        .{ "longEraSymbols", Object, .{} },
        .{ "monthSymbols", Object, .{} },
        .{ "quarterSymbols", Object, .{} },
        .{ "setAMSymbol:", void, .{objc.NSString} },
        .{ "setCalendar:", void, .{NSCalendar} },
        .{ "setDateFormat:", void, .{objc.NSString} },
        .{ "setDateStyle:", void, .{DateFormatter.Style} },
        .{ "setDefaultDate:", void, .{?NSDate} },
        .{ "setDoesRelativeDateFormatting:", void, .{objc.BOOL} },
        .{ "setEraSymbols:", void, .{Object} },
        .{ "setFormatterBehavior:", void, .{DateFormatter.Behavior} },
        .{ "setFormattingContext:", void, .{Formatter.Context} },
        .{ "setGeneratesCalendarDates:", void, .{objc.BOOL} },
        .{ "setGregorianStartDate:", void, .{?NSDate} },
        .{ "setLenient:", void, .{objc.BOOL} },
        .{ "setLocale:", void, .{NSLocale} },
        .{ "setLocalizedDateFormatFromTemplate:", void, .{objc.NSString} },
        .{ "setLongEraSymbols:", void, .{Object} },
        .{ "setMonthSymbols:", void, .{Object} },
        .{ "setPMSymbol:", void, .{objc.NSString} },
        .{ "setQuarterSymbols:", void, .{Object} },
        .{ "setShortMonthSymbols:", void, .{Object} },
        .{ "setShortQuarterSymbols:", void, .{Object} },
        .{ "setShortStandaloneMonthSymbols:", void, .{Object} },
        .{ "setShortStandaloneQuarterSymbols:", void, .{Object} },
        .{ "setShortStandaloneWeekdaySymbols:", void, .{Object} },
        .{ "setShortWeekdaySymbols:", void, .{Object} },
        .{ "setStandaloneMonthSymbols:", void, .{Object} },
        .{ "setStandaloneQuarterSymbols:", void, .{Object} },
        .{ "setStandaloneWeekdaySymbols:", void, .{Object} },
        .{ "setTimeStyle:", void, .{DateFormatter.Style} },
        .{ "setTimeZone:", void, .{NSTimeZone} },
        .{ "setTwoDigitStartDate:", void, .{?NSDate} },
        .{ "setVeryShortMonthSymbols:", void, .{Object} },
        .{ "setVeryShortStandaloneMonthSymbols:", void, .{Object} },
        .{ "setVeryShortStandaloneWeekdaySymbols:", void, .{Object} },
        .{ "setVeryShortWeekdaySymbols:", void, .{Object} },
        .{ "setWeekdaySymbols:", void, .{Object} },
        .{ "shortMonthSymbols", Object, .{} },
        .{ "shortQuarterSymbols", Object, .{} },
        .{ "shortStandaloneMonthSymbols", Object, .{} },
        .{ "shortStandaloneQuarterSymbols", Object, .{} },
        .{ "shortStandaloneWeekdaySymbols", Object, .{} },
        .{ "shortWeekdaySymbols", Object, .{} },
        .{ "standaloneMonthSymbols", Object, .{} },
        .{ "standaloneQuarterSymbols", Object, .{} },
        .{ "standaloneWeekdaySymbols", Object, .{} },
        .{ "stringFromDate:", objc.NSString, .{NSDate} },
        .{ "timeStyle", DateFormatter.Style, .{} },
        .{ "timeZone", NSTimeZone, .{} },
        .{ "twoDigitStartDate", ?NSDate, .{} },
        .{ "veryShortMonthSymbols", Object, .{} },
        .{ "veryShortStandaloneMonthSymbols", Object, .{} },
        .{ "veryShortStandaloneWeekdaySymbols", Object, .{} },
        .{ "veryShortWeekdaySymbols", Object, .{} },
        .{ "weekdaySymbols", Object, .{} },
    };

    pub fn send(self: DateFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dateFormatFromTemplate:options:locale:", ?objc.NSString, .{ objc.NSString, objc.NSInteger, ?NSLocale } },
        .{ "defaultFormatterBehavior", DateFormatter.Behavior, .{} },
        .{ "localizedStringFromDate:dateStyle:timeStyle:", objc.NSString, .{ NSDate, DateFormatter.Style, DateFormatter.Style } },
        .{ "setDefaultFormatterBehavior:", void, .{DateFormatter.Behavior} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDateFormatter", class_methods, selector, args);
    }

    pub const Behavior = enum(i64) {
        default = 0,
        behavior10_0 = 1000,
        behavior10_4 = 1040,
    };
    pub const Style = enum(i64) {
        none = 0,
        short = 1,
        medium = 2,
        long = 3,
        full = 4,
    };
};

pub const NSDateInterval = struct {
    obj: Object,

    pub const methods = .{
        .{ "compare:", ComparisonResult, .{NSDateInterval} },
        .{ "containsDate:", objc.BOOL, .{NSDate} },
        .{ "duration", TimeInterval, .{} },
        .{ "endDate", NSDate, .{} },
        .{ "initWithCoder:", NSDateInterval, .{NSCoder} },
        .{ "initWithStartDate:duration:", NSDateInterval, .{ NSDate, TimeInterval } },
        .{ "initWithStartDate:endDate:", NSDateInterval, .{ NSDate, NSDate } },
        .{ "intersectionWithDateInterval:", ?NSDateInterval, .{NSDateInterval} },
        .{ "intersectsDateInterval:", objc.BOOL, .{NSDateInterval} },
        .{ "isEqualToDateInterval:", objc.BOOL, .{NSDateInterval} },
        .{ "startDate", NSDate, .{} },
    };

    pub fn send(self: NSDateInterval, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDateInterval", class_methods, selector, args);
    }
};

pub const DateIntervalFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "calendar", NSCalendar, .{} },
        .{ "dateStyle", DateIntervalFormatter.Style, .{} },
        .{ "dateTemplate", objc.NSString, .{} },
        .{ "locale", NSLocale, .{} },
        .{ "setCalendar:", void, .{NSCalendar} },
        .{ "setDateStyle:", void, .{DateIntervalFormatter.Style} },
        .{ "setDateTemplate:", void, .{objc.NSString} },
        .{ "setLocale:", void, .{NSLocale} },
        .{ "setTimeStyle:", void, .{DateIntervalFormatter.Style} },
        .{ "setTimeZone:", void, .{NSTimeZone} },
        .{ "stringFromDate:toDate:", objc.NSString, .{ NSDate, NSDate } },
        .{ "stringFromDateInterval:", ?objc.NSString, .{NSDateInterval} },
        .{ "timeStyle", DateIntervalFormatter.Style, .{} },
        .{ "timeZone", NSTimeZone, .{} },
    };

    pub fn send(self: DateIntervalFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDateIntervalFormatter", class_methods, selector, args);
    }

    pub const Style = enum(i64) {
        none = 0,
        short = 1,
        medium = 2,
        long = 3,
        full = 4,
    };
};

pub const NSDecimalNumber = struct {
    obj: Object,

    pub const Super = NSNumber;
    pub const methods = .{
        .{ "compare:", ComparisonResult, .{NSNumber} },
        .{ "decimalNumberByAdding:", NSDecimalNumber, .{NSDecimalNumber} },
        .{ "decimalNumberByAdding:withBehavior:", NSDecimalNumber, .{ NSDecimalNumber, ?NSDecimalNumberBehaviors } },
        .{ "decimalNumberByDividingBy:", NSDecimalNumber, .{NSDecimalNumber} },
        .{ "decimalNumberByDividingBy:withBehavior:", NSDecimalNumber, .{ NSDecimalNumber, ?NSDecimalNumberBehaviors } },
        .{ "decimalNumberByMultiplyingBy:", NSDecimalNumber, .{NSDecimalNumber} },
        .{ "decimalNumberByMultiplyingBy:withBehavior:", NSDecimalNumber, .{ NSDecimalNumber, ?NSDecimalNumberBehaviors } },
        .{ "decimalNumberByMultiplyingByPowerOf10:", NSDecimalNumber, .{i16} },
        .{ "decimalNumberByMultiplyingByPowerOf10:withBehavior:", NSDecimalNumber, .{ i16, ?NSDecimalNumberBehaviors } },
        .{ "decimalNumberByRaisingToPower:", NSDecimalNumber, .{objc.NSInteger} },
        .{ "decimalNumberByRaisingToPower:withBehavior:", NSDecimalNumber, .{ objc.NSInteger, ?NSDecimalNumberBehaviors } },
        .{ "decimalNumberByRoundingAccordingToBehavior:", NSDecimalNumber, .{?NSDecimalNumberBehaviors} },
        .{ "decimalNumberBySubtracting:", NSDecimalNumber, .{NSDecimalNumber} },
        .{ "decimalNumberBySubtracting:withBehavior:", NSDecimalNumber, .{ NSDecimalNumber, ?NSDecimalNumberBehaviors } },
        .{ "decimalValue", ?*anyopaque, .{} },
        .{ "descriptionWithLocale:", objc.NSString, .{?Any} },
        .{ "doubleValue", f64, .{} },
        .{ "initWithDecimal:", NSDecimalNumber, .{?*anyopaque} },
        .{ "initWithMantissa:exponent:isNegative:", NSDecimalNumber, .{ u64, i16, objc.BOOL } },
        .{ "initWithString:", NSDecimalNumber, .{?objc.NSString} },
        .{ "initWithString:locale:", NSDecimalNumber, .{ ?objc.NSString, ?Any } },
        .{ "objCType", ?*anyopaque, .{} },
    };

    pub fn send(self: NSDecimalNumber, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultBehavior", NSDecimalNumberBehaviors, .{} },
        .{ "maximumDecimalNumber", NSDecimalNumber, .{} },
        .{ "minimumDecimalNumber", NSDecimalNumber, .{} },
        .{ "notANumber", NSDecimalNumber, .{} },
        .{ "one", NSDecimalNumber, .{} },
        .{ "setDefaultBehavior:", void, .{NSDecimalNumberBehaviors} },
        .{ "zero", NSDecimalNumber, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDecimalNumber", class_methods, selector, args);
    }

    pub const CalculationError = enum(i64) {
        noError = 0,
        lossOfPrecision = 1,
        underflow = 2,
        overflow = 3,
        divideByZero = 4,
    };
    pub const RoundingMode = enum(i64) {
        plain = 0,
        down = 1,
        up = 2,
        bankers = 3,
    };
};

pub const NSDecimalNumberHandler = struct {
    obj: Object,

    pub const methods = .{
        .{ "initWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:", NSDecimalNumberHandler, .{ NSDecimalNumber.RoundingMode, i16, objc.BOOL, objc.BOOL, objc.BOOL, objc.BOOL } },
    };

    pub fn send(self: NSDecimalNumberHandler, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultDecimalNumberHandler", NSDecimalNumberHandler, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDecimalNumberHandler", class_methods, selector, args);
    }
};

pub const NSDeleteCommand = struct {
    obj: Object,

    pub const Super = NSScriptCommand;
    pub const methods = .{
        .{ "keySpecifier", NSScriptObjectSpecifier, .{} },
        .{ "setReceiversSpecifier:", void, .{?NSScriptObjectSpecifier} },
    };

    pub fn send(self: NSDeleteCommand, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDeleteCommand", class_methods, selector, args);
    }
};

pub const NSDictionary = struct {
    obj: Object,

    pub const methods = .{
        .{ "allKeys", Object, .{} },
        .{ "allKeysForObject:", Object, .{Any} },
        .{ "allValues", Object, .{} },
        .{ "count", objc.NSInteger, .{} },
        .{ "description", objc.NSString, .{} },
        .{ "descriptionInStringsFileFormat", objc.NSString, .{} },
        .{ "descriptionWithLocale:", objc.NSString, .{?Any} },
        .{ "descriptionWithLocale:indent:", objc.NSString, .{ ?Any, objc.NSInteger } },
        .{ "enumerateKeysAndObjectsUsingBlock:", void, .{?*anyopaque} },
        .{ "enumerateKeysAndObjectsWithOptions:usingBlock:", void, .{ objc.NSInteger, ?*anyopaque } },
        .{ "fileCreationDate", ?NSDate, .{} },
        .{ "fileExtensionHidden", objc.BOOL, .{} },
        .{ "fileGroupOwnerAccountID", ?NSNumber, .{} },
        .{ "fileGroupOwnerAccountName", ?objc.NSString, .{} },
        .{ "fileHFSCreatorCode", objc.NSString, .{} },
        .{ "fileHFSTypeCode", objc.NSString, .{} },
        .{ "fileIsAppendOnly", objc.BOOL, .{} },
        .{ "fileIsImmutable", objc.BOOL, .{} },
        .{ "fileModificationDate", ?NSDate, .{} },
        .{ "fileOwnerAccountID", ?NSNumber, .{} },
        .{ "fileOwnerAccountName", ?objc.NSString, .{} },
        .{ "filePosixPermissions", objc.NSInteger, .{} },
        .{ "fileSize", u64, .{} },
        .{ "fileSystemFileNumber", objc.NSInteger, .{} },
        .{ "fileSystemNumber", objc.NSInteger, .{} },
        .{ "fileType", ?objc.NSString, .{} },
        .{ "initWithCoder:", NSDictionary, .{NSCoder} },
        .{ "initWithContentsOfFile:", NSDictionary, .{objc.NSString} },
        .{ "initWithContentsOfURL:", NSDictionary, .{NSURL} },
        .{ "initWithContentsOfURL:error:", NSDictionary, .{ NSURL, void } },
        .{ "initWithDictionary:", NSDictionary, .{Object} },
        .{ "initWithDictionary:copyItems:", NSDictionary, .{ Object, objc.BOOL } },
        .{ "initWithObjects:forKeys:", NSDictionary, .{ Object, Object } },
        .{ "initWithObjects:forKeys:count:", NSDictionary, .{ ?UnsafePointer, ?NSCopying, objc.NSInteger } },
        .{ "isEqualToDictionary:", objc.BOOL, .{Object} },
        .{ "keyEnumerator", NSEnumerator, .{} },
        .{ "keysOfEntriesPassingTest:", ?*anyopaque, .{?*anyopaque} },
        .{ "keysOfEntriesWithOptions:passingTest:", ?*anyopaque, .{ objc.NSInteger, ?*anyopaque } },
        .{ "keysSortedByValueUsingComparator:", Object, .{?*anyopaque} },
        .{ "keysSortedByValueUsingSelector:", Object, .{Selector} },
        .{ "keysSortedByValueWithOptions:usingComparator:", Object, .{ objc.NSInteger, ?*anyopaque } },
        .{ "objectEnumerator", NSEnumerator, .{} },
        .{ "objectForKey:", ?Any, .{Any} },
        .{ "objectsForKeys:notFoundMarker:", Object, .{ Object, Any } },
        .{ "valueForKey:", ?Any, .{objc.NSString} },
        .{ "writeToFile:atomically:", objc.BOOL, .{ objc.NSString, objc.BOOL } },
        .{ "writeToURL:atomically:", objc.BOOL, .{ NSURL, objc.BOOL } },
        .{ "writeToURL:error:", void, .{NSURL} },
    };

    pub fn send(self: NSDictionary, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dictionaryWithContentsOfURL:", Object, .{NSURL} },
        .{ "dictionaryWithObject:forKey:", Object, .{ Any, NSCopying } },
        .{ "sharedKeySetForKeys:", Any, .{Object} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDictionary", class_methods, selector, args);
    }
};

pub const Dimension = struct {
    obj: Object,

    pub const Super = Unit;
    pub const methods = .{
        .{ "converter", UnitConverter, .{} },
        .{ "initWithSymbol:converter:", Dimension, .{ objc.NSString, UnitConverter } },
    };

    pub fn send(self: Dimension, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "baseUnit", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDimension", class_methods, selector, args);
    }
};

pub const NSDirectoryEnumerator = struct {
    obj: Object,

    pub const Super = NSEnumerator;
    pub const methods = .{
        .{ "directoryAttributes", ?*anyopaque, .{} },
        .{ "fileAttributes", ?*anyopaque, .{} },
        .{ "isEnumeratingDirectoryPostOrder", objc.BOOL, .{} },
        .{ "level", objc.NSInteger, .{} },
        .{ "skipDescendants", void, .{} },
        .{ "skipDescendents", void, .{} },
    };

    pub fn send(self: NSDirectoryEnumerator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDirectoryEnumerator", class_methods, selector, args);
    }
};

pub const NSDistributedLock = struct {
    obj: Object,

    pub const methods = .{
        .{ "breakLock", void, .{} },
        .{ "initWithPath:", NSDistributedLock, .{objc.NSString} },
        .{ "lockDate", NSDate, .{} },
        .{ "tryLock", objc.BOOL, .{} },
        .{ "unlock", void, .{} },
    };

    pub fn send(self: NSDistributedLock, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDistributedLock", class_methods, selector, args);
    }
};

pub const DistributedNotificationCenter = struct {
    obj: Object,

    pub const Super = NotificationCenter;
    pub const methods = .{
        .{ "addObserver:selector:name:object:", void, .{ Any, Selector, objc.NSString, ?objc.NSString } },
        .{ "addObserver:selector:name:object:suspensionBehavior:", void, .{ Any, Selector, objc.NSString, ?objc.NSString, DistributedNotificationCenter.SuspensionBehavior } },
        .{ "postNotificationName:object:", void, .{ objc.NSString, ?objc.NSString } },
        .{ "postNotificationName:object:userInfo:", void, .{ objc.NSString, ?objc.NSString, ?*anyopaque } },
        .{ "postNotificationName:object:userInfo:deliverImmediately:", void, .{ objc.NSString, ?objc.NSString, ?*anyopaque, objc.BOOL } },
        .{ "postNotificationName:object:userInfo:options:", void, .{ objc.NSString, ?objc.NSString, ?*anyopaque, objc.NSInteger } },
        .{ "removeObserver:name:object:", void, .{ Any, objc.NSString, ?objc.NSString } },
        .{ "setSuspended:", void, .{objc.BOOL} },
        .{ "suspended", objc.BOOL, .{} },
    };

    pub fn send(self: DistributedNotificationCenter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultCenter", DistributedNotificationCenter, .{} },
        .{ "notificationCenterForType:", DistributedNotificationCenter, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSDistributedNotificationCenter", class_methods, selector, args);
    }

    pub const SuspensionBehavior = enum(i64) {
        drop = 1,
        coalesce = 2,
        hold = 3,
        deliverImmediately = 4,
    };
};

pub const EnergyFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "forFoodEnergyUse", objc.BOOL, .{} },
        .{ "getObjectValue:forString:errorDescription:", objc.BOOL, .{ ?*anyopaque, objc.NSString, ?objc.NSString } },
        .{ "numberFormatter", NumberFormatter, .{} },
        .{ "setForFoodEnergyUse:", void, .{objc.BOOL} },
        .{ "setNumberFormatter:", void, .{NumberFormatter} },
        .{ "setUnitStyle:", void, .{Formatter.UnitStyle} },
        .{ "stringFromJoules:", objc.NSString, .{f64} },
        .{ "stringFromValue:unit:", objc.NSString, .{ f64, EnergyFormatter.Unit } },
        .{ "unitStringFromJoules:usedUnit:", objc.NSString, .{ f64, EnergyFormatter.Unit } },
        .{ "unitStringFromValue:unit:", objc.NSString, .{ f64, EnergyFormatter.Unit } },
        .{ "unitStyle", Formatter.UnitStyle, .{} },
    };

    pub fn send(self: EnergyFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSEnergyFormatter", class_methods, selector, args);
    }

    pub const Unit = enum(i64) {
        joule = 11,
        kilojoule = 14,
        calorie = 1793,
        kilocalorie = 1794,
    };
};

pub const NSEnumerator = struct {
    obj: Object,

    pub const methods = .{
        .{ "allObjects", Object, .{} },
        .{ "nextObject", ?Any, .{} },
    };

    pub fn send(self: NSEnumerator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSEnumerator", class_methods, selector, args);
    }
};

pub const NSError = struct {
    obj: Object,

    pub const methods = .{
        .{ "code", objc.NSInteger, .{} },
        .{ "domain", objc.NSString, .{} },
        .{ "helpAnchor", ?objc.NSString, .{} },
        .{ "initWithDomain:code:userInfo:", NSError, .{ objc.NSString, objc.NSInteger, ?*anyopaque } },
        .{ "localizedDescription", objc.NSString, .{} },
        .{ "localizedFailureReason", ?objc.NSString, .{} },
        .{ "localizedRecoveryOptions", ?*anyopaque, .{} },
        .{ "localizedRecoverySuggestion", ?objc.NSString, .{} },
        .{ "recoveryAttempter", ?Any, .{} },
        .{ "underlyingErrors", Object, .{} },
        .{ "userInfo", Object, .{} },
    };

    pub fn send(self: NSError, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "setUserInfoValueProviderForDomain:provider:", void, .{ objc.NSString, ?*anyopaque } },
        .{ "userInfoValueProviderForDomain:", ?Any, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSError", class_methods, selector, args);
    }
};

pub const NSException = struct {
    obj: Object,

    pub const methods = .{
        .{ "callStackReturnAddresses", Object, .{} },
        .{ "callStackSymbols", Object, .{} },
        .{ "initWithName:reason:userInfo:", NSException, .{ objc.NSString, ?objc.NSString, ?*anyopaque } },
        .{ "name", objc.NSString, .{} },
        .{ "raise", void, .{} },
        .{ "reason", ?objc.NSString, .{} },
        .{ "userInfo", ?*anyopaque, .{} },
    };

    pub fn send(self: NSException, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "raise:format:arguments:", void, .{ objc.NSString, objc.NSString, ?*anyopaque } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSException", class_methods, selector, args);
    }
};

pub const NSExpression = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowEvaluation", void, .{} },
        .{ "arguments", ?*anyopaque, .{} },
        .{ "collection", Any, .{} },
        .{ "constantValue", ?Any, .{} },
        .{ "expressionBlock", ?*anyopaque, .{} },
        .{ "expressionType", NSExpression.ExpressionType, .{} },
        .{ "expressionValueWithObject:context:", ?Any, .{ ?Any, ?NSMutableDictionary } },
        .{ "falseExpression", NSExpression, .{} },
        .{ "function", objc.NSString, .{} },
        .{ "initWithCoder:", NSExpression, .{NSCoder} },
        .{ "initWithExpressionType:", NSExpression, .{NSExpression.ExpressionType} },
        .{ "keyPath", objc.NSString, .{} },
        .{ "leftExpression", NSExpression, .{} },
        .{ "operand", NSExpression, .{} },
        .{ "predicate", NSPredicate, .{} },
        .{ "rightExpression", NSExpression, .{} },
        .{ "trueExpression", NSExpression, .{} },
        .{ "variable", objc.NSString, .{} },
    };

    pub fn send(self: NSExpression, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "expressionForAggregate:", Object, .{Object} },
        .{ "expressionForAnyKey", NSExpression, .{} },
        .{ "expressionForBlock:arguments:", Object, .{ ?*anyopaque, ?*anyopaque } },
        .{ "expressionForConditional:trueExpression:falseExpression:", Object, .{ NSPredicate, NSExpression, NSExpression } },
        .{ "expressionForConstantValue:", Object, .{?Any} },
        .{ "expressionForEvaluatedObject", NSExpression, .{} },
        .{ "expressionForFunction:arguments:", Object, .{ objc.NSString, Object } },
        .{ "expressionForFunction:selectorName:arguments:", Object, .{ NSExpression, objc.NSString, ?*anyopaque } },
        .{ "expressionForIntersectSet:with:", Object, .{ NSExpression, NSExpression } },
        .{ "expressionForKeyPath:", Object, .{objc.NSString} },
        .{ "expressionForMinusSet:with:", Object, .{ NSExpression, NSExpression } },
        .{ "expressionForSubquery:usingIteratorVariable:predicate:", Object, .{ NSExpression, objc.NSString, NSPredicate } },
        .{ "expressionForUnionSet:with:", Object, .{ NSExpression, NSExpression } },
        .{ "expressionForVariable:", Object, .{objc.NSString} },
        .{ "expressionWithFormat:argumentArray:", Object, .{ objc.NSString, Object } },
        .{ "expressionWithFormat:arguments:", Object, .{ objc.NSString, ?*anyopaque } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSExpression", class_methods, selector, args);
    }

    pub const ExpressionType = enum(i64) {
        constantValue = 0,
        evaluatedObject = 1,
        variable = 2,
        keyPath = 3,
        function = 4,
        unionSet = 5,
        intersectSet = 6,
        minusSet = 7,
        subquery = 13,
        aggregate = 14,
        anyKey = 15,
        block = 19,
        conditional = 20,
    };
};

pub const NSExtensionContext = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancelRequestWithError:", void, .{?*anyopaque} },
        .{ "completeRequestReturningItems:completionHandler:", void, .{ ?*anyopaque, ?*anyopaque } },
        .{ "inputItems", Object, .{} },
        .{ "openURL:completionHandler:", void, .{ NSURL, ?*anyopaque } },
    };

    pub fn send(self: NSExtensionContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSExtensionContext", class_methods, selector, args);
    }
};

pub const NSExtensionItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "attachments", ?*anyopaque, .{} },
        .{ "attributedContentText", ?NSAttributedString, .{} },
        .{ "attributedTitle", ?NSAttributedString, .{} },
        .{ "setAttachments:", void, .{?*anyopaque} },
        .{ "setAttributedContentText:", void, .{?NSAttributedString} },
        .{ "setAttributedTitle:", void, .{?NSAttributedString} },
        .{ "setUserInfo:", void, .{?*anyopaque} },
        .{ "userInfo", ?*anyopaque, .{} },
    };

    pub fn send(self: NSExtensionItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSExtensionItem", class_methods, selector, args);
    }
};

pub const NSFileAccessIntent = struct {
    obj: Object,

    pub const methods = .{
        .{ "URL", NSURL, .{} },
    };

    pub fn send(self: NSFileAccessIntent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "readingIntentWithURL:options:", ?*anyopaque, .{ NSURL, objc.NSInteger } },
        .{ "writingIntentWithURL:options:", ?*anyopaque, .{ NSURL, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSFileAccessIntent", class_methods, selector, args);
    }
};

pub const NSFileCoordinator = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancel", void, .{} },
        .{ "coordinateAccessWithIntents:queue:byAccessor:", void, .{ Object, OperationQueue, ?*anyopaque } },
        .{ "coordinateReadingItemAtURL:options:error:byAccessor:", void, .{ NSURL, objc.NSInteger, Object, ?*anyopaque } },
        .{ "coordinateReadingItemAtURL:options:writingItemAtURL:options:error:byAccessor:", void, .{ NSURL, objc.NSInteger, NSURL, objc.NSInteger, Object, ?*anyopaque } },
        .{ "coordinateWritingItemAtURL:options:error:byAccessor:", void, .{ NSURL, objc.NSInteger, Object, ?*anyopaque } },
        .{ "coordinateWritingItemAtURL:options:writingItemAtURL:options:error:byAccessor:", void, .{ NSURL, objc.NSInteger, NSURL, objc.NSInteger, Object, ?*anyopaque } },
        .{ "initWithFilePresenter:", NSFileCoordinator, .{?NSFilePresenter} },
        .{ "itemAtURL:didChangeUbiquityAttributes:", void, .{ NSURL, objc.NSString } },
        .{ "itemAtURL:didMoveToURL:", void, .{ NSURL, NSURL } },
        .{ "itemAtURL:willMoveToURL:", void, .{ NSURL, NSURL } },
        .{ "prepareForReadingItemsAtURLs:options:writingItemsAtURLs:options:error:byAccessor:", void, .{ Object, objc.NSInteger, Object, objc.NSInteger, Object, ?*anyopaque } },
        .{ "purposeIdentifier", objc.NSString, .{} },
        .{ "setPurposeIdentifier:", void, .{objc.NSString} },
    };

    pub fn send(self: NSFileCoordinator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "addFilePresenter:", void, .{NSFilePresenter} },
        .{ "filePresenters", Object, .{} },
        .{ "removeFilePresenter:", void, .{NSFilePresenter} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSFileCoordinator", class_methods, selector, args);
    }
};

pub const FileHandle = struct {
    obj: Object,

    pub const methods = .{
        .{ "acceptConnectionInBackgroundAndNotify", void, .{} },
        .{ "acceptConnectionInBackgroundAndNotifyForModes:", void, .{?*anyopaque} },
        .{ "availableData", NSData, .{} },
        .{ "closeAndReturnError:", void, .{} },
        .{ "closeFile", void, .{} },
        .{ "fileDescriptor", i32, .{} },
        .{ "initWithCoder:", FileHandle, .{NSCoder} },
        .{ "initWithFileDescriptor:", FileHandle, .{i32} },
        .{ "initWithFileDescriptor:closeOnDealloc:", FileHandle, .{ i32, objc.BOOL } },
        .{ "offsetInFile", u64, .{} },
        .{ "readDataOfLength:", NSData, .{objc.NSInteger} },
        .{ "readDataToEndOfFile", NSData, .{} },
        .{ "readInBackgroundAndNotify", void, .{} },
        .{ "readInBackgroundAndNotifyForModes:", void, .{?*anyopaque} },
        .{ "readToEndOfFileInBackgroundAndNotify", void, .{} },
        .{ "readToEndOfFileInBackgroundAndNotifyForModes:", void, .{?*anyopaque} },
        .{ "readabilityHandler", void, .{} },
        .{ "seekToEndOfFile", u64, .{} },
        .{ "seekToFileOffset:", void, .{u64} },
        .{ "seekToOffset:error:", void, .{u64} },
        .{ "setOffsetInFile:", void, .{u64} },
        .{ "setReadabilityHandler:", void, .{void} },
        .{ "setWriteabilityHandler:", void, .{void} },
        .{ "synchronizeAndReturnError:", void, .{} },
        .{ "synchronizeFile", void, .{} },
        .{ "truncateAtOffset:error:", void, .{u64} },
        .{ "truncateFileAtOffset:", void, .{u64} },
        .{ "waitForDataInBackgroundAndNotify", void, .{} },
        .{ "waitForDataInBackgroundAndNotifyForModes:", void, .{?*anyopaque} },
        .{ "writeData:", void, .{NSData} },
        .{ "writeabilityHandler", void, .{} },
    };

    pub fn send(self: FileHandle, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "fileHandleForReadingAtPath:", Object, .{objc.NSString} },
        .{ "fileHandleForReadingFromURL:error:", Object, .{NSURL} },
        .{ "fileHandleForUpdatingAtPath:", Object, .{objc.NSString} },
        .{ "fileHandleForUpdatingURL:error:", Object, .{NSURL} },
        .{ "fileHandleForWritingAtPath:", Object, .{objc.NSString} },
        .{ "fileHandleForWritingToURL:error:", Object, .{NSURL} },
        .{ "fileHandleWithNullDevice", FileHandle, .{} },
        .{ "fileHandleWithStandardError", FileHandle, .{} },
        .{ "fileHandleWithStandardInput", FileHandle, .{} },
        .{ "fileHandleWithStandardOutput", FileHandle, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSFileHandle", class_methods, selector, args);
    }
};

pub const FileManager = struct {
    obj: Object,

    pub const methods = .{
        .{ "URLForDirectory:inDomain:appropriateForURL:create:error:", NSURL, .{ FileManager.SearchPathDirectory, objc.NSInteger, ?NSURL, objc.BOOL } },
        .{ "URLForPublishingUbiquitousItemAtURL:expirationDate:error:", NSURL, .{ NSURL, ?NSDate } },
        .{ "URLForUbiquityContainerIdentifier:", ?NSURL, .{?objc.NSString} },
        .{ "URLsForDirectory:inDomains:", Object, .{ FileManager.SearchPathDirectory, objc.NSInteger } },
        .{ "attributesOfFileSystemForPath:error:", Object, .{objc.NSString} },
        .{ "attributesOfItemAtPath:error:", Object, .{objc.NSString} },
        .{ "changeCurrentDirectoryPath:", objc.BOOL, .{objc.NSString} },
        .{ "componentsToDisplayForPath:", ?*anyopaque, .{objc.NSString} },
        .{ "containerURLForSecurityApplicationGroupIdentifier:", ?NSURL, .{objc.NSString} },
        .{ "contentsAtPath:", ?NSData, .{objc.NSString} },
        .{ "contentsEqualAtPath:andPath:", objc.BOOL, .{ objc.NSString, objc.NSString } },
        .{ "contentsOfDirectoryAtPath:error:", Object, .{objc.NSString} },
        .{ "contentsOfDirectoryAtURL:includingPropertiesForKeys:options:error:", Object, .{ NSURL, ?*anyopaque, objc.NSInteger } },
        .{ "copyItemAtPath:toPath:error:", void, .{ objc.NSString, objc.NSString } },
        .{ "copyItemAtURL:toURL:error:", void, .{ NSURL, NSURL } },
        .{ "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", void, .{ objc.NSString, objc.BOOL, ?*anyopaque } },
        .{ "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", void, .{ NSURL, objc.BOOL, ?*anyopaque } },
        .{ "createFileAtPath:contents:attributes:", objc.BOOL, .{ objc.NSString, ?NSData, ?*anyopaque } },
        .{ "createSymbolicLinkAtPath:withDestinationPath:error:", void, .{ objc.NSString, objc.NSString } },
        .{ "createSymbolicLinkAtURL:withDestinationURL:error:", void, .{ NSURL, NSURL } },
        .{ "currentDirectoryPath", objc.NSString, .{} },
        .{ "delegate", ?FileManagerDelegate, .{} },
        .{ "destinationOfSymbolicLinkAtPath:error:", objc.NSString, .{objc.NSString} },
        .{ "displayNameAtPath:", objc.NSString, .{objc.NSString} },
        .{ "enumeratorAtPath:", ?NSDirectoryEnumerator, .{objc.NSString} },
        .{ "evictUbiquitousItemAtURL:error:", void, .{NSURL} },
        .{ "fetchLatestRemoteVersionOfItemAtURL:completionHandler:", void, .{ NSURL, ?*anyopaque } },
        .{ "fileExistsAtPath:", objc.BOOL, .{objc.NSString} },
        .{ "fileExistsAtPath:isDirectory:", objc.BOOL, .{ objc.NSString, ?*anyopaque } },
        .{ "fileSystemRepresentationWithPath:", ?*anyopaque, .{objc.NSString} },
        .{ "getFileProviderServicesForItemAtURL:completionHandler:", void, .{ NSURL, ?*anyopaque } },
        .{ "getRelationship:ofDirectory:inDomain:toItemAtURL:error:", void, .{ FileManager.URLRelationship, FileManager.SearchPathDirectory, objc.NSInteger, NSURL } },
        .{ "getRelationship:ofDirectoryAtURL:toItemAtURL:error:", void, .{ FileManager.URLRelationship, NSURL, NSURL } },
        .{ "homeDirectoryForCurrentUser", NSURL, .{} },
        .{ "homeDirectoryForUser:", ?NSURL, .{objc.NSString} },
        .{ "isDeletableFileAtPath:", objc.BOOL, .{objc.NSString} },
        .{ "isExecutableFileAtPath:", objc.BOOL, .{objc.NSString} },
        .{ "isReadableFileAtPath:", objc.BOOL, .{objc.NSString} },
        .{ "isUbiquitousItemAtURL:", objc.BOOL, .{NSURL} },
        .{ "isWritableFileAtPath:", objc.BOOL, .{objc.NSString} },
        .{ "linkItemAtPath:toPath:error:", void, .{ objc.NSString, objc.NSString } },
        .{ "linkItemAtURL:toURL:error:", void, .{ NSURL, NSURL } },
        .{ "mountedVolumeURLsIncludingResourceValuesForKeys:options:", ?*anyopaque, .{ ?*anyopaque, objc.NSInteger } },
        .{ "moveItemAtPath:toPath:error:", void, .{ objc.NSString, objc.NSString } },
        .{ "moveItemAtURL:toURL:error:", void, .{ NSURL, NSURL } },
        .{ "pauseSyncForUbiquitousItemAtURL:completionHandler:", void, .{ NSURL, ?*anyopaque } },
        .{ "removeItemAtPath:error:", void, .{objc.NSString} },
        .{ "removeItemAtURL:error:", void, .{NSURL} },
        .{ "replaceItemAtURL:withItemAtURL:backupItemName:options:resultingItemURL:error:", void, .{ NSURL, NSURL, ?objc.NSString, objc.NSInteger, ?NSURL } },
        .{ "resumeSyncForUbiquitousItemAtURL:withBehavior:completionHandler:", void, .{ NSURL, NSFileManagerResumeSyncBehavior, ?*anyopaque } },
        .{ "setAttributes:ofItemAtPath:error:", void, .{ Object, objc.NSString } },
        .{ "setDelegate:", void, .{?FileManagerDelegate} },
        .{ "setUbiquitous:itemAtURL:destinationURL:error:", void, .{ objc.BOOL, NSURL, NSURL } },
        .{ "startDownloadingUbiquitousItemAtURL:error:", void, .{NSURL} },
        .{ "stringWithFileSystemRepresentation:length:", objc.NSString, .{ ?*anyopaque, objc.NSInteger } },
        .{ "subpathsAtPath:", ?*anyopaque, .{objc.NSString} },
        .{ "subpathsOfDirectoryAtPath:error:", Object, .{objc.NSString} },
        .{ "temporaryDirectory", NSURL, .{} },
        .{ "trashItemAtURL:resultingItemURL:error:", void, .{ NSURL, ?NSURL } },
        .{ "ubiquityIdentityToken", ?NSObjectProtocol, .{} },
        .{ "unmountVolumeAtURL:options:completionHandler:", void, .{ NSURL, objc.NSInteger, ?*anyopaque } },
        .{ "uploadLocalVersionOfUbiquitousItemAtURL:withConflictResolutionPolicy:completionHandler:", void, .{ NSURL, NSFileManagerUploadLocalVersionConflictPolicy, ?*anyopaque } },
    };

    pub fn send(self: FileManager, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultManager", FileManager, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSFileManager", class_methods, selector, args);
    }

    pub const SearchPathDirectory = enum(i64) {
        applicationDirectory = 1,
        demoApplicationDirectory = 2,
        developerApplicationDirectory = 3,
        adminApplicationDirectory = 4,
        libraryDirectory = 5,
        developerDirectory = 6,
        userDirectory = 7,
        documentationDirectory = 8,
        documentDirectory = 9,
        coreServiceDirectory = 10,
        autosavedInformationDirectory = 11,
        desktopDirectory = 12,
        cachesDirectory = 13,
        applicationSupportDirectory = 14,
        downloadsDirectory = 15,
        inputMethodsDirectory = 16,
        moviesDirectory = 17,
        musicDirectory = 18,
        picturesDirectory = 19,
        printerDescriptionDirectory = 20,
        sharedPublicDirectory = 21,
        preferencePanesDirectory = 22,
        applicationScriptsDirectory = 23,
        itemReplacementDirectory = 99,
        allApplicationsDirectory = 100,
        allLibrariesDirectory = 101,
        trashDirectory = 102,
    };
    pub const URLRelationship = enum(i64) {
        contains = 0,
        same = 1,
        other = 2,
    };
};

pub const NSFileProviderService = struct {
    obj: Object,

    pub const methods = .{
        .{ "getFileProviderConnectionWithCompletionHandler:", void, .{?*anyopaque} },
        .{ "name", objc.NSString, .{} },
    };

    pub fn send(self: NSFileProviderService, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSFileProviderService", class_methods, selector, args);
    }
};

pub const NSFileSecurity = struct {
    obj: Object,

    pub const methods = .{
        .{ "initWithCoder:", NSFileSecurity, .{NSCoder} },
    };

    pub fn send(self: NSFileSecurity, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSFileSecurity", class_methods, selector, args);
    }
};

pub const NSFileVersion = struct {
    obj: Object,

    pub const methods = .{
        .{ "URL", NSURL, .{} },
        .{ "conflict", objc.BOOL, .{} },
        .{ "discardable", objc.BOOL, .{} },
        .{ "hasLocalContents", objc.BOOL, .{} },
        .{ "hasThumbnail", objc.BOOL, .{} },
        .{ "localizedName", ?objc.NSString, .{} },
        .{ "localizedNameOfSavingComputer", ?objc.NSString, .{} },
        .{ "modificationDate", ?NSDate, .{} },
        .{ "originatorNameComponents", ?NSPersonNameComponents, .{} },
        .{ "persistentIdentifier", NSCoding, .{} },
        .{ "removeAndReturnError:", void, .{} },
        .{ "replaceItemAtURL:options:error:", NSURL, .{ NSURL, objc.NSInteger } },
        .{ "resolved", objc.BOOL, .{} },
        .{ "setDiscardable:", void, .{objc.BOOL} },
        .{ "setResolved:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSFileVersion, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "addVersionOfItemAtURL:withContentsOfURL:options:error:", NSFileVersion, .{ NSURL, NSURL, objc.NSInteger } },
        .{ "currentVersionOfItemAtURL:", ?NSFileVersion, .{NSURL} },
        .{ "getNonlocalVersionsOfItemAtURL:completionHandler:", void, .{ NSURL, ?*anyopaque } },
        .{ "otherVersionsOfItemAtURL:", ?*anyopaque, .{NSURL} },
        .{ "removeOtherVersionsOfItemAtURL:error:", void, .{NSURL} },
        .{ "temporaryDirectoryURLForNewVersionOfItemAtURL:", NSURL, .{NSURL} },
        .{ "unresolvedConflictVersionsOfItemAtURL:", ?*anyopaque, .{NSURL} },
        .{ "versionOfItemAtURL:forPersistentIdentifier:", ?NSFileVersion, .{ NSURL, Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSFileVersion", class_methods, selector, args);
    }
};

pub const FileWrapper = struct {
    obj: Object,

    pub const methods = .{
        .{ "addFileWithPath:", objc.NSString, .{objc.NSString} },
        .{ "addFileWrapper:", objc.NSString, .{FileWrapper} },
        .{ "addRegularFileWithContents:preferredFilename:", objc.NSString, .{ NSData, objc.NSString } },
        .{ "addSymbolicLinkWithDestination:preferredFilename:", objc.NSString, .{ objc.NSString, objc.NSString } },
        .{ "directory", objc.BOOL, .{} },
        .{ "fileAttributes", Object, .{} },
        .{ "fileWrappers", ?*anyopaque, .{} },
        .{ "filename", ?objc.NSString, .{} },
        .{ "initDirectoryWithFileWrappers:", FileWrapper, .{Object} },
        .{ "initRegularFileWithContents:", FileWrapper, .{NSData} },
        .{ "initSymbolicLinkWithDestination:", FileWrapper, .{objc.NSString} },
        .{ "initSymbolicLinkWithDestinationURL:", FileWrapper, .{NSURL} },
        .{ "initWithCoder:", FileWrapper, .{NSCoder} },
        .{ "initWithPath:", FileWrapper, .{objc.NSString} },
        .{ "initWithSerializedRepresentation:", FileWrapper, .{NSData} },
        .{ "initWithURL:options:error:", FileWrapper, .{ NSURL, objc.NSInteger } },
        .{ "keyForFileWrapper:", ?objc.NSString, .{FileWrapper} },
        .{ "matchesContentsOfURL:", objc.BOOL, .{NSURL} },
        .{ "needsToBeUpdatedFromPath:", objc.BOOL, .{objc.NSString} },
        .{ "preferredFilename", ?objc.NSString, .{} },
        .{ "readFromURL:options:error:", void, .{ NSURL, objc.NSInteger } },
        .{ "regularFile", objc.BOOL, .{} },
        .{ "regularFileContents", ?NSData, .{} },
        .{ "removeFileWrapper:", void, .{FileWrapper} },
        .{ "serializedRepresentation", ?NSData, .{} },
        .{ "setFileAttributes:", void, .{Object} },
        .{ "setFilename:", void, .{?objc.NSString} },
        .{ "setPreferredFilename:", void, .{?objc.NSString} },
        .{ "symbolicLink", objc.BOOL, .{} },
        .{ "symbolicLinkDestination", objc.NSString, .{} },
        .{ "symbolicLinkDestinationURL", ?NSURL, .{} },
        .{ "updateFromPath:", objc.BOOL, .{objc.NSString} },
        .{ "writeToFile:atomically:updateFilenames:", objc.BOOL, .{ objc.NSString, objc.BOOL, objc.BOOL } },
        .{ "writeToURL:options:originalContentsURL:error:", void, .{ NSURL, objc.NSInteger, ?NSURL } },
    };

    pub fn send(self: FileWrapper, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSFileWrapper", class_methods, selector, args);
    }
};

pub const Formatter = struct {
    obj: Object,

    pub const methods = .{
        .{ "attributedStringForObjectValue:withDefaultAttributes:", ?NSAttributedString, .{ Any, ?*anyopaque } },
        .{ "editingStringForObjectValue:", ?objc.NSString, .{Any} },
        .{ "getObjectValue:forString:errorDescription:", objc.BOOL, .{ ?*anyopaque, objc.NSString, ?objc.NSString } },
        .{ "isPartialStringValid:newEditingString:errorDescription:", objc.BOOL, .{ objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "isPartialStringValid:proposedSelectedRange:originalString:originalSelectedRange:errorDescription:", objc.BOOL, .{ objc.NSString, NSRange, objc.NSString, NSRange, ?objc.NSString } },
        .{ "stringForObjectValue:", ?objc.NSString, .{?Any} },
    };

    pub fn send(self: Formatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSFormatter", class_methods, selector, args);
    }

    pub const Context = enum(i64) {
        unknown = 0,
        dynamic = 1,
        standalone = 2,
        listItem = 3,
        beginningOfSentence = 4,
        middleOfSentence = 5,
    };
    pub const UnitStyle = enum(i64) {
        short = 1,
        medium = 2,
        long = 3,
    };
};

pub const HTTPCookie = struct {
    obj: Object,

    pub const methods = .{
        .{ "HTTPOnly", objc.BOOL, .{} },
        .{ "comment", ?objc.NSString, .{} },
        .{ "commentURL", ?NSURL, .{} },
        .{ "domain", objc.NSString, .{} },
        .{ "expiresDate", ?NSDate, .{} },
        .{ "initWithProperties:", HTTPCookie, .{Object} },
        .{ "name", objc.NSString, .{} },
        .{ "path", objc.NSString, .{} },
        .{ "portList", ?*anyopaque, .{} },
        .{ "properties", ?*anyopaque, .{} },
        .{ "sameSitePolicy", objc.NSString, .{} },
        .{ "secure", objc.BOOL, .{} },
        .{ "sessionOnly", objc.BOOL, .{} },
        .{ "value", objc.NSString, .{} },
        .{ "version", objc.NSInteger, .{} },
    };

    pub fn send(self: HTTPCookie, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "cookiesWithResponseHeaderFields:forURL:", Object, .{ Object, NSURL } },
        .{ "requestHeaderFieldsWithCookies:", Object, .{Object} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSHTTPCookie", class_methods, selector, args);
    }

    pub const AcceptPolicy = enum(i64) {
        always = 0,
        never = 1,
        onlyFromMainDocumentDomain = 2,
    };
};

pub const HTTPCookieStorage = struct {
    obj: Object,

    pub const methods = .{
        .{ "cookieAcceptPolicy", HTTPCookie.AcceptPolicy, .{} },
        .{ "cookies", ?*anyopaque, .{} },
        .{ "cookiesForURL:", ?*anyopaque, .{NSURL} },
        .{ "deleteCookie:", void, .{HTTPCookie} },
        .{ "getCookiesForTask:completionHandler:", void, .{ URLSessionTask, ?*anyopaque } },
        .{ "removeCookiesSinceDate:", void, .{NSDate} },
        .{ "setCookie:", void, .{HTTPCookie} },
        .{ "setCookieAcceptPolicy:", void, .{HTTPCookie.AcceptPolicy} },
        .{ "setCookies:forURL:mainDocumentURL:", void, .{ Object, ?NSURL, ?NSURL } },
        .{ "sortedCookiesUsingDescriptors:", Object, .{Object} },
        .{ "storeCookies:forTask:", void, .{ Object, URLSessionTask } },
    };

    pub fn send(self: HTTPCookieStorage, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedCookieStorageForGroupContainerIdentifier:", HTTPCookieStorage, .{objc.NSString} },
        .{ "sharedHTTPCookieStorage", HTTPCookieStorage, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSHTTPCookieStorage", class_methods, selector, args);
    }
};

pub const HTTPURLResponse = struct {
    obj: Object,

    pub const Super = URLResponse;
    pub const methods = .{
        .{ "allHeaderFields", Object, .{} },
        .{ "initWithURL:statusCode:HTTPVersion:headerFields:", HTTPURLResponse, .{ NSURL, objc.NSInteger, ?objc.NSString, ?*anyopaque } },
        .{ "statusCode", objc.NSInteger, .{} },
        .{ "valueForHTTPHeaderField:", ?objc.NSString, .{objc.NSString} },
    };

    pub fn send(self: HTTPURLResponse, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "localizedStringForStatusCode:", objc.NSString, .{objc.NSInteger} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSHTTPURLResponse", class_methods, selector, args);
    }
};

pub const NSHashTable = struct {
    obj: Object,

    pub const methods = .{
        .{ "addObject:", void, .{?*anyopaque} },
        .{ "allObjects", Object, .{} },
        .{ "anyObject", ?*anyopaque, .{} },
        .{ "containsObject:", objc.BOOL, .{?*anyopaque} },
        .{ "count", objc.NSInteger, .{} },
        .{ "initWithOptions:capacity:", NSHashTable, .{ objc.NSInteger, objc.NSInteger } },
        .{ "initWithPointerFunctions:capacity:", NSHashTable, .{ NSPointerFunctions, objc.NSInteger } },
        .{ "intersectHashTable:", void, .{?*anyopaque} },
        .{ "intersectsHashTable:", objc.BOOL, .{?*anyopaque} },
        .{ "isEqualToHashTable:", objc.BOOL, .{?*anyopaque} },
        .{ "isSubsetOfHashTable:", objc.BOOL, .{?*anyopaque} },
        .{ "member:", ?*anyopaque, .{?*anyopaque} },
        .{ "minusHashTable:", void, .{?*anyopaque} },
        .{ "objectEnumerator", NSEnumerator, .{} },
        .{ "pointerFunctions", NSPointerFunctions, .{} },
        .{ "removeAllObjects", void, .{} },
        .{ "removeObject:", void, .{?*anyopaque} },
        .{ "setRepresentation", ?*anyopaque, .{} },
        .{ "setSetRepresentation:", void, .{?*anyopaque} },
        .{ "unionHashTable:", void, .{?*anyopaque} },
    };

    pub fn send(self: NSHashTable, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "hashTableWithOptions:", Object, .{objc.NSInteger} },
        .{ "weakObjectsHashTable", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSHashTable", class_methods, selector, args);
    }
};

pub const Host = struct {
    obj: Object,

    pub const methods = .{
        .{ "address", ?objc.NSString, .{} },
        .{ "addresses", Object, .{} },
        .{ "isEqualToHost:", objc.BOOL, .{Host} },
        .{ "localizedName", ?objc.NSString, .{} },
        .{ "name", ?objc.NSString, .{} },
        .{ "names", Object, .{} },
    };

    pub fn send(self: Host, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentHost", ?*anyopaque, .{} },
        .{ "hostWithAddress:", Object, .{objc.NSString} },
        .{ "hostWithName:", Object, .{?objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSHost", class_methods, selector, args);
    }
};

pub const ISO8601DateFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "dateFromString:", ?NSDate, .{objc.NSString} },
        .{ "formatOptions", objc.NSInteger, .{} },
        .{ "setFormatOptions:", void, .{objc.NSInteger} },
        .{ "setTimeZone:", void, .{NSTimeZone} },
        .{ "stringFromDate:", objc.NSString, .{NSDate} },
        .{ "timeZone", NSTimeZone, .{} },
    };

    pub fn send(self: ISO8601DateFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "stringFromDate:timeZone:formatOptions:", objc.NSString, .{ NSDate, NSTimeZone, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSISO8601DateFormatter", class_methods, selector, args);
    }
};

pub const NSIndexPath = struct {
    obj: Object,

    pub const methods = .{
        .{ "compare:", ComparisonResult, .{NSIndexPath} },
        .{ "getIndexes:", void, .{objc.NSInteger} },
        .{ "getIndexes:range:", void, .{ objc.NSInteger, NSRange } },
        .{ "indexAtPosition:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexPathByAddingIndex:", NSIndexPath, .{objc.NSInteger} },
        .{ "indexPathByRemovingLastIndex", NSIndexPath, .{} },
        .{ "initWithIndex:", NSIndexPath, .{objc.NSInteger} },
        .{ "initWithIndexes:length:", NSIndexPath, .{ objc.NSInteger, objc.NSInteger } },
        .{ "length", objc.NSInteger, .{} },
    };

    pub fn send(self: NSIndexPath, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSIndexPath", class_methods, selector, args);
    }
};

pub const NSIndexSet = struct {
    obj: Object,

    pub const methods = .{
        .{ "containsIndex:", objc.BOOL, .{objc.NSInteger} },
        .{ "containsIndexes:", objc.BOOL, .{NSIndexSet} },
        .{ "containsIndexesInRange:", objc.BOOL, .{NSRange} },
        .{ "count", objc.NSInteger, .{} },
        .{ "countOfIndexesInRange:", objc.NSInteger, .{NSRange} },
        .{ "enumerateIndexesInRange:options:usingBlock:", void, .{ NSRange, objc.NSInteger, ?*anyopaque } },
        .{ "enumerateIndexesUsingBlock:", void, .{?*anyopaque} },
        .{ "enumerateIndexesWithOptions:usingBlock:", void, .{ objc.NSInteger, ?*anyopaque } },
        .{ "enumerateRangesInRange:options:usingBlock:", void, .{ NSRange, objc.NSInteger, ?*anyopaque } },
        .{ "enumerateRangesUsingBlock:", void, .{?*anyopaque} },
        .{ "enumerateRangesWithOptions:usingBlock:", void, .{ objc.NSInteger, ?*anyopaque } },
        .{ "firstIndex", objc.NSInteger, .{} },
        .{ "getIndexes:maxCount:inIndexRange:", objc.NSInteger, .{ objc.NSInteger, objc.NSInteger, NSRange } },
        .{ "indexGreaterThanIndex:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexGreaterThanOrEqualToIndex:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexInRange:options:passingTest:", objc.NSInteger, .{ NSRange, objc.NSInteger, ?*anyopaque } },
        .{ "indexLessThanIndex:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexLessThanOrEqualToIndex:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexPassingTest:", objc.NSInteger, .{?*anyopaque} },
        .{ "indexWithOptions:passingTest:", objc.NSInteger, .{ objc.NSInteger, ?*anyopaque } },
        .{ "indexesInRange:options:passingTest:", NSIndexSet, .{ NSRange, objc.NSInteger, ?*anyopaque } },
        .{ "indexesPassingTest:", NSIndexSet, .{?*anyopaque} },
        .{ "indexesWithOptions:passingTest:", NSIndexSet, .{ objc.NSInteger, ?*anyopaque } },
        .{ "initWithIndex:", NSIndexSet, .{objc.NSInteger} },
        .{ "initWithIndexSet:", NSIndexSet, .{NSIndexSet} },
        .{ "initWithIndexesInRange:", NSIndexSet, .{NSRange} },
        .{ "intersectsIndexesInRange:", objc.BOOL, .{NSRange} },
        .{ "isEqualToIndexSet:", objc.BOOL, .{NSIndexSet} },
        .{ "lastIndex", objc.NSInteger, .{} },
    };

    pub fn send(self: NSIndexSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSIndexSet", class_methods, selector, args);
    }
};

pub const NSIndexSpecifier = struct {
    obj: Object,

    pub const Super = NSScriptObjectSpecifier;
    pub const methods = .{
        .{ "index", objc.NSInteger, .{} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:index:", NSIndexSpecifier, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString, objc.NSInteger } },
        .{ "setIndex:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSIndexSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSIndexSpecifier", class_methods, selector, args);
    }
};

pub const InputStream = struct {
    obj: Object,

    pub const Super = Stream;
    pub const methods = .{
        .{ "getBuffer:length:", objc.BOOL, .{ u8, objc.NSInteger } },
        .{ "hasBytesAvailable", objc.BOOL, .{} },
        .{ "initWithData:", InputStream, .{NSData} },
        .{ "initWithFileAtPath:", InputStream, .{objc.NSString} },
        .{ "initWithURL:", InputStream, .{NSURL} },
        .{ "read:maxLength:", objc.NSInteger, .{ u8, objc.NSInteger } },
    };

    pub fn send(self: InputStream, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "inputStreamWithURL:", Object, .{NSURL} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSInputStream", class_methods, selector, args);
    }
};

pub const NSItemProvider = struct {
    obj: Object,

    pub const methods = .{
        .{ "canLoadObjectOfClass:", objc.BOOL, .{NSItemProviderReading} },
        .{ "hasItemConformingToTypeIdentifier:", objc.BOOL, .{objc.NSString} },
        .{ "hasRepresentationConformingToTypeIdentifier:fileOptions:", objc.BOOL, .{ objc.NSString, objc.NSInteger } },
        .{ "initWithContentsOfURL:", NSItemProvider, .{NSURL} },
        .{ "initWithItem:typeIdentifier:", NSItemProvider, .{ ?NSSecureCoding, ?objc.NSString } },
        .{ "initWithObject:", NSItemProvider, .{NSItemProviderWriting} },
        .{ "loadDataRepresentationForTypeIdentifier:completionHandler:", Progress, .{ objc.NSString, ?*anyopaque } },
        .{ "loadFileRepresentationForTypeIdentifier:completionHandler:", Progress, .{ objc.NSString, ?*anyopaque } },
        .{ "loadInPlaceFileRepresentationForTypeIdentifier:completionHandler:", Progress, .{ objc.NSString, ?*anyopaque } },
        .{ "loadItemForTypeIdentifier:options:completionHandler:", void, .{ objc.NSString, ?*anyopaque, void } },
        .{ "loadObjectOfClass:completionHandler:", Progress, .{ NSItemProviderReading, ?*anyopaque } },
        .{ "loadPreviewImageWithOptions:completionHandler:", void, .{ Object, void } },
        .{ "previewImageHandler", void, .{} },
        .{ "registerDataRepresentationForTypeIdentifier:visibility:loadHandler:", void, .{ objc.NSString, NSItemProviderRepresentationVisibility, ?*anyopaque } },
        .{ "registerFileRepresentationForTypeIdentifier:fileOptions:visibility:loadHandler:", void, .{ objc.NSString, objc.NSInteger, NSItemProviderRepresentationVisibility, ?*anyopaque } },
        .{ "registerItemForTypeIdentifier:loadHandler:", void, .{ objc.NSString, void } },
        .{ "registerObject:visibility:", void, .{ NSItemProviderWriting, NSItemProviderRepresentationVisibility } },
        .{ "registerObjectOfClass:visibility:loadHandler:", void, .{ NSItemProviderWriting, NSItemProviderRepresentationVisibility, ?*anyopaque } },
        .{ "registeredTypeIdentifiers", Object, .{} },
        .{ "registeredTypeIdentifiersWithFileOptions:", Object, .{objc.NSInteger} },
        .{ "setPreviewImageHandler:", void, .{void} },
        .{ "setSuggestedName:", void, .{?objc.NSString} },
        .{ "suggestedName", ?objc.NSString, .{} },
    };

    pub fn send(self: NSItemProvider, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSItemProvider", class_methods, selector, args);
    }

    pub const ErrorCode = enum(i64) {
        unavailableCoercionError = -1200,
        unexpectedValueClassError = -1100,
        itemUnavailableError = -1000,
        unknownError = -1,
    };
};

pub const JSONSerialization = struct {
    pub const class_methods = .{
        .{ "JSONObjectWithData:options:error:", Any, .{ NSData, objc.NSInteger } },
        .{ "JSONObjectWithStream:options:error:", Any, .{ InputStream, objc.NSInteger } },
        .{ "dataWithJSONObject:options:error:", NSData, .{ Any, objc.NSInteger } },
        .{ "isValidJSONObject:", objc.BOOL, .{Any} },
        .{ "writeJSONObject:toStream:options:error:", objc.NSInteger, .{ Any, OutputStream, objc.NSInteger, Object } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSJSONSerialization", class_methods, selector, args);
    }
};

pub const NSKeyValueSharedObservers = struct {
    obj: Object,

    pub const methods = .{
        .{ "addSharedObserver:forKey:options:context:", void, .{ Object, objc.NSString, objc.NSInteger, ?UnsafeMutableRawPointer } },
        .{ "initWithObservableClass:", NSKeyValueSharedObservers, .{AnyClass} },
        .{ "snapshot", Object, .{} },
    };

    pub fn send(self: NSKeyValueSharedObservers, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSKeyValueSharedObservers", class_methods, selector, args);
    }
};

pub const NSKeyedArchiver = struct {
    obj: Object,

    pub const Super = NSCoder;
    pub const methods = .{
        .{ "classNameForClass:", ?objc.NSString, .{AnyClass} },
        .{ "delegate", ?NSKeyedArchiverDelegate, .{} },
        .{ "encodeBool:forKey:", void, .{ objc.BOOL, objc.NSString } },
        .{ "encodeBytes:length:forKey:", void, .{ u8, objc.NSInteger, objc.NSString } },
        .{ "encodeConditionalObject:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "encodeDouble:forKey:", void, .{ f64, objc.NSString } },
        .{ "encodeFloat:forKey:", void, .{ f32, objc.NSString } },
        .{ "encodeInt32:forKey:", void, .{ i32, objc.NSString } },
        .{ "encodeInt64:forKey:", void, .{ i64, objc.NSString } },
        .{ "encodeObject:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "encodedData", NSData, .{} },
        .{ "finishEncoding", void, .{} },
        .{ "initForWritingWithMutableData:", NSKeyedArchiver, .{NSMutableData} },
        .{ "initRequiringSecureCoding:", NSKeyedArchiver, .{objc.BOOL} },
        .{ "outputFormat", PropertyListSerialization.PropertyListFormat, .{} },
        .{ "requiresSecureCoding", objc.BOOL, .{} },
        .{ "setClassName:forClass:", void, .{ ?objc.NSString, AnyClass } },
        .{ "setDelegate:", void, .{?NSKeyedArchiverDelegate} },
        .{ "setOutputFormat:", void, .{PropertyListSerialization.PropertyListFormat} },
        .{ "setRequiresSecureCoding:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSKeyedArchiver, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "archiveRootObject:toFile:", objc.BOOL, .{ Any, objc.NSString } },
        .{ "archivedDataWithRootObject:", NSData, .{Any} },
        .{ "archivedDataWithRootObject:requiringSecureCoding:error:", NSData, .{ Any, objc.BOOL } },
        .{ "classNameForClass:", ?objc.NSString, .{AnyClass} },
        .{ "setClassName:forClass:", void, .{ ?objc.NSString, AnyClass } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSKeyedArchiver", class_methods, selector, args);
    }
};

pub const NSKeyedUnarchiver = struct {
    obj: Object,

    pub const Super = NSCoder;
    pub const methods = .{
        .{ "classForClassName:", ?AnyClass, .{objc.NSString} },
        .{ "containsValueForKey:", objc.BOOL, .{objc.NSString} },
        .{ "decodeBoolForKey:", objc.BOOL, .{objc.NSString} },
        .{ "decodeBytesForKey:returnedLength:", u8, .{ objc.NSString, objc.NSInteger } },
        .{ "decodeDoubleForKey:", f64, .{objc.NSString} },
        .{ "decodeFloatForKey:", f32, .{objc.NSString} },
        .{ "decodeInt32ForKey:", i32, .{objc.NSString} },
        .{ "decodeInt64ForKey:", i64, .{objc.NSString} },
        .{ "decodeObjectForKey:", ?Any, .{objc.NSString} },
        .{ "decodingFailurePolicy", NSCoder.DecodingFailurePolicy, .{} },
        .{ "delegate", ?NSKeyedUnarchiverDelegate, .{} },
        .{ "finishDecoding", void, .{} },
        .{ "initForReadingFromData:error:", NSKeyedUnarchiver, .{NSData} },
        .{ "initForReadingWithData:", NSKeyedUnarchiver, .{NSData} },
        .{ "requiresSecureCoding", objc.BOOL, .{} },
        .{ "setClass:forClassName:", void, .{ ?AnyClass, objc.NSString } },
        .{ "setDecodingFailurePolicy:", void, .{NSCoder.DecodingFailurePolicy} },
        .{ "setDelegate:", void, .{?NSKeyedUnarchiverDelegate} },
        .{ "setRequiresSecureCoding:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSKeyedUnarchiver, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "classForClassName:", ?AnyClass, .{objc.NSString} },
        .{ "setClass:forClassName:", void, .{ ?AnyClass, objc.NSString } },
        .{ "unarchiveObjectWithData:", ?Any, .{NSData} },
        .{ "unarchiveObjectWithFile:", ?Any, .{objc.NSString} },
        .{ "unarchivedObjectOfClasses:fromData:error:", Any, .{ ?*anyopaque, NSData } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSKeyedUnarchiver", class_methods, selector, args);
    }
};

pub const LengthFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "forPersonHeightUse", objc.BOOL, .{} },
        .{ "getObjectValue:forString:errorDescription:", objc.BOOL, .{ ?*anyopaque, objc.NSString, ?objc.NSString } },
        .{ "numberFormatter", NumberFormatter, .{} },
        .{ "setForPersonHeightUse:", void, .{objc.BOOL} },
        .{ "setNumberFormatter:", void, .{NumberFormatter} },
        .{ "setUnitStyle:", void, .{Formatter.UnitStyle} },
        .{ "stringFromMeters:", objc.NSString, .{f64} },
        .{ "stringFromValue:unit:", objc.NSString, .{ f64, LengthFormatter.Unit } },
        .{ "unitStringFromMeters:usedUnit:", objc.NSString, .{ f64, LengthFormatter.Unit } },
        .{ "unitStringFromValue:unit:", objc.NSString, .{ f64, LengthFormatter.Unit } },
        .{ "unitStyle", Formatter.UnitStyle, .{} },
    };

    pub fn send(self: LengthFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSLengthFormatter", class_methods, selector, args);
    }

    pub const Unit = enum(i64) {
        millimeter = 8,
        centimeter = 9,
        meter = 11,
        kilometer = 14,
        inch = 1281,
        foot = 1282,
        yard = 1283,
        mile = 1284,
    };
};

pub const NSLinguisticTagger = struct {
    obj: Object,

    pub const methods = .{
        .{ "dominantLanguage", ?objc.NSString, .{} },
        .{ "enumerateTagsInRange:scheme:options:usingBlock:", void, .{ NSRange, objc.NSString, objc.NSInteger, ?*anyopaque } },
        .{ "enumerateTagsInRange:unit:scheme:options:usingBlock:", void, .{ NSRange, NSLinguisticTaggerUnit, objc.NSString, objc.NSInteger, ?*anyopaque } },
        .{ "initWithTagSchemes:options:", NSLinguisticTagger, .{ Object, objc.NSInteger } },
        .{ "orthographyAtIndex:effectiveRange:", ?NSOrthography, .{ objc.NSInteger, NSRange } },
        .{ "possibleTagsAtIndex:scheme:tokenRange:sentenceRange:scores:", ?*anyopaque, .{ objc.NSInteger, objc.NSString, NSRange, NSRange, ?NSArray } },
        .{ "sentenceRangeForRange:", NSRange, .{NSRange} },
        .{ "setOrthography:range:", void, .{ ?NSOrthography, NSRange } },
        .{ "setString:", void, .{?objc.NSString} },
        .{ "string", ?objc.NSString, .{} },
        .{ "stringEditedInRange:changeInLength:", void, .{ NSRange, objc.NSInteger } },
        .{ "tagAtIndex:scheme:tokenRange:sentenceRange:", objc.NSString, .{ objc.NSInteger, objc.NSString, NSRange, NSRange } },
        .{ "tagAtIndex:unit:scheme:tokenRange:", objc.NSString, .{ objc.NSInteger, NSLinguisticTaggerUnit, objc.NSString, NSRange } },
        .{ "tagSchemes", Object, .{} },
        .{ "tagsInRange:scheme:options:tokenRanges:", Object, .{ NSRange, objc.NSString, objc.NSInteger, ?NSArray } },
        .{ "tagsInRange:unit:scheme:options:tokenRanges:", Object, .{ NSRange, NSLinguisticTaggerUnit, objc.NSString, objc.NSInteger, ?NSArray } },
        .{ "tokenRangeAtIndex:unit:", NSRange, .{ objc.NSInteger, NSLinguisticTaggerUnit } },
    };

    pub fn send(self: NSLinguisticTagger, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "availableTagSchemesForLanguage:", Object, .{objc.NSString} },
        .{ "availableTagSchemesForUnit:language:", Object, .{ NSLinguisticTaggerUnit, objc.NSString } },
        .{ "dominantLanguageForString:", ?objc.NSString, .{objc.NSString} },
        .{ "enumerateTagsForString:range:unit:scheme:options:orthography:usingBlock:", void, .{ objc.NSString, NSRange, NSLinguisticTaggerUnit, objc.NSString, objc.NSInteger, ?NSOrthography, ?*anyopaque } },
        .{ "tagForString:atIndex:unit:scheme:orthography:tokenRange:", objc.NSString, .{ objc.NSString, objc.NSInteger, NSLinguisticTaggerUnit, objc.NSString, ?NSOrthography, NSRange } },
        .{ "tagsForString:range:unit:scheme:options:orthography:tokenRanges:", Object, .{ objc.NSString, NSRange, NSLinguisticTaggerUnit, objc.NSString, objc.NSInteger, ?NSOrthography, ?NSArray } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSLinguisticTagger", class_methods, selector, args);
    }
};

pub const ListFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "itemFormatter", ?Formatter, .{} },
        .{ "locale", NSLocale, .{} },
        .{ "setItemFormatter:", void, .{?Formatter} },
        .{ "setLocale:", void, .{NSLocale} },
        .{ "stringForObjectValue:", ?objc.NSString, .{?Any} },
        .{ "stringFromItems:", ?objc.NSString, .{Object} },
    };

    pub fn send(self: ListFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "localizedStringByJoiningStrings:", objc.NSString, .{Object} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSListFormatter", class_methods, selector, args);
    }
};

pub const NSLocale = struct {
    obj: Object,

    pub const methods = .{
        .{ "alternateQuotationBeginDelimiter", objc.NSString, .{} },
        .{ "alternateQuotationEndDelimiter", objc.NSString, .{} },
        .{ "calendarIdentifier", objc.NSString, .{} },
        .{ "collationIdentifier", ?objc.NSString, .{} },
        .{ "collatorIdentifier", objc.NSString, .{} },
        .{ "countryCode", ?objc.NSString, .{} },
        .{ "currencyCode", ?objc.NSString, .{} },
        .{ "currencySymbol", objc.NSString, .{} },
        .{ "decimalSeparator", objc.NSString, .{} },
        .{ "displayNameForKey:value:", ?objc.NSString, .{ objc.NSString, Any } },
        .{ "exemplarCharacterSet", NSCharacterSet, .{} },
        .{ "groupingSeparator", objc.NSString, .{} },
        .{ "initWithCoder:", NSLocale, .{NSCoder} },
        .{ "initWithLocaleIdentifier:", NSLocale, .{objc.NSString} },
        .{ "languageCode", objc.NSString, .{} },
        .{ "languageIdentifier", objc.NSString, .{} },
        .{ "localeIdentifier", objc.NSString, .{} },
        .{ "localizedStringForCalendarIdentifier:", ?objc.NSString, .{objc.NSString} },
        .{ "localizedStringForCollationIdentifier:", ?objc.NSString, .{objc.NSString} },
        .{ "localizedStringForCollatorIdentifier:", ?objc.NSString, .{objc.NSString} },
        .{ "localizedStringForCountryCode:", ?objc.NSString, .{objc.NSString} },
        .{ "localizedStringForCurrencyCode:", ?objc.NSString, .{objc.NSString} },
        .{ "localizedStringForLanguageCode:", ?objc.NSString, .{objc.NSString} },
        .{ "localizedStringForLocaleIdentifier:", objc.NSString, .{objc.NSString} },
        .{ "localizedStringForScriptCode:", ?objc.NSString, .{objc.NSString} },
        .{ "localizedStringForVariantCode:", ?objc.NSString, .{objc.NSString} },
        .{ "objectForKey:", ?Any, .{objc.NSString} },
        .{ "quotationBeginDelimiter", objc.NSString, .{} },
        .{ "quotationEndDelimiter", objc.NSString, .{} },
        .{ "regionCode", ?objc.NSString, .{} },
        .{ "scriptCode", ?objc.NSString, .{} },
        .{ "usesMetricSystem", objc.BOOL, .{} },
        .{ "variantCode", ?objc.NSString, .{} },
    };

    pub fn send(self: NSLocale, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "ISOCountryCodes", Object, .{} },
        .{ "ISOCurrencyCodes", Object, .{} },
        .{ "ISOLanguageCodes", Object, .{} },
        .{ "autoupdatingCurrentLocale", NSLocale, .{} },
        .{ "availableLocaleIdentifiers", Object, .{} },
        .{ "canonicalLanguageIdentifierFromString:", objc.NSString, .{objc.NSString} },
        .{ "canonicalLocaleIdentifierFromString:", objc.NSString, .{objc.NSString} },
        .{ "characterDirectionForLanguage:", NSLocale.LanguageDirection, .{objc.NSString} },
        .{ "commonISOCurrencyCodes", Object, .{} },
        .{ "componentsFromLocaleIdentifier:", Object, .{objc.NSString} },
        .{ "currentLocale", NSLocale, .{} },
        .{ "lineDirectionForLanguage:", NSLocale.LanguageDirection, .{objc.NSString} },
        .{ "localeIdentifierFromComponents:", objc.NSString, .{Object} },
        .{ "localeIdentifierFromWindowsLocaleCode:", ?objc.NSString, .{u32} },
        .{ "preferredLanguages", Object, .{} },
        .{ "systemLocale", NSLocale, .{} },
        .{ "windowsLocaleCodeFromLocaleIdentifier:", u32, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSLocale", class_methods, selector, args);
    }

    pub const LanguageDirection = enum(i64) {
        unknown = 0,
        leftToRight = 1,
        rightToLeft = 2,
        topToBottom = 3,
        bottomToTop = 4,
    };
};

pub const NSLock = struct {
    obj: Object,

    pub const methods = .{
        .{ "lockBeforeDate:", objc.BOOL, .{NSDate} },
        .{ "name", ?objc.NSString, .{} },
        .{ "setName:", void, .{?objc.NSString} },
        .{ "tryLock", objc.BOOL, .{} },
    };

    pub fn send(self: NSLock, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSLock", class_methods, selector, args);
    }
};

pub const NSLogicalTest = struct {
    obj: Object,

    pub const Super = NSScriptWhoseTest;
    pub const methods = .{
        .{ "initAndTestWithTests:", NSLogicalTest, .{Object} },
        .{ "initNotTestWithTest:", NSLogicalTest, .{NSScriptWhoseTest} },
        .{ "initOrTestWithTests:", NSLogicalTest, .{Object} },
    };

    pub fn send(self: NSLogicalTest, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSLogicalTest", class_methods, selector, args);
    }
};

pub const NSMachPort = struct {
    obj: Object,

    pub const Super = Port;
    pub const methods = .{
        .{ "delegate", ?NSMachPortDelegate, .{} },
        .{ "initWithMachPort:", NSMachPort, .{u32} },
        .{ "initWithMachPort:options:", NSMachPort, .{ u32, objc.NSInteger } },
        .{ "machPort", u32, .{} },
        .{ "removeFromRunLoop:forMode:", void, .{ RunLoop, objc.NSString } },
        .{ "scheduleInRunLoop:forMode:", void, .{ RunLoop, objc.NSString } },
        .{ "setDelegate:", void, .{?NSMachPortDelegate} },
    };

    pub fn send(self: NSMachPort, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "portWithMachPort:", Port, .{u32} },
        .{ "portWithMachPort:options:", Port, .{ u32, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMachPort", class_methods, selector, args);
    }
};

pub const NSMapTable = struct {
    obj: Object,

    pub const methods = .{
        .{ "count", objc.NSInteger, .{} },
        .{ "dictionaryRepresentation", Object, .{} },
        .{ "initWithKeyOptions:valueOptions:capacity:", NSMapTable, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "initWithKeyPointerFunctions:valuePointerFunctions:capacity:", NSMapTable, .{ NSPointerFunctions, NSPointerFunctions, objc.NSInteger } },
        .{ "keyEnumerator", NSEnumerator, .{} },
        .{ "keyPointerFunctions", NSPointerFunctions, .{} },
        .{ "objectEnumerator", ?NSEnumerator, .{} },
        .{ "objectForKey:", ?*anyopaque, .{?*anyopaque} },
        .{ "removeAllObjects", void, .{} },
        .{ "removeObjectForKey:", void, .{?*anyopaque} },
        .{ "setObject:forKey:", void, .{ ?*anyopaque, ?*anyopaque } },
        .{ "valuePointerFunctions", NSPointerFunctions, .{} },
    };

    pub fn send(self: NSMapTable, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "mapTableWithKeyOptions:valueOptions:", Object, .{ objc.NSInteger, objc.NSInteger } },
        .{ "strongToStrongObjectsMapTable", ?*anyopaque, .{} },
        .{ "strongToWeakObjectsMapTable", ?*anyopaque, .{} },
        .{ "weakToStrongObjectsMapTable", ?*anyopaque, .{} },
        .{ "weakToWeakObjectsMapTable", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMapTable", class_methods, selector, args);
    }
};

pub const MassFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "forPersonMassUse", objc.BOOL, .{} },
        .{ "getObjectValue:forString:errorDescription:", objc.BOOL, .{ ?*anyopaque, objc.NSString, ?objc.NSString } },
        .{ "numberFormatter", NumberFormatter, .{} },
        .{ "setForPersonMassUse:", void, .{objc.BOOL} },
        .{ "setNumberFormatter:", void, .{NumberFormatter} },
        .{ "setUnitStyle:", void, .{Formatter.UnitStyle} },
        .{ "stringFromKilograms:", objc.NSString, .{f64} },
        .{ "stringFromValue:unit:", objc.NSString, .{ f64, MassFormatter.Unit } },
        .{ "unitStringFromKilograms:usedUnit:", objc.NSString, .{ f64, MassFormatter.Unit } },
        .{ "unitStringFromValue:unit:", objc.NSString, .{ f64, MassFormatter.Unit } },
        .{ "unitStyle", Formatter.UnitStyle, .{} },
    };

    pub fn send(self: MassFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMassFormatter", class_methods, selector, args);
    }

    pub const Unit = enum(i64) {
        gram = 11,
        kilogram = 14,
        ounce = 1537,
        pound = 1538,
        stone = 1539,
    };
};

pub const NSMeasurement = struct {
    obj: Object,

    pub const methods = .{
        .{ "canBeConvertedToUnit:", objc.BOOL, .{Unit} },
        .{ "doubleValue", f64, .{} },
        .{ "initWithDoubleValue:unit:", NSMeasurement, .{ f64, Unit } },
        .{ "measurementByAddingMeasurement:", Unit, .{Unit} },
        .{ "measurementByConvertingToUnit:", Unit, .{Unit} },
        .{ "measurementBySubtractingMeasurement:", Unit, .{Unit} },
        .{ "unit", Unit, .{} },
    };

    pub fn send(self: NSMeasurement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMeasurement", class_methods, selector, args);
    }
};

pub const MeasurementFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "locale", NSLocale, .{} },
        .{ "numberFormatter", NumberFormatter, .{} },
        .{ "setLocale:", void, .{NSLocale} },
        .{ "setNumberFormatter:", void, .{NumberFormatter} },
        .{ "setUnitOptions:", void, .{objc.NSInteger} },
        .{ "setUnitStyle:", void, .{Formatter.UnitStyle} },
        .{ "stringFromMeasurement:", objc.NSString, .{Unit} },
        .{ "stringFromUnit:", objc.NSString, .{Unit} },
        .{ "unitOptions", objc.NSInteger, .{} },
        .{ "unitStyle", Formatter.UnitStyle, .{} },
    };

    pub fn send(self: MeasurementFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMeasurementFormatter", class_methods, selector, args);
    }
};

pub const NSMetadataItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "attributes", Object, .{} },
        .{ "initWithURL:", NSMetadataItem, .{NSURL} },
        .{ "valueForAttribute:", ?Any, .{objc.NSString} },
        .{ "valuesForAttributes:", ?*anyopaque, .{Object} },
    };

    pub fn send(self: NSMetadataItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMetadataItem", class_methods, selector, args);
    }
};

pub const NSMetadataQuery = struct {
    obj: Object,

    pub const methods = .{
        .{ "delegate", ?NSMetadataQueryDelegate, .{} },
        .{ "disableUpdates", void, .{} },
        .{ "enableUpdates", void, .{} },
        .{ "enumerateResultsUsingBlock:", void, .{?*anyopaque} },
        .{ "enumerateResultsWithOptions:usingBlock:", void, .{ objc.NSInteger, ?*anyopaque } },
        .{ "gathering", objc.BOOL, .{} },
        .{ "groupedResults", Object, .{} },
        .{ "groupingAttributes", ?*anyopaque, .{} },
        .{ "indexOfResult:", objc.NSInteger, .{Any} },
        .{ "notificationBatchingInterval", TimeInterval, .{} },
        .{ "operationQueue", ?OperationQueue, .{} },
        .{ "predicate", ?NSPredicate, .{} },
        .{ "resultAtIndex:", Any, .{objc.NSInteger} },
        .{ "resultCount", objc.NSInteger, .{} },
        .{ "results", Object, .{} },
        .{ "searchItems", ?*anyopaque, .{} },
        .{ "searchScopes", Object, .{} },
        .{ "setDelegate:", void, .{?NSMetadataQueryDelegate} },
        .{ "setGroupingAttributes:", void, .{?*anyopaque} },
        .{ "setNotificationBatchingInterval:", void, .{TimeInterval} },
        .{ "setOperationQueue:", void, .{?OperationQueue} },
        .{ "setPredicate:", void, .{?NSPredicate} },
        .{ "setSearchItems:", void, .{?*anyopaque} },
        .{ "setSearchScopes:", void, .{Object} },
        .{ "setSortDescriptors:", void, .{Object} },
        .{ "setValueListAttributes:", void, .{Object} },
        .{ "sortDescriptors", Object, .{} },
        .{ "startQuery", objc.BOOL, .{} },
        .{ "started", objc.BOOL, .{} },
        .{ "stopQuery", void, .{} },
        .{ "stopped", objc.BOOL, .{} },
        .{ "valueListAttributes", Object, .{} },
        .{ "valueLists", Object, .{} },
        .{ "valueOfAttribute:forResultAtIndex:", ?Any, .{ objc.NSString, objc.NSInteger } },
    };

    pub fn send(self: NSMetadataQuery, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMetadataQuery", class_methods, selector, args);
    }
};

pub const NSMetadataQueryAttributeValueTuple = struct {
    obj: Object,

    pub const methods = .{
        .{ "attribute", objc.NSString, .{} },
        .{ "count", objc.NSInteger, .{} },
        .{ "value", ?Any, .{} },
    };

    pub fn send(self: NSMetadataQueryAttributeValueTuple, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMetadataQueryAttributeValueTuple", class_methods, selector, args);
    }
};

pub const NSMetadataQueryResultGroup = struct {
    obj: Object,

    pub const methods = .{
        .{ "attribute", objc.NSString, .{} },
        .{ "resultAtIndex:", Any, .{objc.NSInteger} },
        .{ "resultCount", objc.NSInteger, .{} },
        .{ "results", Object, .{} },
        .{ "subgroups", ?*anyopaque, .{} },
        .{ "value", Any, .{} },
    };

    pub fn send(self: NSMetadataQueryResultGroup, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMetadataQueryResultGroup", class_methods, selector, args);
    }
};

pub const NSMoveCommand = struct {
    obj: Object,

    pub const Super = NSScriptCommand;
    pub const methods = .{
        .{ "keySpecifier", NSScriptObjectSpecifier, .{} },
        .{ "setReceiversSpecifier:", void, .{?NSScriptObjectSpecifier} },
    };

    pub fn send(self: NSMoveCommand, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMoveCommand", class_methods, selector, args);
    }
};

pub const NSMutableArray = struct {
    obj: Object,

    pub const Super = NSArray;
    pub const methods = .{
        .{ "addObject:", void, .{Any} },
        .{ "addObjectsFromArray:", void, .{Object} },
        .{ "exchangeObjectAtIndex:withObjectAtIndex:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "filterUsingPredicate:", void, .{NSPredicate} },
        .{ "initWithCapacity:", NSMutableArray, .{objc.NSInteger} },
        .{ "initWithCoder:", NSMutableArray, .{NSCoder} },
        .{ "insertObject:atIndex:", void, .{ Any, objc.NSInteger } },
        .{ "insertObjects:atIndexes:", void, .{ Object, NSIndexSet } },
        .{ "removeAllObjects", void, .{} },
        .{ "removeLastObject", void, .{} },
        .{ "removeObject:", void, .{Any} },
        .{ "removeObject:inRange:", void, .{ Any, NSRange } },
        .{ "removeObjectAtIndex:", void, .{objc.NSInteger} },
        .{ "removeObjectIdenticalTo:", void, .{Any} },
        .{ "removeObjectIdenticalTo:inRange:", void, .{ Any, NSRange } },
        .{ "removeObjectsAtIndexes:", void, .{NSIndexSet} },
        .{ "removeObjectsInArray:", void, .{Object} },
        .{ "removeObjectsInRange:", void, .{NSRange} },
        .{ "replaceObjectAtIndex:withObject:", void, .{ objc.NSInteger, Any } },
        .{ "replaceObjectsAtIndexes:withObjects:", void, .{ NSIndexSet, Object } },
        .{ "replaceObjectsInRange:withObjectsFromArray:", void, .{ NSRange, Object } },
        .{ "replaceObjectsInRange:withObjectsFromArray:range:", void, .{ NSRange, Object, NSRange } },
        .{ "setArray:", void, .{Object} },
        .{ "sortUsingComparator:", void, .{?*anyopaque} },
        .{ "sortUsingDescriptors:", void, .{Object} },
        .{ "sortUsingFunction:context:", void, .{ ?*anyopaque, ?UnsafeMutableRawPointer } },
        .{ "sortUsingSelector:", void, .{Selector} },
        .{ "sortWithOptions:usingComparator:", void, .{ objc.NSInteger, ?*anyopaque } },
    };

    pub fn send(self: NSMutableArray, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "arrayWithContentsOfURL:", Object, .{NSURL} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMutableArray", class_methods, selector, args);
    }
};

pub const NSMutableAttributedString = struct {
    obj: Object,

    pub const Super = NSAttributedString;
    pub const methods = .{
        .{ "addAttribute:value:range:", void, .{ objc.NSString, Any, NSRange } },
        .{ "addAttributes:range:", void, .{ Object, NSRange } },
        .{ "appendAttributedString:", void, .{NSAttributedString} },
        .{ "beginEditing", void, .{} },
        .{ "deleteCharactersInRange:", void, .{NSRange} },
        .{ "endEditing", void, .{} },
        .{ "insertAttributedString:atIndex:", void, .{ NSAttributedString, objc.NSInteger } },
        .{ "mutableString", NSMutableString, .{} },
        .{ "removeAttribute:range:", void, .{ objc.NSString, NSRange } },
        .{ "replaceCharactersInRange:withAttributedString:", void, .{ NSRange, NSAttributedString } },
        .{ "replaceCharactersInRange:withString:", void, .{ NSRange, objc.NSString } },
        .{ "setAttributedString:", void, .{NSAttributedString} },
        .{ "setAttributes:range:", void, .{ ?*anyopaque, NSRange } },
    };

    pub fn send(self: NSMutableAttributedString, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMutableAttributedString", class_methods, selector, args);
    }
};

pub const NSMutableCharacterSet = struct {
    obj: Object,

    pub const Super = NSCharacterSet;
    pub const methods = .{
        .{ "addCharactersInRange:", void, .{NSRange} },
        .{ "addCharactersInString:", void, .{objc.NSString} },
        .{ "formIntersectionWithCharacterSet:", void, .{NSCharacterSet} },
        .{ "formUnionWithCharacterSet:", void, .{NSCharacterSet} },
        .{ "invert", void, .{} },
        .{ "removeCharactersInRange:", void, .{NSRange} },
        .{ "removeCharactersInString:", void, .{objc.NSString} },
    };

    pub fn send(self: NSMutableCharacterSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "alphanumericCharacterSet", NSMutableCharacterSet, .{} },
        .{ "capitalizedLetterCharacterSet", NSMutableCharacterSet, .{} },
        .{ "characterSetWithBitmapRepresentation:", Object, .{NSData} },
        .{ "characterSetWithCharactersInString:", Object, .{objc.NSString} },
        .{ "characterSetWithContentsOfFile:", Object, .{objc.NSString} },
        .{ "characterSetWithRange:", Object, .{NSRange} },
        .{ "controlCharacterSet", NSMutableCharacterSet, .{} },
        .{ "decimalDigitCharacterSet", NSMutableCharacterSet, .{} },
        .{ "decomposableCharacterSet", NSMutableCharacterSet, .{} },
        .{ "illegalCharacterSet", NSMutableCharacterSet, .{} },
        .{ "letterCharacterSet", NSMutableCharacterSet, .{} },
        .{ "lowercaseLetterCharacterSet", NSMutableCharacterSet, .{} },
        .{ "newlineCharacterSet", NSMutableCharacterSet, .{} },
        .{ "nonBaseCharacterSet", NSMutableCharacterSet, .{} },
        .{ "punctuationCharacterSet", NSMutableCharacterSet, .{} },
        .{ "symbolCharacterSet", NSMutableCharacterSet, .{} },
        .{ "uppercaseLetterCharacterSet", NSMutableCharacterSet, .{} },
        .{ "whitespaceAndNewlineCharacterSet", NSMutableCharacterSet, .{} },
        .{ "whitespaceCharacterSet", NSMutableCharacterSet, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMutableCharacterSet", class_methods, selector, args);
    }
};

pub const NSMutableData = struct {
    obj: Object,

    pub const Super = NSData;
    pub const methods = .{
        .{ "appendBytes:length:", void, .{ UnsafeRawPointer, objc.NSInteger } },
        .{ "appendData:", void, .{NSData} },
        .{ "compressUsingAlgorithm:error:", void, .{NSData.CompressionAlgorithm} },
        .{ "decompressUsingAlgorithm:error:", void, .{NSData.CompressionAlgorithm} },
        .{ "increaseLengthBy:", void, .{objc.NSInteger} },
        .{ "initWithCapacity:", NSMutableData, .{objc.NSInteger} },
        .{ "initWithLength:", NSMutableData, .{objc.NSInteger} },
        .{ "length", objc.NSInteger, .{} },
        .{ "mutableBytes", UnsafeMutableRawPointer, .{} },
        .{ "replaceBytesInRange:withBytes:", void, .{ NSRange, UnsafeRawPointer } },
        .{ "replaceBytesInRange:withBytes:length:", void, .{ NSRange, ?UnsafeRawPointer, objc.NSInteger } },
        .{ "resetBytesInRange:", void, .{NSRange} },
        .{ "setData:", void, .{NSData} },
        .{ "setLength:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSMutableData, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMutableData", class_methods, selector, args);
    }
};

pub const NSMutableDictionary = struct {
    obj: Object,

    pub const Super = NSDictionary;
    pub const methods = .{
        .{ "addEntriesFromDictionary:", void, .{Object} },
        .{ "initWithCapacity:", NSMutableDictionary, .{objc.NSInteger} },
        .{ "initWithCoder:", NSMutableDictionary, .{NSCoder} },
        .{ "removeAllObjects", void, .{} },
        .{ "removeObjectForKey:", void, .{Any} },
        .{ "removeObjectsForKeys:", void, .{Object} },
        .{ "setDictionary:", void, .{Object} },
        .{ "setObject:forKey:", void, .{ Any, NSCopying } },
        .{ "setValue:forKey:", void, .{ ?Any, objc.NSString } },
    };

    pub fn send(self: NSMutableDictionary, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dictionaryWithContentsOfURL:", Object, .{NSURL} },
        .{ "dictionaryWithSharedKeySet:", Object, .{Any} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMutableDictionary", class_methods, selector, args);
    }
};

pub const NSMutableIndexSet = struct {
    obj: Object,

    pub const Super = NSIndexSet;
    pub const methods = .{
        .{ "addIndex:", void, .{objc.NSInteger} },
        .{ "addIndexes:", void, .{NSIndexSet} },
        .{ "addIndexesInRange:", void, .{NSRange} },
        .{ "removeAllIndexes", void, .{} },
        .{ "removeIndex:", void, .{objc.NSInteger} },
        .{ "removeIndexes:", void, .{NSIndexSet} },
        .{ "removeIndexesInRange:", void, .{NSRange} },
        .{ "shiftIndexesStartingAtIndex:by:", void, .{ objc.NSInteger, objc.NSInteger } },
    };

    pub fn send(self: NSMutableIndexSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMutableIndexSet", class_methods, selector, args);
    }
};

pub const NSMutableOrderedSet = struct {
    obj: Object,

    pub const Super = NSOrderedSet;
    pub const methods = .{
        .{ "addObject:", void, .{Any} },
        .{ "addObjects:count:", void, .{ ?UnsafePointer, objc.NSInteger } },
        .{ "addObjectsFromArray:", void, .{Object} },
        .{ "exchangeObjectAtIndex:withObjectAtIndex:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "filterUsingPredicate:", void, .{NSPredicate} },
        .{ "initWithCapacity:", NSMutableOrderedSet, .{objc.NSInteger} },
        .{ "initWithCoder:", NSMutableOrderedSet, .{NSCoder} },
        .{ "insertObject:atIndex:", void, .{ Any, objc.NSInteger } },
        .{ "insertObjects:atIndexes:", void, .{ Object, NSIndexSet } },
        .{ "intersectOrderedSet:", void, .{NSOrderedSet} },
        .{ "intersectSet:", void, .{?*anyopaque} },
        .{ "minusOrderedSet:", void, .{NSOrderedSet} },
        .{ "minusSet:", void, .{?*anyopaque} },
        .{ "moveObjectsAtIndexes:toIndex:", void, .{ NSIndexSet, objc.NSInteger } },
        .{ "removeAllObjects", void, .{} },
        .{ "removeObject:", void, .{Any} },
        .{ "removeObjectAtIndex:", void, .{objc.NSInteger} },
        .{ "removeObjectsAtIndexes:", void, .{NSIndexSet} },
        .{ "removeObjectsInArray:", void, .{Object} },
        .{ "removeObjectsInRange:", void, .{NSRange} },
        .{ "replaceObjectAtIndex:withObject:", void, .{ objc.NSInteger, Any } },
        .{ "replaceObjectsAtIndexes:withObjects:", void, .{ NSIndexSet, Object } },
        .{ "replaceObjectsInRange:withObjects:count:", void, .{ NSRange, ?UnsafePointer, objc.NSInteger } },
        .{ "setObject:atIndex:", void, .{ Any, objc.NSInteger } },
        .{ "sortRange:options:usingComparator:", void, .{ NSRange, objc.NSInteger, ?*anyopaque } },
        .{ "sortUsingComparator:", void, .{?*anyopaque} },
        .{ "sortUsingDescriptors:", void, .{Object} },
        .{ "sortWithOptions:usingComparator:", void, .{ objc.NSInteger, ?*anyopaque } },
        .{ "unionOrderedSet:", void, .{NSOrderedSet} },
        .{ "unionSet:", void, .{?*anyopaque} },
    };

    pub fn send(self: NSMutableOrderedSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMutableOrderedSet", class_methods, selector, args);
    }
};

pub const NSMutableSet = struct {
    obj: Object,

    pub const Super = NSSet;
    pub const methods = .{
        .{ "addObject:", void, .{Any} },
        .{ "addObjectsFromArray:", void, .{Object} },
        .{ "filterUsingPredicate:", void, .{NSPredicate} },
        .{ "initWithCapacity:", NSMutableSet, .{objc.NSInteger} },
        .{ "initWithCoder:", NSMutableSet, .{NSCoder} },
        .{ "intersectSet:", void, .{?*anyopaque} },
        .{ "minusSet:", void, .{?*anyopaque} },
        .{ "removeAllObjects", void, .{} },
        .{ "removeObject:", void, .{Any} },
        .{ "setSet:", void, .{?*anyopaque} },
        .{ "unionSet:", void, .{?*anyopaque} },
    };

    pub fn send(self: NSMutableSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMutableSet", class_methods, selector, args);
    }
};

pub const NSMutableString = struct {
    obj: Object,

    pub const Super = NSString;
    pub const methods = .{
        .{ "appendString:", void, .{objc.NSString} },
        .{ "applyTransform:reverse:range:updatedRange:", objc.BOOL, .{ objc.NSString, objc.BOOL, NSRange, NSRange } },
        .{ "deleteCharactersInRange:", void, .{NSRange} },
        .{ "initWithCapacity:", NSMutableString, .{objc.NSInteger} },
        .{ "insertString:atIndex:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "replaceCharactersInRange:withString:", void, .{ NSRange, objc.NSString } },
        .{ "replaceOccurrencesOfString:withString:options:range:", objc.NSInteger, .{ objc.NSString, objc.NSString, objc.NSInteger, NSRange } },
        .{ "setString:", void, .{objc.NSString} },
    };

    pub fn send(self: NSMutableString, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMutableString", class_methods, selector, args);
    }
};

pub const NSMutableURLRequest = struct {
    obj: Object,

    pub const Super = NSURLRequest;
    pub const methods = .{
        .{ "HTTPBody", ?NSData, .{} },
        .{ "HTTPBodyStream", ?InputStream, .{} },
        .{ "HTTPMethod", objc.NSString, .{} },
        .{ "HTTPShouldHandleCookies", objc.BOOL, .{} },
        .{ "HTTPShouldUsePipelining", objc.BOOL, .{} },
        .{ "URL", ?NSURL, .{} },
        .{ "addValue:forHTTPHeaderField:", void, .{ objc.NSString, objc.NSString } },
        .{ "allHTTPHeaderFields", ?*anyopaque, .{} },
        .{ "allowsCellularAccess", objc.BOOL, .{} },
        .{ "allowsConstrainedNetworkAccess", objc.BOOL, .{} },
        .{ "allowsExpensiveNetworkAccess", objc.BOOL, .{} },
        .{ "allowsPersistentDNS", objc.BOOL, .{} },
        .{ "allowsUltraConstrainedNetworkAccess", objc.BOOL, .{} },
        .{ "assumesHTTP3Capable", objc.BOOL, .{} },
        .{ "attribution", NSURLRequest.Attribution, .{} },
        .{ "cachePolicy", NSURLRequest.CachePolicy, .{} },
        .{ "cookiePartitionIdentifier", ?objc.NSString, .{} },
        .{ "mainDocumentURL", ?NSURL, .{} },
        .{ "networkServiceType", NSURLRequest.NetworkServiceType, .{} },
        .{ "requiresDNSSECValidation", objc.BOOL, .{} },
        .{ "setAllHTTPHeaderFields:", void, .{?*anyopaque} },
        .{ "setAllowsCellularAccess:", void, .{objc.BOOL} },
        .{ "setAllowsConstrainedNetworkAccess:", void, .{objc.BOOL} },
        .{ "setAllowsExpensiveNetworkAccess:", void, .{objc.BOOL} },
        .{ "setAllowsPersistentDNS:", void, .{objc.BOOL} },
        .{ "setAllowsUltraConstrainedNetworkAccess:", void, .{objc.BOOL} },
        .{ "setAssumesHTTP3Capable:", void, .{objc.BOOL} },
        .{ "setAttribution:", void, .{NSURLRequest.Attribution} },
        .{ "setCachePolicy:", void, .{NSURLRequest.CachePolicy} },
        .{ "setCookiePartitionIdentifier:", void, .{?objc.NSString} },
        .{ "setHTTPBody:", void, .{?NSData} },
        .{ "setHTTPBodyStream:", void, .{?InputStream} },
        .{ "setHTTPMethod:", void, .{objc.NSString} },
        .{ "setHTTPShouldHandleCookies:", void, .{objc.BOOL} },
        .{ "setHTTPShouldUsePipelining:", void, .{objc.BOOL} },
        .{ "setMainDocumentURL:", void, .{?NSURL} },
        .{ "setNetworkServiceType:", void, .{NSURLRequest.NetworkServiceType} },
        .{ "setRequiresDNSSECValidation:", void, .{objc.BOOL} },
        .{ "setTimeoutInterval:", void, .{TimeInterval} },
        .{ "setURL:", void, .{?NSURL} },
        .{ "setValue:forHTTPHeaderField:", void, .{ ?objc.NSString, objc.NSString } },
        .{ "timeoutInterval", TimeInterval, .{} },
    };

    pub fn send(self: NSMutableURLRequest, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSMutableURLRequest", class_methods, selector, args);
    }
};

pub const NSNameSpecifier = struct {
    obj: Object,

    pub const Super = NSScriptObjectSpecifier;
    pub const methods = .{
        .{ "initWithCoder:", NSNameSpecifier, .{NSCoder} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:name:", NSNameSpecifier, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString, objc.NSString } },
        .{ "name", objc.NSString, .{} },
        .{ "setName:", void, .{objc.NSString} },
    };

    pub fn send(self: NSNameSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSNameSpecifier", class_methods, selector, args);
    }
};

pub const NetService = struct {
    obj: Object,

    pub const methods = .{
        .{ "TXTRecordData", ?NSData, .{} },
        .{ "addresses", ?*anyopaque, .{} },
        .{ "delegate", ?NetServiceDelegate, .{} },
        .{ "domain", objc.NSString, .{} },
        .{ "getInputStream:outputStream:", objc.BOOL, .{ ?InputStream, ?OutputStream } },
        .{ "hostName", ?objc.NSString, .{} },
        .{ "includesPeerToPeer", objc.BOOL, .{} },
        .{ "initWithDomain:type:name:", NetService, .{ objc.NSString, objc.NSString, objc.NSString } },
        .{ "initWithDomain:type:name:port:", NetService, .{ objc.NSString, objc.NSString, objc.NSString, i32 } },
        .{ "name", objc.NSString, .{} },
        .{ "port", objc.NSInteger, .{} },
        .{ "publish", void, .{} },
        .{ "publishWithOptions:", void, .{objc.NSInteger} },
        .{ "removeFromRunLoop:forMode:", void, .{ RunLoop, objc.NSString } },
        .{ "resolveWithTimeout:", void, .{TimeInterval} },
        .{ "scheduleInRunLoop:forMode:", void, .{ RunLoop, objc.NSString } },
        .{ "setDelegate:", void, .{?NetServiceDelegate} },
        .{ "setIncludesPeerToPeer:", void, .{objc.BOOL} },
        .{ "setTXTRecordData:", objc.BOOL, .{?NSData} },
        .{ "startMonitoring", void, .{} },
        .{ "stop", void, .{} },
        .{ "stopMonitoring", void, .{} },
        .{ "type", objc.NSString, .{} },
    };

    pub fn send(self: NetService, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dataFromTXTRecordDictionary:", NSData, .{Object} },
        .{ "dictionaryFromTXTRecordData:", Object, .{NSData} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSNetService", class_methods, selector, args);
    }

    pub const ErrorCode = enum(i64) {
        missingRequiredConfigurationError = -72008,
        timeoutError = -72007,
        invalidError = -72006,
        cancelledError = -72005,
        badArgumentError = -72004,
        activityInProgress = -72003,
        notFoundError = -72002,
        collisionError = -72001,
        unknownError = -72000,
    };
};

pub const NetServiceBrowser = struct {
    obj: Object,

    pub const methods = .{
        .{ "delegate", ?NetServiceBrowserDelegate, .{} },
        .{ "includesPeerToPeer", objc.BOOL, .{} },
        .{ "removeFromRunLoop:forMode:", void, .{ RunLoop, objc.NSString } },
        .{ "scheduleInRunLoop:forMode:", void, .{ RunLoop, objc.NSString } },
        .{ "searchForBrowsableDomains", void, .{} },
        .{ "searchForRegistrationDomains", void, .{} },
        .{ "searchForServicesOfType:inDomain:", void, .{ objc.NSString, objc.NSString } },
        .{ "setDelegate:", void, .{?NetServiceBrowserDelegate} },
        .{ "setIncludesPeerToPeer:", void, .{objc.BOOL} },
        .{ "stop", void, .{} },
    };

    pub fn send(self: NetServiceBrowser, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSNetServiceBrowser", class_methods, selector, args);
    }
};

pub const NSNotification = struct {
    obj: Object,

    pub const methods = .{
        .{ "initWithCoder:", NSNotification, .{NSCoder} },
        .{ "initWithName:object:userInfo:", NSNotification, .{ objc.NSString, ?Any, ?*anyopaque } },
        .{ "name", objc.NSString, .{} },
        .{ "object", ?Any, .{} },
        .{ "userInfo", ?*anyopaque, .{} },
    };

    pub fn send(self: NSNotification, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "notificationWithName:object:", Object, .{ objc.NSString, ?Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSNotification", class_methods, selector, args);
    }
};

pub const NotificationCenter = struct {
    obj: Object,

    pub const methods = .{
        .{ "addObserver:selector:name:object:", void, .{ Any, Selector, objc.NSString, ?Any } },
        .{ "addObserverForName:object:queue:usingBlock:", NSObjectProtocol, .{ objc.NSString, ?Any, ?OperationQueue, ?*anyopaque } },
        .{ "postNotification:", void, .{NSNotification} },
        .{ "postNotificationName:object:", void, .{ objc.NSString, ?Any } },
        .{ "postNotificationName:object:userInfo:", void, .{ objc.NSString, ?Any, ?*anyopaque } },
        .{ "removeObserver:", void, .{Any} },
        .{ "removeObserver:name:object:", void, .{ Any, objc.NSString, ?Any } },
    };

    pub fn send(self: NotificationCenter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultCenter", NotificationCenter, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSNotificationCenter", class_methods, selector, args);
    }
};

pub const NotificationQueue = struct {
    obj: Object,

    pub const methods = .{
        .{ "dequeueNotificationsMatching:coalesceMask:", void, .{ NSNotification, objc.NSInteger } },
        .{ "enqueueNotification:postingStyle:", void, .{ NSNotification, NotificationQueue.PostingStyle } },
        .{ "enqueueNotification:postingStyle:coalesceMask:forModes:", void, .{ NSNotification, NotificationQueue.PostingStyle, objc.NSInteger, ?*anyopaque } },
        .{ "initWithNotificationCenter:", NotificationQueue, .{NotificationCenter} },
    };

    pub fn send(self: NotificationQueue, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultQueue", NotificationQueue, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSNotificationQueue", class_methods, selector, args);
    }

    pub const PostingStyle = enum(i64) {
        whenIdle = 1,
        asap = 2,
        now = 3,
    };
};

pub const NSNumber = struct {
    obj: Object,

    pub const Super = NSValue;
    pub const methods = .{
        .{ "boolValue", objc.BOOL, .{} },
        .{ "charValue", ?*anyopaque, .{} },
        .{ "compare:", ComparisonResult, .{NSNumber} },
        .{ "decimalValue", ?*anyopaque, .{} },
        .{ "descriptionWithLocale:", objc.NSString, .{?Any} },
        .{ "doubleValue", f64, .{} },
        .{ "floatValue", f32, .{} },
        .{ "initWithBool:", NSNumber, .{objc.BOOL} },
        .{ "initWithChar:", NSNumber, .{?*anyopaque} },
        .{ "initWithCoder:", NSNumber, .{NSCoder} },
        .{ "initWithDouble:", NSNumber, .{f64} },
        .{ "initWithFloat:", NSNumber, .{f32} },
        .{ "initWithInt:", NSNumber, .{i32} },
        .{ "initWithInteger:", NSNumber, .{objc.NSInteger} },
        .{ "initWithLongLong:", NSNumber, .{i64} },
        .{ "initWithShort:", NSNumber, .{i16} },
        .{ "initWithUnsignedChar:", NSNumber, .{u8} },
        .{ "initWithUnsignedInt:", NSNumber, .{u32} },
        .{ "initWithUnsignedInteger:", NSNumber, .{c_ulong} },
        .{ "initWithUnsignedLongLong:", NSNumber, .{u64} },
        .{ "initWithUnsignedShort:", NSNumber, .{u16} },
        .{ "intValue", i32, .{} },
        .{ "integerValue", objc.NSInteger, .{} },
        .{ "isEqualToNumber:", objc.BOOL, .{NSNumber} },
        .{ "longLongValue", i64, .{} },
        .{ "shortValue", i16, .{} },
        .{ "stringValue", objc.NSString, .{} },
        .{ "unsignedCharValue", u8, .{} },
        .{ "unsignedIntValue", u32, .{} },
        .{ "unsignedIntegerValue", c_ulong, .{} },
        .{ "unsignedLongLongValue", u64, .{} },
        .{ "unsignedShortValue", u16, .{} },
    };

    pub fn send(self: NSNumber, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSNumber", class_methods, selector, args);
    }
};

pub const NumberFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "allowsFloats", objc.BOOL, .{} },
        .{ "alwaysShowsDecimalSeparator", objc.BOOL, .{} },
        .{ "attributedStringForNil", NSAttributedString, .{} },
        .{ "attributedStringForNotANumber", NSAttributedString, .{} },
        .{ "attributedStringForZero", NSAttributedString, .{} },
        .{ "currencyCode", objc.NSString, .{} },
        .{ "currencyDecimalSeparator", objc.NSString, .{} },
        .{ "currencyGroupingSeparator", objc.NSString, .{} },
        .{ "currencySymbol", objc.NSString, .{} },
        .{ "decimalSeparator", objc.NSString, .{} },
        .{ "exponentSymbol", objc.NSString, .{} },
        .{ "format", objc.NSString, .{} },
        .{ "formatWidth", objc.NSInteger, .{} },
        .{ "formatterBehavior", NumberFormatter.Behavior, .{} },
        .{ "formattingContext", Formatter.Context, .{} },
        .{ "generatesDecimalNumbers", objc.BOOL, .{} },
        .{ "getObjectValue:forString:range:error:", void, .{ ?*anyopaque, objc.NSString, NSRange } },
        .{ "groupingSeparator", objc.NSString, .{} },
        .{ "groupingSize", objc.NSInteger, .{} },
        .{ "hasThousandSeparators", objc.BOOL, .{} },
        .{ "internationalCurrencySymbol", objc.NSString, .{} },
        .{ "lenient", objc.BOOL, .{} },
        .{ "locale", NSLocale, .{} },
        .{ "localizesFormat", objc.BOOL, .{} },
        .{ "maximum", ?NSNumber, .{} },
        .{ "maximumFractionDigits", objc.NSInteger, .{} },
        .{ "maximumIntegerDigits", objc.NSInteger, .{} },
        .{ "maximumSignificantDigits", objc.NSInteger, .{} },
        .{ "minimum", ?NSNumber, .{} },
        .{ "minimumFractionDigits", objc.NSInteger, .{} },
        .{ "minimumGroupingDigits", objc.NSInteger, .{} },
        .{ "minimumIntegerDigits", objc.NSInteger, .{} },
        .{ "minimumSignificantDigits", objc.NSInteger, .{} },
        .{ "minusSign", objc.NSString, .{} },
        .{ "multiplier", ?NSNumber, .{} },
        .{ "negativeFormat", objc.NSString, .{} },
        .{ "negativeInfinitySymbol", objc.NSString, .{} },
        .{ "negativePrefix", objc.NSString, .{} },
        .{ "negativeSuffix", objc.NSString, .{} },
        .{ "nilSymbol", objc.NSString, .{} },
        .{ "notANumberSymbol", objc.NSString, .{} },
        .{ "numberFromString:", ?NSNumber, .{objc.NSString} },
        .{ "numberStyle", NumberFormatter.Style, .{} },
        .{ "paddingCharacter", objc.NSString, .{} },
        .{ "paddingPosition", NumberFormatter.PadPosition, .{} },
        .{ "partialStringValidationEnabled", objc.BOOL, .{} },
        .{ "perMillSymbol", objc.NSString, .{} },
        .{ "percentSymbol", objc.NSString, .{} },
        .{ "plusSign", objc.NSString, .{} },
        .{ "positiveFormat", objc.NSString, .{} },
        .{ "positiveInfinitySymbol", objc.NSString, .{} },
        .{ "positivePrefix", objc.NSString, .{} },
        .{ "positiveSuffix", objc.NSString, .{} },
        .{ "roundingBehavior", NSDecimalNumberHandler, .{} },
        .{ "roundingIncrement", NSNumber, .{} },
        .{ "roundingMode", NumberFormatter.RoundingMode, .{} },
        .{ "secondaryGroupingSize", objc.NSInteger, .{} },
        .{ "setAllowsFloats:", void, .{objc.BOOL} },
        .{ "setAlwaysShowsDecimalSeparator:", void, .{objc.BOOL} },
        .{ "setAttributedStringForNil:", void, .{NSAttributedString} },
        .{ "setAttributedStringForNotANumber:", void, .{NSAttributedString} },
        .{ "setAttributedStringForZero:", void, .{NSAttributedString} },
        .{ "setCurrencyCode:", void, .{objc.NSString} },
        .{ "setCurrencyDecimalSeparator:", void, .{objc.NSString} },
        .{ "setCurrencyGroupingSeparator:", void, .{objc.NSString} },
        .{ "setCurrencySymbol:", void, .{objc.NSString} },
        .{ "setDecimalSeparator:", void, .{objc.NSString} },
        .{ "setExponentSymbol:", void, .{objc.NSString} },
        .{ "setFormat:", void, .{objc.NSString} },
        .{ "setFormatWidth:", void, .{objc.NSInteger} },
        .{ "setFormatterBehavior:", void, .{NumberFormatter.Behavior} },
        .{ "setFormattingContext:", void, .{Formatter.Context} },
        .{ "setGeneratesDecimalNumbers:", void, .{objc.BOOL} },
        .{ "setGroupingSeparator:", void, .{objc.NSString} },
        .{ "setGroupingSize:", void, .{objc.NSInteger} },
        .{ "setHasThousandSeparators:", void, .{objc.BOOL} },
        .{ "setInternationalCurrencySymbol:", void, .{objc.NSString} },
        .{ "setLenient:", void, .{objc.BOOL} },
        .{ "setLocale:", void, .{NSLocale} },
        .{ "setLocalizesFormat:", void, .{objc.BOOL} },
        .{ "setMaximum:", void, .{?NSNumber} },
        .{ "setMaximumFractionDigits:", void, .{objc.NSInteger} },
        .{ "setMaximumIntegerDigits:", void, .{objc.NSInteger} },
        .{ "setMaximumSignificantDigits:", void, .{objc.NSInteger} },
        .{ "setMinimum:", void, .{?NSNumber} },
        .{ "setMinimumFractionDigits:", void, .{objc.NSInteger} },
        .{ "setMinimumGroupingDigits:", void, .{objc.NSInteger} },
        .{ "setMinimumIntegerDigits:", void, .{objc.NSInteger} },
        .{ "setMinimumSignificantDigits:", void, .{objc.NSInteger} },
        .{ "setMinusSign:", void, .{objc.NSString} },
        .{ "setMultiplier:", void, .{?NSNumber} },
        .{ "setNegativeFormat:", void, .{objc.NSString} },
        .{ "setNegativeInfinitySymbol:", void, .{objc.NSString} },
        .{ "setNegativePrefix:", void, .{objc.NSString} },
        .{ "setNegativeSuffix:", void, .{objc.NSString} },
        .{ "setNilSymbol:", void, .{objc.NSString} },
        .{ "setNotANumberSymbol:", void, .{objc.NSString} },
        .{ "setNumberStyle:", void, .{NumberFormatter.Style} },
        .{ "setPaddingCharacter:", void, .{objc.NSString} },
        .{ "setPaddingPosition:", void, .{NumberFormatter.PadPosition} },
        .{ "setPartialStringValidationEnabled:", void, .{objc.BOOL} },
        .{ "setPerMillSymbol:", void, .{objc.NSString} },
        .{ "setPercentSymbol:", void, .{objc.NSString} },
        .{ "setPlusSign:", void, .{objc.NSString} },
        .{ "setPositiveFormat:", void, .{objc.NSString} },
        .{ "setPositiveInfinitySymbol:", void, .{objc.NSString} },
        .{ "setPositivePrefix:", void, .{objc.NSString} },
        .{ "setPositiveSuffix:", void, .{objc.NSString} },
        .{ "setRoundingBehavior:", void, .{NSDecimalNumberHandler} },
        .{ "setRoundingIncrement:", void, .{NSNumber} },
        .{ "setRoundingMode:", void, .{NumberFormatter.RoundingMode} },
        .{ "setSecondaryGroupingSize:", void, .{objc.NSInteger} },
        .{ "setTextAttributesForNegativeInfinity:", void, .{?*anyopaque} },
        .{ "setTextAttributesForNegativeValues:", void, .{?*anyopaque} },
        .{ "setTextAttributesForNil:", void, .{?*anyopaque} },
        .{ "setTextAttributesForNotANumber:", void, .{?*anyopaque} },
        .{ "setTextAttributesForPositiveInfinity:", void, .{?*anyopaque} },
        .{ "setTextAttributesForPositiveValues:", void, .{?*anyopaque} },
        .{ "setTextAttributesForZero:", void, .{?*anyopaque} },
        .{ "setThousandSeparator:", void, .{objc.NSString} },
        .{ "setUsesGroupingSeparator:", void, .{objc.BOOL} },
        .{ "setUsesSignificantDigits:", void, .{objc.BOOL} },
        .{ "setZeroSymbol:", void, .{?objc.NSString} },
        .{ "stringFromNumber:", ?objc.NSString, .{NSNumber} },
        .{ "textAttributesForNegativeInfinity", ?*anyopaque, .{} },
        .{ "textAttributesForNegativeValues", ?*anyopaque, .{} },
        .{ "textAttributesForNil", ?*anyopaque, .{} },
        .{ "textAttributesForNotANumber", ?*anyopaque, .{} },
        .{ "textAttributesForPositiveInfinity", ?*anyopaque, .{} },
        .{ "textAttributesForPositiveValues", ?*anyopaque, .{} },
        .{ "textAttributesForZero", ?*anyopaque, .{} },
        .{ "thousandSeparator", objc.NSString, .{} },
        .{ "usesGroupingSeparator", objc.BOOL, .{} },
        .{ "usesSignificantDigits", objc.BOOL, .{} },
        .{ "zeroSymbol", ?objc.NSString, .{} },
    };

    pub fn send(self: NumberFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultFormatterBehavior", NumberFormatter.Behavior, .{} },
        .{ "localizedStringFromNumber:numberStyle:", objc.NSString, .{ NSNumber, NumberFormatter.Style } },
        .{ "setDefaultFormatterBehavior:", void, .{NumberFormatter.Behavior} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSNumberFormatter", class_methods, selector, args);
    }

    pub const Behavior = enum(i64) {
        default = 0,
        behavior10_0 = 1000,
        behavior10_4 = 1040,
    };
    pub const PadPosition = enum(i64) {
        beforePrefix = 0,
        afterPrefix = 1,
        beforeSuffix = 2,
        afterSuffix = 3,
    };
    pub const RoundingMode = enum(i64) {
        ceiling = 0,
        floor = 1,
        down = 2,
        up = 3,
        halfEven = 4,
        halfDown = 5,
        halfUp = 6,
    };
    pub const Style = enum(i64) {
        none = 0,
        decimal = 1,
        currency = 2,
        percent = 3,
        scientific = 4,
        spellOut = 5,
        ordinal = 6,
        currencyISOCode = 8,
        currencyPlural = 9,
        currencyAccounting = 10,
    };
};

pub const Operation = struct {
    obj: Object,

    pub const methods = .{
        .{ "addDependency:", void, .{Operation} },
        .{ "asynchronous", objc.BOOL, .{} },
        .{ "cancel", void, .{} },
        .{ "cancelled", objc.BOOL, .{} },
        .{ "completionBlock", void, .{} },
        .{ "concurrent", objc.BOOL, .{} },
        .{ "dependencies", Object, .{} },
        .{ "executing", objc.BOOL, .{} },
        .{ "finished", objc.BOOL, .{} },
        .{ "main", void, .{} },
        .{ "name", ?objc.NSString, .{} },
        .{ "qualityOfService", QualityOfService, .{} },
        .{ "queuePriority", Operation.QueuePriority, .{} },
        .{ "ready", objc.BOOL, .{} },
        .{ "removeDependency:", void, .{Operation} },
        .{ "setCompletionBlock:", void, .{void} },
        .{ "setName:", void, .{?objc.NSString} },
        .{ "setQualityOfService:", void, .{QualityOfService} },
        .{ "setQueuePriority:", void, .{Operation.QueuePriority} },
        .{ "setThreadPriority:", void, .{f64} },
        .{ "start", void, .{} },
        .{ "threadPriority", f64, .{} },
        .{ "waitUntilFinished", void, .{} },
    };

    pub fn send(self: Operation, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSOperation", class_methods, selector, args);
    }

    pub const QueuePriority = enum(i64) {
        veryLow = -8,
        low = -4,
        normal = 0,
        high = 4,
        veryHigh = 8,
    };
};

pub const OperationQueue = struct {
    obj: Object,

    pub const methods = .{
        .{ "addBarrierBlock:", void, .{?*anyopaque} },
        .{ "addOperation:", void, .{Operation} },
        .{ "addOperationWithBlock:", void, .{?*anyopaque} },
        .{ "addOperations:waitUntilFinished:", void, .{ Object, objc.BOOL } },
        .{ "cancelAllOperations", void, .{} },
        .{ "maxConcurrentOperationCount", objc.NSInteger, .{} },
        .{ "name", ?objc.NSString, .{} },
        .{ "operationCount", objc.NSInteger, .{} },
        .{ "operations", Object, .{} },
        .{ "progress", Progress, .{} },
        .{ "qualityOfService", QualityOfService, .{} },
        .{ "setMaxConcurrentOperationCount:", void, .{objc.NSInteger} },
        .{ "setName:", void, .{?objc.NSString} },
        .{ "setQualityOfService:", void, .{QualityOfService} },
        .{ "setSuspended:", void, .{objc.BOOL} },
        .{ "setUnderlyingQueue:", void, .{?*anyopaque} },
        .{ "suspended", objc.BOOL, .{} },
        .{ "underlyingQueue", ?*anyopaque, .{} },
        .{ "waitUntilAllOperationsAreFinished", void, .{} },
    };

    pub fn send(self: OperationQueue, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentQueue", ?OperationQueue, .{} },
        .{ "mainQueue", OperationQueue, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSOperationQueue", class_methods, selector, args);
    }
};

pub const NSOrderedCollectionChange = struct {
    obj: Object,

    pub const methods = .{
        .{ "associatedIndex", objc.NSInteger, .{} },
        .{ "changeType", NSCollectionChangeType, .{} },
        .{ "index", objc.NSInteger, .{} },
        .{ "initWithObject:type:index:", NSOrderedCollectionChange, .{ ?Any, NSCollectionChangeType, objc.NSInteger } },
        .{ "initWithObject:type:index:associatedIndex:", NSOrderedCollectionChange, .{ ?Any, NSCollectionChangeType, objc.NSInteger, objc.NSInteger } },
        .{ "object", ?Any, .{} },
    };

    pub fn send(self: NSOrderedCollectionChange, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSOrderedCollectionChange", class_methods, selector, args);
    }
};

pub const NSOrderedCollectionDifference = struct {
    obj: Object,

    pub const methods = .{
        .{ "differenceByTransformingChangesWithBlock:", Any, .{?*anyopaque} },
        .{ "hasChanges", objc.BOOL, .{} },
        .{ "initWithChanges:", NSOrderedCollectionDifference, .{Object} },
        .{ "initWithInsertIndexes:insertedObjects:removeIndexes:removedObjects:", NSOrderedCollectionDifference, .{ NSIndexSet, ?*anyopaque, NSIndexSet, ?*anyopaque } },
        .{ "initWithInsertIndexes:insertedObjects:removeIndexes:removedObjects:additionalChanges:", NSOrderedCollectionDifference, .{ NSIndexSet, ?*anyopaque, NSIndexSet, ?*anyopaque, Object } },
        .{ "insertions", Object, .{} },
        .{ "inverseDifference", ?*anyopaque, .{} },
        .{ "removals", Object, .{} },
    };

    pub fn send(self: NSOrderedCollectionDifference, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSOrderedCollectionDifference", class_methods, selector, args);
    }
};

pub const NSOrderedSet = struct {
    obj: Object,

    pub const methods = .{
        .{ "addObserver:forKeyPath:options:context:", void, .{ Object, objc.NSString, objc.NSInteger, ?UnsafeMutableRawPointer } },
        .{ "array", Object, .{} },
        .{ "containsObject:", objc.BOOL, .{Any} },
        .{ "count", objc.NSInteger, .{} },
        .{ "description", objc.NSString, .{} },
        .{ "descriptionWithLocale:", objc.NSString, .{?Any} },
        .{ "descriptionWithLocale:indent:", objc.NSString, .{ ?Any, objc.NSInteger } },
        .{ "enumerateObjectsAtIndexes:options:usingBlock:", void, .{ NSIndexSet, objc.NSInteger, ?*anyopaque } },
        .{ "enumerateObjectsUsingBlock:", void, .{?*anyopaque} },
        .{ "enumerateObjectsWithOptions:usingBlock:", void, .{ objc.NSInteger, ?*anyopaque } },
        .{ "filteredOrderedSetUsingPredicate:", NSOrderedSet, .{NSPredicate} },
        .{ "firstObject", ?Any, .{} },
        .{ "indexOfObject:", objc.NSInteger, .{Any} },
        .{ "indexOfObject:inSortedRange:options:usingComparator:", objc.NSInteger, .{ Any, NSRange, objc.NSInteger, ?*anyopaque } },
        .{ "indexOfObjectAtIndexes:options:passingTest:", objc.NSInteger, .{ NSIndexSet, objc.NSInteger, ?*anyopaque } },
        .{ "indexOfObjectPassingTest:", objc.NSInteger, .{?*anyopaque} },
        .{ "indexOfObjectWithOptions:passingTest:", objc.NSInteger, .{ objc.NSInteger, ?*anyopaque } },
        .{ "indexesOfObjectsAtIndexes:options:passingTest:", NSIndexSet, .{ NSIndexSet, objc.NSInteger, ?*anyopaque } },
        .{ "indexesOfObjectsPassingTest:", NSIndexSet, .{?*anyopaque} },
        .{ "indexesOfObjectsWithOptions:passingTest:", NSIndexSet, .{ objc.NSInteger, ?*anyopaque } },
        .{ "initWithArray:", NSOrderedSet, .{Object} },
        .{ "initWithArray:copyItems:", NSOrderedSet, .{ Object, objc.BOOL } },
        .{ "initWithArray:range:copyItems:", NSOrderedSet, .{ Object, NSRange, objc.BOOL } },
        .{ "initWithCoder:", NSOrderedSet, .{NSCoder} },
        .{ "initWithObject:", NSOrderedSet, .{Any} },
        .{ "initWithObjects:count:", NSOrderedSet, .{ ?UnsafePointer, objc.NSInteger } },
        .{ "initWithOrderedSet:", NSOrderedSet, .{NSOrderedSet} },
        .{ "initWithOrderedSet:copyItems:", NSOrderedSet, .{ NSOrderedSet, objc.BOOL } },
        .{ "initWithOrderedSet:range:copyItems:", NSOrderedSet, .{ NSOrderedSet, NSRange, objc.BOOL } },
        .{ "initWithSet:", NSOrderedSet, .{?*anyopaque} },
        .{ "initWithSet:copyItems:", NSOrderedSet, .{ ?*anyopaque, objc.BOOL } },
        .{ "intersectsOrderedSet:", objc.BOOL, .{NSOrderedSet} },
        .{ "intersectsSet:", objc.BOOL, .{?*anyopaque} },
        .{ "isEqualToOrderedSet:", objc.BOOL, .{NSOrderedSet} },
        .{ "isSubsetOfOrderedSet:", objc.BOOL, .{NSOrderedSet} },
        .{ "isSubsetOfSet:", objc.BOOL, .{?*anyopaque} },
        .{ "lastObject", ?Any, .{} },
        .{ "objectAtIndex:", Any, .{objc.NSInteger} },
        .{ "objectEnumerator", NSEnumerator, .{} },
        .{ "objectsAtIndexes:", Object, .{NSIndexSet} },
        .{ "removeObserver:forKeyPath:", void, .{ Object, objc.NSString } },
        .{ "removeObserver:forKeyPath:context:", void, .{ Object, objc.NSString, ?UnsafeMutableRawPointer } },
        .{ "reverseObjectEnumerator", NSEnumerator, .{} },
        .{ "reversedOrderedSet", NSOrderedSet, .{} },
        .{ "set", ?*anyopaque, .{} },
        .{ "setSet:", void, .{?*anyopaque} },
        .{ "setValue:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "sortedArrayUsingComparator:", Object, .{?*anyopaque} },
        .{ "sortedArrayUsingDescriptors:", Object, .{Object} },
        .{ "sortedArrayWithOptions:usingComparator:", Object, .{ objc.NSInteger, ?*anyopaque } },
        .{ "valueForKey:", Any, .{objc.NSString} },
    };

    pub fn send(self: NSOrderedSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "orderedSetWithObjects:count:", Object, .{ UnsafePointer, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSOrderedSet", class_methods, selector, args);
    }
};

pub const NSOrthography = struct {
    obj: Object,

    pub const methods = .{
        .{ "allLanguages", Object, .{} },
        .{ "allScripts", Object, .{} },
        .{ "dominantLanguage", objc.NSString, .{} },
        .{ "dominantLanguageForScript:", ?objc.NSString, .{objc.NSString} },
        .{ "dominantScript", objc.NSString, .{} },
        .{ "initWithCoder:", NSOrthography, .{NSCoder} },
        .{ "initWithDominantScript:languageMap:", NSOrthography, .{ objc.NSString, Object } },
        .{ "languageMap", Object, .{} },
        .{ "languagesForScript:", ?*anyopaque, .{objc.NSString} },
    };

    pub fn send(self: NSOrthography, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultOrthographyForLanguage:", ?*anyopaque, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSOrthography", class_methods, selector, args);
    }
};

pub const OutputStream = struct {
    obj: Object,

    pub const Super = Stream;
    pub const methods = .{
        .{ "hasSpaceAvailable", objc.BOOL, .{} },
        .{ "initToBuffer:capacity:", OutputStream, .{ u8, objc.NSInteger } },
        .{ "initToFileAtPath:append:", OutputStream, .{ objc.NSString, objc.BOOL } },
        .{ "initToMemory", OutputStream, .{void} },
        .{ "initWithURL:append:", OutputStream, .{ NSURL, objc.BOOL } },
        .{ "write:maxLength:", objc.NSInteger, .{ u8, objc.NSInteger } },
    };

    pub fn send(self: OutputStream, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "outputStreamToMemory", ?*anyopaque, .{} },
        .{ "outputStreamWithURL:append:", Object, .{ NSURL, objc.BOOL } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSOutputStream", class_methods, selector, args);
    }
};

pub const NSPersonNameComponents = struct {
    obj: Object,

    pub const methods = .{
        .{ "familyName", ?objc.NSString, .{} },
        .{ "givenName", ?objc.NSString, .{} },
        .{ "middleName", ?objc.NSString, .{} },
        .{ "namePrefix", ?objc.NSString, .{} },
        .{ "nameSuffix", ?objc.NSString, .{} },
        .{ "nickname", ?objc.NSString, .{} },
        .{ "phoneticRepresentation", ?NSPersonNameComponents, .{} },
        .{ "setFamilyName:", void, .{?objc.NSString} },
        .{ "setGivenName:", void, .{?objc.NSString} },
        .{ "setMiddleName:", void, .{?objc.NSString} },
        .{ "setNamePrefix:", void, .{?objc.NSString} },
        .{ "setNameSuffix:", void, .{?objc.NSString} },
        .{ "setNickname:", void, .{?objc.NSString} },
        .{ "setPhoneticRepresentation:", void, .{?NSPersonNameComponents} },
    };

    pub fn send(self: NSPersonNameComponents, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSPersonNameComponents", class_methods, selector, args);
    }
};

pub const PersonNameComponentsFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "annotatedStringFromPersonNameComponents:", NSAttributedString, .{NSPersonNameComponents} },
        .{ "getObjectValue:forString:errorDescription:", objc.BOOL, .{ ?*anyopaque, objc.NSString, ?objc.NSString } },
        .{ "locale", NSLocale, .{} },
        .{ "personNameComponentsFromString:", ?NSPersonNameComponents, .{objc.NSString} },
        .{ "phonetic", objc.BOOL, .{} },
        .{ "setLocale:", void, .{NSLocale} },
        .{ "setPhonetic:", void, .{objc.BOOL} },
        .{ "setStyle:", void, .{PersonNameComponentsFormatter.Style} },
        .{ "stringFromPersonNameComponents:", objc.NSString, .{NSPersonNameComponents} },
        .{ "style", PersonNameComponentsFormatter.Style, .{} },
    };

    pub fn send(self: PersonNameComponentsFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "localizedStringFromPersonNameComponents:style:options:", objc.NSString, .{ NSPersonNameComponents, PersonNameComponentsFormatter.Style, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSPersonNameComponentsFormatter", class_methods, selector, args);
    }

    pub const Style = enum(i64) {
        default = 0,
        short = 1,
        medium = 2,
        long = 3,
        abbreviated = 4,
    };
};

pub const Pipe = struct {
    obj: Object,

    pub const methods = .{
        .{ "fileHandleForReading", FileHandle, .{} },
        .{ "fileHandleForWriting", FileHandle, .{} },
    };

    pub fn send(self: Pipe, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSPipe", class_methods, selector, args);
    }
};

pub const NSPointerArray = struct {
    obj: Object,

    pub const methods = .{
        .{ "addPointer:", void, .{?UnsafeMutableRawPointer} },
        .{ "allObjects", Object, .{} },
        .{ "compact", void, .{} },
        .{ "count", objc.NSInteger, .{} },
        .{ "initWithOptions:", NSPointerArray, .{objc.NSInteger} },
        .{ "initWithPointerFunctions:", NSPointerArray, .{NSPointerFunctions} },
        .{ "insertPointer:atIndex:", void, .{ ?UnsafeMutableRawPointer, objc.NSInteger } },
        .{ "pointerAtIndex:", ?UnsafeMutableRawPointer, .{objc.NSInteger} },
        .{ "pointerFunctions", NSPointerFunctions, .{} },
        .{ "removePointerAtIndex:", void, .{objc.NSInteger} },
        .{ "replacePointerAtIndex:withPointer:", void, .{ objc.NSInteger, ?UnsafeMutableRawPointer } },
        .{ "setCount:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSPointerArray, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "strongObjectsPointerArray", NSPointerArray, .{} },
        .{ "weakObjectsPointerArray", NSPointerArray, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSPointerArray", class_methods, selector, args);
    }
};

pub const NSPointerFunctions = struct {
    obj: Object,

    pub const methods = .{
        .{ "acquireFunction", ?UnsafeMutableRawPointer, .{} },
        .{ "descriptionFunction", ?objc.NSString, .{} },
        .{ "hashFunction", objc.NSInteger, .{} },
        .{ "initWithOptions:", NSPointerFunctions, .{objc.NSInteger} },
        .{ "isEqualFunction", ?*anyopaque, .{} },
        .{ "relinquishFunction", void, .{} },
        .{ "setAcquireFunction:", void, .{?UnsafeMutableRawPointer} },
        .{ "setDescriptionFunction:", void, .{?objc.NSString} },
        .{ "setHashFunction:", void, .{objc.NSInteger} },
        .{ "setIsEqualFunction:", void, .{?*anyopaque} },
        .{ "setRelinquishFunction:", void, .{void} },
        .{ "setSizeFunction:", void, .{objc.NSInteger} },
        .{ "setUsesStrongWriteBarrier:", void, .{objc.BOOL} },
        .{ "setUsesWeakReadAndWriteBarriers:", void, .{objc.BOOL} },
        .{ "sizeFunction", objc.NSInteger, .{} },
        .{ "usesStrongWriteBarrier", objc.BOOL, .{} },
        .{ "usesWeakReadAndWriteBarriers", objc.BOOL, .{} },
    };

    pub fn send(self: NSPointerFunctions, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSPointerFunctions", class_methods, selector, args);
    }
};

pub const Port = struct {
    obj: Object,

    pub const methods = .{
        .{ "delegate", ?PortDelegate, .{} },
        .{ "invalidate", void, .{} },
        .{ "removeFromRunLoop:forMode:", void, .{ RunLoop, objc.NSString } },
        .{ "reservedSpaceLength", objc.NSInteger, .{} },
        .{ "scheduleInRunLoop:forMode:", void, .{ RunLoop, objc.NSString } },
        .{ "sendBeforeDate:components:from:reserved:", objc.BOOL, .{ NSDate, ?NSMutableArray, ?Port, objc.NSInteger } },
        .{ "sendBeforeDate:msgid:components:from:reserved:", objc.BOOL, .{ NSDate, objc.NSInteger, ?NSMutableArray, ?Port, objc.NSInteger } },
        .{ "setDelegate:", void, .{?PortDelegate} },
        .{ "valid", objc.BOOL, .{} },
    };

    pub fn send(self: Port, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSPort", class_methods, selector, args);
    }
};

pub const PortMessage = struct {
    obj: Object,

    pub const methods = .{
        .{ "components", ?*anyopaque, .{} },
        .{ "initWithSendPort:receivePort:components:", PortMessage, .{ ?Port, ?Port, ?*anyopaque } },
        .{ "msgid", u32, .{} },
        .{ "receivePort", ?Port, .{} },
        .{ "sendBeforeDate:", objc.BOOL, .{NSDate} },
        .{ "sendPort", ?Port, .{} },
        .{ "setMsgid:", void, .{u32} },
    };

    pub fn send(self: PortMessage, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSPortMessage", class_methods, selector, args);
    }
};

pub const NSPositionalSpecifier = struct {
    obj: Object,

    pub const methods = .{
        .{ "evaluate", void, .{} },
        .{ "initWithPosition:objectSpecifier:", NSPositionalSpecifier, .{ NSPositionalSpecifier.InsertionPosition, NSScriptObjectSpecifier } },
        .{ "insertionContainer", ?Any, .{} },
        .{ "insertionIndex", objc.NSInteger, .{} },
        .{ "insertionKey", ?objc.NSString, .{} },
        .{ "insertionReplaces", objc.BOOL, .{} },
        .{ "objectSpecifier", NSScriptObjectSpecifier, .{} },
        .{ "position", NSPositionalSpecifier.InsertionPosition, .{} },
        .{ "setInsertionClassDescription:", void, .{NSScriptClassDescription} },
    };

    pub fn send(self: NSPositionalSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSPositionalSpecifier", class_methods, selector, args);
    }

    pub const InsertionPosition = enum(i64) {
        after = 0,
        before = 1,
        beginning = 2,
        end = 3,
        replace = 4,
    };
};

pub const NSPredicate = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowEvaluation", void, .{} },
        .{ "evaluateWithObject:", objc.BOOL, .{?Any} },
        .{ "evaluateWithObject:substitutionVariables:", objc.BOOL, .{ ?Any, ?*anyopaque } },
        .{ "predicateFormat", objc.NSString, .{} },
        .{ "predicateWithSubstitutionVariables:", ?*anyopaque, .{Object} },
    };

    pub fn send(self: NSPredicate, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "predicateFromMetadataQueryString:", Object, .{objc.NSString} },
        .{ "predicateWithBlock:", Object, .{?*anyopaque} },
        .{ "predicateWithFormat:argumentArray:", Object, .{ objc.NSString, ?*anyopaque } },
        .{ "predicateWithFormat:arguments:", Object, .{ objc.NSString, ?*anyopaque } },
        .{ "predicateWithValue:", Object, .{objc.BOOL} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSPredicate", class_methods, selector, args);
    }
};

pub const ProcessInfo = struct {
    obj: Object,

    pub const methods = .{
        .{ "activeProcessorCount", objc.NSInteger, .{} },
        .{ "arguments", Object, .{} },
        .{ "automaticTerminationSupportEnabled", objc.BOOL, .{} },
        .{ "beginActivityWithOptions:reason:", NSObjectProtocol, .{ objc.NSInteger, objc.NSString } },
        .{ "disableAutomaticTermination:", void, .{objc.NSString} },
        .{ "disableSuddenTermination", void, .{} },
        .{ "enableAutomaticTermination:", void, .{objc.NSString} },
        .{ "enableSuddenTermination", void, .{} },
        .{ "endActivity:", void, .{NSObjectProtocol} },
        .{ "environment", Object, .{} },
        .{ "fullUserName", objc.NSString, .{} },
        .{ "globallyUniqueString", objc.NSString, .{} },
        .{ "hostName", objc.NSString, .{} },
        .{ "iOSAppOnMac", objc.BOOL, .{} },
        .{ "iOSAppOnVision", objc.BOOL, .{} },
        .{ "isOperatingSystemAtLeastVersion:", objc.BOOL, .{?*anyopaque} },
        .{ "lowPowerModeEnabled", objc.BOOL, .{} },
        .{ "macCatalystApp", objc.BOOL, .{} },
        .{ "operatingSystem", objc.NSInteger, .{} },
        .{ "operatingSystemName", objc.NSString, .{} },
        .{ "operatingSystemVersion", ?*anyopaque, .{} },
        .{ "operatingSystemVersionString", objc.NSString, .{} },
        .{ "performActivityWithOptions:reason:usingBlock:", void, .{ objc.NSInteger, objc.NSString, ?*anyopaque } },
        .{ "physicalMemory", u64, .{} },
        .{ "processIdentifier", i32, .{} },
        .{ "processName", objc.NSString, .{} },
        .{ "processorCount", objc.NSInteger, .{} },
        .{ "setAutomaticTerminationSupportEnabled:", void, .{objc.BOOL} },
        .{ "setProcessName:", void, .{objc.NSString} },
        .{ "systemUptime", TimeInterval, .{} },
        .{ "thermalState", ProcessInfo.ThermalState, .{} },
        .{ "userName", objc.NSString, .{} },
    };

    pub fn send(self: ProcessInfo, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "processInfo", ProcessInfo, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSProcessInfo", class_methods, selector, args);
    }

    pub const ThermalState = enum(i64) {
        nominal = 0,
        fair = 1,
        serious = 2,
        critical = 3,
    };
};

pub const Progress = struct {
    obj: Object,

    pub const methods = .{
        .{ "addChild:withPendingUnitCount:", void, .{ Progress, i64 } },
        .{ "becomeCurrentWithPendingUnitCount:", void, .{i64} },
        .{ "cancel", void, .{} },
        .{ "cancellable", objc.BOOL, .{} },
        .{ "cancellationHandler", void, .{} },
        .{ "cancelled", objc.BOOL, .{} },
        .{ "completedUnitCount", i64, .{} },
        .{ "fileOperationKind", objc.NSString, .{} },
        .{ "fileURL", ?NSURL, .{} },
        .{ "finished", objc.BOOL, .{} },
        .{ "fractionCompleted", f64, .{} },
        .{ "indeterminate", objc.BOOL, .{} },
        .{ "initWithParent:userInfo:", Progress, .{ ?Progress, ?*anyopaque } },
        .{ "kind", objc.NSString, .{} },
        .{ "localizedAdditionalDescription", objc.NSString, .{} },
        .{ "localizedDescription", objc.NSString, .{} },
        .{ "old", objc.BOOL, .{} },
        .{ "pausable", objc.BOOL, .{} },
        .{ "pause", void, .{} },
        .{ "paused", objc.BOOL, .{} },
        .{ "pausingHandler", void, .{} },
        .{ "publish", void, .{} },
        .{ "resignCurrent", void, .{} },
        .{ "resume", void, .{} },
        .{ "resumingHandler", void, .{} },
        .{ "setCancellable:", void, .{objc.BOOL} },
        .{ "setCancellationHandler:", void, .{void} },
        .{ "setCompletedUnitCount:", void, .{i64} },
        .{ "setFileOperationKind:", void, .{objc.NSString} },
        .{ "setFileURL:", void, .{?NSURL} },
        .{ "setKind:", void, .{objc.NSString} },
        .{ "setLocalizedAdditionalDescription:", void, .{objc.NSString} },
        .{ "setLocalizedDescription:", void, .{objc.NSString} },
        .{ "setPausable:", void, .{objc.BOOL} },
        .{ "setPausingHandler:", void, .{void} },
        .{ "setResumingHandler:", void, .{void} },
        .{ "setTotalUnitCount:", void, .{i64} },
        .{ "setUserInfoObject:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "totalUnitCount", i64, .{} },
        .{ "unpublish", void, .{} },
        .{ "userInfo", Object, .{} },
    };

    pub fn send(self: Progress, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "addSubscriberForFileURL:withPublishingHandler:", Any, .{ NSURL, objc.NSString } },
        .{ "currentProgress", ?Progress, .{} },
        .{ "discreteProgressWithTotalUnitCount:", Progress, .{i64} },
        .{ "progressWithTotalUnitCount:", Object, .{i64} },
        .{ "progressWithTotalUnitCount:parent:pendingUnitCount:", Object, .{ i64, Progress, i64 } },
        .{ "removeSubscriber:", void, .{Any} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSProgress", class_methods, selector, args);
    }
};

pub const PropertyListSerialization = struct {
    pub const class_methods = .{
        .{ "dataFromPropertyList:format:errorDescription:", ?NSData, .{ Any, PropertyListSerialization.PropertyListFormat, ?objc.NSString } },
        .{ "dataWithPropertyList:format:options:error:", NSData, .{ Any, PropertyListSerialization.PropertyListFormat, objc.NSInteger } },
        .{ "propertyList:isValidForFormat:", objc.BOOL, .{ Any, PropertyListSerialization.PropertyListFormat } },
        .{ "propertyListFromData:mutabilityOption:format:errorDescription:", ?Any, .{ NSData, objc.NSInteger, PropertyListSerialization.PropertyListFormat, ?objc.NSString } },
        .{ "propertyListWithData:options:format:error:", Any, .{ NSData, objc.NSString, PropertyListSerialization.PropertyListFormat } },
        .{ "propertyListWithStream:options:format:error:", Any, .{ InputStream, objc.NSString, PropertyListSerialization.PropertyListFormat } },
        .{ "writePropertyList:toStream:format:options:error:", objc.NSInteger, .{ Any, OutputStream, PropertyListSerialization.PropertyListFormat, objc.NSInteger, Object } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSPropertyListSerialization", class_methods, selector, args);
    }

    pub const PropertyListFormat = enum(i64) {
        openStep = 1,
        xml = 100,
        binary = 200,
    };
};

pub const NSProtocolChecker = struct {
    obj: Object,

    pub const Super = NSProxy;
    pub const methods = .{
        .{ "initWithTarget:protocol:", NSProtocolChecker, .{ Object, Object } },
        .{ "protocol", Object, .{} },
        .{ "target", ?*anyopaque, .{} },
    };

    pub fn send(self: NSProtocolChecker, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSProtocolChecker", class_methods, selector, args);
    }
};

pub const NSProxy = struct {
    obj: Object,

    pub const methods = .{
        .{ "dealloc", void, .{} },
        .{ "debugDescription", objc.NSString, .{} },
        .{ "description", objc.NSString, .{} },
        .{ "finalize", void, .{} },
        .{ "forwardInvocation:", void, .{Object} },
    };

    pub fn send(self: NSProxy, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "class", AnyClass, .{} },
        .{ "respondsToSelector:", objc.BOOL, .{Selector} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSProxy", class_methods, selector, args);
    }
};

pub const NSQuitCommand = struct {
    obj: Object,

    pub const Super = NSScriptCommand;
    pub const methods = .{
        .{ "saveOptions", NSSaveOptions, .{} },
    };

    pub fn send(self: NSQuitCommand, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSQuitCommand", class_methods, selector, args);
    }
};

pub const NSRangeSpecifier = struct {
    obj: Object,

    pub const Super = NSScriptObjectSpecifier;
    pub const methods = .{
        .{ "endSpecifier", ?NSScriptObjectSpecifier, .{} },
        .{ "initWithCoder:", NSRangeSpecifier, .{NSCoder} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:startSpecifier:endSpecifier:", NSRangeSpecifier, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString, ?NSScriptObjectSpecifier, ?NSScriptObjectSpecifier } },
        .{ "setEndSpecifier:", void, .{?NSScriptObjectSpecifier} },
        .{ "setStartSpecifier:", void, .{?NSScriptObjectSpecifier} },
        .{ "startSpecifier", ?NSScriptObjectSpecifier, .{} },
    };

    pub fn send(self: NSRangeSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSRangeSpecifier", class_methods, selector, args);
    }
};

pub const NSRecursiveLock = struct {
    obj: Object,

    pub const methods = .{
        .{ "lockBeforeDate:", objc.BOOL, .{NSDate} },
        .{ "name", ?objc.NSString, .{} },
        .{ "setName:", void, .{?objc.NSString} },
        .{ "tryLock", objc.BOOL, .{} },
    };

    pub fn send(self: NSRecursiveLock, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSRecursiveLock", class_methods, selector, args);
    }
};

pub const NSRegularExpression = struct {
    obj: Object,

    pub const methods = .{
        .{ "enumerateMatchesInString:options:range:usingBlock:", void, .{ objc.NSString, objc.NSInteger, NSRange, ?*anyopaque } },
        .{ "firstMatchInString:options:range:", ?NSTextCheckingResult, .{ objc.NSString, objc.NSInteger, NSRange } },
        .{ "initWithPattern:options:error:", NSRegularExpression, .{ objc.NSString, objc.NSInteger } },
        .{ "matchesInString:options:range:", Object, .{ objc.NSString, objc.NSInteger, NSRange } },
        .{ "numberOfCaptureGroups", objc.NSInteger, .{} },
        .{ "numberOfMatchesInString:options:range:", objc.NSInteger, .{ objc.NSString, objc.NSInteger, NSRange } },
        .{ "options", objc.NSInteger, .{} },
        .{ "pattern", objc.NSString, .{} },
        .{ "rangeOfFirstMatchInString:options:range:", NSRange, .{ objc.NSString, objc.NSInteger, NSRange } },
        .{ "replaceMatchesInString:options:range:withTemplate:", objc.NSInteger, .{ NSMutableString, objc.NSInteger, NSRange, objc.NSString } },
        .{ "replacementStringForResult:inString:offset:template:", objc.NSString, .{ NSTextCheckingResult, objc.NSString, objc.NSInteger, objc.NSString } },
        .{ "stringByReplacingMatchesInString:options:range:withTemplate:", objc.NSString, .{ objc.NSString, objc.NSInteger, NSRange, objc.NSString } },
    };

    pub fn send(self: NSRegularExpression, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "escapedPatternForString:", objc.NSString, .{objc.NSString} },
        .{ "escapedTemplateForString:", objc.NSString, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSRegularExpression", class_methods, selector, args);
    }
};

pub const RelativeDateTimeFormatter = struct {
    obj: Object,

    pub const Super = Formatter;
    pub const methods = .{
        .{ "calendar", NSCalendar, .{} },
        .{ "dateTimeStyle", RelativeDateTimeFormatter.DateTimeStyle, .{} },
        .{ "formattingContext", Formatter.Context, .{} },
        .{ "locale", NSLocale, .{} },
        .{ "localizedStringForDate:relativeToDate:", objc.NSString, .{ NSDate, NSDate } },
        .{ "localizedStringFromDateComponents:", objc.NSString, .{NSDateComponents} },
        .{ "localizedStringFromTimeInterval:", objc.NSString, .{TimeInterval} },
        .{ "setCalendar:", void, .{NSCalendar} },
        .{ "setDateTimeStyle:", void, .{RelativeDateTimeFormatter.DateTimeStyle} },
        .{ "setFormattingContext:", void, .{Formatter.Context} },
        .{ "setLocale:", void, .{NSLocale} },
        .{ "setUnitsStyle:", void, .{RelativeDateTimeFormatter.UnitsStyle} },
        .{ "stringForObjectValue:", ?objc.NSString, .{?Any} },
        .{ "unitsStyle", RelativeDateTimeFormatter.UnitsStyle, .{} },
    };

    pub fn send(self: RelativeDateTimeFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSRelativeDateTimeFormatter", class_methods, selector, args);
    }

    pub const DateTimeStyle = enum(i64) {
        numeric = 0,
        named = 1,
    };
    pub const UnitsStyle = enum(i64) {
        full = 0,
        spellOut = 1,
        short = 2,
        abbreviated = 3,
    };
};

pub const NSRelativeSpecifier = struct {
    obj: Object,

    pub const Super = NSScriptObjectSpecifier;
    pub const methods = .{
        .{ "baseSpecifier", ?NSScriptObjectSpecifier, .{} },
        .{ "initWithCoder:", NSRelativeSpecifier, .{NSCoder} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:relativePosition:baseSpecifier:", NSRelativeSpecifier, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString, NSRelativeSpecifier.RelativePosition, ?NSScriptObjectSpecifier } },
        .{ "relativePosition", NSRelativeSpecifier.RelativePosition, .{} },
        .{ "setBaseSpecifier:", void, .{?NSScriptObjectSpecifier} },
        .{ "setRelativePosition:", void, .{NSRelativeSpecifier.RelativePosition} },
    };

    pub fn send(self: NSRelativeSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSRelativeSpecifier", class_methods, selector, args);
    }

    pub const RelativePosition = enum(i64) {
        after = 0,
        before = 1,
    };
};

pub const RunLoop = struct {
    obj: Object,

    pub const methods = .{
        .{ "acceptInputForMode:beforeDate:", void, .{ objc.NSString, NSDate } },
        .{ "addPort:forMode:", void, .{ Port, objc.NSString } },
        .{ "addTimer:forMode:", void, .{ Timer, objc.NSString } },
        .{ "cancelPerformSelector:target:argument:", void, .{ Selector, Any, ?Any } },
        .{ "cancelPerformSelectorsWithTarget:", void, .{Any} },
        .{ "currentMode", objc.NSString, .{} },
        .{ "getCFRunLoop", objc.NSString, .{} },
        .{ "limitDateForMode:", ?NSDate, .{objc.NSString} },
        .{ "performBlock:", void, .{?*anyopaque} },
        .{ "performInModes:block:", void, .{ Object, ?*anyopaque } },
        .{ "performSelector:target:argument:order:modes:", void, .{ Selector, Any, ?Any, objc.NSInteger, Object } },
        .{ "removePort:forMode:", void, .{ Port, objc.NSString } },
        .{ "run", void, .{} },
        .{ "runMode:beforeDate:", objc.BOOL, .{ objc.NSString, NSDate } },
        .{ "runUntilDate:", void, .{NSDate} },
    };

    pub fn send(self: RunLoop, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentRunLoop", RunLoop, .{} },
        .{ "mainRunLoop", RunLoop, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSRunLoop", class_methods, selector, args);
    }
};

pub const Scanner = struct {
    obj: Object,

    pub const methods = .{
        .{ "atEnd", objc.BOOL, .{} },
        .{ "caseSensitive", objc.BOOL, .{} },
        .{ "charactersToBeSkipped", ?NSCharacterSet, .{} },
        .{ "initWithString:", Scanner, .{objc.NSString} },
        .{ "locale", ?Any, .{} },
        .{ "scanCharactersFromSet:intoString:", objc.BOOL, .{ NSCharacterSet, ?objc.NSString } },
        .{ "scanDecimal:", objc.BOOL, .{?*anyopaque} },
        .{ "scanDouble:", objc.BOOL, .{f64} },
        .{ "scanFloat:", objc.BOOL, .{f32} },
        .{ "scanHexDouble:", objc.BOOL, .{f64} },
        .{ "scanHexFloat:", objc.BOOL, .{f32} },
        .{ "scanHexInt:", objc.BOOL, .{u32} },
        .{ "scanHexLongLong:", objc.BOOL, .{u64} },
        .{ "scanInt:", objc.BOOL, .{i32} },
        .{ "scanInteger:", objc.BOOL, .{objc.NSInteger} },
        .{ "scanLocation", objc.NSInteger, .{} },
        .{ "scanLongLong:", objc.BOOL, .{i64} },
        .{ "scanString:intoString:", objc.BOOL, .{ objc.NSString, ?objc.NSString } },
        .{ "scanUnsignedLongLong:", objc.BOOL, .{u64} },
        .{ "scanUpToCharactersFromSet:intoString:", objc.BOOL, .{ NSCharacterSet, ?objc.NSString } },
        .{ "scanUpToString:intoString:", objc.BOOL, .{ objc.NSString, ?objc.NSString } },
        .{ "setCaseSensitive:", void, .{objc.BOOL} },
        .{ "setCharactersToBeSkipped:", void, .{?NSCharacterSet} },
        .{ "setLocale:", void, .{?Any} },
        .{ "setScanLocation:", void, .{objc.NSInteger} },
        .{ "string", objc.NSString, .{} },
    };

    pub fn send(self: Scanner, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "localizedScannerWithString:", Any, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSScanner", class_methods, selector, args);
    }
};

pub const NSScriptClassDescription = struct {
    obj: Object,

    pub const Super = NSClassDescription;
    pub const methods = .{
        .{ "appleEventCode", objc.NSString, .{} },
        .{ "appleEventCodeForKey:", objc.NSString, .{objc.NSString} },
        .{ "classDescriptionForKey:", ?NSScriptClassDescription, .{objc.NSString} },
        .{ "className", ?objc.NSString, .{} },
        .{ "defaultSubcontainerAttributeKey", ?objc.NSString, .{} },
        .{ "hasOrderedToManyRelationshipForKey:", objc.BOOL, .{objc.NSString} },
        .{ "hasPropertyForKey:", objc.BOOL, .{objc.NSString} },
        .{ "hasReadablePropertyForKey:", objc.BOOL, .{objc.NSString} },
        .{ "hasWritablePropertyForKey:", objc.BOOL, .{objc.NSString} },
        .{ "implementationClassName", ?objc.NSString, .{} },
        .{ "initWithSuiteName:className:dictionary:", NSScriptClassDescription, .{ objc.NSString, objc.NSString, ?*anyopaque } },
        .{ "isLocationRequiredToCreateForKey:", objc.BOOL, .{objc.NSString} },
        .{ "keyWithAppleEventCode:", ?objc.NSString, .{objc.NSString} },
        .{ "matchesAppleEventCode:", objc.BOOL, .{objc.NSString} },
        .{ "selectorForCommand:", Selector, .{NSScriptCommandDescription} },
        .{ "suiteName", ?objc.NSString, .{} },
        .{ "superclassDescription", ?NSScriptClassDescription, .{} },
        .{ "supportsCommand:", objc.BOOL, .{NSScriptCommandDescription} },
        .{ "typeForKey:", ?objc.NSString, .{objc.NSString} },
    };

    pub fn send(self: NSScriptClassDescription, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "classDescriptionForClass:", Object, .{AnyClass} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSScriptClassDescription", class_methods, selector, args);
    }
};

pub const NSScriptCoercionHandler = struct {
    obj: Object,

    pub const methods = .{
        .{ "coerceValue:toClass:", ?Any, .{ Any, AnyClass } },
        .{ "registerCoercer:selector:toConvertFromClass:toClass:", void, .{ Any, Selector, AnyClass, AnyClass } },
    };

    pub fn send(self: NSScriptCoercionHandler, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedCoercionHandler", NSScriptCoercionHandler, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSScriptCoercionHandler", class_methods, selector, args);
    }
};

pub const NSScriptCommand = struct {
    obj: Object,

    pub const methods = .{
        .{ "appleEvent", ?NSAppleEventDescriptor, .{} },
        .{ "arguments", ?*anyopaque, .{} },
        .{ "commandDescription", NSScriptCommandDescription, .{} },
        .{ "directParameter", ?Any, .{} },
        .{ "evaluatedArguments", ?*anyopaque, .{} },
        .{ "evaluatedReceivers", ?Any, .{} },
        .{ "executeCommand", ?Any, .{} },
        .{ "initWithCoder:", NSScriptCommand, .{NSCoder} },
        .{ "initWithCommandDescription:", NSScriptCommand, .{NSScriptCommandDescription} },
        .{ "performDefaultImplementation", ?Any, .{} },
        .{ "receiversSpecifier", ?NSScriptObjectSpecifier, .{} },
        .{ "resumeExecutionWithResult:", void, .{?Any} },
        .{ "scriptErrorExpectedTypeDescriptor", ?NSAppleEventDescriptor, .{} },
        .{ "scriptErrorNumber", objc.NSInteger, .{} },
        .{ "scriptErrorOffendingObjectDescriptor", ?NSAppleEventDescriptor, .{} },
        .{ "scriptErrorString", ?objc.NSString, .{} },
        .{ "setArguments:", void, .{?*anyopaque} },
        .{ "setDirectParameter:", void, .{?Any} },
        .{ "setReceiversSpecifier:", void, .{?NSScriptObjectSpecifier} },
        .{ "setScriptErrorExpectedTypeDescriptor:", void, .{?NSAppleEventDescriptor} },
        .{ "setScriptErrorNumber:", void, .{objc.NSInteger} },
        .{ "setScriptErrorOffendingObjectDescriptor:", void, .{?NSAppleEventDescriptor} },
        .{ "setScriptErrorString:", void, .{?objc.NSString} },
        .{ "suspendExecution", void, .{} },
        .{ "wellFormed", objc.BOOL, .{} },
    };

    pub fn send(self: NSScriptCommand, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentCommand", ?NSScriptCommand, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSScriptCommand", class_methods, selector, args);
    }
};

pub const NSScriptCommandDescription = struct {
    obj: Object,

    pub const methods = .{
        .{ "appleEventClassCode", objc.NSString, .{} },
        .{ "appleEventCode", objc.NSString, .{} },
        .{ "appleEventCodeForArgumentWithName:", objc.NSString, .{objc.NSString} },
        .{ "appleEventCodeForReturnType", objc.NSString, .{} },
        .{ "argumentNames", Object, .{} },
        .{ "commandClassName", objc.NSString, .{} },
        .{ "commandName", objc.NSString, .{} },
        .{ "createCommandInstance", NSScriptCommand, .{} },
        .{ "createCommandInstanceWithZone:", NSScriptCommand, .{?*anyopaque} },
        .{ "initWithCoder:", NSScriptCommandDescription, .{NSCoder} },
        .{ "initWithSuiteName:commandName:dictionary:", NSScriptCommandDescription, .{ objc.NSString, objc.NSString, ?*anyopaque } },
        .{ "isOptionalArgumentWithName:", objc.BOOL, .{objc.NSString} },
        .{ "returnType", ?objc.NSString, .{} },
        .{ "suiteName", objc.NSString, .{} },
        .{ "typeForArgumentWithName:", ?objc.NSString, .{objc.NSString} },
    };

    pub fn send(self: NSScriptCommandDescription, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSScriptCommandDescription", class_methods, selector, args);
    }
};

pub const NSScriptExecutionContext = struct {
    obj: Object,

    pub const methods = .{
        .{ "objectBeingTested", ?Any, .{} },
        .{ "rangeContainerObject", ?Any, .{} },
        .{ "setObjectBeingTested:", void, .{?Any} },
        .{ "setRangeContainerObject:", void, .{?Any} },
        .{ "setTopLevelObject:", void, .{?Any} },
        .{ "topLevelObject", ?Any, .{} },
    };

    pub fn send(self: NSScriptExecutionContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedScriptExecutionContext", NSScriptExecutionContext, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSScriptExecutionContext", class_methods, selector, args);
    }
};

pub const NSScriptObjectSpecifier = struct {
    obj: Object,

    pub const methods = .{
        .{ "childSpecifier", ?NSScriptObjectSpecifier, .{} },
        .{ "containerClassDescription", ?NSScriptClassDescription, .{} },
        .{ "containerIsObjectBeingTested", objc.BOOL, .{} },
        .{ "containerIsRangeContainerObject", objc.BOOL, .{} },
        .{ "containerSpecifier", ?NSScriptObjectSpecifier, .{} },
        .{ "descriptor", ?NSAppleEventDescriptor, .{} },
        .{ "evaluationErrorNumber", objc.NSInteger, .{} },
        .{ "evaluationErrorSpecifier", ?NSScriptObjectSpecifier, .{} },
        .{ "indicesOfObjectsByEvaluatingWithContainer:count:", objc.NSInteger, .{ Any, objc.NSInteger } },
        .{ "initWithCoder:", NSScriptObjectSpecifier, .{NSCoder} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:", NSScriptObjectSpecifier, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString } },
        .{ "initWithContainerSpecifier:key:", NSScriptObjectSpecifier, .{ NSScriptObjectSpecifier, objc.NSString } },
        .{ "key", objc.NSString, .{} },
        .{ "keyClassDescription", ?NSScriptClassDescription, .{} },
        .{ "objectsByEvaluatingSpecifier", ?Any, .{} },
        .{ "objectsByEvaluatingWithContainers:", ?Any, .{Any} },
        .{ "setChildSpecifier:", void, .{?NSScriptObjectSpecifier} },
        .{ "setContainerClassDescription:", void, .{?NSScriptClassDescription} },
        .{ "setContainerIsObjectBeingTested:", void, .{objc.BOOL} },
        .{ "setContainerIsRangeContainerObject:", void, .{objc.BOOL} },
        .{ "setContainerSpecifier:", void, .{?NSScriptObjectSpecifier} },
        .{ "setEvaluationErrorNumber:", void, .{objc.NSInteger} },
        .{ "setKey:", void, .{objc.NSString} },
    };

    pub fn send(self: NSScriptObjectSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "objectSpecifierWithDescriptor:", Object, .{NSAppleEventDescriptor} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSScriptObjectSpecifier", class_methods, selector, args);
    }
};

pub const NSScriptSuiteRegistry = struct {
    obj: Object,

    pub const methods = .{
        .{ "aeteResource:", ?NSData, .{objc.NSString} },
        .{ "appleEventCodeForSuite:", objc.NSString, .{objc.NSString} },
        .{ "bundleForSuite:", ?Bundle, .{objc.NSString} },
        .{ "classDescriptionWithAppleEventCode:", ?NSScriptClassDescription, .{objc.NSString} },
        .{ "classDescriptionsInSuite:", ?*anyopaque, .{objc.NSString} },
        .{ "commandDescriptionWithAppleEventClass:andAppleEventCode:", ?NSScriptCommandDescription, .{ objc.NSString, objc.NSString } },
        .{ "commandDescriptionsInSuite:", ?*anyopaque, .{objc.NSString} },
        .{ "loadSuiteWithDictionary:fromBundle:", void, .{ Object, Bundle } },
        .{ "loadSuitesFromBundle:", void, .{Bundle} },
        .{ "registerClassDescription:", void, .{NSScriptClassDescription} },
        .{ "registerCommandDescription:", void, .{NSScriptCommandDescription} },
        .{ "suiteForAppleEventCode:", ?objc.NSString, .{objc.NSString} },
        .{ "suiteNames", Object, .{} },
    };

    pub fn send(self: NSScriptSuiteRegistry, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "setSharedScriptSuiteRegistry:", void, .{NSScriptSuiteRegistry} },
        .{ "sharedScriptSuiteRegistry", NSScriptSuiteRegistry, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSScriptSuiteRegistry", class_methods, selector, args);
    }
};

pub const NSScriptWhoseTest = struct {
    obj: Object,

    pub const methods = .{
        .{ "initWithCoder:", NSScriptWhoseTest, .{NSCoder} },
        .{ "isTrue", objc.BOOL, .{} },
    };

    pub fn send(self: NSScriptWhoseTest, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSScriptWhoseTest", class_methods, selector, args);
    }
};

pub const NSSecureUnarchiveFromDataTransformer = struct {
    pub const class_methods = .{
        .{ "allowedTopLevelClasses", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSSecureUnarchiveFromDataTransformer", class_methods, selector, args);
    }
};

pub const NSSet = struct {
    obj: Object,

    pub const methods = .{
        .{ "addObserver:forKeyPath:options:context:", void, .{ Object, objc.NSString, objc.NSInteger, ?UnsafeMutableRawPointer } },
        .{ "allObjects", Object, .{} },
        .{ "anyObject", ?Any, .{} },
        .{ "containsObject:", objc.BOOL, .{Any} },
        .{ "count", objc.NSInteger, .{} },
        .{ "description", objc.NSString, .{} },
        .{ "descriptionWithLocale:", objc.NSString, .{?Any} },
        .{ "enumerateObjectsUsingBlock:", void, .{?*anyopaque} },
        .{ "enumerateObjectsWithOptions:usingBlock:", void, .{ objc.NSInteger, ?*anyopaque } },
        .{ "filteredSetUsingPredicate:", ?*anyopaque, .{NSPredicate} },
        .{ "initWithArray:", NSSet, .{Object} },
        .{ "initWithCoder:", NSSet, .{NSCoder} },
        .{ "initWithObjects:count:", NSSet, .{ ?UnsafePointer, objc.NSInteger } },
        .{ "initWithSet:", NSSet, .{?*anyopaque} },
        .{ "initWithSet:copyItems:", NSSet, .{ ?*anyopaque, objc.BOOL } },
        .{ "intersectsSet:", objc.BOOL, .{?*anyopaque} },
        .{ "isEqualToSet:", objc.BOOL, .{?*anyopaque} },
        .{ "isSubsetOfSet:", objc.BOOL, .{?*anyopaque} },
        .{ "member:", ?Any, .{Any} },
        .{ "objectEnumerator", NSEnumerator, .{} },
        .{ "objectsPassingTest:", ?*anyopaque, .{?*anyopaque} },
        .{ "objectsWithOptions:passingTest:", ?*anyopaque, .{ objc.NSInteger, ?*anyopaque } },
        .{ "removeObserver:forKeyPath:", void, .{ Object, objc.NSString } },
        .{ "removeObserver:forKeyPath:context:", void, .{ Object, objc.NSString, ?UnsafeMutableRawPointer } },
        .{ "setByAddingObject:", ?*anyopaque, .{Any} },
        .{ "setByAddingObjectsFromArray:", ?*anyopaque, .{Object} },
        .{ "setByAddingObjectsFromSet:", ?*anyopaque, .{?*anyopaque} },
        .{ "setValue:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "sortedArrayUsingDescriptors:", Object, .{Object} },
        .{ "valueForKey:", Any, .{objc.NSString} },
    };

    pub fn send(self: NSSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "setWithObject:", Object, .{Any} },
        .{ "setWithObjects:count:", Object, .{ UnsafePointer, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSSet", class_methods, selector, args);
    }
};

pub const NSSetCommand = struct {
    obj: Object,

    pub const Super = NSScriptCommand;
    pub const methods = .{
        .{ "keySpecifier", NSScriptObjectSpecifier, .{} },
        .{ "setReceiversSpecifier:", void, .{?NSScriptObjectSpecifier} },
    };

    pub fn send(self: NSSetCommand, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSSetCommand", class_methods, selector, args);
    }
};

pub const SocketPort = struct {
    obj: Object,

    pub const Super = Port;
    pub const methods = .{
        .{ "address", NSData, .{} },
        .{ "initRemoteWithProtocolFamily:socketType:protocol:address:", SocketPort, .{ i32, i32, i32, NSData } },
        .{ "initRemoteWithTCPPort:host:", SocketPort, .{ u16, ?objc.NSString } },
        .{ "initWithProtocolFamily:socketType:protocol:address:", SocketPort, .{ i32, i32, i32, NSData } },
        .{ "initWithProtocolFamily:socketType:protocol:socket:", SocketPort, .{ i32, i32, i32, i32 } },
        .{ "initWithTCPPort:", SocketPort, .{u16} },
        .{ "protocol", i32, .{} },
        .{ "protocolFamily", i32, .{} },
        .{ "socket", i32, .{} },
        .{ "socketType", i32, .{} },
    };

    pub fn send(self: SocketPort, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSSocketPort", class_methods, selector, args);
    }
};

pub const NSSortDescriptor = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowEvaluation", void, .{} },
        .{ "ascending", objc.BOOL, .{} },
        .{ "comparator", objc.NSString, .{} },
        .{ "compareObject:toObject:", ComparisonResult, .{ Any, Any } },
        .{ "initWithCoder:", NSSortDescriptor, .{NSCoder} },
        .{ "initWithKey:ascending:", NSSortDescriptor, .{ ?objc.NSString, objc.BOOL } },
        .{ "initWithKey:ascending:comparator:", NSSortDescriptor, .{ ?objc.NSString, objc.BOOL, objc.NSString } },
        .{ "initWithKey:ascending:selector:", NSSortDescriptor, .{ ?objc.NSString, objc.BOOL, Selector } },
        .{ "key", ?objc.NSString, .{} },
        .{ "reversedSortDescriptor", Any, .{} },
        .{ "selector", Selector, .{} },
    };

    pub fn send(self: NSSortDescriptor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSSortDescriptor", class_methods, selector, args);
    }
};

pub const NSSpecifierTest = struct {
    obj: Object,

    pub const Super = NSScriptWhoseTest;
    pub const methods = .{
        .{ "initWithCoder:", NSSpecifierTest, .{NSCoder} },
        .{ "initWithObjectSpecifier:comparisonOperator:testObject:", NSSpecifierTest, .{ ?NSScriptObjectSpecifier, NSSpecifierTest.TestComparisonOperation, ?Any } },
    };

    pub fn send(self: NSSpecifierTest, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSSpecifierTest", class_methods, selector, args);
    }

    pub const TestComparisonOperation = enum(i64) {
        equal = 0,
        lessThanOrEqual = 1,
        lessThan = 2,
        greaterThanOrEqual = 3,
        greaterThan = 4,
        beginsWith = 5,
        endsWith = 6,
        contains = 7,
    };
};

pub const NSSpellServer = struct {
    obj: Object,

    pub const methods = .{
        .{ "delegate", ?NSSpellServerDelegate, .{} },
        .{ "isWordInUserDictionaries:caseSensitive:", objc.BOOL, .{ objc.NSString, objc.BOOL } },
        .{ "registerLanguage:byVendor:", objc.BOOL, .{ ?objc.NSString, ?objc.NSString } },
        .{ "run", void, .{} },
        .{ "setDelegate:", void, .{?NSSpellServerDelegate} },
    };

    pub fn send(self: NSSpellServer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSSpellServer", class_methods, selector, args);
    }
};

pub const Stream = struct {
    obj: Object,

    pub const methods = .{
        .{ "close", void, .{} },
        .{ "delegate", ?StreamDelegate, .{} },
        .{ "open", void, .{} },
        .{ "propertyForKey:", ?Any, .{objc.NSString} },
        .{ "removeFromRunLoop:forMode:", void, .{ RunLoop, objc.NSString } },
        .{ "scheduleInRunLoop:forMode:", void, .{ RunLoop, objc.NSString } },
        .{ "setDelegate:", void, .{?StreamDelegate} },
        .{ "setProperty:forKey:", objc.BOOL, .{ ?Any, objc.NSString } },
        .{ "streamError", ?*anyopaque, .{} },
        .{ "streamStatus", Stream.Status, .{} },
    };

    pub fn send(self: Stream, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "getBoundStreamsWithBufferSize:inputStream:outputStream:", void, .{ objc.NSInteger, ?InputStream, ?OutputStream } },
        .{ "getStreamsToHost:port:inputStream:outputStream:", void, .{ Host, objc.NSInteger, ?InputStream, ?OutputStream } },
        .{ "getStreamsToHostWithName:port:inputStream:outputStream:", void, .{ objc.NSString, objc.NSInteger, ?InputStream, ?OutputStream } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSStream", class_methods, selector, args);
    }

    pub const Status = enum(i64) {
        notOpen = 0,
        opening = 1,
        open = 2,
        reading = 3,
        writing = 4,
        atEnd = 5,
        closed = 6,
        @"error" = 7,
    };
};

pub const NSString = struct {
    obj: Object,

    pub const methods = .{
        .{ "UTF8String", ?*anyopaque, .{} },
        .{ "absolutePath", objc.BOOL, .{} },
        .{ "boolValue", objc.BOOL, .{} },
        .{ "cStringUsingEncoding:", ?*anyopaque, .{c_ulong} },
        .{ "canBeConvertedToEncoding:", objc.BOOL, .{c_ulong} },
        .{ "capitalizedString", objc.NSString, .{} },
        .{ "capitalizedStringWithLocale:", objc.NSString, .{?NSLocale} },
        .{ "caseInsensitiveCompare:", ComparisonResult, .{objc.NSString} },
        .{ "characterAtIndex:", u16, .{objc.NSInteger} },
        .{ "commonPrefixWithString:options:", objc.NSString, .{ objc.NSString, objc.NSInteger } },
        .{ "compare:", ComparisonResult, .{objc.NSString} },
        .{ "compare:options:", ComparisonResult, .{ objc.NSString, objc.NSInteger } },
        .{ "compare:options:range:", ComparisonResult, .{ objc.NSString, objc.NSInteger, NSRange } },
        .{ "compare:options:range:locale:", ComparisonResult, .{ objc.NSString, objc.NSInteger, NSRange, ?Any } },
        .{ "completePathIntoString:caseSensitive:matchesIntoArray:filterTypes:", objc.NSInteger, .{ ?objc.NSString, objc.BOOL, ?NSArray, ?*anyopaque } },
        .{ "componentsSeparatedByCharactersInSet:", Object, .{NSCharacterSet} },
        .{ "componentsSeparatedByString:", Object, .{objc.NSString} },
        .{ "containsString:", objc.BOOL, .{objc.NSString} },
        .{ "dataUsingEncoding:", ?NSData, .{c_ulong} },
        .{ "dataUsingEncoding:allowLossyConversion:", ?NSData, .{ c_ulong, objc.BOOL } },
        .{ "decomposedStringWithCanonicalMapping", objc.NSString, .{} },
        .{ "decomposedStringWithCompatibilityMapping", objc.NSString, .{} },
        .{ "description", objc.NSString, .{} },
        .{ "doubleValue", f64, .{} },
        .{ "enumerateLinesUsingBlock:", void, .{?*anyopaque} },
        .{ "enumerateLinguisticTagsInRange:scheme:options:orthography:usingBlock:", void, .{ NSRange, objc.NSString, objc.NSInteger, ?NSOrthography, ?*anyopaque } },
        .{ "enumerateSubstringsInRange:options:usingBlock:", void, .{ NSRange, objc.NSInteger, ?*anyopaque } },
        .{ "fastestEncoding", c_ulong, .{} },
        .{ "fileSystemRepresentation", ?*anyopaque, .{} },
        .{ "floatValue", f32, .{} },
        .{ "getBytes:maxLength:usedLength:encoding:options:range:remainingRange:", objc.BOOL, .{ ?UnsafeMutableRawPointer, objc.NSInteger, objc.NSInteger, c_ulong, objc.NSInteger, NSRange, NSRange } },
        .{ "getCString:maxLength:encoding:", objc.BOOL, .{ ?*anyopaque, objc.NSInteger, c_ulong } },
        .{ "getCharacters:", void, .{u16} },
        .{ "getCharacters:range:", void, .{ u16, NSRange } },
        .{ "getFileSystemRepresentation:maxLength:", objc.BOOL, .{ ?*anyopaque, objc.NSInteger } },
        .{ "getLineStart:end:contentsEnd:forRange:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, NSRange } },
        .{ "getParagraphStart:end:contentsEnd:forRange:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, NSRange } },
        .{ "hasPrefix:", objc.BOOL, .{objc.NSString} },
        .{ "hasSuffix:", objc.BOOL, .{objc.NSString} },
        .{ "hash", objc.NSInteger, .{} },
        .{ "initWithBytes:length:encoding:", NSString, .{ UnsafeRawPointer, objc.NSInteger, c_ulong } },
        .{ "initWithBytesNoCopy:length:encoding:deallocator:", NSString, .{ UnsafeMutableRawPointer, objc.NSInteger, c_ulong, ?*anyopaque } },
        .{ "initWithBytesNoCopy:length:encoding:freeWhenDone:", NSString, .{ UnsafeMutableRawPointer, objc.NSInteger, c_ulong, objc.BOOL } },
        .{ "initWithCString:encoding:", NSString, .{ ?*anyopaque, c_ulong } },
        .{ "initWithCharacters:length:", NSString, .{ u16, objc.NSInteger } },
        .{ "initWithCharactersNoCopy:length:deallocator:", NSString, .{ u16, objc.NSInteger, ?*anyopaque } },
        .{ "initWithCharactersNoCopy:length:freeWhenDone:", NSString, .{ u16, objc.NSInteger, objc.BOOL } },
        .{ "initWithCoder:", NSString, .{NSCoder} },
        .{ "initWithContentsOfFile:encoding:error:", NSString, .{ objc.NSString, c_ulong } },
        .{ "initWithContentsOfFile:usedEncoding:error:", NSString, .{ objc.NSString, c_ulong } },
        .{ "initWithContentsOfURL:encoding:error:", NSString, .{ NSURL, c_ulong } },
        .{ "initWithContentsOfURL:usedEncoding:error:", NSString, .{ NSURL, c_ulong } },
        .{ "initWithData:encoding:", NSString, .{ NSData, c_ulong } },
        .{ "initWithFormat:arguments:", NSString, .{ objc.NSString, ?*anyopaque } },
        .{ "initWithFormat:locale:arguments:", NSString, .{ objc.NSString, ?Any, ?*anyopaque } },
        .{ "initWithString:", NSString, .{objc.NSString} },
        .{ "initWithUTF8String:", NSString, .{?*anyopaque} },
        .{ "intValue", i32, .{} },
        .{ "integerValue", objc.NSInteger, .{} },
        .{ "isEqualToString:", objc.BOOL, .{objc.NSString} },
        .{ "lastPathComponent", objc.NSString, .{} },
        .{ "length", objc.NSInteger, .{} },
        .{ "lengthOfBytesUsingEncoding:", objc.NSInteger, .{c_ulong} },
        .{ "lineRangeForRange:", NSRange, .{NSRange} },
        .{ "linguisticTagsInRange:scheme:options:orthography:tokenRanges:", Object, .{ NSRange, objc.NSString, objc.NSInteger, ?NSOrthography, ?NSArray } },
        .{ "localizedCapitalizedString", objc.NSString, .{} },
        .{ "localizedCaseInsensitiveCompare:", ComparisonResult, .{objc.NSString} },
        .{ "localizedCaseInsensitiveContainsString:", objc.BOOL, .{objc.NSString} },
        .{ "localizedCompare:", ComparisonResult, .{objc.NSString} },
        .{ "localizedLowercaseString", objc.NSString, .{} },
        .{ "localizedStandardCompare:", ComparisonResult, .{objc.NSString} },
        .{ "localizedStandardContainsString:", objc.BOOL, .{objc.NSString} },
        .{ "localizedStandardRangeOfString:", NSRange, .{objc.NSString} },
        .{ "localizedUppercaseString", objc.NSString, .{} },
        .{ "longLongValue", i64, .{} },
        .{ "lowercaseString", objc.NSString, .{} },
        .{ "lowercaseStringWithLocale:", objc.NSString, .{?NSLocale} },
        .{ "maximumLengthOfBytesUsingEncoding:", objc.NSInteger, .{c_ulong} },
        .{ "paragraphRangeForRange:", NSRange, .{NSRange} },
        .{ "pathComponents", Object, .{} },
        .{ "pathExtension", objc.NSString, .{} },
        .{ "precomposedStringWithCanonicalMapping", objc.NSString, .{} },
        .{ "precomposedStringWithCompatibilityMapping", objc.NSString, .{} },
        .{ "propertyList", Any, .{} },
        .{ "propertyListFromStringsFileFormat", ?*anyopaque, .{} },
        .{ "rangeOfCharacterFromSet:", NSRange, .{NSCharacterSet} },
        .{ "rangeOfCharacterFromSet:options:", NSRange, .{ NSCharacterSet, objc.NSInteger } },
        .{ "rangeOfCharacterFromSet:options:range:", NSRange, .{ NSCharacterSet, objc.NSInteger, NSRange } },
        .{ "rangeOfComposedCharacterSequenceAtIndex:", NSRange, .{objc.NSInteger} },
        .{ "rangeOfComposedCharacterSequencesForRange:", NSRange, .{NSRange} },
        .{ "rangeOfString:", NSRange, .{objc.NSString} },
        .{ "rangeOfString:options:", NSRange, .{ objc.NSString, objc.NSInteger } },
        .{ "rangeOfString:options:range:", NSRange, .{ objc.NSString, objc.NSInteger, NSRange } },
        .{ "rangeOfString:options:range:locale:", NSRange, .{ objc.NSString, objc.NSInteger, NSRange, ?NSLocale } },
        .{ "smallestEncoding", c_ulong, .{} },
        .{ "stringByAbbreviatingWithTildeInPath", objc.NSString, .{} },
        .{ "stringByAddingPercentEncodingWithAllowedCharacters:", ?objc.NSString, .{NSCharacterSet} },
        .{ "stringByAddingPercentEscapesUsingEncoding:", ?objc.NSString, .{c_ulong} },
        .{ "stringByAppendingPathComponent:", objc.NSString, .{objc.NSString} },
        .{ "stringByAppendingPathExtension:", ?objc.NSString, .{objc.NSString} },
        .{ "stringByAppendingString:", objc.NSString, .{objc.NSString} },
        .{ "stringByApplyingTransform:reverse:", ?objc.NSString, .{ objc.NSString, objc.BOOL } },
        .{ "stringByDeletingLastPathComponent", objc.NSString, .{} },
        .{ "stringByDeletingPathExtension", objc.NSString, .{} },
        .{ "stringByExpandingTildeInPath", objc.NSString, .{} },
        .{ "stringByFoldingWithOptions:locale:", objc.NSString, .{ objc.NSInteger, ?NSLocale } },
        .{ "stringByPaddingToLength:withString:startingAtIndex:", objc.NSString, .{ objc.NSInteger, objc.NSString, objc.NSInteger } },
        .{ "stringByRemovingPercentEncoding", ?objc.NSString, .{} },
        .{ "stringByReplacingCharactersInRange:withString:", objc.NSString, .{ NSRange, objc.NSString } },
        .{ "stringByReplacingOccurrencesOfString:withString:", objc.NSString, .{ objc.NSString, objc.NSString } },
        .{ "stringByReplacingOccurrencesOfString:withString:options:range:", objc.NSString, .{ objc.NSString, objc.NSString, objc.NSInteger, NSRange } },
        .{ "stringByReplacingPercentEscapesUsingEncoding:", ?objc.NSString, .{c_ulong} },
        .{ "stringByResolvingSymlinksInPath", objc.NSString, .{} },
        .{ "stringByStandardizingPath", objc.NSString, .{} },
        .{ "stringByTrimmingCharactersInSet:", objc.NSString, .{NSCharacterSet} },
        .{ "stringsByAppendingPaths:", Object, .{Object} },
        .{ "substringFromIndex:", objc.NSString, .{objc.NSInteger} },
        .{ "substringToIndex:", objc.NSString, .{objc.NSInteger} },
        .{ "substringWithRange:", objc.NSString, .{NSRange} },
        .{ "uppercaseString", objc.NSString, .{} },
        .{ "uppercaseStringWithLocale:", objc.NSString, .{?NSLocale} },
        .{ "variantFittingPresentationWidth:", objc.NSString, .{objc.NSInteger} },
        .{ "writeToFile:atomically:encoding:error:", void, .{ objc.NSString, objc.BOOL, c_ulong } },
        .{ "writeToURL:atomically:encoding:error:", void, .{ NSURL, objc.BOOL, c_ulong } },
    };

    pub fn send(self: NSString, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "availableStringEncodings", c_ulong, .{} },
        .{ "defaultCStringEncoding", c_ulong, .{} },
        .{ "localizedNameOfStringEncoding:", objc.NSString, .{c_ulong} },
        .{ "pathWithComponents:", objc.NSString, .{Object} },
        .{ "stringEncodingForData:encodingOptions:convertedString:usedLossyConversion:", c_ulong, .{ NSData, ?*anyopaque, ?objc.NSString, ?*anyopaque } },
        .{ "stringWithCString:encoding:", Object, .{ ?*anyopaque, c_ulong } },
        .{ "stringWithContentsOfURL:encoding:error:", Object, .{ NSURL, c_ulong } },
        .{ "stringWithContentsOfURL:usedEncoding:error:", Object, .{ NSURL, c_ulong } },
        .{ "stringWithUTF8String:", Object, .{?*anyopaque} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSString", class_methods, selector, args);
    }
};

pub const Process = struct {
    obj: Object,

    pub const methods = .{
        .{ "arguments", ?*anyopaque, .{} },
        .{ "currentDirectoryPath", objc.NSString, .{} },
        .{ "currentDirectoryURL", ?NSURL, .{} },
        .{ "environment", ?*anyopaque, .{} },
        .{ "executableURL", ?NSURL, .{} },
        .{ "interrupt", void, .{} },
        .{ "launch", void, .{} },
        .{ "launchAndReturnError:", void, .{} },
        .{ "launchPath", ?objc.NSString, .{} },
        .{ "launchRequirementData", ?NSData, .{} },
        .{ "processIdentifier", i32, .{} },
        .{ "qualityOfService", QualityOfService, .{} },
        .{ "resume", objc.BOOL, .{} },
        .{ "running", objc.BOOL, .{} },
        .{ "setArguments:", void, .{?*anyopaque} },
        .{ "setCurrentDirectoryPath:", void, .{objc.NSString} },
        .{ "setCurrentDirectoryURL:", void, .{?NSURL} },
        .{ "setEnvironment:", void, .{?*anyopaque} },
        .{ "setExecutableURL:", void, .{?NSURL} },
        .{ "setLaunchPath:", void, .{?objc.NSString} },
        .{ "setLaunchRequirementData:", void, .{?NSData} },
        .{ "setQualityOfService:", void, .{QualityOfService} },
        .{ "setStandardError:", void, .{?Any} },
        .{ "setStandardInput:", void, .{?Any} },
        .{ "setStandardOutput:", void, .{?Any} },
        .{ "setTerminationHandler:", void, .{void} },
        .{ "standardError", ?Any, .{} },
        .{ "standardInput", ?Any, .{} },
        .{ "standardOutput", ?Any, .{} },
        .{ "suspend", objc.BOOL, .{} },
        .{ "terminate", void, .{} },
        .{ "terminationHandler", void, .{} },
        .{ "terminationReason", Process.TerminationReason, .{} },
        .{ "terminationStatus", i32, .{} },
        .{ "waitUntilExit", void, .{} },
    };

    pub fn send(self: Process, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "launchedTaskWithExecutableURL:arguments:error:terminationHandler:", Process, .{ NSURL, Object, ?*anyopaque } },
        .{ "launchedTaskWithLaunchPath:arguments:", Process, .{ objc.NSString, Object } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSTask", class_methods, selector, args);
    }

    pub const TerminationReason = enum(i64) {
        exit = 1,
        uncaughtSignal = 2,
    };
};

pub const NSTextCheckingResult = struct {
    obj: Object,

    pub const methods = .{
        .{ "URL", ?NSURL, .{} },
        .{ "addressComponents", ?*anyopaque, .{} },
        .{ "alternativeStrings", ?*anyopaque, .{} },
        .{ "components", ?*anyopaque, .{} },
        .{ "date", ?NSDate, .{} },
        .{ "duration", TimeInterval, .{} },
        .{ "grammarDetails", ?*anyopaque, .{} },
        .{ "numberOfRanges", objc.NSInteger, .{} },
        .{ "orthography", ?NSOrthography, .{} },
        .{ "phoneNumber", ?objc.NSString, .{} },
        .{ "range", NSRange, .{} },
        .{ "rangeAtIndex:", NSRange, .{objc.NSInteger} },
        .{ "rangeWithName:", NSRange, .{objc.NSString} },
        .{ "regularExpression", ?NSRegularExpression, .{} },
        .{ "replacementString", ?objc.NSString, .{} },
        .{ "resultByAdjustingRangesWithOffset:", NSTextCheckingResult, .{objc.NSInteger} },
        .{ "resultType", objc.NSInteger, .{} },
        .{ "timeZone", ?NSTimeZone, .{} },
    };

    pub fn send(self: NSTextCheckingResult, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "addressCheckingResultWithRange:components:", NSTextCheckingResult, .{ NSRange, Object } },
        .{ "correctionCheckingResultWithRange:replacementString:", NSTextCheckingResult, .{ NSRange, objc.NSString } },
        .{ "correctionCheckingResultWithRange:replacementString:alternativeStrings:", NSTextCheckingResult, .{ NSRange, objc.NSString, Object } },
        .{ "dashCheckingResultWithRange:replacementString:", NSTextCheckingResult, .{ NSRange, objc.NSString } },
        .{ "dateCheckingResultWithRange:date:", NSTextCheckingResult, .{ NSRange, NSDate } },
        .{ "dateCheckingResultWithRange:date:timeZone:duration:", NSTextCheckingResult, .{ NSRange, NSDate, NSTimeZone, TimeInterval } },
        .{ "grammarCheckingResultWithRange:details:", NSTextCheckingResult, .{ NSRange, Object } },
        .{ "linkCheckingResultWithRange:URL:", NSTextCheckingResult, .{ NSRange, NSURL } },
        .{ "orthographyCheckingResultWithRange:orthography:", NSTextCheckingResult, .{ NSRange, NSOrthography } },
        .{ "phoneNumberCheckingResultWithRange:phoneNumber:", NSTextCheckingResult, .{ NSRange, objc.NSString } },
        .{ "quoteCheckingResultWithRange:replacementString:", NSTextCheckingResult, .{ NSRange, objc.NSString } },
        .{ "regularExpressionCheckingResultWithRanges:count:regularExpression:", NSTextCheckingResult, .{ NSRange, objc.NSInteger, NSRegularExpression } },
        .{ "replacementCheckingResultWithRange:replacementString:", NSTextCheckingResult, .{ NSRange, objc.NSString } },
        .{ "spellCheckingResultWithRange:", NSTextCheckingResult, .{NSRange} },
        .{ "transitInformationCheckingResultWithRange:components:", NSTextCheckingResult, .{ NSRange, Object } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSTextCheckingResult", class_methods, selector, args);
    }
};

pub const Thread = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancel", void, .{} },
        .{ "cancelled", objc.BOOL, .{} },
        .{ "executing", objc.BOOL, .{} },
        .{ "finished", objc.BOOL, .{} },
        .{ "initWithBlock:", Thread, .{?*anyopaque} },
        .{ "initWithTarget:selector:object:", Thread, .{ Any, Selector, ?Any } },
        .{ "isMainThread", objc.BOOL, .{} },
        .{ "main", void, .{} },
        .{ "name", ?objc.NSString, .{} },
        .{ "qualityOfService", QualityOfService, .{} },
        .{ "setName:", void, .{?objc.NSString} },
        .{ "setQualityOfService:", void, .{QualityOfService} },
        .{ "setStackSize:", void, .{objc.NSInteger} },
        .{ "setThreadPriority:", void, .{f64} },
        .{ "stackSize", objc.NSInteger, .{} },
        .{ "start", void, .{} },
        .{ "threadDictionary", NSMutableDictionary, .{} },
        .{ "threadPriority", f64, .{} },
    };

    pub fn send(self: Thread, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "callStackReturnAddresses", Object, .{} },
        .{ "callStackSymbols", Object, .{} },
        .{ "currentThread", Thread, .{} },
        .{ "detachNewThreadSelector:toTarget:withObject:", void, .{ Selector, Any, ?Any } },
        .{ "detachNewThreadWithBlock:", void, .{?*anyopaque} },
        .{ "exit", void, .{} },
        .{ "isMainThread", objc.BOOL, .{} },
        .{ "isMultiThreaded", objc.BOOL, .{} },
        .{ "mainThread", Thread, .{} },
        .{ "setThreadPriority:", objc.BOOL, .{f64} },
        .{ "sleepForTimeInterval:", void, .{TimeInterval} },
        .{ "sleepUntilDate:", void, .{NSDate} },
        .{ "threadPriority", f64, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSThread", class_methods, selector, args);
    }
};

pub const NSTimeZone = struct {
    obj: Object,

    pub const methods = .{
        .{ "abbreviation", ?objc.NSString, .{} },
        .{ "abbreviationForDate:", ?objc.NSString, .{NSDate} },
        .{ "data", NSData, .{} },
        .{ "daylightSavingTime", objc.BOOL, .{} },
        .{ "daylightSavingTimeOffset", TimeInterval, .{} },
        .{ "daylightSavingTimeOffsetForDate:", TimeInterval, .{NSDate} },
        .{ "description", objc.NSString, .{} },
        .{ "initWithName:", NSTimeZone, .{objc.NSString} },
        .{ "initWithName:data:", NSTimeZone, .{ objc.NSString, ?NSData } },
        .{ "isDaylightSavingTimeForDate:", objc.BOOL, .{NSDate} },
        .{ "isEqualToTimeZone:", objc.BOOL, .{NSTimeZone} },
        .{ "localizedName:locale:", ?objc.NSString, .{ NSTimeZone.NameStyle, ?NSLocale } },
        .{ "name", objc.NSString, .{} },
        .{ "nextDaylightSavingTimeTransition", ?NSDate, .{} },
        .{ "nextDaylightSavingTimeTransitionAfterDate:", ?NSDate, .{NSDate} },
        .{ "secondsFromGMT", objc.NSInteger, .{} },
        .{ "secondsFromGMTForDate:", objc.NSInteger, .{NSDate} },
        .{ "setDaylightSavingTimeOffset:", void, .{TimeInterval} },
    };

    pub fn send(self: NSTimeZone, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "abbreviationDictionary", Object, .{} },
        .{ "defaultTimeZone", NSTimeZone, .{} },
        .{ "knownTimeZoneNames", Object, .{} },
        .{ "localTimeZone", NSTimeZone, .{} },
        .{ "resetSystemTimeZone", void, .{} },
        .{ "setAbbreviationDictionary:", void, .{Object} },
        .{ "setDefaultTimeZone:", void, .{NSTimeZone} },
        .{ "systemTimeZone", NSTimeZone, .{} },
        .{ "timeZoneDataVersion", objc.NSString, .{} },
        .{ "timeZoneForSecondsFromGMT:", Object, .{objc.NSInteger} },
        .{ "timeZoneWithAbbreviation:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSTimeZone", class_methods, selector, args);
    }

    pub const NameStyle = enum(i64) {
        standard = 0,
        shortStandard = 1,
        daylightSaving = 2,
        shortDaylightSaving = 3,
        generic = 4,
        shortGeneric = 5,
    };
};

pub const Timer = struct {
    obj: Object,

    pub const methods = .{
        .{ "fire", void, .{} },
        .{ "fireDate", NSDate, .{} },
        .{ "initWithFireDate:interval:repeats:block:", Timer, .{ NSDate, TimeInterval, objc.BOOL, ?*anyopaque } },
        .{ "initWithFireDate:interval:target:selector:userInfo:repeats:", Timer, .{ NSDate, TimeInterval, Any, Selector, ?Any, objc.BOOL } },
        .{ "invalidate", void, .{} },
        .{ "setFireDate:", void, .{NSDate} },
        .{ "setTolerance:", void, .{TimeInterval} },
        .{ "timeInterval", TimeInterval, .{} },
        .{ "tolerance", TimeInterval, .{} },
        .{ "userInfo", ?Any, .{} },
        .{ "valid", objc.BOOL, .{} },
    };

    pub fn send(self: Timer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "scheduledTimerWithTimeInterval:invocation:repeats:", Timer, .{ TimeInterval, Object, objc.BOOL } },
        .{ "scheduledTimerWithTimeInterval:repeats:block:", Timer, .{ TimeInterval, objc.BOOL, ?*anyopaque } },
        .{ "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", Timer, .{ TimeInterval, Any, Selector, ?Any, objc.BOOL } },
        .{ "timerWithTimeInterval:invocation:repeats:", Object, .{ TimeInterval, Object, objc.BOOL } },
        .{ "timerWithTimeInterval:repeats:block:", Object, .{ TimeInterval, objc.BOOL, ?*anyopaque } },
        .{ "timerWithTimeInterval:target:selector:userInfo:repeats:", Object, .{ TimeInterval, Any, Selector, ?Any, objc.BOOL } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSTimer", class_methods, selector, args);
    }
};

pub const NSURL = struct {
    obj: Object,

    pub const methods = .{
        .{ "URLByAppendingPathComponent:", ?NSURL, .{objc.NSString} },
        .{ "URLByAppendingPathComponent:isDirectory:", ?NSURL, .{ objc.NSString, objc.BOOL } },
        .{ "URLByAppendingPathExtension:", ?NSURL, .{objc.NSString} },
        .{ "URLByDeletingLastPathComponent", ?NSURL, .{} },
        .{ "URLByDeletingPathExtension", ?NSURL, .{} },
        .{ "URLByResolvingSymlinksInPath", ?NSURL, .{} },
        .{ "URLByStandardizingPath", ?NSURL, .{} },
        .{ "absoluteString", ?objc.NSString, .{} },
        .{ "absoluteURL", ?NSURL, .{} },
        .{ "baseURL", ?NSURL, .{} },
        .{ "bookmarkDataWithOptions:includingResourceValuesForKeys:relativeToURL:error:", NSData, .{ objc.NSInteger, ?*anyopaque, ?NSURL } },
        .{ "checkPromisedItemIsReachableAndReturnError:", objc.BOOL, .{Object} },
        .{ "checkResourceIsReachableAndReturnError:", objc.BOOL, .{Object} },
        .{ "dataRepresentation", NSData, .{} },
        .{ "filePathURL", ?NSURL, .{} },
        .{ "fileReferenceURL", ?NSURL, .{} },
        .{ "fileSystemRepresentation", ?*anyopaque, .{} },
        .{ "fileURL", objc.BOOL, .{} },
        .{ "fragment", ?objc.NSString, .{} },
        .{ "getFileSystemRepresentation:maxLength:", objc.BOOL, .{ ?*anyopaque, objc.NSInteger } },
        .{ "getPromisedItemResourceValue:forKey:error:", void, .{ ?*anyopaque, objc.NSString } },
        .{ "getResourceValue:forKey:error:", void, .{ ?*anyopaque, objc.NSString } },
        .{ "hasDirectoryPath", objc.BOOL, .{} },
        .{ "host", ?objc.NSString, .{} },
        .{ "initAbsoluteURLWithDataRepresentation:relativeToURL:", NSURL, .{ NSData, ?NSURL } },
        .{ "initByResolvingBookmarkData:options:relativeToURL:bookmarkDataIsStale:error:", NSURL, .{ NSData, objc.NSInteger, ?NSURL, ?*anyopaque } },
        .{ "initFileURLWithFileSystemRepresentation:isDirectory:relativeToURL:", NSURL, .{ ?*anyopaque, objc.BOOL, ?NSURL } },
        .{ "initFileURLWithPath:", NSURL, .{objc.NSString} },
        .{ "initFileURLWithPath:isDirectory:", NSURL, .{ objc.NSString, objc.BOOL } },
        .{ "initFileURLWithPath:isDirectory:relativeToURL:", NSURL, .{ objc.NSString, objc.BOOL, ?NSURL } },
        .{ "initFileURLWithPath:relativeToURL:", NSURL, .{ objc.NSString, ?NSURL } },
        .{ "initWithDataRepresentation:relativeToURL:", NSURL, .{ NSData, ?NSURL } },
        .{ "initWithScheme:host:path:", NSURL, .{ objc.NSString, ?objc.NSString, objc.NSString } },
        .{ "initWithString:", NSURL, .{objc.NSString} },
        .{ "initWithString:encodingInvalidCharacters:", NSURL, .{ objc.NSString, objc.BOOL } },
        .{ "initWithString:relativeToURL:", NSURL, .{ objc.NSString, ?NSURL } },
        .{ "isFileReferenceURL", objc.BOOL, .{} },
        .{ "lastPathComponent", ?objc.NSString, .{} },
        .{ "parameterString", ?objc.NSString, .{} },
        .{ "password", ?objc.NSString, .{} },
        .{ "path", ?objc.NSString, .{} },
        .{ "pathComponents", ?*anyopaque, .{} },
        .{ "pathExtension", ?objc.NSString, .{} },
        .{ "port", ?NSNumber, .{} },
        .{ "promisedItemResourceValuesForKeys:error:", Object, .{Object} },
        .{ "query", ?objc.NSString, .{} },
        .{ "relativePath", ?objc.NSString, .{} },
        .{ "relativeString", objc.NSString, .{} },
        .{ "removeAllCachedResourceValues", void, .{} },
        .{ "removeCachedResourceValueForKey:", void, .{objc.NSString} },
        .{ "resourceSpecifier", ?objc.NSString, .{} },
        .{ "resourceValuesForKeys:error:", Object, .{Object} },
        .{ "scheme", ?objc.NSString, .{} },
        .{ "setResourceValue:forKey:error:", void, .{ ?Any, objc.NSString } },
        .{ "setResourceValues:error:", void, .{Object} },
        .{ "setTemporaryResourceValue:forKey:", void, .{ ?*anyopaque, objc.NSString } },
        .{ "standardizedURL", ?NSURL, .{} },
        .{ "startAccessingSecurityScopedResource", objc.BOOL, .{} },
        .{ "stopAccessingSecurityScopedResource", void, .{} },
        .{ "user", ?objc.NSString, .{} },
    };

    pub fn send(self: NSURL, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "URLByResolvingAliasFileAtURL:options:error:", Object, .{ NSURL, objc.NSInteger } },
        .{ "absoluteURLWithDataRepresentation:relativeToURL:", NSURL, .{ NSData, ?NSURL } },
        .{ "bookmarkDataWithContentsOfURL:error:", NSData, .{NSURL} },
        .{ "fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:", NSURL, .{ ?*anyopaque, objc.BOOL, ?NSURL } },
        .{ "fileURLWithPath:", NSURL, .{objc.NSString} },
        .{ "fileURLWithPath:isDirectory:", NSURL, .{ objc.NSString, objc.BOOL } },
        .{ "fileURLWithPath:isDirectory:relativeToURL:", NSURL, .{ objc.NSString, objc.BOOL, ?NSURL } },
        .{ "fileURLWithPath:relativeToURL:", NSURL, .{ objc.NSString, ?NSURL } },
        .{ "fileURLWithPathComponents:", ?NSURL, .{Object} },
        .{ "resourceValuesForKeys:fromBookmarkData:", ?*anyopaque, .{ Object, NSData } },
        .{ "writeBookmarkData:toURL:options:error:", void, .{ NSData, NSURL, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURL", class_methods, selector, args);
    }
};

pub const URLAuthenticationChallenge = struct {
    obj: Object,

    pub const methods = .{
        .{ "error", ?*anyopaque, .{} },
        .{ "failureResponse", ?URLResponse, .{} },
        .{ "initWithAuthenticationChallenge:sender:", URLAuthenticationChallenge, .{ URLAuthenticationChallenge, URLAuthenticationChallengeSender } },
        .{ "initWithProtectionSpace:proposedCredential:previousFailureCount:failureResponse:error:sender:", URLAuthenticationChallenge, .{ URLProtectionSpace, ?URLCredential, objc.NSInteger, ?URLResponse, ?*anyopaque, URLAuthenticationChallengeSender } },
        .{ "previousFailureCount", objc.NSInteger, .{} },
        .{ "proposedCredential", ?URLCredential, .{} },
        .{ "protectionSpace", URLProtectionSpace, .{} },
        .{ "sender", ?URLAuthenticationChallengeSender, .{} },
    };

    pub fn send(self: URLAuthenticationChallenge, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLAuthenticationChallenge", class_methods, selector, args);
    }
};

pub const URLCache = struct {
    obj: Object,

    pub const methods = .{
        .{ "cachedResponseForRequest:", ?CachedURLResponse, .{NSURLRequest} },
        .{ "currentDiskUsage", objc.NSInteger, .{} },
        .{ "currentMemoryUsage", objc.NSInteger, .{} },
        .{ "diskCapacity", objc.NSInteger, .{} },
        .{ "getCachedResponseForDataTask:completionHandler:", void, .{ URLSessionDataTask, ?*anyopaque } },
        .{ "initWithMemoryCapacity:diskCapacity:diskPath:", URLCache, .{ objc.NSInteger, objc.NSInteger, ?objc.NSString } },
        .{ "memoryCapacity", objc.NSInteger, .{} },
        .{ "removeAllCachedResponses", void, .{} },
        .{ "removeCachedResponseForDataTask:", void, .{URLSessionDataTask} },
        .{ "removeCachedResponseForRequest:", void, .{NSURLRequest} },
        .{ "removeCachedResponsesSinceDate:", void, .{NSDate} },
        .{ "setDiskCapacity:", void, .{objc.NSInteger} },
        .{ "setMemoryCapacity:", void, .{objc.NSInteger} },
        .{ "storeCachedResponse:forDataTask:", void, .{ CachedURLResponse, URLSessionDataTask } },
        .{ "storeCachedResponse:forRequest:", void, .{ CachedURLResponse, NSURLRequest } },
    };

    pub fn send(self: URLCache, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "setSharedURLCache:", void, .{URLCache} },
        .{ "sharedURLCache", URLCache, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLCache", class_methods, selector, args);
    }

    pub const StoragePolicy = enum(i64) {
        allowed = 0,
        allowedInMemoryOnly = 1,
        notAllowed = 2,
    };
};

pub const NSURLComponents = struct {
    obj: Object,

    pub const methods = .{
        .{ "URL", ?NSURL, .{} },
        .{ "URLRelativeToURL:", ?NSURL, .{?NSURL} },
        .{ "encodedHost", ?objc.NSString, .{} },
        .{ "fragment", ?objc.NSString, .{} },
        .{ "host", ?objc.NSString, .{} },
        .{ "initWithString:", NSURLComponents, .{objc.NSString} },
        .{ "initWithString:encodingInvalidCharacters:", NSURLComponents, .{ objc.NSString, objc.BOOL } },
        .{ "initWithURL:resolvingAgainstBaseURL:", NSURLComponents, .{ NSURL, objc.BOOL } },
        .{ "password", ?objc.NSString, .{} },
        .{ "path", ?objc.NSString, .{} },
        .{ "percentEncodedFragment", ?objc.NSString, .{} },
        .{ "percentEncodedHost", ?objc.NSString, .{} },
        .{ "percentEncodedPassword", ?objc.NSString, .{} },
        .{ "percentEncodedPath", ?objc.NSString, .{} },
        .{ "percentEncodedQuery", ?objc.NSString, .{} },
        .{ "percentEncodedQueryItems", ?*anyopaque, .{} },
        .{ "percentEncodedUser", ?objc.NSString, .{} },
        .{ "port", ?NSNumber, .{} },
        .{ "query", ?objc.NSString, .{} },
        .{ "queryItems", ?*anyopaque, .{} },
        .{ "rangeOfFragment", NSRange, .{} },
        .{ "rangeOfHost", NSRange, .{} },
        .{ "rangeOfPassword", NSRange, .{} },
        .{ "rangeOfPath", NSRange, .{} },
        .{ "rangeOfPort", NSRange, .{} },
        .{ "rangeOfQuery", NSRange, .{} },
        .{ "rangeOfScheme", NSRange, .{} },
        .{ "rangeOfUser", NSRange, .{} },
        .{ "scheme", ?objc.NSString, .{} },
        .{ "setEncodedHost:", void, .{?objc.NSString} },
        .{ "setFragment:", void, .{?objc.NSString} },
        .{ "setHost:", void, .{?objc.NSString} },
        .{ "setPassword:", void, .{?objc.NSString} },
        .{ "setPath:", void, .{?objc.NSString} },
        .{ "setPercentEncodedFragment:", void, .{?objc.NSString} },
        .{ "setPercentEncodedHost:", void, .{?objc.NSString} },
        .{ "setPercentEncodedPassword:", void, .{?objc.NSString} },
        .{ "setPercentEncodedPath:", void, .{?objc.NSString} },
        .{ "setPercentEncodedQuery:", void, .{?objc.NSString} },
        .{ "setPercentEncodedQueryItems:", void, .{?*anyopaque} },
        .{ "setPercentEncodedUser:", void, .{?objc.NSString} },
        .{ "setPort:", void, .{?NSNumber} },
        .{ "setQuery:", void, .{?objc.NSString} },
        .{ "setQueryItems:", void, .{?*anyopaque} },
        .{ "setScheme:", void, .{?objc.NSString} },
        .{ "setUser:", void, .{?objc.NSString} },
        .{ "string", ?objc.NSString, .{} },
        .{ "user", ?objc.NSString, .{} },
    };

    pub fn send(self: NSURLComponents, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLComponents", class_methods, selector, args);
    }
};

pub const NSURLConnection = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancel", void, .{} },
        .{ "currentRequest", NSURLRequest, .{} },
        .{ "initWithRequest:delegate:", NSURLConnection, .{ NSURLRequest, ?Any } },
        .{ "initWithRequest:delegate:startImmediately:", NSURLConnection, .{ NSURLRequest, ?Any, objc.BOOL } },
        .{ "originalRequest", NSURLRequest, .{} },
        .{ "scheduleInRunLoop:forMode:", void, .{ RunLoop, objc.NSString } },
        .{ "setDelegateQueue:", void, .{?OperationQueue} },
        .{ "start", void, .{} },
        .{ "unscheduleFromRunLoop:forMode:", void, .{ RunLoop, objc.NSString } },
    };

    pub fn send(self: NSURLConnection, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "canHandleRequest:", objc.BOOL, .{NSURLRequest} },
        .{ "sendAsynchronousRequest:queue:completionHandler:", void, .{ NSURLRequest, OperationQueue, ?*anyopaque } },
        .{ "sendSynchronousRequest:returningResponse:error:", NSData, .{ NSURLRequest, ?URLResponse } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLConnection", class_methods, selector, args);
    }
};

pub const URLCredential = struct {
    obj: Object,

    pub const methods = .{
        .{ "certificates", Object, .{} },
        .{ "hasPassword", objc.BOOL, .{} },
        .{ "identity", ?*anyopaque, .{} },
        .{ "initWithIdentity:certificates:persistence:", URLCredential, .{ ?*anyopaque, ?*anyopaque, URLCredential.Persistence } },
        .{ "initWithTrust:", URLCredential, .{?*anyopaque} },
        .{ "initWithUser:password:persistence:", URLCredential, .{ objc.NSString, objc.NSString, URLCredential.Persistence } },
        .{ "password", ?objc.NSString, .{} },
        .{ "persistence", URLCredential.Persistence, .{} },
        .{ "user", ?objc.NSString, .{} },
    };

    pub fn send(self: URLCredential, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "credentialForTrust:", Object, .{?*anyopaque} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLCredential", class_methods, selector, args);
    }

    pub const Persistence = enum(i64) {
        none = 0,
        forSession = 1,
        permanent = 2,
        synchronizable = 3,
    };
};

pub const URLCredentialStorage = struct {
    obj: Object,

    pub const methods = .{
        .{ "allCredentials", Object, .{} },
        .{ "credentialsForProtectionSpace:", ?*anyopaque, .{URLProtectionSpace} },
        .{ "defaultCredentialForProtectionSpace:", ?URLCredential, .{URLProtectionSpace} },
        .{ "getCredentialsForProtectionSpace:task:completionHandler:", void, .{ URLProtectionSpace, URLSessionTask, ?*anyopaque } },
        .{ "getDefaultCredentialForProtectionSpace:task:completionHandler:", void, .{ URLProtectionSpace, URLSessionTask, ?*anyopaque } },
        .{ "removeCredential:forProtectionSpace:", void, .{ URLCredential, URLProtectionSpace } },
        .{ "removeCredential:forProtectionSpace:options:", void, .{ URLCredential, URLProtectionSpace, ?*anyopaque } },
        .{ "removeCredential:forProtectionSpace:options:task:", void, .{ URLCredential, URLProtectionSpace, ?*anyopaque, URLSessionTask } },
        .{ "setCredential:forProtectionSpace:", void, .{ URLCredential, URLProtectionSpace } },
        .{ "setCredential:forProtectionSpace:task:", void, .{ URLCredential, URLProtectionSpace, URLSessionTask } },
        .{ "setDefaultCredential:forProtectionSpace:", void, .{ URLCredential, URLProtectionSpace } },
        .{ "setDefaultCredential:forProtectionSpace:task:", void, .{ URLCredential, URLProtectionSpace, URLSessionTask } },
    };

    pub fn send(self: URLCredentialStorage, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedCredentialStorage", URLCredentialStorage, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLCredentialStorage", class_methods, selector, args);
    }
};

pub const NSURLDownload = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancel", void, .{} },
        .{ "deletesFileUponFailure", objc.BOOL, .{} },
        .{ "initWithRequest:delegate:", NSURLDownload, .{ NSURLRequest, ?NSURLDownloadDelegate } },
        .{ "initWithResumeData:delegate:path:", NSURLDownload, .{ NSData, ?NSURLDownloadDelegate, objc.NSString } },
        .{ "request", NSURLRequest, .{} },
        .{ "resumeData", ?NSData, .{} },
        .{ "setDeletesFileUponFailure:", void, .{objc.BOOL} },
        .{ "setDestination:allowOverwrite:", void, .{ objc.NSString, objc.BOOL } },
    };

    pub fn send(self: NSURLDownload, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "canResumeDownloadDecodedWithEncodingMIMEType:", objc.BOOL, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLDownload", class_methods, selector, args);
    }
};

pub const NSURLHandle = struct {
    pub const Status = enum(i64) {
        notLoaded = 0,
        loadSucceeded = 1,
        loadInProgress = 2,
        loadFailed = 3,
    };
};

pub const URLProtectionSpace = struct {
    obj: Object,

    pub const methods = .{
        .{ "authenticationMethod", objc.NSString, .{} },
        .{ "distinguishedNames", ?*anyopaque, .{} },
        .{ "host", objc.NSString, .{} },
        .{ "initWithHost:port:protocol:realm:authenticationMethod:", URLProtectionSpace, .{ objc.NSString, objc.NSInteger, ?objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "initWithProxyHost:port:type:realm:authenticationMethod:", URLProtectionSpace, .{ objc.NSString, objc.NSInteger, ?objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "isProxy", objc.BOOL, .{} },
        .{ "port", objc.NSInteger, .{} },
        .{ "protocol", ?objc.NSString, .{} },
        .{ "proxyType", ?objc.NSString, .{} },
        .{ "realm", ?objc.NSString, .{} },
        .{ "receivesCredentialSecurely", objc.BOOL, .{} },
        .{ "serverTrust", ?*anyopaque, .{} },
    };

    pub fn send(self: URLProtectionSpace, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLProtectionSpace", class_methods, selector, args);
    }
};

pub const URLProtocol = struct {
    obj: Object,

    pub const methods = .{
        .{ "cachedResponse", ?CachedURLResponse, .{} },
        .{ "client", ?URLProtocolClient, .{} },
        .{ "initWithRequest:cachedResponse:client:", URLProtocol, .{ NSURLRequest, ?CachedURLResponse, ?URLProtocolClient } },
        .{ "initWithTask:cachedResponse:client:", URLProtocol, .{ URLSessionTask, ?CachedURLResponse, ?URLProtocolClient } },
        .{ "request", NSURLRequest, .{} },
        .{ "startLoading", void, .{} },
        .{ "stopLoading", void, .{} },
        .{ "task", ?URLSessionTask, .{} },
    };

    pub fn send(self: URLProtocol, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "canInitWithRequest:", objc.BOOL, .{NSURLRequest} },
        .{ "canInitWithTask:", objc.BOOL, .{URLSessionTask} },
        .{ "canonicalRequestForRequest:", NSURLRequest, .{NSURLRequest} },
        .{ "propertyForKey:inRequest:", ?Any, .{ objc.NSString, NSURLRequest } },
        .{ "registerClass:", objc.BOOL, .{AnyClass} },
        .{ "removePropertyForKey:inRequest:", void, .{ objc.NSString, NSMutableURLRequest } },
        .{ "requestIsCacheEquivalent:toRequest:", objc.BOOL, .{ NSURLRequest, NSURLRequest } },
        .{ "setProperty:forKey:inRequest:", void, .{ Any, objc.NSString, NSMutableURLRequest } },
        .{ "unregisterClass:", void, .{AnyClass} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLProtocol", class_methods, selector, args);
    }
};

pub const NSURLQueryItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "initWithName:value:", NSURLQueryItem, .{ objc.NSString, ?objc.NSString } },
        .{ "name", objc.NSString, .{} },
        .{ "value", ?objc.NSString, .{} },
    };

    pub fn send(self: NSURLQueryItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLQueryItem", class_methods, selector, args);
    }
};

pub const NSURLRequest = struct {
    obj: Object,

    pub const methods = .{
        .{ "HTTPBody", ?NSData, .{} },
        .{ "HTTPBodyStream", ?InputStream, .{} },
        .{ "HTTPMethod", ?objc.NSString, .{} },
        .{ "HTTPShouldHandleCookies", objc.BOOL, .{} },
        .{ "HTTPShouldUsePipelining", objc.BOOL, .{} },
        .{ "URL", ?NSURL, .{} },
        .{ "allHTTPHeaderFields", ?*anyopaque, .{} },
        .{ "allowsCellularAccess", objc.BOOL, .{} },
        .{ "allowsConstrainedNetworkAccess", objc.BOOL, .{} },
        .{ "allowsExpensiveNetworkAccess", objc.BOOL, .{} },
        .{ "allowsPersistentDNS", objc.BOOL, .{} },
        .{ "allowsUltraConstrainedNetworkAccess", objc.BOOL, .{} },
        .{ "assumesHTTP3Capable", objc.BOOL, .{} },
        .{ "attribution", NSURLRequest.Attribution, .{} },
        .{ "cachePolicy", NSURLRequest.CachePolicy, .{} },
        .{ "cookiePartitionIdentifier", ?objc.NSString, .{} },
        .{ "initWithURL:", NSURLRequest, .{NSURL} },
        .{ "initWithURL:cachePolicy:timeoutInterval:", NSURLRequest, .{ NSURL, NSURLRequest.CachePolicy, TimeInterval } },
        .{ "mainDocumentURL", ?NSURL, .{} },
        .{ "networkServiceType", NSURLRequest.NetworkServiceType, .{} },
        .{ "requiresDNSSECValidation", objc.BOOL, .{} },
        .{ "timeoutInterval", TimeInterval, .{} },
        .{ "valueForHTTPHeaderField:", ?objc.NSString, .{objc.NSString} },
    };

    pub fn send(self: NSURLRequest, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "supportsSecureCoding", objc.BOOL, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLRequest", class_methods, selector, args);
    }

    pub const Attribution = enum(i64) {
        developer = 0,
        user = 1,
    };
    pub const CachePolicy = enum(i64) {
        useProtocolCachePolicy = 0,
        reloadIgnoringLocalCacheData = 1,
        returnCacheDataElseLoad = 2,
        returnCacheDataDontLoad = 3,
        reloadIgnoringLocalAndRemoteCacheData = 4,
        reloadRevalidatingCacheData = 5,
    };
    pub const NetworkServiceType = enum(i64) {
        default = 0,
        voip = 1,
        video = 2,
        background = 3,
        voice = 4,
        responsiveData = 6,
        avStreaming = 8,
        responsiveAV = 9,
        callSignaling = 11,
    };
};

pub const URLResponse = struct {
    obj: Object,

    pub const methods = .{
        .{ "MIMEType", ?objc.NSString, .{} },
        .{ "URL", ?NSURL, .{} },
        .{ "expectedContentLength", i64, .{} },
        .{ "initWithURL:MIMEType:expectedContentLength:textEncodingName:", URLResponse, .{ NSURL, ?objc.NSString, objc.NSInteger, ?objc.NSString } },
        .{ "suggestedFilename", ?objc.NSString, .{} },
        .{ "textEncodingName", ?objc.NSString, .{} },
    };

    pub fn send(self: URLResponse, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLResponse", class_methods, selector, args);
    }
};

pub const URLSession = struct {
    obj: Object,

    pub const methods = .{
        .{ "configuration", URLSessionConfiguration, .{} },
        .{ "dataTaskWithRequest:", URLSessionDataTask, .{NSURLRequest} },
        .{ "dataTaskWithRequest:completionHandler:", URLSessionDataTask, .{ NSURLRequest, ?*anyopaque } },
        .{ "dataTaskWithURL:", URLSessionDataTask, .{NSURL} },
        .{ "dataTaskWithURL:completionHandler:", URLSessionDataTask, .{ NSURL, ?*anyopaque } },
        .{ "delegate", ?URLSessionDelegate, .{} },
        .{ "delegateQueue", OperationQueue, .{} },
        .{ "downloadTaskWithRequest:", URLSessionDownloadTask, .{NSURLRequest} },
        .{ "downloadTaskWithRequest:completionHandler:", URLSessionDownloadTask, .{ NSURLRequest, ?*anyopaque } },
        .{ "downloadTaskWithResumeData:", URLSessionDownloadTask, .{NSData} },
        .{ "downloadTaskWithResumeData:completionHandler:", URLSessionDownloadTask, .{ NSData, ?*anyopaque } },
        .{ "downloadTaskWithURL:", URLSessionDownloadTask, .{NSURL} },
        .{ "downloadTaskWithURL:completionHandler:", URLSessionDownloadTask, .{ NSURL, ?*anyopaque } },
        .{ "finishTasksAndInvalidate", void, .{} },
        .{ "flushWithCompletionHandler:", void, .{?*anyopaque} },
        .{ "getAllTasksWithCompletionHandler:", void, .{?*anyopaque} },
        .{ "getTasksWithCompletionHandler:", void, .{?*anyopaque} },
        .{ "invalidateAndCancel", void, .{} },
        .{ "resetWithCompletionHandler:", void, .{?*anyopaque} },
        .{ "sessionDescription", ?objc.NSString, .{} },
        .{ "setSessionDescription:", void, .{?objc.NSString} },
        .{ "streamTaskWithHostName:port:", URLSessionStreamTask, .{ objc.NSString, objc.NSInteger } },
        .{ "streamTaskWithNetService:", URLSessionStreamTask, .{NetService} },
        .{ "uploadTaskWithRequest:fromData:", URLSessionUploadTask, .{ NSURLRequest, NSData } },
        .{ "uploadTaskWithRequest:fromData:completionHandler:", URLSessionUploadTask, .{ NSURLRequest, ?NSData, ?*anyopaque } },
        .{ "uploadTaskWithRequest:fromFile:", URLSessionUploadTask, .{ NSURLRequest, NSURL } },
        .{ "uploadTaskWithRequest:fromFile:completionHandler:", URLSessionUploadTask, .{ NSURLRequest, NSURL, ?*anyopaque } },
        .{ "uploadTaskWithResumeData:", URLSessionUploadTask, .{NSData} },
        .{ "uploadTaskWithResumeData:completionHandler:", URLSessionUploadTask, .{ NSData, ?*anyopaque } },
        .{ "uploadTaskWithStreamedRequest:", URLSessionUploadTask, .{NSURLRequest} },
        .{ "webSocketTaskWithRequest:", URLSessionWebSocketTask, .{NSURLRequest} },
        .{ "webSocketTaskWithURL:", URLSessionWebSocketTask, .{NSURL} },
        .{ "webSocketTaskWithURL:protocols:", URLSessionWebSocketTask, .{ NSURL, Object } },
    };

    pub fn send(self: URLSession, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "new", ?*anyopaque, .{} },
        .{ "sessionWithConfiguration:", Object, .{URLSessionConfiguration} },
        .{ "sessionWithConfiguration:delegate:delegateQueue:", Object, .{ URLSessionConfiguration, ?URLSessionDelegate, ?OperationQueue } },
        .{ "sharedSession", URLSession, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLSession", class_methods, selector, args);
    }

    pub const AuthChallengeDisposition = enum(i64) {
        useCredential = 0,
        performDefaultHandling = 1,
        cancelAuthenticationChallenge = 2,
        rejectProtectionSpace = 3,
    };
    pub const DelayedRequestDisposition = enum(i64) {
        continueLoading = 0,
        useNewRequest = 1,
        cancel = 2,
    };
    pub const ResponseDisposition = enum(i64) {
        cancel = 0,
        allow = 1,
        becomeDownload = 2,
        becomeStream = 3,
    };
};

pub const URLSessionConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "HTTPAdditionalHeaders", ?*anyopaque, .{} },
        .{ "HTTPCookieAcceptPolicy", HTTPCookie.AcceptPolicy, .{} },
        .{ "HTTPCookieStorage", ?HTTPCookieStorage, .{} },
        .{ "HTTPMaximumConnectionsPerHost", objc.NSInteger, .{} },
        .{ "HTTPShouldSetCookies", objc.BOOL, .{} },
        .{ "HTTPShouldUsePipelining", objc.BOOL, .{} },
        .{ "TLSMaximumSupportedProtocol", objc.NSInteger, .{} },
        .{ "TLSMaximumSupportedProtocolVersion", objc.NSInteger, .{} },
        .{ "TLSMinimumSupportedProtocol", objc.NSInteger, .{} },
        .{ "TLSMinimumSupportedProtocolVersion", objc.NSInteger, .{} },
        .{ "URLCache", ?URLCache, .{} },
        .{ "URLCredentialStorage", ?URLCredentialStorage, .{} },
        .{ "allowsCellularAccess", objc.BOOL, .{} },
        .{ "allowsConstrainedNetworkAccess", objc.BOOL, .{} },
        .{ "allowsExpensiveNetworkAccess", objc.BOOL, .{} },
        .{ "allowsUltraConstrainedNetworkAccess", objc.BOOL, .{} },
        .{ "connectionProxyDictionary", ?*anyopaque, .{} },
        .{ "discretionary", objc.BOOL, .{} },
        .{ "enablesEarlyData", objc.BOOL, .{} },
        .{ "identifier", ?objc.NSString, .{} },
        .{ "networkServiceType", NSURLRequest.NetworkServiceType, .{} },
        .{ "protocolClasses", ?*anyopaque, .{} },
        .{ "requestCachePolicy", NSURLRequest.CachePolicy, .{} },
        .{ "requiresDNSSECValidation", objc.BOOL, .{} },
        .{ "sessionSendsLaunchEvents", objc.BOOL, .{} },
        .{ "setAllowsCellularAccess:", void, .{objc.BOOL} },
        .{ "setAllowsConstrainedNetworkAccess:", void, .{objc.BOOL} },
        .{ "setAllowsExpensiveNetworkAccess:", void, .{objc.BOOL} },
        .{ "setAllowsUltraConstrainedNetworkAccess:", void, .{objc.BOOL} },
        .{ "setConnectionProxyDictionary:", void, .{?*anyopaque} },
        .{ "setDiscretionary:", void, .{objc.BOOL} },
        .{ "setEnablesEarlyData:", void, .{objc.BOOL} },
        .{ "setHTTPAdditionalHeaders:", void, .{?*anyopaque} },
        .{ "setHTTPCookieAcceptPolicy:", void, .{HTTPCookie.AcceptPolicy} },
        .{ "setHTTPCookieStorage:", void, .{?HTTPCookieStorage} },
        .{ "setHTTPMaximumConnectionsPerHost:", void, .{objc.NSInteger} },
        .{ "setHTTPShouldSetCookies:", void, .{objc.BOOL} },
        .{ "setHTTPShouldUsePipelining:", void, .{objc.BOOL} },
        .{ "setNetworkServiceType:", void, .{NSURLRequest.NetworkServiceType} },
        .{ "setProtocolClasses:", void, .{?*anyopaque} },
        .{ "setRequestCachePolicy:", void, .{NSURLRequest.CachePolicy} },
        .{ "setRequiresDNSSECValidation:", void, .{objc.BOOL} },
        .{ "setSessionSendsLaunchEvents:", void, .{objc.BOOL} },
        .{ "setSharedContainerIdentifier:", void, .{?objc.NSString} },
        .{ "setShouldUseExtendedBackgroundIdleMode:", void, .{objc.BOOL} },
        .{ "setTLSMaximumSupportedProtocol:", void, .{objc.NSInteger} },
        .{ "setTLSMaximumSupportedProtocolVersion:", void, .{objc.NSInteger} },
        .{ "setTLSMinimumSupportedProtocol:", void, .{objc.NSInteger} },
        .{ "setTLSMinimumSupportedProtocolVersion:", void, .{objc.NSInteger} },
        .{ "setTimeoutIntervalForRequest:", void, .{TimeInterval} },
        .{ "setTimeoutIntervalForResource:", void, .{TimeInterval} },
        .{ "setURLCache:", void, .{?URLCache} },
        .{ "setURLCredentialStorage:", void, .{?URLCredentialStorage} },
        .{ "setUsesClassicLoadingMode:", void, .{objc.BOOL} },
        .{ "setWaitsForConnectivity:", void, .{objc.BOOL} },
        .{ "sharedContainerIdentifier", ?objc.NSString, .{} },
        .{ "shouldUseExtendedBackgroundIdleMode", objc.BOOL, .{} },
        .{ "timeoutIntervalForRequest", TimeInterval, .{} },
        .{ "timeoutIntervalForResource", TimeInterval, .{} },
        .{ "usesClassicLoadingMode", objc.BOOL, .{} },
        .{ "waitsForConnectivity", objc.BOOL, .{} },
    };

    pub fn send(self: URLSessionConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "backgroundSessionConfiguration:", URLSessionConfiguration, .{objc.NSString} },
        .{ "backgroundSessionConfigurationWithIdentifier:", URLSessionConfiguration, .{objc.NSString} },
        .{ "defaultSessionConfiguration", URLSessionConfiguration, .{} },
        .{ "ephemeralSessionConfiguration", URLSessionConfiguration, .{} },
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLSessionConfiguration", class_methods, selector, args);
    }
};

pub const URLSessionDataTask = struct {
    pub const class_methods = .{
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLSessionDataTask", class_methods, selector, args);
    }
};

pub const URLSessionDownloadTask = struct {
    obj: Object,

    pub const Super = URLSessionTask;
    pub const methods = .{
        .{ "cancelByProducingResumeData:", void, .{?*anyopaque} },
    };

    pub fn send(self: URLSessionDownloadTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLSessionDownloadTask", class_methods, selector, args);
    }
};

pub const URLSessionStreamTask = struct {
    obj: Object,

    pub const Super = URLSessionTask;
    pub const methods = .{
        .{ "captureStreams", void, .{} },
        .{ "closeRead", void, .{} },
        .{ "closeWrite", void, .{} },
        .{ "readDataOfMinLength:maxLength:timeout:completionHandler:", void, .{ objc.NSInteger, objc.NSInteger, TimeInterval, ?*anyopaque } },
        .{ "startSecureConnection", void, .{} },
        .{ "stopSecureConnection", void, .{} },
        .{ "writeData:timeout:completionHandler:", void, .{ NSData, TimeInterval, ?*anyopaque } },
    };

    pub fn send(self: URLSessionStreamTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLSessionStreamTask", class_methods, selector, args);
    }
};

pub const URLSessionTask = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancel", void, .{} },
        .{ "countOfBytesClientExpectsToReceive", i64, .{} },
        .{ "countOfBytesClientExpectsToSend", i64, .{} },
        .{ "countOfBytesExpectedToReceive", i64, .{} },
        .{ "countOfBytesExpectedToSend", i64, .{} },
        .{ "countOfBytesReceived", i64, .{} },
        .{ "countOfBytesSent", i64, .{} },
        .{ "currentRequest", ?NSURLRequest, .{} },
        .{ "delegate", ?URLSessionTaskDelegate, .{} },
        .{ "earliestBeginDate", ?NSDate, .{} },
        .{ "error", ?*anyopaque, .{} },
        .{ "originalRequest", ?NSURLRequest, .{} },
        .{ "prefersIncrementalDelivery", objc.BOOL, .{} },
        .{ "priority", f32, .{} },
        .{ "progress", Progress, .{} },
        .{ "response", ?URLResponse, .{} },
        .{ "resume", void, .{} },
        .{ "setCountOfBytesClientExpectsToReceive:", void, .{i64} },
        .{ "setCountOfBytesClientExpectsToSend:", void, .{i64} },
        .{ "setDelegate:", void, .{?URLSessionTaskDelegate} },
        .{ "setEarliestBeginDate:", void, .{?NSDate} },
        .{ "setPrefersIncrementalDelivery:", void, .{objc.BOOL} },
        .{ "setPriority:", void, .{f32} },
        .{ "setTaskDescription:", void, .{?objc.NSString} },
        .{ "state", URLSessionTask.State, .{} },
        .{ "suspend", void, .{} },
        .{ "taskDescription", ?objc.NSString, .{} },
        .{ "taskIdentifier", objc.NSInteger, .{} },
    };

    pub fn send(self: URLSessionTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLSessionTask", class_methods, selector, args);
    }

    pub const State = enum(i64) {
        running = 0,
        suspended = 1,
        canceling = 2,
        completed = 3,
    };
};

pub const URLSessionTaskMetrics = struct {
    obj: Object,

    pub const methods = .{
        .{ "redirectCount", objc.NSInteger, .{} },
        .{ "taskInterval", NSDateInterval, .{} },
        .{ "transactionMetrics", Object, .{} },
    };

    pub fn send(self: URLSessionTaskMetrics, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLSessionTaskMetrics", class_methods, selector, args);
    }

    pub const DomainResolutionProtocol = enum(i64) {
        unknown = 0,
        udp = 1,
        tcp = 2,
        tls = 3,
        https = 4,
    };
    pub const ResourceFetchType = enum(i64) {
        unknown = 0,
        networkLoad = 1,
        serverPush = 2,
        localCache = 3,
    };
};

pub const URLSessionTaskTransactionMetrics = struct {
    obj: Object,

    pub const methods = .{
        .{ "cellular", objc.BOOL, .{} },
        .{ "connectEndDate", ?NSDate, .{} },
        .{ "connectStartDate", ?NSDate, .{} },
        .{ "constrained", objc.BOOL, .{} },
        .{ "countOfRequestBodyBytesBeforeEncoding", i64, .{} },
        .{ "countOfRequestBodyBytesSent", i64, .{} },
        .{ "countOfRequestHeaderBytesSent", i64, .{} },
        .{ "countOfResponseBodyBytesAfterDecoding", i64, .{} },
        .{ "countOfResponseBodyBytesReceived", i64, .{} },
        .{ "countOfResponseHeaderBytesReceived", i64, .{} },
        .{ "domainLookupEndDate", ?NSDate, .{} },
        .{ "domainLookupStartDate", ?NSDate, .{} },
        .{ "domainResolutionProtocol", URLSessionTaskMetrics.DomainResolutionProtocol, .{} },
        .{ "expensive", objc.BOOL, .{} },
        .{ "fetchStartDate", ?NSDate, .{} },
        .{ "localAddress", ?objc.NSString, .{} },
        .{ "multipath", objc.BOOL, .{} },
        .{ "networkProtocolName", ?objc.NSString, .{} },
        .{ "proxyConnection", objc.BOOL, .{} },
        .{ "remoteAddress", ?objc.NSString, .{} },
        .{ "request", NSURLRequest, .{} },
        .{ "requestEndDate", ?NSDate, .{} },
        .{ "requestStartDate", ?NSDate, .{} },
        .{ "resourceFetchType", URLSessionTaskMetrics.ResourceFetchType, .{} },
        .{ "response", ?URLResponse, .{} },
        .{ "responseEndDate", ?NSDate, .{} },
        .{ "responseStartDate", ?NSDate, .{} },
        .{ "reusedConnection", objc.BOOL, .{} },
        .{ "secureConnectionEndDate", ?NSDate, .{} },
        .{ "secureConnectionStartDate", ?NSDate, .{} },
    };

    pub fn send(self: URLSessionTaskTransactionMetrics, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLSessionTaskTransactionMetrics", class_methods, selector, args);
    }
};

pub const URLSessionUploadTask = struct {
    obj: Object,

    pub const Super = URLSessionDataTask;
    pub const methods = .{
        .{ "cancelByProducingResumeData:", void, .{?*anyopaque} },
    };

    pub fn send(self: URLSessionUploadTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLSessionUploadTask", class_methods, selector, args);
    }
};

pub const URLSessionWebSocketTask = struct {
    obj: Object,

    pub const Super = URLSessionTask;
    pub const methods = .{
        .{ "cancelWithCloseCode:reason:", void, .{ URLSessionWebSocketTask.CloseCode, ?NSData } },
        .{ "closeCode", URLSessionWebSocketTask.CloseCode, .{} },
        .{ "closeReason", ?NSData, .{} },
        .{ "maximumMessageSize", objc.NSInteger, .{} },
        .{ "sendPingWithPongReceiveHandler:", void, .{?*anyopaque} },
        .{ "setMaximumMessageSize:", void, .{objc.NSInteger} },
    };

    pub fn send(self: URLSessionWebSocketTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSURLSessionWebSocketTask", class_methods, selector, args);
    }

    pub const CloseCode = enum(i64) {
        invalid = 0,
        normalClosure = 1000,
        goingAway = 1001,
        protocolError = 1002,
        unsupportedData = 1003,
        noStatusReceived = 1005,
        abnormalClosure = 1006,
        invalidFramePayloadData = 1007,
        policyViolation = 1008,
        messageTooBig = 1009,
        mandatoryExtensionMissing = 1010,
        internalServerError = 1011,
        tlsHandshakeFailure = 1015,
    };
};

pub const NSUUID = struct {
    obj: Object,

    pub const methods = .{
        .{ "UUIDString", objc.NSString, .{} },
        .{ "compare:", ComparisonResult, .{NSUUID} },
        .{ "getUUIDBytes:", void, .{u8} },
        .{ "initWithUUIDBytes:", NSUUID, .{u8} },
        .{ "initWithUUIDString:", NSUUID, .{objc.NSString} },
    };

    pub fn send(self: NSUUID, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUUID", class_methods, selector, args);
    }
};

pub const NSUbiquitousKeyValueStore = struct {
    obj: Object,

    pub const methods = .{
        .{ "arrayForKey:", ?*anyopaque, .{objc.NSString} },
        .{ "boolForKey:", objc.BOOL, .{objc.NSString} },
        .{ "dataForKey:", ?NSData, .{objc.NSString} },
        .{ "dictionaryForKey:", ?*anyopaque, .{objc.NSString} },
        .{ "dictionaryRepresentation", Object, .{} },
        .{ "doubleForKey:", f64, .{objc.NSString} },
        .{ "longLongForKey:", i64, .{objc.NSString} },
        .{ "objectForKey:", ?Any, .{objc.NSString} },
        .{ "removeObjectForKey:", void, .{objc.NSString} },
        .{ "setArray:forKey:", void, .{ ?*anyopaque, objc.NSString } },
        .{ "setBool:forKey:", void, .{ objc.BOOL, objc.NSString } },
        .{ "setData:forKey:", void, .{ ?NSData, objc.NSString } },
        .{ "setDictionary:forKey:", void, .{ ?*anyopaque, objc.NSString } },
        .{ "setDouble:forKey:", void, .{ f64, objc.NSString } },
        .{ "setLongLong:forKey:", void, .{ i64, objc.NSString } },
        .{ "setObject:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "setString:forKey:", void, .{ ?objc.NSString, objc.NSString } },
        .{ "stringForKey:", ?objc.NSString, .{objc.NSString} },
        .{ "synchronize", objc.BOOL, .{} },
    };

    pub fn send(self: NSUbiquitousKeyValueStore, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultStore", NSUbiquitousKeyValueStore, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUbiquitousKeyValueStore", class_methods, selector, args);
    }
};

pub const NSUnarchiver = struct {
    obj: Object,

    pub const Super = NSCoder;
    pub const methods = .{
        .{ "atEnd", objc.BOOL, .{} },
        .{ "classNameDecodedForArchiveClassName:", objc.NSString, .{objc.NSString} },
        .{ "decodeClassName:asClassName:", void, .{ objc.NSString, objc.NSString } },
        .{ "initForReadingWithData:", NSUnarchiver, .{NSData} },
        .{ "replaceObject:withObject:", void, .{ Any, Any } },
        .{ "systemVersion", u32, .{} },
    };

    pub fn send(self: NSUnarchiver, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "classNameDecodedForArchiveClassName:", objc.NSString, .{objc.NSString} },
        .{ "decodeClassName:asClassName:", void, .{ objc.NSString, objc.NSString } },
        .{ "unarchiveObjectWithData:", ?Any, .{NSData} },
        .{ "unarchiveObjectWithFile:", ?Any, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnarchiver", class_methods, selector, args);
    }
};

pub const UndoManager = struct {
    obj: Object,

    pub const methods = .{
        .{ "beginUndoGrouping", void, .{} },
        .{ "canRedo", objc.BOOL, .{} },
        .{ "canUndo", objc.BOOL, .{} },
        .{ "disableUndoRegistration", void, .{} },
        .{ "enableUndoRegistration", void, .{} },
        .{ "endUndoGrouping", void, .{} },
        .{ "groupingLevel", objc.NSInteger, .{} },
        .{ "groupsByEvent", objc.BOOL, .{} },
        .{ "levelsOfUndo", objc.NSInteger, .{} },
        .{ "prepareWithInvocationTarget:", Any, .{Any} },
        .{ "redo", void, .{} },
        .{ "redoActionIsDiscardable", objc.BOOL, .{} },
        .{ "redoActionName", objc.NSString, .{} },
        .{ "redoActionUserInfoValueForKey:", ?Any, .{objc.NSString} },
        .{ "redoCount", objc.NSInteger, .{} },
        .{ "redoMenuItemTitle", objc.NSString, .{} },
        .{ "redoMenuTitleForUndoActionName:", objc.NSString, .{objc.NSString} },
        .{ "redoing", objc.BOOL, .{} },
        .{ "registerUndoWithTarget:selector:object:", void, .{ Any, Selector, ?Any } },
        .{ "removeAllActions", void, .{} },
        .{ "removeAllActionsWithTarget:", void, .{Any} },
        .{ "runLoopModes", Object, .{} },
        .{ "setActionIsDiscardable:", void, .{objc.BOOL} },
        .{ "setActionName:", void, .{objc.NSString} },
        .{ "setActionUserInfoValue:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "setGroupsByEvent:", void, .{objc.BOOL} },
        .{ "setLevelsOfUndo:", void, .{objc.NSInteger} },
        .{ "setRunLoopModes:", void, .{Object} },
        .{ "undo", void, .{} },
        .{ "undoActionIsDiscardable", objc.BOOL, .{} },
        .{ "undoActionName", objc.NSString, .{} },
        .{ "undoActionUserInfoValueForKey:", ?Any, .{objc.NSString} },
        .{ "undoCount", objc.NSInteger, .{} },
        .{ "undoMenuItemTitle", objc.NSString, .{} },
        .{ "undoMenuTitleForUndoActionName:", objc.NSString, .{objc.NSString} },
        .{ "undoNestedGroup", void, .{} },
        .{ "undoRegistrationEnabled", objc.BOOL, .{} },
        .{ "undoing", objc.BOOL, .{} },
    };

    pub fn send(self: UndoManager, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUndoManager", class_methods, selector, args);
    }
};

pub const NSUniqueIDSpecifier = struct {
    obj: Object,

    pub const Super = NSScriptObjectSpecifier;
    pub const methods = .{
        .{ "initWithCoder:", NSUniqueIDSpecifier, .{NSCoder} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:uniqueID:", NSUniqueIDSpecifier, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString, Any } },
        .{ "setUniqueID:", void, .{Any} },
        .{ "uniqueID", Any, .{} },
    };

    pub fn send(self: NSUniqueIDSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUniqueIDSpecifier", class_methods, selector, args);
    }
};

pub const Unit = struct {
    obj: Object,

    pub const methods = .{
        .{ "initWithSymbol:", Unit, .{objc.NSString} },
        .{ "symbol", objc.NSString, .{} },
    };

    pub fn send(self: Unit, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnit", class_methods, selector, args);
    }
};

pub const UnitAcceleration = struct {
    pub const class_methods = .{
        .{ "gravity", UnitAcceleration, .{} },
        .{ "metersPerSecondSquared", UnitAcceleration, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitAcceleration", class_methods, selector, args);
    }
};

pub const UnitAngle = struct {
    pub const class_methods = .{
        .{ "arcMinutes", UnitAngle, .{} },
        .{ "arcSeconds", UnitAngle, .{} },
        .{ "degrees", UnitAngle, .{} },
        .{ "gradians", UnitAngle, .{} },
        .{ "radians", UnitAngle, .{} },
        .{ "revolutions", UnitAngle, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitAngle", class_methods, selector, args);
    }
};

pub const UnitArea = struct {
    pub const class_methods = .{
        .{ "acres", UnitArea, .{} },
        .{ "ares", UnitArea, .{} },
        .{ "hectares", UnitArea, .{} },
        .{ "squareCentimeters", UnitArea, .{} },
        .{ "squareFeet", UnitArea, .{} },
        .{ "squareInches", UnitArea, .{} },
        .{ "squareKilometers", UnitArea, .{} },
        .{ "squareMegameters", UnitArea, .{} },
        .{ "squareMeters", UnitArea, .{} },
        .{ "squareMicrometers", UnitArea, .{} },
        .{ "squareMiles", UnitArea, .{} },
        .{ "squareMillimeters", UnitArea, .{} },
        .{ "squareNanometers", UnitArea, .{} },
        .{ "squareYards", UnitArea, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitArea", class_methods, selector, args);
    }
};

pub const UnitConcentrationMass = struct {
    pub const class_methods = .{
        .{ "gramsPerLiter", UnitConcentrationMass, .{} },
        .{ "milligramsPerDeciliter", UnitConcentrationMass, .{} },
        .{ "millimolesPerLiterWithGramsPerMole:", UnitConcentrationMass, .{f64} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitConcentrationMass", class_methods, selector, args);
    }
};

pub const UnitConverter = struct {
    obj: Object,

    pub const methods = .{
        .{ "baseUnitValueFromValue:", f64, .{f64} },
        .{ "valueFromBaseUnitValue:", f64, .{f64} },
    };

    pub fn send(self: UnitConverter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitConverter", class_methods, selector, args);
    }
};

pub const UnitConverterLinear = struct {
    obj: Object,

    pub const Super = UnitConverter;
    pub const methods = .{
        .{ "coefficient", f64, .{} },
        .{ "constant", f64, .{} },
        .{ "initWithCoefficient:", UnitConverterLinear, .{f64} },
        .{ "initWithCoefficient:constant:", UnitConverterLinear, .{ f64, f64 } },
    };

    pub fn send(self: UnitConverterLinear, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitConverterLinear", class_methods, selector, args);
    }
};

pub const UnitDispersion = struct {
    pub const class_methods = .{
        .{ "partsPerMillion", UnitDispersion, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitDispersion", class_methods, selector, args);
    }
};

pub const UnitDuration = struct {
    pub const class_methods = .{
        .{ "hours", UnitDuration, .{} },
        .{ "microseconds", UnitDuration, .{} },
        .{ "milliseconds", UnitDuration, .{} },
        .{ "minutes", UnitDuration, .{} },
        .{ "nanoseconds", UnitDuration, .{} },
        .{ "picoseconds", UnitDuration, .{} },
        .{ "seconds", UnitDuration, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitDuration", class_methods, selector, args);
    }
};

pub const UnitElectricCharge = struct {
    pub const class_methods = .{
        .{ "ampereHours", UnitElectricCharge, .{} },
        .{ "coulombs", UnitElectricCharge, .{} },
        .{ "kiloampereHours", UnitElectricCharge, .{} },
        .{ "megaampereHours", UnitElectricCharge, .{} },
        .{ "microampereHours", UnitElectricCharge, .{} },
        .{ "milliampereHours", UnitElectricCharge, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitElectricCharge", class_methods, selector, args);
    }
};

pub const UnitElectricCurrent = struct {
    pub const class_methods = .{
        .{ "amperes", UnitElectricCurrent, .{} },
        .{ "kiloamperes", UnitElectricCurrent, .{} },
        .{ "megaamperes", UnitElectricCurrent, .{} },
        .{ "microamperes", UnitElectricCurrent, .{} },
        .{ "milliamperes", UnitElectricCurrent, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitElectricCurrent", class_methods, selector, args);
    }
};

pub const UnitElectricPotentialDifference = struct {
    pub const class_methods = .{
        .{ "kilovolts", UnitElectricPotentialDifference, .{} },
        .{ "megavolts", UnitElectricPotentialDifference, .{} },
        .{ "microvolts", UnitElectricPotentialDifference, .{} },
        .{ "millivolts", UnitElectricPotentialDifference, .{} },
        .{ "volts", UnitElectricPotentialDifference, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitElectricPotentialDifference", class_methods, selector, args);
    }
};

pub const UnitElectricResistance = struct {
    pub const class_methods = .{
        .{ "kiloohms", UnitElectricResistance, .{} },
        .{ "megaohms", UnitElectricResistance, .{} },
        .{ "microohms", UnitElectricResistance, .{} },
        .{ "milliohms", UnitElectricResistance, .{} },
        .{ "ohms", UnitElectricResistance, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitElectricResistance", class_methods, selector, args);
    }
};

pub const UnitEnergy = struct {
    pub const class_methods = .{
        .{ "calories", UnitEnergy, .{} },
        .{ "joules", UnitEnergy, .{} },
        .{ "kilocalories", UnitEnergy, .{} },
        .{ "kilojoules", UnitEnergy, .{} },
        .{ "kilowattHours", UnitEnergy, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitEnergy", class_methods, selector, args);
    }
};

pub const UnitFrequency = struct {
    pub const class_methods = .{
        .{ "framesPerSecond", UnitFrequency, .{} },
        .{ "gigahertz", UnitFrequency, .{} },
        .{ "hertz", UnitFrequency, .{} },
        .{ "kilohertz", UnitFrequency, .{} },
        .{ "megahertz", UnitFrequency, .{} },
        .{ "microhertz", UnitFrequency, .{} },
        .{ "millihertz", UnitFrequency, .{} },
        .{ "nanohertz", UnitFrequency, .{} },
        .{ "terahertz", UnitFrequency, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitFrequency", class_methods, selector, args);
    }
};

pub const UnitFuelEfficiency = struct {
    pub const class_methods = .{
        .{ "litersPer100Kilometers", UnitFuelEfficiency, .{} },
        .{ "milesPerGallon", UnitFuelEfficiency, .{} },
        .{ "milesPerImperialGallon", UnitFuelEfficiency, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitFuelEfficiency", class_methods, selector, args);
    }
};

pub const UnitIlluminance = struct {
    pub const class_methods = .{
        .{ "lux", UnitIlluminance, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitIlluminance", class_methods, selector, args);
    }
};

pub const UnitInformationStorage = struct {
    pub const class_methods = .{
        .{ "bits", UnitInformationStorage, .{} },
        .{ "bytes", UnitInformationStorage, .{} },
        .{ "exabits", UnitInformationStorage, .{} },
        .{ "exabytes", UnitInformationStorage, .{} },
        .{ "exbibits", UnitInformationStorage, .{} },
        .{ "exbibytes", UnitInformationStorage, .{} },
        .{ "gibibits", UnitInformationStorage, .{} },
        .{ "gibibytes", UnitInformationStorage, .{} },
        .{ "gigabits", UnitInformationStorage, .{} },
        .{ "gigabytes", UnitInformationStorage, .{} },
        .{ "kibibits", UnitInformationStorage, .{} },
        .{ "kibibytes", UnitInformationStorage, .{} },
        .{ "kilobits", UnitInformationStorage, .{} },
        .{ "kilobytes", UnitInformationStorage, .{} },
        .{ "mebibits", UnitInformationStorage, .{} },
        .{ "mebibytes", UnitInformationStorage, .{} },
        .{ "megabits", UnitInformationStorage, .{} },
        .{ "megabytes", UnitInformationStorage, .{} },
        .{ "nibbles", UnitInformationStorage, .{} },
        .{ "pebibits", UnitInformationStorage, .{} },
        .{ "pebibytes", UnitInformationStorage, .{} },
        .{ "petabits", UnitInformationStorage, .{} },
        .{ "petabytes", UnitInformationStorage, .{} },
        .{ "tebibits", UnitInformationStorage, .{} },
        .{ "tebibytes", UnitInformationStorage, .{} },
        .{ "terabits", UnitInformationStorage, .{} },
        .{ "terabytes", UnitInformationStorage, .{} },
        .{ "yobibits", UnitInformationStorage, .{} },
        .{ "yobibytes", UnitInformationStorage, .{} },
        .{ "yottabits", UnitInformationStorage, .{} },
        .{ "yottabytes", UnitInformationStorage, .{} },
        .{ "zebibits", UnitInformationStorage, .{} },
        .{ "zebibytes", UnitInformationStorage, .{} },
        .{ "zettabits", UnitInformationStorage, .{} },
        .{ "zettabytes", UnitInformationStorage, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitInformationStorage", class_methods, selector, args);
    }
};

pub const UnitLength = struct {
    pub const class_methods = .{
        .{ "astronomicalUnits", UnitLength, .{} },
        .{ "centimeters", UnitLength, .{} },
        .{ "decameters", UnitLength, .{} },
        .{ "decimeters", UnitLength, .{} },
        .{ "fathoms", UnitLength, .{} },
        .{ "feet", UnitLength, .{} },
        .{ "furlongs", UnitLength, .{} },
        .{ "hectometers", UnitLength, .{} },
        .{ "inches", UnitLength, .{} },
        .{ "kilometers", UnitLength, .{} },
        .{ "lightyears", UnitLength, .{} },
        .{ "megameters", UnitLength, .{} },
        .{ "meters", UnitLength, .{} },
        .{ "micrometers", UnitLength, .{} },
        .{ "miles", UnitLength, .{} },
        .{ "millimeters", UnitLength, .{} },
        .{ "nanometers", UnitLength, .{} },
        .{ "nauticalMiles", UnitLength, .{} },
        .{ "parsecs", UnitLength, .{} },
        .{ "picometers", UnitLength, .{} },
        .{ "scandinavianMiles", UnitLength, .{} },
        .{ "yards", UnitLength, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitLength", class_methods, selector, args);
    }
};

pub const UnitMass = struct {
    pub const class_methods = .{
        .{ "carats", UnitMass, .{} },
        .{ "centigrams", UnitMass, .{} },
        .{ "decigrams", UnitMass, .{} },
        .{ "grams", UnitMass, .{} },
        .{ "kilograms", UnitMass, .{} },
        .{ "metricTons", UnitMass, .{} },
        .{ "micrograms", UnitMass, .{} },
        .{ "milligrams", UnitMass, .{} },
        .{ "nanograms", UnitMass, .{} },
        .{ "ounces", UnitMass, .{} },
        .{ "ouncesTroy", UnitMass, .{} },
        .{ "picograms", UnitMass, .{} },
        .{ "poundsMass", UnitMass, .{} },
        .{ "shortTons", UnitMass, .{} },
        .{ "slugs", UnitMass, .{} },
        .{ "stones", UnitMass, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitMass", class_methods, selector, args);
    }
};

pub const UnitPower = struct {
    pub const class_methods = .{
        .{ "femtowatts", UnitPower, .{} },
        .{ "gigawatts", UnitPower, .{} },
        .{ "horsepower", UnitPower, .{} },
        .{ "kilowatts", UnitPower, .{} },
        .{ "megawatts", UnitPower, .{} },
        .{ "microwatts", UnitPower, .{} },
        .{ "milliwatts", UnitPower, .{} },
        .{ "nanowatts", UnitPower, .{} },
        .{ "picowatts", UnitPower, .{} },
        .{ "terawatts", UnitPower, .{} },
        .{ "watts", UnitPower, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitPower", class_methods, selector, args);
    }
};

pub const UnitPressure = struct {
    pub const class_methods = .{
        .{ "bars", UnitPressure, .{} },
        .{ "gigapascals", UnitPressure, .{} },
        .{ "hectopascals", UnitPressure, .{} },
        .{ "inchesOfMercury", UnitPressure, .{} },
        .{ "kilopascals", UnitPressure, .{} },
        .{ "megapascals", UnitPressure, .{} },
        .{ "millibars", UnitPressure, .{} },
        .{ "millimetersOfMercury", UnitPressure, .{} },
        .{ "newtonsPerMetersSquared", UnitPressure, .{} },
        .{ "poundsForcePerSquareInch", UnitPressure, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitPressure", class_methods, selector, args);
    }
};

pub const UnitSpeed = struct {
    pub const class_methods = .{
        .{ "kilometersPerHour", UnitSpeed, .{} },
        .{ "knots", UnitSpeed, .{} },
        .{ "metersPerSecond", UnitSpeed, .{} },
        .{ "milesPerHour", UnitSpeed, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitSpeed", class_methods, selector, args);
    }
};

pub const UnitTemperature = struct {
    pub const class_methods = .{
        .{ "celsius", UnitTemperature, .{} },
        .{ "fahrenheit", UnitTemperature, .{} },
        .{ "kelvin", UnitTemperature, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitTemperature", class_methods, selector, args);
    }
};

pub const UnitVolume = struct {
    pub const class_methods = .{
        .{ "acreFeet", UnitVolume, .{} },
        .{ "bushels", UnitVolume, .{} },
        .{ "centiliters", UnitVolume, .{} },
        .{ "cubicCentimeters", UnitVolume, .{} },
        .{ "cubicDecimeters", UnitVolume, .{} },
        .{ "cubicFeet", UnitVolume, .{} },
        .{ "cubicInches", UnitVolume, .{} },
        .{ "cubicKilometers", UnitVolume, .{} },
        .{ "cubicMeters", UnitVolume, .{} },
        .{ "cubicMiles", UnitVolume, .{} },
        .{ "cubicMillimeters", UnitVolume, .{} },
        .{ "cubicYards", UnitVolume, .{} },
        .{ "cups", UnitVolume, .{} },
        .{ "deciliters", UnitVolume, .{} },
        .{ "fluidOunces", UnitVolume, .{} },
        .{ "gallons", UnitVolume, .{} },
        .{ "imperialFluidOunces", UnitVolume, .{} },
        .{ "imperialGallons", UnitVolume, .{} },
        .{ "imperialPints", UnitVolume, .{} },
        .{ "imperialQuarts", UnitVolume, .{} },
        .{ "imperialTablespoons", UnitVolume, .{} },
        .{ "imperialTeaspoons", UnitVolume, .{} },
        .{ "kiloliters", UnitVolume, .{} },
        .{ "liters", UnitVolume, .{} },
        .{ "megaliters", UnitVolume, .{} },
        .{ "metricCups", UnitVolume, .{} },
        .{ "milliliters", UnitVolume, .{} },
        .{ "pints", UnitVolume, .{} },
        .{ "quarts", UnitVolume, .{} },
        .{ "tablespoons", UnitVolume, .{} },
        .{ "teaspoons", UnitVolume, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUnitVolume", class_methods, selector, args);
    }
};

pub const NSUserActivity = struct {
    obj: Object,

    pub const methods = .{
        .{ "activityType", objc.NSString, .{} },
        .{ "addUserInfoEntriesFromDictionary:", void, .{Object} },
        .{ "becomeCurrent", void, .{} },
        .{ "delegate", ?NSUserActivityDelegate, .{} },
        .{ "eligibleForHandoff", objc.BOOL, .{} },
        .{ "eligibleForPublicIndexing", objc.BOOL, .{} },
        .{ "eligibleForSearch", objc.BOOL, .{} },
        .{ "expirationDate", ?NSDate, .{} },
        .{ "getContinuationStreamsWithCompletionHandler:", void, .{?*anyopaque} },
        .{ "initWithActivityType:", NSUserActivity, .{objc.NSString} },
        .{ "invalidate", void, .{} },
        .{ "keywords", objc.NSString, .{} },
        .{ "needsSave", objc.BOOL, .{} },
        .{ "persistentIdentifier", objc.NSString, .{} },
        .{ "referrerURL", ?NSURL, .{} },
        .{ "requiredUserInfoKeys", ?objc.NSString, .{} },
        .{ "resignCurrent", void, .{} },
        .{ "setDelegate:", void, .{?NSUserActivityDelegate} },
        .{ "setEligibleForHandoff:", void, .{objc.BOOL} },
        .{ "setEligibleForPublicIndexing:", void, .{objc.BOOL} },
        .{ "setEligibleForSearch:", void, .{objc.BOOL} },
        .{ "setExpirationDate:", void, .{?NSDate} },
        .{ "setKeywords:", void, .{objc.NSString} },
        .{ "setNeedsSave:", void, .{objc.BOOL} },
        .{ "setPersistentIdentifier:", void, .{objc.NSString} },
        .{ "setReferrerURL:", void, .{?NSURL} },
        .{ "setRequiredUserInfoKeys:", void, .{?objc.NSString} },
        .{ "setSupportsContinuationStreams:", void, .{objc.BOOL} },
        .{ "setTargetContentIdentifier:", void, .{?objc.NSString} },
        .{ "setTitle:", void, .{?objc.NSString} },
        .{ "setUserInfo:", void, .{?*anyopaque} },
        .{ "setWebpageURL:", void, .{?NSURL} },
        .{ "supportsContinuationStreams", objc.BOOL, .{} },
        .{ "targetContentIdentifier", ?objc.NSString, .{} },
        .{ "title", ?objc.NSString, .{} },
        .{ "userInfo", ?*anyopaque, .{} },
        .{ "webpageURL", ?NSURL, .{} },
    };

    pub fn send(self: NSUserActivity, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "deleteAllSavedUserActivitiesWithCompletionHandler:", void, .{?*anyopaque} },
        .{ "deleteSavedUserActivitiesWithPersistentIdentifiers:completionHandler:", void, .{ Object, ?*anyopaque } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUserActivity", class_methods, selector, args);
    }
};

pub const NSUserAppleScriptTask = struct {
    obj: Object,

    pub const Super = NSUserScriptTask;
    pub const methods = .{
        .{ "executeWithAppleEvent:completionHandler:", void, .{ ?NSAppleEventDescriptor, void } },
    };

    pub fn send(self: NSUserAppleScriptTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUserAppleScriptTask", class_methods, selector, args);
    }
};

pub const NSUserAutomatorTask = struct {
    obj: Object,

    pub const Super = NSUserScriptTask;
    pub const methods = .{
        .{ "executeWithInput:completionHandler:", void, .{ ?NSSecureCoding, void } },
        .{ "setVariables:", void, .{?*anyopaque} },
        .{ "variables", ?*anyopaque, .{} },
    };

    pub fn send(self: NSUserAutomatorTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUserAutomatorTask", class_methods, selector, args);
    }
};

pub const UserDefaults = struct {
    obj: Object,

    pub const methods = .{
        .{ "URLForKey:", ?NSURL, .{objc.NSString} },
        .{ "addSuiteNamed:", void, .{objc.NSString} },
        .{ "arrayForKey:", ?*anyopaque, .{objc.NSString} },
        .{ "boolForKey:", objc.BOOL, .{objc.NSString} },
        .{ "dataForKey:", ?NSData, .{objc.NSString} },
        .{ "dictionaryForKey:", ?*anyopaque, .{objc.NSString} },
        .{ "dictionaryRepresentation", Object, .{} },
        .{ "doubleForKey:", f64, .{objc.NSString} },
        .{ "floatForKey:", f32, .{objc.NSString} },
        .{ "initWithSuiteName:", UserDefaults, .{?objc.NSString} },
        .{ "integerForKey:", objc.NSInteger, .{objc.NSString} },
        .{ "objectForKey:", ?Any, .{objc.NSString} },
        .{ "objectIsForcedForKey:", objc.BOOL, .{objc.NSString} },
        .{ "objectIsForcedForKey:inDomain:", objc.BOOL, .{ objc.NSString, objc.NSString } },
        .{ "persistentDomainForName:", ?*anyopaque, .{objc.NSString} },
        .{ "registerDefaults:", void, .{Object} },
        .{ "removeObjectForKey:", void, .{objc.NSString} },
        .{ "removePersistentDomainForName:", void, .{objc.NSString} },
        .{ "removeSuiteNamed:", void, .{objc.NSString} },
        .{ "removeVolatileDomainForName:", void, .{objc.NSString} },
        .{ "setBool:forKey:", void, .{ objc.BOOL, objc.NSString } },
        .{ "setDouble:forKey:", void, .{ f64, objc.NSString } },
        .{ "setFloat:forKey:", void, .{ f32, objc.NSString } },
        .{ "setInteger:forKey:", void, .{ objc.NSInteger, objc.NSString } },
        .{ "setObject:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "setPersistentDomain:forName:", void, .{ Object, objc.NSString } },
        .{ "setURL:forKey:", void, .{ ?NSURL, objc.NSString } },
        .{ "setVolatileDomain:forName:", void, .{ Object, objc.NSString } },
        .{ "stringArrayForKey:", ?*anyopaque, .{objc.NSString} },
        .{ "stringForKey:", ?objc.NSString, .{objc.NSString} },
        .{ "synchronize", objc.BOOL, .{} },
        .{ "volatileDomainForName:", Object, .{objc.NSString} },
        .{ "volatileDomainNames", Object, .{} },
    };

    pub fn send(self: UserDefaults, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "resetStandardUserDefaults", void, .{} },
        .{ "standardUserDefaults", UserDefaults, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUserDefaults", class_methods, selector, args);
    }
};

pub const NSUserNotification = struct {
    obj: Object,

    pub const methods = .{
        .{ "actionButtonTitle", objc.NSString, .{} },
        .{ "activationType", NSUserNotification.ActivationType, .{} },
        .{ "actualDeliveryDate", ?NSDate, .{} },
        .{ "additionalActions", ?*anyopaque, .{} },
        .{ "additionalActivationAction", ?NSUserNotificationAction, .{} },
        .{ "contentImage", ?AppKit.NSImage, .{} },
        .{ "deliveryDate", ?NSDate, .{} },
        .{ "deliveryRepeatInterval", ?NSDateComponents, .{} },
        .{ "deliveryTimeZone", ?NSTimeZone, .{} },
        .{ "hasActionButton", objc.BOOL, .{} },
        .{ "hasReplyButton", objc.BOOL, .{} },
        .{ "identifier", ?objc.NSString, .{} },
        .{ "informativeText", ?objc.NSString, .{} },
        .{ "otherButtonTitle", objc.NSString, .{} },
        .{ "presented", objc.BOOL, .{} },
        .{ "remote", objc.BOOL, .{} },
        .{ "response", ?NSAttributedString, .{} },
        .{ "responsePlaceholder", ?objc.NSString, .{} },
        .{ "setActionButtonTitle:", void, .{objc.NSString} },
        .{ "setAdditionalActions:", void, .{?*anyopaque} },
        .{ "setContentImage:", void, .{?AppKit.NSImage} },
        .{ "setDeliveryDate:", void, .{?NSDate} },
        .{ "setDeliveryRepeatInterval:", void, .{?NSDateComponents} },
        .{ "setDeliveryTimeZone:", void, .{?NSTimeZone} },
        .{ "setHasActionButton:", void, .{objc.BOOL} },
        .{ "setHasReplyButton:", void, .{objc.BOOL} },
        .{ "setIdentifier:", void, .{?objc.NSString} },
        .{ "setInformativeText:", void, .{?objc.NSString} },
        .{ "setOtherButtonTitle:", void, .{objc.NSString} },
        .{ "setResponsePlaceholder:", void, .{?objc.NSString} },
        .{ "setSoundName:", void, .{?objc.NSString} },
        .{ "setSubtitle:", void, .{?objc.NSString} },
        .{ "setTitle:", void, .{?objc.NSString} },
        .{ "setUserInfo:", void, .{?*anyopaque} },
        .{ "soundName", ?objc.NSString, .{} },
        .{ "subtitle", ?objc.NSString, .{} },
        .{ "title", ?objc.NSString, .{} },
        .{ "userInfo", ?*anyopaque, .{} },
    };

    pub fn send(self: NSUserNotification, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUserNotification", class_methods, selector, args);
    }

    pub const ActivationType = enum(i64) {
        none = 0,
        contentsClicked = 1,
        actionButtonClicked = 2,
        replied = 3,
        additionalActionClicked = 4,
    };
};

pub const NSUserNotificationAction = struct {
    obj: Object,

    pub const methods = .{
        .{ "identifier", ?objc.NSString, .{} },
        .{ "title", ?objc.NSString, .{} },
    };

    pub fn send(self: NSUserNotificationAction, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "actionWithIdentifier:title:", Object, .{ ?objc.NSString, ?objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUserNotificationAction", class_methods, selector, args);
    }
};

pub const NSUserNotificationCenter = struct {
    obj: Object,

    pub const methods = .{
        .{ "delegate", ?NSUserNotificationCenterDelegate, .{} },
        .{ "deliverNotification:", void, .{NSUserNotification} },
        .{ "deliveredNotifications", Object, .{} },
        .{ "removeAllDeliveredNotifications", void, .{} },
        .{ "removeDeliveredNotification:", void, .{NSUserNotification} },
        .{ "removeScheduledNotification:", void, .{NSUserNotification} },
        .{ "scheduleNotification:", void, .{NSUserNotification} },
        .{ "scheduledNotifications", Object, .{} },
        .{ "setDelegate:", void, .{?NSUserNotificationCenterDelegate} },
        .{ "setScheduledNotifications:", void, .{Object} },
    };

    pub fn send(self: NSUserNotificationCenter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultUserNotificationCenter", NSUserNotificationCenter, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUserNotificationCenter", class_methods, selector, args);
    }
};

pub const NSUserScriptTask = struct {
    obj: Object,

    pub const methods = .{
        .{ "executeWithCompletionHandler:", void, .{void} },
        .{ "initWithURL:error:", NSUserScriptTask, .{NSURL} },
        .{ "scriptURL", NSURL, .{} },
    };

    pub fn send(self: NSUserScriptTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUserScriptTask", class_methods, selector, args);
    }
};

pub const NSUserUnixTask = struct {
    obj: Object,

    pub const Super = NSUserScriptTask;
    pub const methods = .{
        .{ "executeWithArguments:completionHandler:", void, .{ ?*anyopaque, void } },
        .{ "setStandardError:", void, .{?FileHandle} },
        .{ "setStandardInput:", void, .{?FileHandle} },
        .{ "setStandardOutput:", void, .{?FileHandle} },
        .{ "standardError", ?FileHandle, .{} },
        .{ "standardInput", ?FileHandle, .{} },
        .{ "standardOutput", ?FileHandle, .{} },
    };

    pub fn send(self: NSUserUnixTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSUserUnixTask", class_methods, selector, args);
    }
};

pub const NSValue = struct {
    obj: Object,

    pub const methods = .{
        .{ "edgeInsetsValue", NSEdgeInsets, .{} },
        .{ "getValue:", void, .{UnsafeMutableRawPointer} },
        .{ "getValue:size:", void, .{ UnsafeMutableRawPointer, objc.NSInteger } },
        .{ "initWithBytes:objCType:", NSValue, .{ UnsafeRawPointer, ?*anyopaque } },
        .{ "initWithCoder:", NSValue, .{NSCoder} },
        .{ "isEqualToValue:", objc.BOOL, .{NSValue} },
        .{ "nonretainedObjectValue", ?Any, .{} },
        .{ "objCType", ?*anyopaque, .{} },
        .{ "pointValue", NSPoint, .{} },
        .{ "pointerValue", ?UnsafeMutableRawPointer, .{} },
        .{ "rangeValue", NSRange, .{} },
        .{ "rectValue", NSRect, .{} },
        .{ "setEdgeInsetsValue:", void, .{NSEdgeInsets} },
        .{ "sizeValue", NSSize, .{} },
    };

    pub fn send(self: NSValue, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "value:withObjCType:", Object, .{ UnsafeRawPointer, ?*anyopaque } },
        .{ "valueWithEdgeInsets:", Object, .{NSEdgeInsets} },
        .{ "valueWithNonretainedObject:", Object, .{?Any} },
        .{ "valueWithPoint:", Object, .{NSPoint} },
        .{ "valueWithPointer:", Object, .{?UnsafeRawPointer} },
        .{ "valueWithRange:", Object, .{NSRange} },
        .{ "valueWithRect:", Object, .{NSRect} },
        .{ "valueWithSize:", Object, .{NSSize} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSValue", class_methods, selector, args);
    }
};

pub const ValueTransformer = struct {
    obj: Object,

    pub const methods = .{
        .{ "reverseTransformedValue:", ?Any, .{?Any} },
        .{ "transformedValue:", ?Any, .{?Any} },
    };

    pub fn send(self: ValueTransformer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "allowsReverseTransformation", objc.BOOL, .{} },
        .{ "setValueTransformer:forName:", void, .{ ?ValueTransformer, objc.NSString } },
        .{ "transformedValueClass", AnyClass, .{} },
        .{ "valueTransformerForName:", Object, .{objc.NSString} },
        .{ "valueTransformerNames", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSValueTransformer", class_methods, selector, args);
    }
};

pub const NSWhoseSpecifier = struct {
    obj: Object,

    pub const Super = NSScriptObjectSpecifier;
    pub const methods = .{
        .{ "endSubelementIdentifier", NSWhoseSpecifier.SubelementIdentifier, .{} },
        .{ "endSubelementIndex", objc.NSInteger, .{} },
        .{ "initWithCoder:", NSWhoseSpecifier, .{NSCoder} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:test:", NSWhoseSpecifier, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString, NSScriptWhoseTest } },
        .{ "setEndSubelementIdentifier:", void, .{NSWhoseSpecifier.SubelementIdentifier} },
        .{ "setEndSubelementIndex:", void, .{objc.NSInteger} },
        .{ "setStartSubelementIdentifier:", void, .{NSWhoseSpecifier.SubelementIdentifier} },
        .{ "setStartSubelementIndex:", void, .{objc.NSInteger} },
        .{ "setTest:", void, .{NSScriptWhoseTest} },
        .{ "startSubelementIdentifier", NSWhoseSpecifier.SubelementIdentifier, .{} },
        .{ "startSubelementIndex", objc.NSInteger, .{} },
        .{ "test", NSScriptWhoseTest, .{} },
    };

    pub fn send(self: NSWhoseSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSWhoseSpecifier", class_methods, selector, args);
    }

    pub const SubelementIdentifier = enum(i64) {
        indexSubelement = 0,
        everySubelement = 1,
        middleSubelement = 2,
        randomSubelement = 3,
        noSubelement = 4,
    };
};

pub const XMLDTD = struct {
    obj: Object,

    pub const Super = XMLNode;
    pub const methods = .{
        .{ "addChild:", void, .{XMLNode} },
        .{ "attributeDeclarationForName:elementName:", ?XMLDTDNode, .{ objc.NSString, objc.NSString } },
        .{ "elementDeclarationForName:", ?XMLDTDNode, .{objc.NSString} },
        .{ "entityDeclarationForName:", ?XMLDTDNode, .{objc.NSString} },
        .{ "initWithContentsOfURL:options:error:", XMLDTD, .{ NSURL, objc.NSInteger } },
        .{ "initWithData:options:error:", XMLDTD, .{ NSData, objc.NSInteger } },
        .{ "insertChild:atIndex:", void, .{ XMLNode, objc.NSInteger } },
        .{ "insertChildren:atIndex:", void, .{ Object, objc.NSInteger } },
        .{ "notationDeclarationForName:", ?XMLDTDNode, .{objc.NSString} },
        .{ "publicID", ?objc.NSString, .{} },
        .{ "removeChildAtIndex:", void, .{objc.NSInteger} },
        .{ "replaceChildAtIndex:withNode:", void, .{ objc.NSInteger, XMLNode } },
        .{ "setChildren:", void, .{?*anyopaque} },
        .{ "setPublicID:", void, .{?objc.NSString} },
        .{ "setSystemID:", void, .{?objc.NSString} },
        .{ "systemID", ?objc.NSString, .{} },
    };

    pub fn send(self: XMLDTD, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "predefinedEntityDeclarationForName:", ?XMLDTDNode, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSXMLDTD", class_methods, selector, args);
    }
};

pub const XMLDTDNode = struct {
    obj: Object,

    pub const Super = XMLNode;
    pub const methods = .{
        .{ "DTDKind", XMLDTDNode.DTDKind, .{} },
        .{ "external", objc.BOOL, .{} },
        .{ "initWithKind:options:", XMLDTDNode, .{ XMLNode.Kind, objc.NSInteger } },
        .{ "initWithXMLString:", XMLDTDNode, .{objc.NSString} },
        .{ "notationName", ?objc.NSString, .{} },
        .{ "publicID", ?objc.NSString, .{} },
        .{ "setDTDKind:", void, .{XMLDTDNode.DTDKind} },
        .{ "setNotationName:", void, .{?objc.NSString} },
        .{ "setPublicID:", void, .{?objc.NSString} },
        .{ "setSystemID:", void, .{?objc.NSString} },
        .{ "systemID", ?objc.NSString, .{} },
    };

    pub fn send(self: XMLDTDNode, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSXMLDTDNode", class_methods, selector, args);
    }

    pub const DTDKind = enum(i64) {
        general = 1,
        parsed = 2,
        unparsed = 3,
        parameter = 4,
        predefined = 5,
        cdataAttribute = 6,
        idAttribute = 7,
        idRefAttribute = 8,
        idRefsAttribute = 9,
        entityAttribute = 10,
        entitiesAttribute = 11,
        nmTokenAttribute = 12,
        nmTokensAttribute = 13,
        enumerationAttribute = 14,
        notationAttribute = 15,
        undefinedDeclaration = 16,
        emptyDeclaration = 17,
        anyDeclaration = 18,
        mixedDeclaration = 19,
        elementDeclaration = 20,
    };
};

pub const XMLDocument = struct {
    obj: Object,

    pub const Super = XMLNode;
    pub const methods = .{
        .{ "DTD", ?XMLDTD, .{} },
        .{ "MIMEType", ?objc.NSString, .{} },
        .{ "XMLData", NSData, .{} },
        .{ "XMLDataWithOptions:", NSData, .{objc.NSInteger} },
        .{ "addChild:", void, .{XMLNode} },
        .{ "characterEncoding", ?objc.NSString, .{} },
        .{ "documentContentKind", XMLDocument.ContentKind, .{} },
        .{ "initWithContentsOfURL:options:error:", XMLDocument, .{ NSURL, objc.NSInteger } },
        .{ "initWithData:options:error:", XMLDocument, .{ NSData, objc.NSInteger } },
        .{ "initWithRootElement:", XMLDocument, .{?XMLElement} },
        .{ "initWithXMLString:options:error:", XMLDocument, .{ objc.NSString, objc.NSInteger } },
        .{ "insertChild:atIndex:", void, .{ XMLNode, objc.NSInteger } },
        .{ "insertChildren:atIndex:", void, .{ Object, objc.NSInteger } },
        .{ "objectByApplyingXSLT:arguments:error:", Any, .{ NSData, ?*anyopaque } },
        .{ "objectByApplyingXSLTAtURL:arguments:error:", Any, .{ NSURL, ?*anyopaque } },
        .{ "objectByApplyingXSLTString:arguments:error:", Any, .{ objc.NSString, ?*anyopaque } },
        .{ "removeChildAtIndex:", void, .{objc.NSInteger} },
        .{ "replaceChildAtIndex:withNode:", void, .{ objc.NSInteger, XMLNode } },
        .{ "rootElement", ?XMLElement, .{} },
        .{ "setCharacterEncoding:", void, .{?objc.NSString} },
        .{ "setChildren:", void, .{?*anyopaque} },
        .{ "setDTD:", void, .{?XMLDTD} },
        .{ "setDocumentContentKind:", void, .{XMLDocument.ContentKind} },
        .{ "setMIMEType:", void, .{?objc.NSString} },
        .{ "setRootElement:", void, .{XMLElement} },
        .{ "setStandalone:", void, .{objc.BOOL} },
        .{ "setVersion:", void, .{?objc.NSString} },
        .{ "standalone", objc.BOOL, .{} },
        .{ "validateAndReturnError:", void, .{} },
        .{ "version", ?objc.NSString, .{} },
    };

    pub fn send(self: XMLDocument, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "replacementClassForClass:", AnyClass, .{AnyClass} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSXMLDocument", class_methods, selector, args);
    }

    pub const ContentKind = enum(i64) {
        xml = 0,
        xhtml = 1,
        html = 2,
        text = 3,
    };
};

pub const XMLElement = struct {
    obj: Object,

    pub const Super = XMLNode;
    pub const methods = .{
        .{ "addAttribute:", void, .{XMLNode} },
        .{ "addChild:", void, .{XMLNode} },
        .{ "addNamespace:", void, .{XMLNode} },
        .{ "attributeForLocalName:URI:", ?XMLNode, .{ objc.NSString, ?objc.NSString } },
        .{ "attributeForName:", ?XMLNode, .{objc.NSString} },
        .{ "attributes", ?*anyopaque, .{} },
        .{ "elementsForLocalName:URI:", Object, .{ objc.NSString, ?objc.NSString } },
        .{ "elementsForName:", Object, .{objc.NSString} },
        .{ "initWithKind:options:", XMLElement, .{ XMLNode.Kind, objc.NSInteger } },
        .{ "initWithName:", XMLElement, .{objc.NSString} },
        .{ "initWithName:URI:", XMLElement, .{ objc.NSString, ?objc.NSString } },
        .{ "initWithName:stringValue:", XMLElement, .{ objc.NSString, ?objc.NSString } },
        .{ "initWithXMLString:error:", XMLElement, .{objc.NSString} },
        .{ "insertChild:atIndex:", void, .{ XMLNode, objc.NSInteger } },
        .{ "insertChildren:atIndex:", void, .{ Object, objc.NSInteger } },
        .{ "namespaceForPrefix:", ?XMLNode, .{objc.NSString} },
        .{ "namespaces", ?*anyopaque, .{} },
        .{ "normalizeAdjacentTextNodesPreservingCDATA:", void, .{objc.BOOL} },
        .{ "removeAttributeForName:", void, .{objc.NSString} },
        .{ "removeChildAtIndex:", void, .{objc.NSInteger} },
        .{ "removeNamespaceForPrefix:", void, .{objc.NSString} },
        .{ "replaceChildAtIndex:withNode:", void, .{ objc.NSInteger, XMLNode } },
        .{ "resolveNamespaceForName:", ?XMLNode, .{objc.NSString} },
        .{ "resolvePrefixForNamespaceURI:", ?objc.NSString, .{objc.NSString} },
        .{ "setAttributes:", void, .{?*anyopaque} },
        .{ "setAttributesAsDictionary:", void, .{Object} },
        .{ "setAttributesWithDictionary:", void, .{Object} },
        .{ "setChildren:", void, .{?*anyopaque} },
        .{ "setNamespaces:", void, .{?*anyopaque} },
    };

    pub fn send(self: XMLElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSXMLElement", class_methods, selector, args);
    }
};

pub const XMLNode = struct {
    obj: Object,

    pub const methods = .{
        .{ "URI", ?objc.NSString, .{} },
        .{ "XMLString", objc.NSString, .{} },
        .{ "XMLStringWithOptions:", objc.NSString, .{objc.NSInteger} },
        .{ "XPath", ?objc.NSString, .{} },
        .{ "canonicalXMLStringPreservingComments:", objc.NSString, .{objc.BOOL} },
        .{ "childAtIndex:", ?XMLNode, .{objc.NSInteger} },
        .{ "childCount", objc.NSInteger, .{} },
        .{ "children", ?*anyopaque, .{} },
        .{ "description", objc.NSString, .{} },
        .{ "detach", void, .{} },
        .{ "index", objc.NSInteger, .{} },
        .{ "initWithKind:", XMLNode, .{XMLNode.Kind} },
        .{ "initWithKind:options:", XMLNode, .{ XMLNode.Kind, objc.NSInteger } },
        .{ "kind", XMLNode.Kind, .{} },
        .{ "level", objc.NSInteger, .{} },
        .{ "localName", ?objc.NSString, .{} },
        .{ "name", ?objc.NSString, .{} },
        .{ "nextNode", ?XMLNode, .{} },
        .{ "nextSibling", ?XMLNode, .{} },
        .{ "nodesForXPath:error:", Object, .{objc.NSString} },
        .{ "objectValue", ?Any, .{} },
        .{ "objectsForXQuery:constants:error:", Object, .{ objc.NSString, ?*anyopaque } },
        .{ "objectsForXQuery:error:", Object, .{objc.NSString} },
        .{ "parent", ?XMLNode, .{} },
        .{ "prefix", ?objc.NSString, .{} },
        .{ "previousNode", ?XMLNode, .{} },
        .{ "previousSibling", ?XMLNode, .{} },
        .{ "rootDocument", ?XMLDocument, .{} },
        .{ "setName:", void, .{?objc.NSString} },
        .{ "setObjectValue:", void, .{?Any} },
        .{ "setStringValue:", void, .{?objc.NSString} },
        .{ "setStringValue:resolvingEntities:", void, .{ objc.NSString, objc.BOOL } },
        .{ "setURI:", void, .{?objc.NSString} },
        .{ "stringValue", ?objc.NSString, .{} },
    };

    pub fn send(self: XMLNode, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "DTDNodeWithXMLString:", ?Any, .{objc.NSString} },
        .{ "attributeWithName:URI:stringValue:", Any, .{ objc.NSString, objc.NSString, objc.NSString } },
        .{ "attributeWithName:stringValue:", Any, .{ objc.NSString, objc.NSString } },
        .{ "commentWithStringValue:", Any, .{objc.NSString} },
        .{ "document", Any, .{} },
        .{ "documentWithRootElement:", Any, .{XMLElement} },
        .{ "elementWithName:", Any, .{objc.NSString} },
        .{ "elementWithName:URI:", Any, .{ objc.NSString, objc.NSString } },
        .{ "elementWithName:children:attributes:", Any, .{ objc.NSString, ?*anyopaque, ?*anyopaque } },
        .{ "elementWithName:stringValue:", Any, .{ objc.NSString, objc.NSString } },
        .{ "localNameForName:", objc.NSString, .{objc.NSString} },
        .{ "namespaceWithName:stringValue:", Any, .{ objc.NSString, objc.NSString } },
        .{ "predefinedNamespaceForPrefix:", ?XMLNode, .{objc.NSString} },
        .{ "prefixForName:", ?objc.NSString, .{objc.NSString} },
        .{ "processingInstructionWithName:stringValue:", Any, .{ objc.NSString, objc.NSString } },
        .{ "textWithStringValue:", Any, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSXMLNode", class_methods, selector, args);
    }

    pub const Kind = enum(i64) {
        invalid = 0,
        document = 1,
        element = 2,
        attribute = 3,
        namespace = 4,
        processingInstruction = 5,
        comment = 6,
        text = 7,
        DTDKind = 8,
        entityDeclaration = 9,
        attributeDeclaration = 10,
        elementDeclaration = 11,
        notationDeclaration = 12,
    };
};

pub const XMLParser = struct {
    obj: Object,

    pub const methods = .{
        .{ "abortParsing", void, .{} },
        .{ "allowedExternalEntityURLs", ?NSURL, .{} },
        .{ "columnNumber", objc.NSInteger, .{} },
        .{ "delegate", ?XMLParserDelegate, .{} },
        .{ "externalEntityResolvingPolicy", XMLParser.ExternalEntityResolvingPolicy, .{} },
        .{ "initWithContentsOfURL:", XMLParser, .{NSURL} },
        .{ "initWithData:", XMLParser, .{NSData} },
        .{ "initWithStream:", XMLParser, .{InputStream} },
        .{ "lineNumber", objc.NSInteger, .{} },
        .{ "parse", objc.BOOL, .{} },
        .{ "parserError", ?*anyopaque, .{} },
        .{ "publicID", ?objc.NSString, .{} },
        .{ "setAllowedExternalEntityURLs:", void, .{?NSURL} },
        .{ "setDelegate:", void, .{?XMLParserDelegate} },
        .{ "setExternalEntityResolvingPolicy:", void, .{XMLParser.ExternalEntityResolvingPolicy} },
        .{ "setShouldProcessNamespaces:", void, .{objc.BOOL} },
        .{ "setShouldReportNamespacePrefixes:", void, .{objc.BOOL} },
        .{ "setShouldResolveExternalEntities:", void, .{objc.BOOL} },
        .{ "shouldProcessNamespaces", objc.BOOL, .{} },
        .{ "shouldReportNamespacePrefixes", objc.BOOL, .{} },
        .{ "shouldResolveExternalEntities", objc.BOOL, .{} },
        .{ "systemID", ?objc.NSString, .{} },
    };

    pub fn send(self: XMLParser, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSXMLParser", class_methods, selector, args);
    }

    pub const ErrorCode = enum(i64) {
        internalError = 1,
        outOfMemoryError = 2,
        documentStartError = 3,
        emptyDocumentError = 4,
        prematureDocumentEndError = 5,
        invalidHexCharacterRefError = 6,
        invalidDecimalCharacterRefError = 7,
        invalidCharacterRefError = 8,
        invalidCharacterError = 9,
        characterRefAtEOFError = 10,
        characterRefInPrologError = 11,
        characterRefInEpilogError = 12,
        characterRefInDTDError = 13,
        entityRefAtEOFError = 14,
        entityRefInPrologError = 15,
        entityRefInEpilogError = 16,
        entityRefInDTDError = 17,
        parsedEntityRefAtEOFError = 18,
        parsedEntityRefInPrologError = 19,
        parsedEntityRefInEpilogError = 20,
        parsedEntityRefInInternalSubsetError = 21,
        entityReferenceWithoutNameError = 22,
        entityReferenceMissingSemiError = 23,
        parsedEntityRefNoNameError = 24,
        parsedEntityRefMissingSemiError = 25,
        undeclaredEntityError = 26,
        unparsedEntityError = 28,
        entityIsExternalError = 29,
        entityIsParameterError = 30,
        unknownEncodingError = 31,
        encodingNotSupportedError = 32,
        stringNotStartedError = 33,
        stringNotClosedError = 34,
        namespaceDeclarationError = 35,
        entityNotStartedError = 36,
        entityNotFinishedError = 37,
        lessThanSymbolInAttributeError = 38,
        attributeNotStartedError = 39,
        attributeNotFinishedError = 40,
        attributeHasNoValueError = 41,
        attributeRedefinedError = 42,
        literalNotStartedError = 43,
        literalNotFinishedError = 44,
        commentNotFinishedError = 45,
        processingInstructionNotStartedError = 46,
        processingInstructionNotFinishedError = 47,
        notationNotStartedError = 48,
        notationNotFinishedError = 49,
        attributeListNotStartedError = 50,
        attributeListNotFinishedError = 51,
        mixedContentDeclNotStartedError = 52,
        mixedContentDeclNotFinishedError = 53,
        elementContentDeclNotStartedError = 54,
        elementContentDeclNotFinishedError = 55,
        xmlDeclNotStartedError = 56,
        xmlDeclNotFinishedError = 57,
        conditionalSectionNotStartedError = 58,
        conditionalSectionNotFinishedError = 59,
        externalSubsetNotFinishedError = 60,
        doctypeDeclNotFinishedError = 61,
        misplacedCDATAEndStringError = 62,
        cdataNotFinishedError = 63,
        misplacedXMLDeclarationError = 64,
        spaceRequiredError = 65,
        separatorRequiredError = 66,
        nmtokenRequiredError = 67,
        nameRequiredError = 68,
        pcdataRequiredError = 69,
        uriRequiredError = 70,
        publicIdentifierRequiredError = 71,
        ltRequiredError = 72,
        gtRequiredError = 73,
        ltSlashRequiredError = 74,
        equalExpectedError = 75,
        tagNameMismatchError = 76,
        unfinishedTagError = 77,
        standaloneValueError = 78,
        invalidEncodingNameError = 79,
        commentContainsDoubleHyphenError = 80,
        invalidEncodingError = 81,
        externalStandaloneEntityError = 82,
        invalidConditionalSectionError = 83,
        entityValueRequiredError = 84,
        notWellBalancedError = 85,
        extraContentError = 86,
        invalidCharacterInEntityError = 87,
        parsedEntityRefInInternalError = 88,
        entityRefLoopError = 89,
        entityBoundaryError = 90,
        invalidURIError = 91,
        uriFragmentError = 92,
        noDTDError = 94,
        delegateAbortedParseError = 512,
    };
    pub const ExternalEntityResolvingPolicy = enum(i64) {
        never = 0,
        noNetwork = 1,
        sameOriginOnly = 2,
        always = 3,
    };
};

pub const NSXPCCoder = struct {
    obj: Object,

    pub const Super = NSCoder;
    pub const methods = .{
        .{ "connection", ?NSXPCConnection, .{} },
        .{ "decodeXPCObjectOfType:forKey:", ?*anyopaque, .{ objc.NSString, objc.NSString } },
        .{ "encodeXPCObject:forKey:", void, .{ objc.NSString, objc.NSString } },
        .{ "setUserInfo:", void, .{?NSObjectProtocol} },
        .{ "userInfo", ?NSObjectProtocol, .{} },
    };

    pub fn send(self: NSXPCCoder, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{};

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSXPCCoder", class_methods, selector, args);
    }
};

pub const NSXPCConnection = struct {
    obj: Object,

    pub const methods = .{
        .{ "activate", void, .{} },
        .{ "auditSessionIdentifier", objc.NSString, .{} },
        .{ "effectiveGroupIdentifier", objc.NSString, .{} },
        .{ "effectiveUserIdentifier", objc.NSString, .{} },
        .{ "endpoint", Object, .{} },
        .{ "exportedInterface", ?NSXPCInterface, .{} },
        .{ "exportedObject", ?Any, .{} },
        .{ "initWithListenerEndpoint:", NSXPCConnection, .{Object} },
        .{ "initWithMachServiceName:options:", NSXPCConnection, .{ objc.NSString, objc.NSInteger } },
        .{ "initWithServiceName:", NSXPCConnection, .{objc.NSString} },
        .{ "interruptionHandler", void, .{} },
        .{ "invalidate", void, .{} },
        .{ "invalidationHandler", void, .{} },
        .{ "processIdentifier", pid_t, .{} },
        .{ "remoteObjectInterface", ?NSXPCInterface, .{} },
        .{ "remoteObjectProxy", Any, .{} },
        .{ "remoteObjectProxyWithErrorHandler:", Any, .{?*anyopaque} },
        .{ "resume", void, .{} },
        .{ "scheduleSendBarrierBlock:", void, .{?*anyopaque} },
        .{ "serviceName", ?objc.NSString, .{} },
        .{ "setCodeSigningRequirement:", void, .{objc.NSString} },
        .{ "setExportedInterface:", void, .{?NSXPCInterface} },
        .{ "setExportedObject:", void, .{?Any} },
        .{ "setInterruptionHandler:", void, .{void} },
        .{ "setInvalidationHandler:", void, .{void} },
        .{ "setRemoteObjectInterface:", void, .{?NSXPCInterface} },
        .{ "suspend", void, .{} },
        .{ "synchronousRemoteObjectProxyWithErrorHandler:", Any, .{?*anyopaque} },
    };

    pub fn send(self: NSXPCConnection, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentConnection", ?NSXPCConnection, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSXPCConnection", class_methods, selector, args);
    }
};

pub const NSXPCInterface = struct {
    obj: Object,

    pub const methods = .{
        .{ "XPCTypeForSelector:argumentIndex:ofReply:", ?*anyopaque, .{ Selector, objc.NSInteger, objc.BOOL } },
        .{ "classesForSelector:argumentIndex:ofReply:", ?*anyopaque, .{ Selector, objc.NSInteger, objc.BOOL } },
        .{ "interfaceForSelector:argumentIndex:ofReply:", ?NSXPCInterface, .{ Selector, objc.NSInteger, objc.BOOL } },
        .{ "protocol", Object, .{} },
        .{ "setClasses:forSelector:argumentIndex:ofReply:", void, .{ ?*anyopaque, Selector, objc.NSInteger, objc.BOOL } },
        .{ "setInterface:forSelector:argumentIndex:ofReply:", void, .{ NSXPCInterface, Selector, objc.NSInteger, objc.BOOL } },
        .{ "setProtocol:", void, .{Object} },
        .{ "setXPCType:forSelector:argumentIndex:ofReply:", void, .{ objc.NSString, Selector, objc.NSInteger, objc.BOOL } },
    };

    pub fn send(self: NSXPCInterface, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "interfaceWithProtocol:", Object, .{Object} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSXPCInterface", class_methods, selector, args);
    }
};

pub const NSXPCListener = struct {
    obj: Object,

    pub const methods = .{
        .{ "activate", void, .{} },
        .{ "delegate", ?NSXPCListenerDelegate, .{} },
        .{ "endpoint", Object, .{} },
        .{ "initWithMachServiceName:", NSXPCListener, .{objc.NSString} },
        .{ "invalidate", void, .{} },
        .{ "resume", void, .{} },
        .{ "setConnectionCodeSigningRequirement:", void, .{objc.NSString} },
        .{ "setDelegate:", void, .{?NSXPCListenerDelegate} },
        .{ "suspend", void, .{} },
    };

    pub fn send(self: NSXPCListener, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), methods, selector) {
        return objc.typedSendFor(@This(), methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "anonymousListener", NSXPCListener, .{} },
        .{ "serviceListener", NSXPCListener, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturnFor(@This(), class_methods, selector) {
        return objc.typedClassSendFor(@This(), "NSXPCListener", class_methods, selector, args);
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
