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
pub const PortDelegate = *anyopaque;
pub const ProgressReporting = *anyopaque;
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
        .{ "appendTransform:", void, .{?*anyopaque} },
        .{ "invert", void, .{} },
        .{ "prependTransform:", void, .{?*anyopaque} },
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

    pub fn send(self: NSAffineTransform, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithTransform:", Object, .{?*anyopaque} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAffineTransform", class_methods, selector, args);
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

    pub fn send(self: NSAppleEventDescriptor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
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
        .{ "initListDescriptor", Object, .{void} },
        .{ "initRecordDescriptor", Object, .{void} },
        .{ "initWithAEDescNoCopy:", Object, .{?*anyopaque} },
        .{ "initWithDescriptorType:bytes:length:", Object, .{ objc.NSString, ?UnsafeRawPointer, objc.NSInteger } },
        .{ "initWithDescriptorType:data:", Object, .{ objc.NSString, ?NSData } },
        .{ "initWithEventClass:eventID:targetDescriptor:returnID:transactionID:", Object, .{ objc.NSString, objc.NSString, ?NSAppleEventDescriptor, objc.NSString, objc.NSString } },
        .{ "listDescriptor", NSAppleEventDescriptor, .{} },
        .{ "nullDescriptor", NSAppleEventDescriptor, .{} },
        .{ "recordDescriptor", NSAppleEventDescriptor, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAppleEventDescriptor", class_methods, selector, args);
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

    pub fn send(self: NSAppleEventManager, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedAppleEventManager", NSAppleEventManager, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAppleEventManager", class_methods, selector, args);
    }
};

pub const NSAppleScript = struct {
    obj: Object,

    pub const methods = .{
        .{ "compileAndReturnError:", objc.BOOL, .{?NSDictionary} },
        .{ "compiled", objc.BOOL, .{} },
        .{ "executeAndReturnError:", NSAppleEventDescriptor, .{?NSDictionary} },
        .{ "executeAppleEvent:error:", NSAppleEventDescriptor, .{ NSAppleEventDescriptor, ?NSDictionary } },
        .{ "source", ?objc.NSString, .{} },
    };

    pub fn send(self: NSAppleScript, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithContentsOfURL:error:", Object, .{ NSURL, ?NSDictionary } },
        .{ "initWithSource:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAppleScript", class_methods, selector, args);
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
        .{ "replaceObject:withObject:", void, .{ Any, Any } },
    };

    pub fn send(self: NSArchiver, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "archiveRootObject:toFile:", objc.BOOL, .{ Any, objc.NSString } },
        .{ "archivedDataWithRootObject:", NSData, .{Any} },
        .{ "initForWritingWithMutableData:", Object, .{NSMutableData} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSArchiver", class_methods, selector, args);
    }
};

pub const NSArray = struct {
    obj: Object,

    pub const methods = .{
        .{ "addObserver:forKeyPath:options:context:", void, .{ Object, objc.NSString, objc.NSInteger, ?UnsafeMutableRawPointer } },
        .{ "addObserver:toObjectsAtIndexes:forKeyPath:options:context:", void, .{ Object, NSIndexSet, objc.NSString, objc.NSInteger, ?UnsafeMutableRawPointer } },
        .{ "arrayByAddingObject:", Object, .{Any} },
        .{ "arrayByAddingObjectsFromArray:", Object, .{void} },
        .{ "componentsJoinedByString:", objc.NSString, .{objc.NSString} },
        .{ "containsObject:", objc.BOOL, .{Any} },
        .{ "count", objc.NSInteger, .{} },
        .{ "description", objc.NSString, .{} },
        .{ "descriptionWithLocale:", objc.NSString, .{?Any} },
        .{ "descriptionWithLocale:indent:", objc.NSString, .{ ?Any, objc.NSInteger } },
        .{ "enumerateObjectsAtIndexes:options:usingBlock:", void, .{ NSIndexSet, objc.NSInteger, void } },
        .{ "enumerateObjectsUsingBlock:", void, .{void} },
        .{ "enumerateObjectsWithOptions:usingBlock:", void, .{ objc.NSInteger, void } },
        .{ "filteredArrayUsingPredicate:", Object, .{NSPredicate} },
        .{ "firstObject", ?Any, .{} },
        .{ "firstObjectCommonWithArray:", ?Any, .{void} },
        .{ "indexOfObject:", objc.NSInteger, .{Any} },
        .{ "indexOfObject:inRange:", objc.NSInteger, .{ Any, NSRange } },
        .{ "indexOfObject:inSortedRange:options:usingComparator:", objc.NSInteger, .{ Any, NSRange, objc.NSInteger, void } },
        .{ "indexOfObjectAtIndexes:options:passingTest:", objc.NSInteger, .{ NSIndexSet, objc.NSInteger, void } },
        .{ "indexOfObjectIdenticalTo:", objc.NSInteger, .{Any} },
        .{ "indexOfObjectIdenticalTo:inRange:", objc.NSInteger, .{ Any, NSRange } },
        .{ "indexOfObjectPassingTest:", objc.NSInteger, .{void} },
        .{ "indexOfObjectWithOptions:passingTest:", objc.NSInteger, .{ objc.NSInteger, void } },
        .{ "indexesOfObjectsAtIndexes:options:passingTest:", NSIndexSet, .{ NSIndexSet, objc.NSInteger, void } },
        .{ "indexesOfObjectsPassingTest:", NSIndexSet, .{void} },
        .{ "indexesOfObjectsWithOptions:passingTest:", NSIndexSet, .{ objc.NSInteger, void } },
        .{ "isEqualToArray:", objc.BOOL, .{void} },
        .{ "lastObject", ?Any, .{} },
        .{ "objectAtIndex:", Any, .{objc.NSInteger} },
        .{ "objectEnumerator", NSEnumerator, .{} },
        .{ "objectsAtIndexes:", Object, .{NSIndexSet} },
        .{ "pathsMatchingExtensions:", Object, .{void} },
        .{ "removeObserver:forKeyPath:", void, .{ Object, objc.NSString } },
        .{ "removeObserver:forKeyPath:context:", void, .{ Object, objc.NSString, ?UnsafeMutableRawPointer } },
        .{ "removeObserver:fromObjectsAtIndexes:forKeyPath:", void, .{ Object, NSIndexSet, objc.NSString } },
        .{ "removeObserver:fromObjectsAtIndexes:forKeyPath:context:", void, .{ Object, NSIndexSet, objc.NSString, ?UnsafeMutableRawPointer } },
        .{ "reverseObjectEnumerator", NSEnumerator, .{} },
        .{ "setValue:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "sortedArrayHint", NSData, .{} },
        .{ "sortedArrayUsingComparator:", Object, .{void} },
        .{ "sortedArrayUsingDescriptors:", Object, .{void} },
        .{ "sortedArrayUsingFunction:context:", Object, .{ void, ?UnsafeMutableRawPointer } },
        .{ "sortedArrayUsingFunction:context:hint:", Object, .{ void, ?UnsafeMutableRawPointer, ?NSData } },
        .{ "sortedArrayUsingSelector:", Object, .{Selector} },
        .{ "sortedArrayWithOptions:usingComparator:", Object, .{ objc.NSInteger, void } },
        .{ "subarrayWithRange:", Object, .{NSRange} },
        .{ "valueForKey:", Any, .{objc.NSString} },
        .{ "writeToFile:atomically:", objc.BOOL, .{ objc.NSString, objc.BOOL } },
        .{ "writeToURL:atomically:", objc.BOOL, .{ NSURL, objc.BOOL } },
        .{ "writeToURL:error:", void, .{NSURL} },
    };

    pub fn send(self: NSArray, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "arrayWithContentsOfURL:", Object, .{NSURL} },
        .{ "arrayWithObject:", Object, .{Any} },
        .{ "arrayWithObjects:count:", Object, .{ UnsafePointer, objc.NSInteger } },
        .{ "init", Object, .{} },
        .{ "initWithArray:", Object, .{void} },
        .{ "initWithArray:copyItems:", Object, .{ void, objc.BOOL } },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithContentsOfFile:", Object, .{objc.NSString} },
        .{ "initWithContentsOfURL:", Object, .{NSURL} },
        .{ "initWithContentsOfURL:error:", Object, .{ NSURL, void } },
        .{ "initWithObjects:count:", Object, .{ ?UnsafePointer, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSArray", class_methods, selector, args);
    }
};

pub const NSAssertionHandler = struct {
    pub const class_methods = .{
        .{ "currentHandler", NSAssertionHandler, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAssertionHandler", class_methods, selector, args);
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
        .{ "enumerateAttribute:inRange:options:usingBlock:", void, .{ objc.NSString, NSRange, objc.NSInteger, void } },
        .{ "enumerateAttributesInRange:options:usingBlock:", void, .{ NSRange, objc.NSInteger, void } },
        .{ "isEqualToAttributedString:", objc.BOOL, .{NSAttributedString} },
        .{ "length", objc.NSInteger, .{} },
        .{ "string", objc.NSString, .{} },
    };

    pub fn send(self: NSAttributedString, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithAttributedString:", Object, .{NSAttributedString} },
        .{ "initWithString:", Object, .{objc.NSString} },
        .{ "initWithString:attributes:", Object, .{ objc.NSString, ?Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSAttributedString", class_methods, selector, args);
    }
};

pub const NSBackgroundActivityScheduler = struct {
    obj: Object,

    pub const methods = .{
        .{ "identifier", objc.NSString, .{} },
        .{ "interval", TimeInterval, .{} },
        .{ "invalidate", void, .{} },
        .{ "qualityOfService", QualityOfService, .{} },
        .{ "repeats", objc.BOOL, .{} },
        .{ "scheduleWithBlock:", void, .{void} },
        .{ "setInterval:", void, .{TimeInterval} },
        .{ "setQualityOfService:", void, .{QualityOfService} },
        .{ "setRepeats:", void, .{objc.BOOL} },
        .{ "setTolerance:", void, .{TimeInterval} },
        .{ "shouldDefer", objc.BOOL, .{} },
        .{ "tolerance", TimeInterval, .{} },
    };

    pub fn send(self: NSBackgroundActivityScheduler, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithIdentifier:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSBackgroundActivityScheduler", class_methods, selector, args);
    }

    pub const Result = enum(i64) {
        finished = 1,
        deferred = 2,
    };
};

pub const NSBlockOperation = struct {
    obj: Object,

    pub const Super = NSOperation;
    pub const methods = .{
        .{ "addExecutionBlock:", void, .{void} },
        .{ "executionBlocks", Object, .{} },
    };

    pub fn send(self: NSBlockOperation, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "blockOperationWithBlock:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSBlockOperation", class_methods, selector, args);
    }
};

pub const NSBundle = struct {
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

    pub fn send(self: NSBundle, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "URLForResource:withExtension:subdirectory:inBundleWithURL:", ?NSURL, .{ ?objc.NSString, ?objc.NSString, ?objc.NSString, NSURL } },
        .{ "URLsForResourcesWithExtension:subdirectory:inBundleWithURL:", ?*anyopaque, .{ ?objc.NSString, ?objc.NSString, NSURL } },
        .{ "allBundles", Object, .{} },
        .{ "allFrameworks", Object, .{} },
        .{ "bundleForClass:", Object, .{AnyClass} },
        .{ "bundleWithIdentifier:", Object, .{objc.NSString} },
        .{ "initWithPath:", Object, .{objc.NSString} },
        .{ "initWithURL:", Object, .{NSURL} },
        .{ "mainBundle", NSBundle, .{} },
        .{ "pathForResource:ofType:inDirectory:", ?objc.NSString, .{ ?objc.NSString, ?objc.NSString, objc.NSString } },
        .{ "pathsForResourcesOfType:inDirectory:", Object, .{ ?objc.NSString, objc.NSString } },
        .{ "preferredLocalizationsFromArray:", Object, .{void} },
        .{ "preferredLocalizationsFromArray:forPreferences:", Object, .{ void, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSBundle", class_methods, selector, args);
    }
};

pub const NSByteCountFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
    pub const methods = .{
        .{ "adaptive", objc.BOOL, .{} },
        .{ "allowedUnits", objc.NSInteger, .{} },
        .{ "allowsNonnumericFormatting", objc.BOOL, .{} },
        .{ "countStyle", NSByteCountFormatter.CountStyle, .{} },
        .{ "formattingContext", NSFormatter.Context, .{} },
        .{ "includesActualByteCount", objc.BOOL, .{} },
        .{ "includesCount", objc.BOOL, .{} },
        .{ "includesUnit", objc.BOOL, .{} },
        .{ "setAdaptive:", void, .{objc.BOOL} },
        .{ "setAllowedUnits:", void, .{objc.NSInteger} },
        .{ "setAllowsNonnumericFormatting:", void, .{objc.BOOL} },
        .{ "setCountStyle:", void, .{NSByteCountFormatter.CountStyle} },
        .{ "setFormattingContext:", void, .{NSFormatter.Context} },
        .{ "setIncludesActualByteCount:", void, .{objc.BOOL} },
        .{ "setIncludesCount:", void, .{objc.BOOL} },
        .{ "setIncludesUnit:", void, .{objc.BOOL} },
        .{ "setZeroPadsFractionDigits:", void, .{objc.BOOL} },
        .{ "stringForObjectValue:", ?objc.NSString, .{?Any} },
        .{ "stringFromByteCount:", objc.NSString, .{i64} },
        .{ "stringFromMeasurement:", objc.NSString, .{NSUnitInformationStorage} },
        .{ "zeroPadsFractionDigits", objc.BOOL, .{} },
    };

    pub fn send(self: NSByteCountFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "stringFromByteCount:countStyle:", objc.NSString, .{ i64, NSByteCountFormatter.CountStyle } },
        .{ "stringFromMeasurement:countStyle:", objc.NSString, .{ NSUnitInformationStorage, NSByteCountFormatter.CountStyle } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSByteCountFormatter", class_methods, selector, args);
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

    pub fn send(self: NSCache, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSCachedURLResponse = struct {
    obj: Object,

    pub const methods = .{
        .{ "data", NSData, .{} },
        .{ "response", NSURLResponse, .{} },
        .{ "storagePolicy", NSURLCache.StoragePolicy, .{} },
        .{ "userInfo", ?*anyopaque, .{} },
    };

    pub fn send(self: NSCachedURLResponse, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithResponse:data:", Object, .{ NSURLResponse, NSData } },
        .{ "initWithResponse:data:userInfo:storagePolicy:", Object, .{ NSURLResponse, NSData, ?Any, NSURLCache.StoragePolicy } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCachedURLResponse", class_methods, selector, args);
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
        .{ "components:fromDate:", ?*anyopaque, .{ objc.NSInteger, NSDate } },
        .{ "components:fromDate:toDate:options:", ?*anyopaque, .{ objc.NSInteger, NSDate, NSDate, objc.NSInteger } },
        .{ "components:fromDateComponents:toDateComponents:options:", ?*anyopaque, .{ objc.NSInteger, ?*anyopaque, ?*anyopaque, objc.NSInteger } },
        .{ "componentsInTimeZone:fromDate:", ?*anyopaque, .{ ?*anyopaque, NSDate } },
        .{ "date:matchesComponents:", objc.BOOL, .{ NSDate, ?*anyopaque } },
        .{ "dateByAddingComponents:toDate:options:", ?NSDate, .{ ?*anyopaque, NSDate, objc.NSInteger } },
        .{ "dateByAddingUnit:value:toDate:options:", ?NSDate, .{ objc.NSInteger, objc.NSInteger, NSDate, objc.NSInteger } },
        .{ "dateBySettingHour:minute:second:ofDate:options:", ?NSDate, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, NSDate, objc.NSInteger } },
        .{ "dateBySettingUnit:value:ofDate:options:", ?NSDate, .{ objc.NSInteger, objc.NSInteger, NSDate, objc.NSInteger } },
        .{ "dateFromComponents:", ?NSDate, .{?*anyopaque} },
        .{ "dateWithEra:year:month:day:hour:minute:second:nanosecond:", ?NSDate, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "dateWithEra:yearForWeekOfYear:weekOfYear:weekday:hour:minute:second:nanosecond:", ?NSDate, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "enumerateDatesStartingAfterDate:matchingComponents:options:usingBlock:", void, .{ NSDate, ?*anyopaque, objc.NSInteger, void } },
        .{ "eraSymbols", Object, .{} },
        .{ "firstWeekday", objc.NSInteger, .{} },
        .{ "getEra:year:month:day:fromDate:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, NSDate } },
        .{ "getEra:yearForWeekOfYear:weekOfYear:weekday:fromDate:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, NSDate } },
        .{ "getHour:minute:second:nanosecond:fromDate:", void, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger, objc.NSInteger, NSDate } },
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
        .{ "nextDateAfterDate:matchingComponents:options:", ?NSDate, .{ NSDate, ?*anyopaque, objc.NSInteger } },
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
        .{ "setTimeZone:", void, .{?*anyopaque} },
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
        .{ "timeZone", ?*anyopaque, .{} },
        .{ "veryShortMonthSymbols", Object, .{} },
        .{ "veryShortStandaloneMonthSymbols", Object, .{} },
        .{ "veryShortStandaloneWeekdaySymbols", Object, .{} },
        .{ "veryShortWeekdaySymbols", Object, .{} },
        .{ "weekdaySymbols", Object, .{} },
    };

    pub fn send(self: NSCalendar, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "autoupdatingCurrentCalendar", ?*anyopaque, .{} },
        .{ "calendarWithIdentifier:", Object, .{objc.NSString} },
        .{ "currentCalendar", ?*anyopaque, .{} },
        .{ "initWithCalendarIdentifier:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCalendar", class_methods, selector, args);
    }
};

pub const NSCharacterSet = struct {
    obj: Object,

    pub const methods = .{
        .{ "bitmapRepresentation", NSData, .{} },
        .{ "characterIsMember:", objc.BOOL, .{u16} },
        .{ "hasMemberInPlane:", objc.BOOL, .{u8} },
        .{ "invertedSet", ?*anyopaque, .{} },
        .{ "isSupersetOfSet:", objc.BOOL, .{?*anyopaque} },
        .{ "longCharacterIsMember:", objc.BOOL, .{objc.NSString} },
    };

    pub fn send(self: NSCharacterSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "URLFragmentAllowedCharacterSet", ?*anyopaque, .{} },
        .{ "URLHostAllowedCharacterSet", ?*anyopaque, .{} },
        .{ "URLPasswordAllowedCharacterSet", ?*anyopaque, .{} },
        .{ "URLPathAllowedCharacterSet", ?*anyopaque, .{} },
        .{ "URLQueryAllowedCharacterSet", ?*anyopaque, .{} },
        .{ "URLUserAllowedCharacterSet", ?*anyopaque, .{} },
        .{ "alphanumericCharacterSet", ?*anyopaque, .{} },
        .{ "capitalizedLetterCharacterSet", ?*anyopaque, .{} },
        .{ "characterSetWithBitmapRepresentation:", Object, .{NSData} },
        .{ "characterSetWithCharactersInString:", Object, .{objc.NSString} },
        .{ "characterSetWithContentsOfFile:", Object, .{objc.NSString} },
        .{ "characterSetWithRange:", Object, .{NSRange} },
        .{ "controlCharacterSet", ?*anyopaque, .{} },
        .{ "decimalDigitCharacterSet", ?*anyopaque, .{} },
        .{ "decomposableCharacterSet", ?*anyopaque, .{} },
        .{ "illegalCharacterSet", ?*anyopaque, .{} },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "letterCharacterSet", ?*anyopaque, .{} },
        .{ "lowercaseLetterCharacterSet", ?*anyopaque, .{} },
        .{ "newlineCharacterSet", ?*anyopaque, .{} },
        .{ "nonBaseCharacterSet", ?*anyopaque, .{} },
        .{ "punctuationCharacterSet", ?*anyopaque, .{} },
        .{ "symbolCharacterSet", ?*anyopaque, .{} },
        .{ "uppercaseLetterCharacterSet", ?*anyopaque, .{} },
        .{ "whitespaceAndNewlineCharacterSet", ?*anyopaque, .{} },
        .{ "whitespaceCharacterSet", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCharacterSet", class_methods, selector, args);
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

    pub fn send(self: NSClassDescription, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "classDescriptionForClass:", Object, .{AnyClass} },
        .{ "invalidateClassDescriptionCache", void, .{} },
        .{ "registerClassDescription:forClass:", void, .{ NSClassDescription, AnyClass } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSClassDescription", class_methods, selector, args);
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
        .{ "failWithError:", void, .{void} },
        .{ "requiresSecureCoding", objc.BOOL, .{} },
        .{ "systemVersion", u32, .{} },
        .{ "versionForClassName:", objc.NSInteger, .{objc.NSString} },
    };

    pub fn send(self: NSCoder, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
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
        .{ "leftExpression", NSExpression, .{} },
        .{ "options", objc.NSInteger, .{} },
        .{ "predicateOperatorType", NSComparisonPredicate.Operator, .{} },
        .{ "rightExpression", NSExpression, .{} },
    };

    pub fn send(self: NSComparisonPredicate, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithLeftExpression:rightExpression:customSelector:", Object, .{ NSExpression, NSExpression, Selector } },
        .{ "initWithLeftExpression:rightExpression:modifier:type:options:", Object, .{ NSExpression, NSExpression, NSComparisonPredicate.Modifier, NSComparisonPredicate.Operator, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSComparisonPredicate", class_methods, selector, args);
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
        .{ "subpredicates", Object, .{} },
    };

    pub fn send(self: NSCompoundPredicate, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "andPredicateWithSubpredicates:", Object, .{void} },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithType:subpredicates:", Object, .{ NSCompoundPredicate.LogicalType, void } },
        .{ "notPredicateWithSubpredicate:", Object, .{NSPredicate} },
        .{ "orPredicateWithSubpredicates:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCompoundPredicate", class_methods, selector, args);
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

    pub fn send(self: NSCondition, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSConditionLock = struct {
    obj: Object,

    pub const methods = .{
        .{ "condition", objc.NSInteger, .{} },
        .{ "lockBeforeDate:", objc.BOOL, .{NSDate} },
        .{ "lockWhenCondition:", void, .{objc.NSInteger} },
        .{ "lockWhenCondition:beforeDate:", objc.BOOL, .{ objc.NSInteger, NSDate } },
        .{ "name", ?objc.NSString, .{} },
        .{ "setName:", void, .{?objc.NSString} },
        .{ "tryLock", objc.BOOL, .{} },
        .{ "tryLockWhenCondition:", objc.BOOL, .{objc.NSInteger} },
        .{ "unlockWithCondition:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSConditionLock, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCondition:", Object, .{objc.NSInteger} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSConditionLock", class_methods, selector, args);
    }
};

pub const NSCountedSet = struct {
    obj: Object,

    pub const Super = NSMutableSet;
    pub const methods = .{
        .{ "addObject:", void, .{Any} },
        .{ "countForObject:", objc.NSInteger, .{Any} },
        .{ "objectEnumerator", NSEnumerator, .{} },
        .{ "removeObject:", void, .{Any} },
    };

    pub fn send(self: NSCountedSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithArray:", Object, .{void} },
        .{ "initWithCapacity:", Object, .{objc.NSInteger} },
        .{ "initWithSet:", Object, .{?*anyopaque} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSCountedSet", class_methods, selector, args);
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
        .{ "enumerateByteRangesUsingBlock:", void, .{void} },
        .{ "getBytes:", void, .{UnsafeMutableRawPointer} },
        .{ "getBytes:length:", void, .{ UnsafeMutableRawPointer, objc.NSInteger } },
        .{ "getBytes:range:", void, .{ UnsafeMutableRawPointer, NSRange } },
        .{ "isEqualToData:", objc.BOOL, .{NSData} },
        .{ "length", objc.NSInteger, .{} },
        .{ "rangeOfData:options:range:", NSRange, .{ NSData, objc.NSInteger, NSRange } },
        .{ "subdataWithRange:", NSData, .{NSRange} },
        .{ "writeToFile:atomically:", objc.BOOL, .{ objc.NSString, objc.BOOL } },
        .{ "writeToFile:options:error:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "writeToURL:atomically:", objc.BOOL, .{ NSURL, objc.BOOL } },
        .{ "writeToURL:options:error:", void, .{ NSURL, objc.NSInteger } },
    };

    pub fn send(self: NSData, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dataWithContentsOfMappedFile:", ?Any, .{objc.NSString} },
        .{ "dataWithContentsOfURL:", Object, .{NSURL} },
        .{ "dataWithContentsOfURL:options:error:", Object, .{ NSURL, objc.NSInteger } },
        .{ "initWithBase64EncodedData:options:", Object, .{ NSData, objc.NSInteger } },
        .{ "initWithBase64EncodedString:options:", Object, .{ objc.NSString, objc.NSInteger } },
        .{ "initWithBytes:length:", Object, .{ ?UnsafeRawPointer, objc.NSInteger } },
        .{ "initWithBytesNoCopy:length:", Object, .{ UnsafeMutableRawPointer, objc.NSInteger } },
        .{ "initWithBytesNoCopy:length:deallocator:", Object, .{ UnsafeMutableRawPointer, objc.NSInteger, void } },
        .{ "initWithBytesNoCopy:length:freeWhenDone:", Object, .{ UnsafeMutableRawPointer, objc.NSInteger, objc.BOOL } },
        .{ "initWithContentsOfFile:", Object, .{objc.NSString} },
        .{ "initWithContentsOfFile:options:error:", Object, .{ objc.NSString, objc.NSInteger } },
        .{ "initWithContentsOfMappedFile:", Object, .{objc.NSString} },
        .{ "initWithContentsOfURL:", Object, .{NSURL} },
        .{ "initWithContentsOfURL:options:error:", Object, .{ NSURL, objc.NSInteger } },
        .{ "initWithData:", Object, .{NSData} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSData", class_methods, selector, args);
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
    };

    pub fn send(self: NSDataDetector, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithTypes:error:", Object, .{u64} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDataDetector", class_methods, selector, args);
    }
};

pub const NSDate = struct {
    obj: Object,

    pub const methods = .{
        .{ "compare:", ComparisonResult, .{NSDate} },
        .{ "dateByAddingTimeInterval:", ?*anyopaque, .{TimeInterval} },
        .{ "dateWithCalendarFormat:timeZone:", Object, .{ ?objc.NSString, ?*anyopaque } },
        .{ "description", objc.NSString, .{} },
        .{ "descriptionWithCalendarFormat:timeZone:locale:", ?objc.NSString, .{ ?objc.NSString, ?*anyopaque, ?Any } },
        .{ "descriptionWithLocale:", objc.NSString, .{?Any} },
        .{ "earlierDate:", NSDate, .{NSDate} },
        .{ "isEqualToDate:", objc.BOOL, .{NSDate} },
        .{ "laterDate:", NSDate, .{NSDate} },
        .{ "timeIntervalSince1970", TimeInterval, .{} },
        .{ "timeIntervalSinceDate:", TimeInterval, .{NSDate} },
        .{ "timeIntervalSinceNow", TimeInterval, .{} },
        .{ "timeIntervalSinceReferenceDate", TimeInterval, .{} },
    };

    pub fn send(self: NSDate, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dateWithNaturalLanguageString:", ?Any, .{objc.NSString} },
        .{ "dateWithNaturalLanguageString:locale:", ?Any, .{ objc.NSString, ?Any } },
        .{ "dateWithString:", Any, .{objc.NSString} },
        .{ "dateWithTimeInterval:sinceDate:", Object, .{ TimeInterval, NSDate } },
        .{ "distantFuture", NSDate, .{} },
        .{ "distantPast", NSDate, .{} },
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithString:", Object, .{objc.NSString} },
        .{ "initWithTimeInterval:sinceDate:", Object, .{ TimeInterval, NSDate } },
        .{ "initWithTimeIntervalSince1970:", Object, .{TimeInterval} },
        .{ "initWithTimeIntervalSinceNow:", Object, .{TimeInterval} },
        .{ "initWithTimeIntervalSinceReferenceDate:", Object, .{TimeInterval} },
        .{ "now", NSDate, .{} },
        .{ "timeIntervalSinceReferenceDate", TimeInterval, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDate", class_methods, selector, args);
    }
};

pub const NSDateComponents = struct {
    obj: Object,

    pub const methods = .{
        .{ "calendar", ?*anyopaque, .{} },
        .{ "date", ?NSDate, .{} },
        .{ "day", objc.NSInteger, .{} },
        .{ "dayOfYear", objc.NSInteger, .{} },
        .{ "era", objc.NSInteger, .{} },
        .{ "hour", objc.NSInteger, .{} },
        .{ "isValidDateInCalendar:", objc.BOOL, .{?*anyopaque} },
        .{ "leapMonth", objc.BOOL, .{} },
        .{ "minute", objc.NSInteger, .{} },
        .{ "month", objc.NSInteger, .{} },
        .{ "nanosecond", objc.NSInteger, .{} },
        .{ "quarter", objc.NSInteger, .{} },
        .{ "repeatedDay", objc.BOOL, .{} },
        .{ "second", objc.NSInteger, .{} },
        .{ "setCalendar:", void, .{?*anyopaque} },
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
        .{ "setTimeZone:", void, .{?*anyopaque} },
        .{ "setValue:forComponent:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "setWeekOfMonth:", void, .{objc.NSInteger} },
        .{ "setWeekOfYear:", void, .{objc.NSInteger} },
        .{ "setWeekday:", void, .{objc.NSInteger} },
        .{ "setWeekdayOrdinal:", void, .{objc.NSInteger} },
        .{ "setYear:", void, .{objc.NSInteger} },
        .{ "setYearForWeekOfYear:", void, .{objc.NSInteger} },
        .{ "timeZone", ?*anyopaque, .{} },
        .{ "validDate", objc.BOOL, .{} },
        .{ "valueForComponent:", objc.NSInteger, .{objc.NSInteger} },
        .{ "weekOfMonth", objc.NSInteger, .{} },
        .{ "weekOfYear", objc.NSInteger, .{} },
        .{ "weekday", objc.NSInteger, .{} },
        .{ "weekdayOrdinal", objc.NSInteger, .{} },
        .{ "year", objc.NSInteger, .{} },
        .{ "yearForWeekOfYear", objc.NSInteger, .{} },
    };

    pub fn send(self: NSDateComponents, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSDateComponentsFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
    pub const methods = .{
        .{ "allowedUnits", objc.NSInteger, .{} },
        .{ "allowsFractionalUnits", objc.BOOL, .{} },
        .{ "calendar", ?*anyopaque, .{} },
        .{ "collapsesLargestUnit", objc.BOOL, .{} },
        .{ "formattingContext", NSFormatter.Context, .{} },
        .{ "getObjectValue:forString:errorDescription:", objc.BOOL, .{ ?*anyopaque, objc.NSString, ?objc.NSString } },
        .{ "includesApproximationPhrase", objc.BOOL, .{} },
        .{ "includesTimeRemainingPhrase", objc.BOOL, .{} },
        .{ "maximumUnitCount", objc.NSInteger, .{} },
        .{ "referenceDate", ?NSDate, .{} },
        .{ "setAllowedUnits:", void, .{objc.NSInteger} },
        .{ "setAllowsFractionalUnits:", void, .{objc.BOOL} },
        .{ "setCalendar:", void, .{?*anyopaque} },
        .{ "setCollapsesLargestUnit:", void, .{objc.BOOL} },
        .{ "setFormattingContext:", void, .{NSFormatter.Context} },
        .{ "setIncludesApproximationPhrase:", void, .{objc.BOOL} },
        .{ "setIncludesTimeRemainingPhrase:", void, .{objc.BOOL} },
        .{ "setMaximumUnitCount:", void, .{objc.NSInteger} },
        .{ "setReferenceDate:", void, .{?NSDate} },
        .{ "setUnitsStyle:", void, .{NSDateComponentsFormatter.UnitsStyle} },
        .{ "setZeroFormattingBehavior:", void, .{objc.NSInteger} },
        .{ "stringForObjectValue:", ?objc.NSString, .{?Any} },
        .{ "stringFromDate:toDate:", ?objc.NSString, .{ NSDate, NSDate } },
        .{ "stringFromDateComponents:", ?objc.NSString, .{?*anyopaque} },
        .{ "stringFromTimeInterval:", ?objc.NSString, .{TimeInterval} },
        .{ "unitsStyle", NSDateComponentsFormatter.UnitsStyle, .{} },
        .{ "zeroFormattingBehavior", objc.NSInteger, .{} },
    };

    pub fn send(self: NSDateComponentsFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "localizedStringFromDateComponents:unitsStyle:", ?objc.NSString, .{ ?*anyopaque, NSDateComponentsFormatter.UnitsStyle } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDateComponentsFormatter", class_methods, selector, args);
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

pub const NSDateFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
    pub const methods = .{
        .{ "AMSymbol", objc.NSString, .{} },
        .{ "PMSymbol", objc.NSString, .{} },
        .{ "calendar", ?*anyopaque, .{} },
        .{ "dateFormat", objc.NSString, .{} },
        .{ "dateFromString:", ?NSDate, .{objc.NSString} },
        .{ "dateStyle", NSDateFormatter.Style, .{} },
        .{ "defaultDate", ?NSDate, .{} },
        .{ "doesRelativeDateFormatting", objc.BOOL, .{} },
        .{ "eraSymbols", Object, .{} },
        .{ "formatterBehavior", NSDateFormatter.Behavior, .{} },
        .{ "formattingContext", NSFormatter.Context, .{} },
        .{ "generatesCalendarDates", objc.BOOL, .{} },
        .{ "getObjectValue:forString:range:error:", void, .{ ?*anyopaque, objc.NSString, NSRange } },
        .{ "gregorianStartDate", ?NSDate, .{} },
        .{ "lenient", objc.BOOL, .{} },
        .{ "locale", NSLocale, .{} },
        .{ "longEraSymbols", Object, .{} },
        .{ "monthSymbols", Object, .{} },
        .{ "quarterSymbols", Object, .{} },
        .{ "setAMSymbol:", void, .{objc.NSString} },
        .{ "setCalendar:", void, .{?*anyopaque} },
        .{ "setDateFormat:", void, .{objc.NSString} },
        .{ "setDateStyle:", void, .{NSDateFormatter.Style} },
        .{ "setDefaultDate:", void, .{?NSDate} },
        .{ "setDoesRelativeDateFormatting:", void, .{objc.BOOL} },
        .{ "setEraSymbols:", void, .{Object} },
        .{ "setFormatterBehavior:", void, .{NSDateFormatter.Behavior} },
        .{ "setFormattingContext:", void, .{NSFormatter.Context} },
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
        .{ "setTimeStyle:", void, .{NSDateFormatter.Style} },
        .{ "setTimeZone:", void, .{?*anyopaque} },
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
        .{ "timeStyle", NSDateFormatter.Style, .{} },
        .{ "timeZone", ?*anyopaque, .{} },
        .{ "twoDigitStartDate", ?NSDate, .{} },
        .{ "veryShortMonthSymbols", Object, .{} },
        .{ "veryShortStandaloneMonthSymbols", Object, .{} },
        .{ "veryShortStandaloneWeekdaySymbols", Object, .{} },
        .{ "veryShortWeekdaySymbols", Object, .{} },
        .{ "weekdaySymbols", Object, .{} },
    };

    pub fn send(self: NSDateFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dateFormatFromTemplate:options:locale:", ?objc.NSString, .{ objc.NSString, objc.NSInteger, ?NSLocale } },
        .{ "defaultFormatterBehavior", NSDateFormatter.Behavior, .{} },
        .{ "localizedStringFromDate:dateStyle:timeStyle:", objc.NSString, .{ NSDate, NSDateFormatter.Style, NSDateFormatter.Style } },
        .{ "setDefaultFormatterBehavior:", void, .{NSDateFormatter.Behavior} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDateFormatter", class_methods, selector, args);
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
        .{ "compare:", ComparisonResult, .{?*anyopaque} },
        .{ "containsDate:", objc.BOOL, .{NSDate} },
        .{ "duration", TimeInterval, .{} },
        .{ "endDate", NSDate, .{} },
        .{ "intersectionWithDateInterval:", ?*anyopaque, .{?*anyopaque} },
        .{ "intersectsDateInterval:", objc.BOOL, .{?*anyopaque} },
        .{ "isEqualToDateInterval:", objc.BOOL, .{?*anyopaque} },
        .{ "startDate", NSDate, .{} },
    };

    pub fn send(self: NSDateInterval, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithStartDate:duration:", Object, .{ NSDate, TimeInterval } },
        .{ "initWithStartDate:endDate:", Object, .{ NSDate, NSDate } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDateInterval", class_methods, selector, args);
    }
};

pub const NSDateIntervalFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
    pub const methods = .{
        .{ "calendar", ?*anyopaque, .{} },
        .{ "dateStyle", NSDateIntervalFormatter.Style, .{} },
        .{ "dateTemplate", objc.NSString, .{} },
        .{ "locale", NSLocale, .{} },
        .{ "setCalendar:", void, .{?*anyopaque} },
        .{ "setDateStyle:", void, .{NSDateIntervalFormatter.Style} },
        .{ "setDateTemplate:", void, .{objc.NSString} },
        .{ "setLocale:", void, .{NSLocale} },
        .{ "setTimeStyle:", void, .{NSDateIntervalFormatter.Style} },
        .{ "setTimeZone:", void, .{?*anyopaque} },
        .{ "stringFromDate:toDate:", objc.NSString, .{ NSDate, NSDate } },
        .{ "stringFromDateInterval:", ?objc.NSString, .{?*anyopaque} },
        .{ "timeStyle", NSDateIntervalFormatter.Style, .{} },
        .{ "timeZone", ?*anyopaque, .{} },
    };

    pub fn send(self: NSDateIntervalFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
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
        .{ "decimalNumberByAdding:withBehavior:", NSDecimalNumber, .{ NSDecimalNumber, void } },
        .{ "decimalNumberByDividingBy:", NSDecimalNumber, .{NSDecimalNumber} },
        .{ "decimalNumberByDividingBy:withBehavior:", NSDecimalNumber, .{ NSDecimalNumber, void } },
        .{ "decimalNumberByMultiplyingBy:", NSDecimalNumber, .{NSDecimalNumber} },
        .{ "decimalNumberByMultiplyingBy:withBehavior:", NSDecimalNumber, .{ NSDecimalNumber, void } },
        .{ "decimalNumberByMultiplyingByPowerOf10:", NSDecimalNumber, .{i16} },
        .{ "decimalNumberByMultiplyingByPowerOf10:withBehavior:", NSDecimalNumber, .{ i16, void } },
        .{ "decimalNumberByRaisingToPower:", NSDecimalNumber, .{objc.NSInteger} },
        .{ "decimalNumberByRaisingToPower:withBehavior:", NSDecimalNumber, .{ objc.NSInteger, void } },
        .{ "decimalNumberByRoundingAccordingToBehavior:", NSDecimalNumber, .{void} },
        .{ "decimalNumberBySubtracting:", NSDecimalNumber, .{NSDecimalNumber} },
        .{ "decimalNumberBySubtracting:withBehavior:", NSDecimalNumber, .{ NSDecimalNumber, void } },
        .{ "decimalValue", ?*anyopaque, .{} },
        .{ "descriptionWithLocale:", objc.NSString, .{?Any} },
        .{ "doubleValue", f64, .{} },
        .{ "objCType", ?*anyopaque, .{} },
    };

    pub fn send(self: NSDecimalNumber, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultBehavior", NSDecimalNumberBehaviors, .{} },
        .{ "initWithDecimal:", Object, .{?*anyopaque} },
        .{ "initWithMantissa:exponent:isNegative:", Object, .{ u64, i16, objc.BOOL } },
        .{ "initWithString:", Object, .{?objc.NSString} },
        .{ "initWithString:locale:", Object, .{ ?objc.NSString, ?Any } },
        .{ "maximumDecimalNumber", NSDecimalNumber, .{} },
        .{ "minimumDecimalNumber", NSDecimalNumber, .{} },
        .{ "notANumber", NSDecimalNumber, .{} },
        .{ "one", NSDecimalNumber, .{} },
        .{ "setDefaultBehavior:", void, .{NSDecimalNumberBehaviors} },
        .{ "zero", NSDecimalNumber, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDecimalNumber", class_methods, selector, args);
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
    pub const class_methods = .{
        .{ "defaultDecimalNumberHandler", NSDecimalNumberHandler, .{} },
        .{ "initWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:", Object, .{ NSDecimalNumber.RoundingMode, i16, objc.BOOL, objc.BOOL, objc.BOOL, objc.BOOL } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDecimalNumberHandler", class_methods, selector, args);
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
        .{ "enumerateKeysAndObjectsUsingBlock:", void, .{void} },
        .{ "enumerateKeysAndObjectsWithOptions:usingBlock:", void, .{ objc.NSInteger, void } },
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
        .{ "isEqualToDictionary:", objc.BOOL, .{Any} },
        .{ "keyEnumerator", NSEnumerator, .{} },
        .{ "keysOfEntriesPassingTest:", ?*anyopaque, .{void} },
        .{ "keysOfEntriesWithOptions:passingTest:", ?*anyopaque, .{ objc.NSInteger, void } },
        .{ "keysSortedByValueUsingComparator:", Object, .{void} },
        .{ "keysSortedByValueUsingSelector:", Object, .{Selector} },
        .{ "keysSortedByValueWithOptions:usingComparator:", Object, .{ objc.NSInteger, void } },
        .{ "objectEnumerator", NSEnumerator, .{} },
        .{ "objectForKey:", ?Any, .{Any} },
        .{ "objectsForKeys:notFoundMarker:", Object, .{ void, Any } },
        .{ "valueForKey:", ?Any, .{objc.NSString} },
        .{ "writeToFile:atomically:", objc.BOOL, .{ objc.NSString, objc.BOOL } },
        .{ "writeToURL:atomically:", objc.BOOL, .{ NSURL, objc.BOOL } },
        .{ "writeToURL:error:", void, .{NSURL} },
    };

    pub fn send(self: NSDictionary, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dictionaryWithContentsOfURL:", Object, .{NSURL} },
        .{ "dictionaryWithObject:forKey:", Object, .{ Any, void } },
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithContentsOfFile:", Object, .{objc.NSString} },
        .{ "initWithContentsOfURL:", Object, .{NSURL} },
        .{ "initWithContentsOfURL:error:", Object, .{ NSURL, void } },
        .{ "initWithDictionary:", Object, .{Any} },
        .{ "initWithDictionary:copyItems:", Object, .{ Any, objc.BOOL } },
        .{ "initWithObjects:forKeys:", Object, .{ void, void } },
        .{ "initWithObjects:forKeys:count:", Object, .{ ?UnsafePointer, ?*anyopaque, objc.NSInteger } },
        .{ "sharedKeySetForKeys:", Any, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDictionary", class_methods, selector, args);
    }
};

pub const NSDimension = struct {
    obj: Object,

    pub const Super = NSUnit;
    pub const methods = .{
        .{ "converter", NSUnitConverter, .{} },
    };

    pub fn send(self: NSDimension, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "baseUnit", ?*anyopaque, .{} },
        .{ "initWithSymbol:converter:", Object, .{ objc.NSString, NSUnitConverter } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDimension", class_methods, selector, args);
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
};

pub const NSDistributedLock = struct {
    obj: Object,

    pub const methods = .{
        .{ "breakLock", void, .{} },
        .{ "lockDate", NSDate, .{} },
        .{ "tryLock", objc.BOOL, .{} },
        .{ "unlock", void, .{} },
    };

    pub fn send(self: NSDistributedLock, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithPath:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDistributedLock", class_methods, selector, args);
    }
};

pub const NSDistributedNotificationCenter = struct {
    obj: Object,

    pub const Super = NSNotificationCenter;
    pub const methods = .{
        .{ "addObserver:selector:name:object:", void, .{ Any, Selector, objc.NSString, ?objc.NSString } },
        .{ "addObserver:selector:name:object:suspensionBehavior:", void, .{ Any, Selector, objc.NSString, ?objc.NSString, NSDistributedNotificationCenter.SuspensionBehavior } },
        .{ "postNotificationName:object:", void, .{ objc.NSString, ?objc.NSString } },
        .{ "postNotificationName:object:userInfo:", void, .{ objc.NSString, ?objc.NSString, ?Any } },
        .{ "postNotificationName:object:userInfo:deliverImmediately:", void, .{ objc.NSString, ?objc.NSString, ?Any, objc.BOOL } },
        .{ "postNotificationName:object:userInfo:options:", void, .{ objc.NSString, ?objc.NSString, ?Any, objc.NSInteger } },
        .{ "removeObserver:name:object:", void, .{ Any, objc.NSString, ?objc.NSString } },
        .{ "setSuspended:", void, .{objc.BOOL} },
        .{ "suspended", objc.BOOL, .{} },
    };

    pub fn send(self: NSDistributedNotificationCenter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultCenter", NSDistributedNotificationCenter, .{} },
        .{ "notificationCenterForType:", NSDistributedNotificationCenter, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSDistributedNotificationCenter", class_methods, selector, args);
    }

    pub const SuspensionBehavior = enum(i64) {
        drop = 1,
        coalesce = 2,
        hold = 3,
        deliverImmediately = 4,
    };
};

pub const NSEnergyFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
    pub const methods = .{
        .{ "forFoodEnergyUse", objc.BOOL, .{} },
        .{ "getObjectValue:forString:errorDescription:", objc.BOOL, .{ ?*anyopaque, objc.NSString, ?objc.NSString } },
        .{ "numberFormatter", NSNumberFormatter, .{} },
        .{ "setForFoodEnergyUse:", void, .{objc.BOOL} },
        .{ "setNumberFormatter:", void, .{NSNumberFormatter} },
        .{ "setUnitStyle:", void, .{NSFormatter.UnitStyle} },
        .{ "stringFromJoules:", objc.NSString, .{f64} },
        .{ "stringFromValue:unit:", objc.NSString, .{ f64, NSEnergyFormatter.Unit } },
        .{ "unitStringFromJoules:usedUnit:", objc.NSString, .{ f64, NSEnergyFormatter.Unit } },
        .{ "unitStringFromValue:unit:", objc.NSString, .{ f64, NSEnergyFormatter.Unit } },
        .{ "unitStyle", NSFormatter.UnitStyle, .{} },
    };

    pub fn send(self: NSEnergyFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
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

    pub fn send(self: NSEnumerator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSError = struct {
    obj: Object,

    pub const methods = .{
        .{ "code", objc.NSInteger, .{} },
        .{ "domain", objc.NSString, .{} },
        .{ "helpAnchor", ?objc.NSString, .{} },
        .{ "localizedDescription", objc.NSString, .{} },
        .{ "localizedFailureReason", ?objc.NSString, .{} },
        .{ "localizedRecoveryOptions", ?*anyopaque, .{} },
        .{ "localizedRecoverySuggestion", ?objc.NSString, .{} },
        .{ "recoveryAttempter", ?Any, .{} },
        .{ "underlyingErrors", Object, .{} },
        .{ "userInfo", Object, .{} },
    };

    pub fn send(self: NSError, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithDomain:code:userInfo:", Object, .{ objc.NSString, objc.NSInteger, ?Any } },
        .{ "setUserInfoValueProviderForDomain:provider:", void, .{ objc.NSString, void } },
        .{ "userInfoValueProviderForDomain:", ?Any, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSError", class_methods, selector, args);
    }
};

pub const NSException = struct {
    obj: Object,

    pub const methods = .{
        .{ "callStackReturnAddresses", Object, .{} },
        .{ "callStackSymbols", Object, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "raise", void, .{} },
        .{ "reason", ?objc.NSString, .{} },
        .{ "userInfo", ?*anyopaque, .{} },
    };

    pub fn send(self: NSException, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithName:reason:userInfo:", Object, .{ objc.NSString, ?objc.NSString, ?Any } },
        .{ "raise:format:arguments:", void, .{ objc.NSString, objc.NSString, ?*anyopaque } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSException", class_methods, selector, args);
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
        .{ "keyPath", objc.NSString, .{} },
        .{ "leftExpression", NSExpression, .{} },
        .{ "operand", NSExpression, .{} },
        .{ "predicate", NSPredicate, .{} },
        .{ "rightExpression", NSExpression, .{} },
        .{ "trueExpression", NSExpression, .{} },
        .{ "variable", objc.NSString, .{} },
    };

    pub fn send(self: NSExpression, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "expressionForAggregate:", Object, .{void} },
        .{ "expressionForAnyKey", NSExpression, .{} },
        .{ "expressionForBlock:arguments:", Object, .{ void, void } },
        .{ "expressionForConditional:trueExpression:falseExpression:", Object, .{ NSPredicate, NSExpression, NSExpression } },
        .{ "expressionForConstantValue:", Object, .{?Any} },
        .{ "expressionForEvaluatedObject", NSExpression, .{} },
        .{ "expressionForFunction:arguments:", Object, .{ objc.NSString, void } },
        .{ "expressionForFunction:selectorName:arguments:", Object, .{ NSExpression, objc.NSString, void } },
        .{ "expressionForIntersectSet:with:", Object, .{ NSExpression, NSExpression } },
        .{ "expressionForKeyPath:", Object, .{objc.NSString} },
        .{ "expressionForMinusSet:with:", Object, .{ NSExpression, NSExpression } },
        .{ "expressionForSubquery:usingIteratorVariable:predicate:", Object, .{ NSExpression, objc.NSString, NSPredicate } },
        .{ "expressionForUnionSet:with:", Object, .{ NSExpression, NSExpression } },
        .{ "expressionForVariable:", Object, .{objc.NSString} },
        .{ "expressionWithFormat:argumentArray:", Object, .{ objc.NSString, void } },
        .{ "expressionWithFormat:arguments:", Object, .{ objc.NSString, ?*anyopaque } },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithExpressionType:", Object, .{NSExpression.ExpressionType} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSExpression", class_methods, selector, args);
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
        .{ "cancelRequestWithError:", void, .{void} },
        .{ "completeRequestReturningItems:completionHandler:", void, .{ void, void } },
        .{ "inputItems", Object, .{} },
        .{ "openURL:completionHandler:", void, .{ NSURL, void } },
    };

    pub fn send(self: NSExtensionContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
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

    pub fn send(self: NSExtensionItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSFileAccessIntent = struct {
    obj: Object,

    pub const methods = .{
        .{ "URL", NSURL, .{} },
    };

    pub fn send(self: NSFileAccessIntent, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "readingIntentWithURL:options:", ?*anyopaque, .{ NSURL, objc.NSInteger } },
        .{ "writingIntentWithURL:options:", ?*anyopaque, .{ NSURL, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFileAccessIntent", class_methods, selector, args);
    }
};

pub const NSFileCoordinator = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancel", void, .{} },
        .{ "coordinateAccessWithIntents:queue:byAccessor:", void, .{ void, NSOperationQueue, void } },
        .{ "coordinateReadingItemAtURL:options:error:byAccessor:", void, .{ NSURL, objc.NSInteger, Object, void } },
        .{ "coordinateReadingItemAtURL:options:writingItemAtURL:options:error:byAccessor:", void, .{ NSURL, objc.NSInteger, NSURL, objc.NSInteger, Object, void } },
        .{ "coordinateWritingItemAtURL:options:error:byAccessor:", void, .{ NSURL, objc.NSInteger, Object, void } },
        .{ "coordinateWritingItemAtURL:options:writingItemAtURL:options:error:byAccessor:", void, .{ NSURL, objc.NSInteger, NSURL, objc.NSInteger, Object, void } },
        .{ "itemAtURL:didChangeUbiquityAttributes:", void, .{ NSURL, objc.NSString } },
        .{ "itemAtURL:didMoveToURL:", void, .{ NSURL, NSURL } },
        .{ "itemAtURL:willMoveToURL:", void, .{ NSURL, NSURL } },
        .{ "prepareForReadingItemsAtURLs:options:writingItemsAtURLs:options:error:byAccessor:", void, .{ void, objc.NSInteger, void, objc.NSInteger, Object, void } },
        .{ "purposeIdentifier", objc.NSString, .{} },
        .{ "setPurposeIdentifier:", void, .{objc.NSString} },
    };

    pub fn send(self: NSFileCoordinator, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "addFilePresenter:", void, .{void} },
        .{ "filePresenters", Object, .{} },
        .{ "initWithFilePresenter:", Object, .{void} },
        .{ "removeFilePresenter:", void, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFileCoordinator", class_methods, selector, args);
    }
};

pub const NSFileHandle = struct {
    obj: Object,

    pub const methods = .{
        .{ "acceptConnectionInBackgroundAndNotify", void, .{} },
        .{ "acceptConnectionInBackgroundAndNotifyForModes:", void, .{void} },
        .{ "availableData", NSData, .{} },
        .{ "closeAndReturnError:", void, .{} },
        .{ "closeFile", void, .{} },
        .{ "fileDescriptor", i32, .{} },
        .{ "offsetInFile", u64, .{} },
        .{ "readDataOfLength:", NSData, .{objc.NSInteger} },
        .{ "readDataToEndOfFile", NSData, .{} },
        .{ "readInBackgroundAndNotify", void, .{} },
        .{ "readInBackgroundAndNotifyForModes:", void, .{void} },
        .{ "readToEndOfFileInBackgroundAndNotify", void, .{} },
        .{ "readToEndOfFileInBackgroundAndNotifyForModes:", void, .{void} },
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
        .{ "waitForDataInBackgroundAndNotifyForModes:", void, .{void} },
        .{ "writeData:", void, .{NSData} },
        .{ "writeabilityHandler", void, .{} },
    };

    pub fn send(self: NSFileHandle, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "fileHandleForReadingAtPath:", Object, .{objc.NSString} },
        .{ "fileHandleForReadingFromURL:error:", Object, .{NSURL} },
        .{ "fileHandleForUpdatingAtPath:", Object, .{objc.NSString} },
        .{ "fileHandleForUpdatingURL:error:", Object, .{NSURL} },
        .{ "fileHandleForWritingAtPath:", Object, .{objc.NSString} },
        .{ "fileHandleForWritingToURL:error:", Object, .{NSURL} },
        .{ "fileHandleWithNullDevice", NSFileHandle, .{} },
        .{ "fileHandleWithStandardError", NSFileHandle, .{} },
        .{ "fileHandleWithStandardInput", NSFileHandle, .{} },
        .{ "fileHandleWithStandardOutput", NSFileHandle, .{} },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithFileDescriptor:", Object, .{i32} },
        .{ "initWithFileDescriptor:closeOnDealloc:", Object, .{ i32, objc.BOOL } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFileHandle", class_methods, selector, args);
    }
};

pub const NSFileManager = struct {
    obj: Object,

    pub const methods = .{
        .{ "URLForDirectory:inDomain:appropriateForURL:create:error:", NSURL, .{ NSFileManager.SearchPathDirectory, objc.NSInteger, ?NSURL, objc.BOOL } },
        .{ "URLForPublishingUbiquitousItemAtURL:expirationDate:error:", NSURL, .{ NSURL, ?NSDate } },
        .{ "URLForUbiquityContainerIdentifier:", ?NSURL, .{?objc.NSString} },
        .{ "URLsForDirectory:inDomains:", Object, .{ NSFileManager.SearchPathDirectory, objc.NSInteger } },
        .{ "attributesOfFileSystemForPath:error:", Object, .{objc.NSString} },
        .{ "attributesOfItemAtPath:error:", Object, .{objc.NSString} },
        .{ "changeCurrentDirectoryPath:", objc.BOOL, .{objc.NSString} },
        .{ "componentsToDisplayForPath:", ?*anyopaque, .{objc.NSString} },
        .{ "containerURLForSecurityApplicationGroupIdentifier:", ?NSURL, .{objc.NSString} },
        .{ "contentsAtPath:", ?NSData, .{objc.NSString} },
        .{ "contentsEqualAtPath:andPath:", objc.BOOL, .{ objc.NSString, objc.NSString } },
        .{ "contentsOfDirectoryAtPath:error:", Object, .{objc.NSString} },
        .{ "contentsOfDirectoryAtURL:includingPropertiesForKeys:options:error:", Object, .{ NSURL, void, objc.NSInteger } },
        .{ "copyItemAtPath:toPath:error:", void, .{ objc.NSString, objc.NSString } },
        .{ "copyItemAtURL:toURL:error:", void, .{ NSURL, NSURL } },
        .{ "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", void, .{ objc.NSString, objc.BOOL, ?Any } },
        .{ "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", void, .{ NSURL, objc.BOOL, ?Any } },
        .{ "createFileAtPath:contents:attributes:", objc.BOOL, .{ objc.NSString, ?NSData, ?Any } },
        .{ "createSymbolicLinkAtPath:withDestinationPath:error:", void, .{ objc.NSString, objc.NSString } },
        .{ "createSymbolicLinkAtURL:withDestinationURL:error:", void, .{ NSURL, NSURL } },
        .{ "currentDirectoryPath", objc.NSString, .{} },
        .{ "delegate", ?FileManagerDelegate, .{} },
        .{ "destinationOfSymbolicLinkAtPath:error:", objc.NSString, .{objc.NSString} },
        .{ "displayNameAtPath:", objc.NSString, .{objc.NSString} },
        .{ "enumeratorAtPath:", ?NSDirectoryEnumerator, .{objc.NSString} },
        .{ "evictUbiquitousItemAtURL:error:", void, .{NSURL} },
        .{ "fetchLatestRemoteVersionOfItemAtURL:completionHandler:", void, .{ NSURL, void } },
        .{ "fileExistsAtPath:", objc.BOOL, .{objc.NSString} },
        .{ "fileExistsAtPath:isDirectory:", objc.BOOL, .{ objc.NSString, ?*anyopaque } },
        .{ "fileSystemRepresentationWithPath:", ?*anyopaque, .{objc.NSString} },
        .{ "getFileProviderServicesForItemAtURL:completionHandler:", void, .{ NSURL, void } },
        .{ "getRelationship:ofDirectory:inDomain:toItemAtURL:error:", void, .{ NSFileManager.URLRelationship, NSFileManager.SearchPathDirectory, objc.NSInteger, NSURL } },
        .{ "getRelationship:ofDirectoryAtURL:toItemAtURL:error:", void, .{ NSFileManager.URLRelationship, NSURL, NSURL } },
        .{ "homeDirectoryForCurrentUser", NSURL, .{} },
        .{ "homeDirectoryForUser:", ?NSURL, .{objc.NSString} },
        .{ "isDeletableFileAtPath:", objc.BOOL, .{objc.NSString} },
        .{ "isExecutableFileAtPath:", objc.BOOL, .{objc.NSString} },
        .{ "isReadableFileAtPath:", objc.BOOL, .{objc.NSString} },
        .{ "isUbiquitousItemAtURL:", objc.BOOL, .{NSURL} },
        .{ "isWritableFileAtPath:", objc.BOOL, .{objc.NSString} },
        .{ "linkItemAtPath:toPath:error:", void, .{ objc.NSString, objc.NSString } },
        .{ "linkItemAtURL:toURL:error:", void, .{ NSURL, NSURL } },
        .{ "mountedVolumeURLsIncludingResourceValuesForKeys:options:", ?*anyopaque, .{ void, objc.NSInteger } },
        .{ "moveItemAtPath:toPath:error:", void, .{ objc.NSString, objc.NSString } },
        .{ "moveItemAtURL:toURL:error:", void, .{ NSURL, NSURL } },
        .{ "pauseSyncForUbiquitousItemAtURL:completionHandler:", void, .{ NSURL, void } },
        .{ "removeItemAtPath:error:", void, .{objc.NSString} },
        .{ "removeItemAtURL:error:", void, .{NSURL} },
        .{ "replaceItemAtURL:withItemAtURL:backupItemName:options:resultingItemURL:error:", void, .{ NSURL, NSURL, ?objc.NSString, objc.NSInteger, ?NSURL } },
        .{ "resumeSyncForUbiquitousItemAtURL:withBehavior:completionHandler:", void, .{ NSURL, NSFileManagerResumeSyncBehavior, void } },
        .{ "setAttributes:ofItemAtPath:error:", void, .{ Any, objc.NSString } },
        .{ "setDelegate:", void, .{?FileManagerDelegate} },
        .{ "setUbiquitous:itemAtURL:destinationURL:error:", void, .{ objc.BOOL, NSURL, NSURL } },
        .{ "startDownloadingUbiquitousItemAtURL:error:", void, .{NSURL} },
        .{ "stringWithFileSystemRepresentation:length:", objc.NSString, .{ ?*anyopaque, objc.NSInteger } },
        .{ "subpathsAtPath:", ?*anyopaque, .{objc.NSString} },
        .{ "subpathsOfDirectoryAtPath:error:", Object, .{objc.NSString} },
        .{ "temporaryDirectory", NSURL, .{} },
        .{ "trashItemAtURL:resultingItemURL:error:", void, .{ NSURL, ?NSURL } },
        .{ "ubiquityIdentityToken", ?*anyopaque, .{} },
        .{ "unmountVolumeAtURL:options:completionHandler:", void, .{ NSURL, objc.NSInteger, void } },
        .{ "uploadLocalVersionOfUbiquitousItemAtURL:withConflictResolutionPolicy:completionHandler:", void, .{ NSURL, NSFileManagerUploadLocalVersionConflictPolicy, void } },
    };

    pub fn send(self: NSFileManager, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultManager", NSFileManager, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFileManager", class_methods, selector, args);
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
        .{ "getFileProviderConnectionWithCompletionHandler:", void, .{void} },
        .{ "name", objc.NSString, .{} },
    };

    pub fn send(self: NSFileProviderService, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSFileSecurity = struct {
    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFileSecurity", class_methods, selector, args);
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
        .{ "originatorNameComponents", ?*anyopaque, .{} },
        .{ "persistentIdentifier", NSCoding, .{} },
        .{ "removeAndReturnError:", void, .{} },
        .{ "replaceItemAtURL:options:error:", NSURL, .{ NSURL, objc.NSInteger } },
        .{ "resolved", objc.BOOL, .{} },
        .{ "setDiscardable:", void, .{objc.BOOL} },
        .{ "setResolved:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSFileVersion, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "addVersionOfItemAtURL:withContentsOfURL:options:error:", NSFileVersion, .{ NSURL, NSURL, objc.NSInteger } },
        .{ "currentVersionOfItemAtURL:", ?NSFileVersion, .{NSURL} },
        .{ "getNonlocalVersionsOfItemAtURL:completionHandler:", void, .{ NSURL, void } },
        .{ "otherVersionsOfItemAtURL:", ?*anyopaque, .{NSURL} },
        .{ "removeOtherVersionsOfItemAtURL:error:", void, .{NSURL} },
        .{ "temporaryDirectoryURLForNewVersionOfItemAtURL:", NSURL, .{NSURL} },
        .{ "unresolvedConflictVersionsOfItemAtURL:", ?*anyopaque, .{NSURL} },
        .{ "versionOfItemAtURL:forPersistentIdentifier:", ?NSFileVersion, .{ NSURL, Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFileVersion", class_methods, selector, args);
    }
};

pub const NSFileWrapper = struct {
    obj: Object,

    pub const methods = .{
        .{ "addFileWithPath:", objc.NSString, .{objc.NSString} },
        .{ "addFileWrapper:", objc.NSString, .{NSFileWrapper} },
        .{ "addRegularFileWithContents:preferredFilename:", objc.NSString, .{ NSData, objc.NSString } },
        .{ "addSymbolicLinkWithDestination:preferredFilename:", objc.NSString, .{ objc.NSString, objc.NSString } },
        .{ "directory", objc.BOOL, .{} },
        .{ "fileAttributes", Object, .{} },
        .{ "fileWrappers", ?*anyopaque, .{} },
        .{ "filename", ?objc.NSString, .{} },
        .{ "keyForFileWrapper:", ?objc.NSString, .{NSFileWrapper} },
        .{ "matchesContentsOfURL:", objc.BOOL, .{NSURL} },
        .{ "needsToBeUpdatedFromPath:", objc.BOOL, .{objc.NSString} },
        .{ "preferredFilename", ?objc.NSString, .{} },
        .{ "readFromURL:options:error:", void, .{ NSURL, objc.NSInteger } },
        .{ "regularFile", objc.BOOL, .{} },
        .{ "regularFileContents", ?NSData, .{} },
        .{ "removeFileWrapper:", void, .{NSFileWrapper} },
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

    pub fn send(self: NSFileWrapper, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initDirectoryWithFileWrappers:", Object, .{NSFileWrapper} },
        .{ "initRegularFileWithContents:", Object, .{NSData} },
        .{ "initSymbolicLinkWithDestination:", Object, .{objc.NSString} },
        .{ "initSymbolicLinkWithDestinationURL:", Object, .{NSURL} },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithPath:", Object, .{objc.NSString} },
        .{ "initWithSerializedRepresentation:", Object, .{NSData} },
        .{ "initWithURL:options:error:", Object, .{ NSURL, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFileWrapper", class_methods, selector, args);
    }
};

pub const NSFormatter = struct {
    obj: Object,

    pub const methods = .{
        .{ "attributedStringForObjectValue:withDefaultAttributes:", ?NSAttributedString, .{ Any, ?Any } },
        .{ "editingStringForObjectValue:", ?objc.NSString, .{Any} },
        .{ "getObjectValue:forString:errorDescription:", objc.BOOL, .{ ?*anyopaque, objc.NSString, ?objc.NSString } },
        .{ "isPartialStringValid:newEditingString:errorDescription:", objc.BOOL, .{ objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "isPartialStringValid:proposedSelectedRange:originalString:originalSelectedRange:errorDescription:", objc.BOOL, .{ objc.NSString, NSRange, objc.NSString, NSRange, ?objc.NSString } },
        .{ "stringForObjectValue:", ?objc.NSString, .{?Any} },
    };

    pub fn send(self: NSFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
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

pub const NSHTTPCookie = struct {
    obj: Object,

    pub const methods = .{
        .{ "HTTPOnly", objc.BOOL, .{} },
        .{ "comment", ?objc.NSString, .{} },
        .{ "commentURL", ?NSURL, .{} },
        .{ "domain", objc.NSString, .{} },
        .{ "expiresDate", ?NSDate, .{} },
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

    pub fn send(self: NSHTTPCookie, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "cookiesWithResponseHeaderFields:forURL:", Object, .{ objc.NSString, NSURL } },
        .{ "initWithProperties:", Object, .{Any} },
        .{ "requestHeaderFieldsWithCookies:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSHTTPCookie", class_methods, selector, args);
    }

    pub const AcceptPolicy = enum(i64) {
        always = 0,
        never = 1,
        onlyFromMainDocumentDomain = 2,
    };
};

pub const NSHTTPCookieStorage = struct {
    obj: Object,

    pub const methods = .{
        .{ "cookieAcceptPolicy", NSHTTPCookie.AcceptPolicy, .{} },
        .{ "cookies", ?*anyopaque, .{} },
        .{ "cookiesForURL:", ?*anyopaque, .{NSURL} },
        .{ "deleteCookie:", void, .{NSHTTPCookie} },
        .{ "getCookiesForTask:completionHandler:", void, .{ NSURLSessionTask, void } },
        .{ "removeCookiesSinceDate:", void, .{NSDate} },
        .{ "setCookie:", void, .{NSHTTPCookie} },
        .{ "setCookieAcceptPolicy:", void, .{NSHTTPCookie.AcceptPolicy} },
        .{ "setCookies:forURL:mainDocumentURL:", void, .{ void, ?NSURL, ?NSURL } },
        .{ "sortedCookiesUsingDescriptors:", Object, .{void} },
        .{ "storeCookies:forTask:", void, .{ void, NSURLSessionTask } },
    };

    pub fn send(self: NSHTTPCookieStorage, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedCookieStorageForGroupContainerIdentifier:", NSHTTPCookieStorage, .{objc.NSString} },
        .{ "sharedHTTPCookieStorage", NSHTTPCookieStorage, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSHTTPCookieStorage", class_methods, selector, args);
    }
};

pub const NSHTTPURLResponse = struct {
    obj: Object,

    pub const Super = NSURLResponse;
    pub const methods = .{
        .{ "allHeaderFields", Object, .{} },
        .{ "statusCode", objc.NSInteger, .{} },
        .{ "valueForHTTPHeaderField:", ?objc.NSString, .{objc.NSString} },
    };

    pub fn send(self: NSHTTPURLResponse, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithURL:statusCode:HTTPVersion:headerFields:", Object, .{ NSURL, objc.NSInteger, ?objc.NSString, ?objc.NSString } },
        .{ "localizedStringForStatusCode:", objc.NSString, .{objc.NSInteger} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSHTTPURLResponse", class_methods, selector, args);
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

    pub fn send(self: NSHashTable, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "hashTableWithOptions:", Object, .{objc.NSInteger} },
        .{ "initWithOptions:capacity:", Object, .{ objc.NSInteger, objc.NSInteger } },
        .{ "initWithPointerFunctions:capacity:", Object, .{ NSPointerFunctions, objc.NSInteger } },
        .{ "weakObjectsHashTable", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSHashTable", class_methods, selector, args);
    }
};

pub const NSHost = struct {
    obj: Object,

    pub const methods = .{
        .{ "address", ?objc.NSString, .{} },
        .{ "addresses", Object, .{} },
        .{ "isEqualToHost:", objc.BOOL, .{NSHost} },
        .{ "localizedName", ?objc.NSString, .{} },
        .{ "name", ?objc.NSString, .{} },
        .{ "names", Object, .{} },
    };

    pub fn send(self: NSHost, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentHost", ?*anyopaque, .{} },
        .{ "hostWithAddress:", Object, .{objc.NSString} },
        .{ "hostWithName:", Object, .{?objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSHost", class_methods, selector, args);
    }
};

pub const NSISO8601DateFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
    pub const methods = .{
        .{ "dateFromString:", ?NSDate, .{objc.NSString} },
        .{ "formatOptions", objc.NSInteger, .{} },
        .{ "setFormatOptions:", void, .{objc.NSInteger} },
        .{ "setTimeZone:", void, .{?*anyopaque} },
        .{ "stringFromDate:", objc.NSString, .{NSDate} },
        .{ "timeZone", ?*anyopaque, .{} },
    };

    pub fn send(self: NSISO8601DateFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "stringFromDate:timeZone:formatOptions:", objc.NSString, .{ NSDate, ?*anyopaque, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSISO8601DateFormatter", class_methods, selector, args);
    }
};

pub const NSIndexPath = struct {
    obj: Object,

    pub const methods = .{
        .{ "compare:", ComparisonResult, .{?*anyopaque} },
        .{ "getIndexes:", void, .{objc.NSInteger} },
        .{ "getIndexes:range:", void, .{ objc.NSInteger, NSRange } },
        .{ "indexAtPosition:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexPathByAddingIndex:", ?*anyopaque, .{objc.NSInteger} },
        .{ "indexPathByRemovingLastIndex", ?*anyopaque, .{} },
        .{ "length", objc.NSInteger, .{} },
    };

    pub fn send(self: NSIndexPath, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithIndex:", Object, .{objc.NSInteger} },
        .{ "initWithIndexes:length:", Object, .{ objc.NSInteger, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSIndexPath", class_methods, selector, args);
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
        .{ "enumerateIndexesInRange:options:usingBlock:", void, .{ NSRange, objc.NSInteger, void } },
        .{ "enumerateIndexesUsingBlock:", void, .{void} },
        .{ "enumerateIndexesWithOptions:usingBlock:", void, .{ objc.NSInteger, void } },
        .{ "enumerateRangesInRange:options:usingBlock:", void, .{ NSRange, objc.NSInteger, void } },
        .{ "enumerateRangesUsingBlock:", void, .{void} },
        .{ "enumerateRangesWithOptions:usingBlock:", void, .{ objc.NSInteger, void } },
        .{ "firstIndex", objc.NSInteger, .{} },
        .{ "getIndexes:maxCount:inIndexRange:", objc.NSInteger, .{ objc.NSInteger, objc.NSInteger, NSRange } },
        .{ "indexGreaterThanIndex:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexGreaterThanOrEqualToIndex:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexInRange:options:passingTest:", objc.NSInteger, .{ NSRange, objc.NSInteger, void } },
        .{ "indexLessThanIndex:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexLessThanOrEqualToIndex:", objc.NSInteger, .{objc.NSInteger} },
        .{ "indexPassingTest:", objc.NSInteger, .{void} },
        .{ "indexWithOptions:passingTest:", objc.NSInteger, .{ objc.NSInteger, void } },
        .{ "indexesInRange:options:passingTest:", NSIndexSet, .{ NSRange, objc.NSInteger, void } },
        .{ "indexesPassingTest:", NSIndexSet, .{void} },
        .{ "indexesWithOptions:passingTest:", NSIndexSet, .{ objc.NSInteger, void } },
        .{ "intersectsIndexesInRange:", objc.BOOL, .{NSRange} },
        .{ "isEqualToIndexSet:", objc.BOOL, .{NSIndexSet} },
        .{ "lastIndex", objc.NSInteger, .{} },
    };

    pub fn send(self: NSIndexSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithIndex:", Object, .{objc.NSInteger} },
        .{ "initWithIndexSet:", Object, .{NSIndexSet} },
        .{ "initWithIndexesInRange:", Object, .{NSRange} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSIndexSet", class_methods, selector, args);
    }
};

pub const NSIndexSpecifier = struct {
    obj: Object,

    pub const Super = NSScriptObjectSpecifier;
    pub const methods = .{
        .{ "index", objc.NSInteger, .{} },
        .{ "setIndex:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSIndexSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithContainerClassDescription:containerSpecifier:key:index:", Object, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSIndexSpecifier", class_methods, selector, args);
    }
};

pub const NSInputStream = struct {
    obj: Object,

    pub const Super = NSStream;
    pub const methods = .{
        .{ "getBuffer:length:", objc.BOOL, .{ u8, objc.NSInteger } },
        .{ "hasBytesAvailable", objc.BOOL, .{} },
        .{ "read:maxLength:", objc.NSInteger, .{ u8, objc.NSInteger } },
    };

    pub fn send(self: NSInputStream, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithData:", Object, .{NSData} },
        .{ "initWithFileAtPath:", Object, .{objc.NSString} },
        .{ "initWithURL:", Object, .{NSURL} },
        .{ "inputStreamWithURL:", Object, .{NSURL} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSInputStream", class_methods, selector, args);
    }
};

pub const NSItemProvider = struct {
    obj: Object,

    pub const methods = .{
        .{ "canLoadObjectOfClass:", objc.BOOL, .{void} },
        .{ "hasItemConformingToTypeIdentifier:", objc.BOOL, .{objc.NSString} },
        .{ "hasRepresentationConformingToTypeIdentifier:fileOptions:", objc.BOOL, .{ objc.NSString, objc.NSInteger } },
        .{ "loadDataRepresentationForTypeIdentifier:completionHandler:", NSProgress, .{ objc.NSString, void } },
        .{ "loadFileRepresentationForTypeIdentifier:completionHandler:", NSProgress, .{ objc.NSString, void } },
        .{ "loadInPlaceFileRepresentationForTypeIdentifier:completionHandler:", NSProgress, .{ objc.NSString, void } },
        .{ "loadItemForTypeIdentifier:options:completionHandler:", void, .{ objc.NSString, ?Any, void } },
        .{ "loadObjectOfClass:completionHandler:", NSProgress, .{ void, void } },
        .{ "loadPreviewImageWithOptions:completionHandler:", void, .{ Any, void } },
        .{ "previewImageHandler", void, .{} },
        .{ "registerDataRepresentationForTypeIdentifier:visibility:loadHandler:", void, .{ objc.NSString, NSItemProviderRepresentationVisibility, void } },
        .{ "registerFileRepresentationForTypeIdentifier:fileOptions:visibility:loadHandler:", void, .{ objc.NSString, objc.NSInteger, NSItemProviderRepresentationVisibility, void } },
        .{ "registerItemForTypeIdentifier:loadHandler:", void, .{ objc.NSString, void } },
        .{ "registerObject:visibility:", void, .{ void, NSItemProviderRepresentationVisibility } },
        .{ "registerObjectOfClass:visibility:loadHandler:", void, .{ void, NSItemProviderRepresentationVisibility, void } },
        .{ "registeredTypeIdentifiers", Object, .{} },
        .{ "registeredTypeIdentifiersWithFileOptions:", Object, .{objc.NSInteger} },
        .{ "setPreviewImageHandler:", void, .{void} },
        .{ "setSuggestedName:", void, .{?objc.NSString} },
        .{ "suggestedName", ?objc.NSString, .{} },
    };

    pub fn send(self: NSItemProvider, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithContentsOfURL:", Object, .{NSURL} },
        .{ "initWithItem:typeIdentifier:", Object, .{ void, ?objc.NSString } },
        .{ "initWithObject:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSItemProvider", class_methods, selector, args);
    }

    pub const ErrorCode = enum(i64) {
        unavailableCoercionError = -1200,
        unexpectedValueClassError = -1100,
        itemUnavailableError = -1000,
        unknownError = -1,
    };
};

pub const NSJSONSerialization = struct {
    pub const class_methods = .{
        .{ "JSONObjectWithData:options:error:", Any, .{ NSData, objc.NSInteger } },
        .{ "JSONObjectWithStream:options:error:", Any, .{ NSInputStream, objc.NSInteger } },
        .{ "dataWithJSONObject:options:error:", NSData, .{ Any, objc.NSInteger } },
        .{ "isValidJSONObject:", objc.BOOL, .{Any} },
        .{ "writeJSONObject:toStream:options:error:", objc.NSInteger, .{ Any, NSOutputStream, objc.NSInteger, Object } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSJSONSerialization", class_methods, selector, args);
    }
};

pub const NSKeyValueSharedObservers = struct {
    obj: Object,

    pub const methods = .{
        .{ "addSharedObserver:forKey:options:context:", void, .{ Object, objc.NSString, objc.NSInteger, ?UnsafeMutableRawPointer } },
        .{ "snapshot", Object, .{} },
    };

    pub fn send(self: NSKeyValueSharedObservers, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithObservableClass:", Object, .{AnyClass} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSKeyValueSharedObservers", class_methods, selector, args);
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
        .{ "outputFormat", NSPropertyListSerialization.PropertyListFormat, .{} },
        .{ "requiresSecureCoding", objc.BOOL, .{} },
        .{ "setClassName:forClass:", void, .{ ?objc.NSString, AnyClass } },
        .{ "setDelegate:", void, .{?NSKeyedArchiverDelegate} },
        .{ "setOutputFormat:", void, .{NSPropertyListSerialization.PropertyListFormat} },
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
        .{ "init", Object, .{} },
        .{ "initForWritingWithMutableData:", Object, .{NSMutableData} },
        .{ "initRequiringSecureCoding:", Object, .{objc.BOOL} },
        .{ "setClassName:forClass:", void, .{ ?objc.NSString, AnyClass } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSKeyedArchiver", class_methods, selector, args);
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
        .{ "init", Object, .{} },
        .{ "initForReadingFromData:error:", Object, .{NSData} },
        .{ "initForReadingWithData:", Object, .{NSData} },
        .{ "setClass:forClassName:", void, .{ ?AnyClass, objc.NSString } },
        .{ "unarchiveObjectWithData:", ?Any, .{NSData} },
        .{ "unarchiveObjectWithFile:", ?Any, .{objc.NSString} },
        .{ "unarchivedObjectOfClasses:fromData:error:", Any, .{ ?*anyopaque, NSData } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSKeyedUnarchiver", class_methods, selector, args);
    }
};

pub const NSLengthFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
    pub const methods = .{
        .{ "forPersonHeightUse", objc.BOOL, .{} },
        .{ "getObjectValue:forString:errorDescription:", objc.BOOL, .{ ?*anyopaque, objc.NSString, ?objc.NSString } },
        .{ "numberFormatter", NSNumberFormatter, .{} },
        .{ "setForPersonHeightUse:", void, .{objc.BOOL} },
        .{ "setNumberFormatter:", void, .{NSNumberFormatter} },
        .{ "setUnitStyle:", void, .{NSFormatter.UnitStyle} },
        .{ "stringFromMeters:", objc.NSString, .{f64} },
        .{ "stringFromValue:unit:", objc.NSString, .{ f64, NSLengthFormatter.Unit } },
        .{ "unitStringFromMeters:usedUnit:", objc.NSString, .{ f64, NSLengthFormatter.Unit } },
        .{ "unitStringFromValue:unit:", objc.NSString, .{ f64, NSLengthFormatter.Unit } },
        .{ "unitStyle", NSFormatter.UnitStyle, .{} },
    };

    pub fn send(self: NSLengthFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
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
        .{ "enumerateTagsInRange:scheme:options:usingBlock:", void, .{ NSRange, objc.NSString, objc.NSInteger, void } },
        .{ "enumerateTagsInRange:unit:scheme:options:usingBlock:", void, .{ NSRange, NSLinguisticTaggerUnit, objc.NSString, objc.NSInteger, void } },
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

    pub fn send(self: NSLinguisticTagger, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "availableTagSchemesForLanguage:", Object, .{objc.NSString} },
        .{ "availableTagSchemesForUnit:language:", Object, .{ NSLinguisticTaggerUnit, objc.NSString } },
        .{ "dominantLanguageForString:", ?objc.NSString, .{objc.NSString} },
        .{ "enumerateTagsForString:range:unit:scheme:options:orthography:usingBlock:", void, .{ objc.NSString, NSRange, NSLinguisticTaggerUnit, objc.NSString, objc.NSInteger, ?NSOrthography, void } },
        .{ "initWithTagSchemes:options:", Object, .{ void, objc.NSInteger } },
        .{ "tagForString:atIndex:unit:scheme:orthography:tokenRange:", objc.NSString, .{ objc.NSString, objc.NSInteger, NSLinguisticTaggerUnit, objc.NSString, ?NSOrthography, NSRange } },
        .{ "tagsForString:range:unit:scheme:options:orthography:tokenRanges:", Object, .{ objc.NSString, NSRange, NSLinguisticTaggerUnit, objc.NSString, objc.NSInteger, ?NSOrthography, ?NSArray } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSLinguisticTagger", class_methods, selector, args);
    }
};

pub const NSListFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
    pub const methods = .{
        .{ "itemFormatter", ?NSFormatter, .{} },
        .{ "locale", NSLocale, .{} },
        .{ "setItemFormatter:", void, .{?NSFormatter} },
        .{ "setLocale:", void, .{NSLocale} },
        .{ "stringForObjectValue:", ?objc.NSString, .{?Any} },
        .{ "stringFromItems:", ?objc.NSString, .{void} },
    };

    pub fn send(self: NSListFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "localizedStringByJoiningStrings:", objc.NSString, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSListFormatter", class_methods, selector, args);
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
        .{ "exemplarCharacterSet", ?*anyopaque, .{} },
        .{ "groupingSeparator", objc.NSString, .{} },
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

    pub fn send(self: NSLocale, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
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
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithLocaleIdentifier:", Object, .{objc.NSString} },
        .{ "lineDirectionForLanguage:", NSLocale.LanguageDirection, .{objc.NSString} },
        .{ "localeIdentifierFromComponents:", objc.NSString, .{objc.NSString} },
        .{ "localeIdentifierFromWindowsLocaleCode:", ?objc.NSString, .{u32} },
        .{ "preferredLanguages", Object, .{} },
        .{ "systemLocale", NSLocale, .{} },
        .{ "windowsLocaleCodeFromLocaleIdentifier:", u32, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSLocale", class_methods, selector, args);
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

    pub fn send(self: NSLock, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSLogicalTest = struct {
    pub const class_methods = .{
        .{ "initAndTestWithTests:", Object, .{void} },
        .{ "initNotTestWithTest:", Object, .{NSScriptWhoseTest} },
        .{ "initOrTestWithTests:", Object, .{void} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSLogicalTest", class_methods, selector, args);
    }
};

pub const NSMachPort = struct {
    obj: Object,

    pub const Super = NSPort;
    pub const methods = .{
        .{ "delegate", ?NSMachPortDelegate, .{} },
        .{ "machPort", u32, .{} },
        .{ "removeFromRunLoop:forMode:", void, .{ NSRunLoop, objc.NSString } },
        .{ "scheduleInRunLoop:forMode:", void, .{ NSRunLoop, objc.NSString } },
        .{ "setDelegate:", void, .{void} },
    };

    pub fn send(self: NSMachPort, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithMachPort:", Object, .{u32} },
        .{ "initWithMachPort:options:", Object, .{ u32, objc.NSInteger } },
        .{ "portWithMachPort:", NSPort, .{u32} },
        .{ "portWithMachPort:options:", NSPort, .{ u32, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMachPort", class_methods, selector, args);
    }
};

pub const NSMapTable = struct {
    obj: Object,

    pub const methods = .{
        .{ "count", objc.NSInteger, .{} },
        .{ "dictionaryRepresentation", Object, .{} },
        .{ "keyEnumerator", NSEnumerator, .{} },
        .{ "keyPointerFunctions", NSPointerFunctions, .{} },
        .{ "objectEnumerator", ?NSEnumerator, .{} },
        .{ "objectForKey:", ?*anyopaque, .{?*anyopaque} },
        .{ "removeAllObjects", void, .{} },
        .{ "removeObjectForKey:", void, .{?*anyopaque} },
        .{ "setObject:forKey:", void, .{ ?*anyopaque, ?*anyopaque } },
        .{ "valuePointerFunctions", NSPointerFunctions, .{} },
    };

    pub fn send(self: NSMapTable, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithKeyOptions:valueOptions:capacity:", Object, .{ objc.NSInteger, objc.NSInteger, objc.NSInteger } },
        .{ "initWithKeyPointerFunctions:valuePointerFunctions:capacity:", Object, .{ NSPointerFunctions, NSPointerFunctions, objc.NSInteger } },
        .{ "mapTableWithKeyOptions:valueOptions:", Object, .{ objc.NSInteger, objc.NSInteger } },
        .{ "strongToStrongObjectsMapTable", ?*anyopaque, .{} },
        .{ "strongToWeakObjectsMapTable", ?*anyopaque, .{} },
        .{ "weakToStrongObjectsMapTable", ?*anyopaque, .{} },
        .{ "weakToWeakObjectsMapTable", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMapTable", class_methods, selector, args);
    }
};

pub const NSMassFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
    pub const methods = .{
        .{ "forPersonMassUse", objc.BOOL, .{} },
        .{ "getObjectValue:forString:errorDescription:", objc.BOOL, .{ ?*anyopaque, objc.NSString, ?objc.NSString } },
        .{ "numberFormatter", NSNumberFormatter, .{} },
        .{ "setForPersonMassUse:", void, .{objc.BOOL} },
        .{ "setNumberFormatter:", void, .{NSNumberFormatter} },
        .{ "setUnitStyle:", void, .{NSFormatter.UnitStyle} },
        .{ "stringFromKilograms:", objc.NSString, .{f64} },
        .{ "stringFromValue:unit:", objc.NSString, .{ f64, NSMassFormatter.Unit } },
        .{ "unitStringFromKilograms:usedUnit:", objc.NSString, .{ f64, NSMassFormatter.Unit } },
        .{ "unitStringFromValue:unit:", objc.NSString, .{ f64, NSMassFormatter.Unit } },
        .{ "unitStyle", NSFormatter.UnitStyle, .{} },
    };

    pub fn send(self: NSMassFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
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
        .{ "canBeConvertedToUnit:", objc.BOOL, .{NSUnit} },
        .{ "doubleValue", f64, .{} },
        .{ "measurementByAddingMeasurement:", NSUnit, .{NSUnit} },
        .{ "measurementByConvertingToUnit:", NSUnit, .{NSUnit} },
        .{ "measurementBySubtractingMeasurement:", NSUnit, .{NSUnit} },
        .{ "unit", NSUnit, .{} },
    };

    pub fn send(self: NSMeasurement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithDoubleValue:unit:", Object, .{ f64, NSUnit } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMeasurement", class_methods, selector, args);
    }
};

pub const NSMeasurementFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
    pub const methods = .{
        .{ "locale", NSLocale, .{} },
        .{ "numberFormatter", NSNumberFormatter, .{} },
        .{ "setLocale:", void, .{NSLocale} },
        .{ "setNumberFormatter:", void, .{NSNumberFormatter} },
        .{ "setUnitOptions:", void, .{objc.NSInteger} },
        .{ "setUnitStyle:", void, .{NSFormatter.UnitStyle} },
        .{ "stringFromMeasurement:", objc.NSString, .{NSUnit} },
        .{ "stringFromUnit:", objc.NSString, .{NSUnit} },
        .{ "unitOptions", objc.NSInteger, .{} },
        .{ "unitStyle", NSFormatter.UnitStyle, .{} },
    };

    pub fn send(self: NSMeasurementFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSMetadataItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "attributes", Object, .{} },
        .{ "valueForAttribute:", ?Any, .{objc.NSString} },
        .{ "valuesForAttributes:", ?*anyopaque, .{void} },
    };

    pub fn send(self: NSMetadataItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithURL:", Object, .{NSURL} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMetadataItem", class_methods, selector, args);
    }
};

pub const NSMetadataQuery = struct {
    obj: Object,

    pub const methods = .{
        .{ "delegate", ?NSMetadataQueryDelegate, .{} },
        .{ "disableUpdates", void, .{} },
        .{ "enableUpdates", void, .{} },
        .{ "enumerateResultsUsingBlock:", void, .{void} },
        .{ "enumerateResultsWithOptions:usingBlock:", void, .{ objc.NSInteger, void } },
        .{ "gathering", objc.BOOL, .{} },
        .{ "groupedResults", Object, .{} },
        .{ "groupingAttributes", ?*anyopaque, .{} },
        .{ "indexOfResult:", objc.NSInteger, .{Any} },
        .{ "notificationBatchingInterval", TimeInterval, .{} },
        .{ "operationQueue", ?NSOperationQueue, .{} },
        .{ "predicate", ?NSPredicate, .{} },
        .{ "resultAtIndex:", Any, .{objc.NSInteger} },
        .{ "resultCount", objc.NSInteger, .{} },
        .{ "results", Object, .{} },
        .{ "searchItems", ?*anyopaque, .{} },
        .{ "searchScopes", Object, .{} },
        .{ "setDelegate:", void, .{?NSMetadataQueryDelegate} },
        .{ "setGroupingAttributes:", void, .{?*anyopaque} },
        .{ "setNotificationBatchingInterval:", void, .{TimeInterval} },
        .{ "setOperationQueue:", void, .{?NSOperationQueue} },
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

    pub fn send(self: NSMetadataQuery, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSMetadataQueryAttributeValueTuple = struct {
    obj: Object,

    pub const methods = .{
        .{ "attribute", objc.NSString, .{} },
        .{ "count", objc.NSInteger, .{} },
        .{ "value", ?Any, .{} },
    };

    pub fn send(self: NSMetadataQueryAttributeValueTuple, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
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

    pub fn send(self: NSMetadataQueryResultGroup, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
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
};

pub const NSMutableArray = struct {
    obj: Object,

    pub const Super = NSArray;
    pub const methods = .{
        .{ "addObject:", void, .{Any} },
        .{ "addObjectsFromArray:", void, .{void} },
        .{ "exchangeObjectAtIndex:withObjectAtIndex:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "filterUsingPredicate:", void, .{NSPredicate} },
        .{ "insertObject:atIndex:", void, .{ Any, objc.NSInteger } },
        .{ "insertObjects:atIndexes:", void, .{ void, NSIndexSet } },
        .{ "removeAllObjects", void, .{} },
        .{ "removeLastObject", void, .{} },
        .{ "removeObject:", void, .{Any} },
        .{ "removeObject:inRange:", void, .{ Any, NSRange } },
        .{ "removeObjectAtIndex:", void, .{objc.NSInteger} },
        .{ "removeObjectIdenticalTo:", void, .{Any} },
        .{ "removeObjectIdenticalTo:inRange:", void, .{ Any, NSRange } },
        .{ "removeObjectsAtIndexes:", void, .{NSIndexSet} },
        .{ "removeObjectsInArray:", void, .{void} },
        .{ "removeObjectsInRange:", void, .{NSRange} },
        .{ "replaceObjectAtIndex:withObject:", void, .{ objc.NSInteger, Any } },
        .{ "replaceObjectsAtIndexes:withObjects:", void, .{ NSIndexSet, void } },
        .{ "replaceObjectsInRange:withObjectsFromArray:", void, .{ NSRange, void } },
        .{ "replaceObjectsInRange:withObjectsFromArray:range:", void, .{ NSRange, void, NSRange } },
        .{ "setArray:", void, .{void} },
        .{ "sortUsingComparator:", void, .{void} },
        .{ "sortUsingDescriptors:", void, .{void} },
        .{ "sortUsingFunction:context:", void, .{ void, ?UnsafeMutableRawPointer } },
        .{ "sortUsingSelector:", void, .{Selector} },
        .{ "sortWithOptions:usingComparator:", void, .{ objc.NSInteger, void } },
    };

    pub fn send(self: NSMutableArray, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "arrayWithContentsOfURL:", Object, .{NSURL} },
        .{ "init", Object, .{} },
        .{ "initWithCapacity:", Object, .{objc.NSInteger} },
        .{ "initWithCoder:", Object, .{NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMutableArray", class_methods, selector, args);
    }
};

pub const NSMutableAttributedString = struct {
    obj: Object,

    pub const Super = NSAttributedString;
    pub const methods = .{
        .{ "addAttribute:value:range:", void, .{ objc.NSString, Any, NSRange } },
        .{ "addAttributes:range:", void, .{ Any, NSRange } },
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
        .{ "setAttributes:range:", void, .{ ?Any, NSRange } },
    };

    pub fn send(self: NSMutableAttributedString, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub fn create(string: Object) NSMutableAttributedString {
        return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSMutableAttributedString", "alloc", .{}), "initWithString:", .{string}) };
    }
};

pub const NSMutableCharacterSet = struct {
    obj: Object,

    pub const Super = NSCharacterSet;
    pub const methods = .{
        .{ "addCharactersInRange:", void, .{NSRange} },
        .{ "addCharactersInString:", void, .{objc.NSString} },
        .{ "formIntersectionWithCharacterSet:", void, .{?*anyopaque} },
        .{ "formUnionWithCharacterSet:", void, .{?*anyopaque} },
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

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMutableCharacterSet", class_methods, selector, args);
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

    pub const class_methods = .{
        .{ "initWithCapacity:", Object, .{objc.NSInteger} },
        .{ "initWithLength:", Object, .{objc.NSInteger} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMutableData", class_methods, selector, args);
    }
};

pub const NSMutableDictionary = struct {
    obj: Object,

    pub const Super = NSDictionary;
    pub const methods = .{
        .{ "addEntriesFromDictionary:", void, .{Any} },
        .{ "removeAllObjects", void, .{} },
        .{ "removeObjectForKey:", void, .{Any} },
        .{ "removeObjectsForKeys:", void, .{void} },
        .{ "setDictionary:", void, .{Any} },
        .{ "setObject:forKey:", void, .{ Any, void } },
        .{ "setValue:forKey:", void, .{ ?Any, objc.NSString } },
    };

    pub fn send(self: NSMutableDictionary, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dictionaryWithContentsOfURL:", Object, .{NSURL} },
        .{ "dictionaryWithSharedKeySet:", Object, .{Any} },
        .{ "init", Object, .{} },
        .{ "initWithCapacity:", Object, .{objc.NSInteger} },
        .{ "initWithCoder:", Object, .{NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMutableDictionary", class_methods, selector, args);
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
};

pub const NSMutableOrderedSet = struct {
    obj: Object,

    pub const Super = NSOrderedSet;
    pub const methods = .{
        .{ "addObject:", void, .{Any} },
        .{ "addObjects:count:", void, .{ ?UnsafePointer, objc.NSInteger } },
        .{ "addObjectsFromArray:", void, .{void} },
        .{ "exchangeObjectAtIndex:withObjectAtIndex:", void, .{ objc.NSInteger, objc.NSInteger } },
        .{ "filterUsingPredicate:", void, .{NSPredicate} },
        .{ "insertObject:atIndex:", void, .{ Any, objc.NSInteger } },
        .{ "insertObjects:atIndexes:", void, .{ void, NSIndexSet } },
        .{ "intersectOrderedSet:", void, .{NSOrderedSet} },
        .{ "intersectSet:", void, .{?*anyopaque} },
        .{ "minusOrderedSet:", void, .{NSOrderedSet} },
        .{ "minusSet:", void, .{?*anyopaque} },
        .{ "moveObjectsAtIndexes:toIndex:", void, .{ NSIndexSet, objc.NSInteger } },
        .{ "removeAllObjects", void, .{} },
        .{ "removeObject:", void, .{Any} },
        .{ "removeObjectAtIndex:", void, .{objc.NSInteger} },
        .{ "removeObjectsAtIndexes:", void, .{NSIndexSet} },
        .{ "removeObjectsInArray:", void, .{void} },
        .{ "removeObjectsInRange:", void, .{NSRange} },
        .{ "replaceObjectAtIndex:withObject:", void, .{ objc.NSInteger, Any } },
        .{ "replaceObjectsAtIndexes:withObjects:", void, .{ NSIndexSet, void } },
        .{ "replaceObjectsInRange:withObjects:count:", void, .{ NSRange, ?UnsafePointer, objc.NSInteger } },
        .{ "setObject:atIndex:", void, .{ Any, objc.NSInteger } },
        .{ "sortRange:options:usingComparator:", void, .{ NSRange, objc.NSInteger, void } },
        .{ "sortUsingComparator:", void, .{void} },
        .{ "sortUsingDescriptors:", void, .{void} },
        .{ "sortWithOptions:usingComparator:", void, .{ objc.NSInteger, void } },
        .{ "unionOrderedSet:", void, .{NSOrderedSet} },
        .{ "unionSet:", void, .{?*anyopaque} },
    };

    pub fn send(self: NSMutableOrderedSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithCapacity:", Object, .{objc.NSInteger} },
        .{ "initWithCoder:", Object, .{NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMutableOrderedSet", class_methods, selector, args);
    }
};

pub const NSMutableSet = struct {
    obj: Object,

    pub const Super = NSSet;
    pub const methods = .{
        .{ "addObject:", void, .{Any} },
        .{ "addObjectsFromArray:", void, .{void} },
        .{ "filterUsingPredicate:", void, .{NSPredicate} },
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

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithCapacity:", Object, .{objc.NSInteger} },
        .{ "initWithCoder:", Object, .{NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMutableSet", class_methods, selector, args);
    }
};

pub const NSMutableString = struct {
    obj: Object,

    pub const Super = NSString;
    pub const methods = .{
        .{ "appendString:", void, .{objc.NSString} },
        .{ "applyTransform:reverse:range:updatedRange:", objc.BOOL, .{ objc.NSString, objc.BOOL, NSRange, NSRange } },
        .{ "deleteCharactersInRange:", void, .{NSRange} },
        .{ "insertString:atIndex:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "replaceCharactersInRange:withString:", void, .{ NSRange, objc.NSString } },
        .{ "replaceOccurrencesOfString:withString:options:range:", objc.NSInteger, .{ objc.NSString, objc.NSString, objc.NSInteger, NSRange } },
        .{ "setString:", void, .{objc.NSString} },
    };

    pub fn send(self: NSMutableString, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCapacity:", Object, .{objc.NSInteger} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSMutableString", class_methods, selector, args);
    }
};

pub const NSMutableURLRequest = struct {
    obj: Object,

    pub const Super = NSURLRequest;
    pub const methods = .{
        .{ "HTTPBody", ?NSData, .{} },
        .{ "HTTPBodyStream", ?NSInputStream, .{} },
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
        .{ "setHTTPBodyStream:", void, .{?NSInputStream} },
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
};

pub const NSNameSpecifier = struct {
    obj: Object,

    pub const Super = NSScriptObjectSpecifier;
    pub const methods = .{
        .{ "name", objc.NSString, .{} },
        .{ "setName:", void, .{objc.NSString} },
    };

    pub fn send(self: NSNameSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:name:", Object, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString, objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSNameSpecifier", class_methods, selector, args);
    }
};

pub const NSNetService = struct {
    obj: Object,

    pub const methods = .{
        .{ "TXTRecordData", ?NSData, .{} },
        .{ "addresses", ?*anyopaque, .{} },
        .{ "delegate", ?NetServiceDelegate, .{} },
        .{ "domain", objc.NSString, .{} },
        .{ "getInputStream:outputStream:", objc.BOOL, .{ ?NSInputStream, ?NSOutputStream } },
        .{ "hostName", ?objc.NSString, .{} },
        .{ "includesPeerToPeer", objc.BOOL, .{} },
        .{ "name", objc.NSString, .{} },
        .{ "port", objc.NSInteger, .{} },
        .{ "publish", void, .{} },
        .{ "publishWithOptions:", void, .{objc.NSInteger} },
        .{ "removeFromRunLoop:forMode:", void, .{ NSRunLoop, objc.NSString } },
        .{ "resolveWithTimeout:", void, .{TimeInterval} },
        .{ "scheduleInRunLoop:forMode:", void, .{ NSRunLoop, objc.NSString } },
        .{ "setDelegate:", void, .{?NetServiceDelegate} },
        .{ "setIncludesPeerToPeer:", void, .{objc.BOOL} },
        .{ "setTXTRecordData:", objc.BOOL, .{?NSData} },
        .{ "startMonitoring", void, .{} },
        .{ "stop", void, .{} },
        .{ "stopMonitoring", void, .{} },
        .{ "type", objc.NSString, .{} },
    };

    pub fn send(self: NSNetService, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "dataFromTXTRecordDictionary:", NSData, .{NSData} },
        .{ "dictionaryFromTXTRecordData:", Object, .{NSData} },
        .{ "initWithDomain:type:name:", Object, .{ objc.NSString, objc.NSString, objc.NSString } },
        .{ "initWithDomain:type:name:port:", Object, .{ objc.NSString, objc.NSString, objc.NSString, i32 } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSNetService", class_methods, selector, args);
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

pub const NSNetServiceBrowser = struct {
    obj: Object,

    pub const methods = .{
        .{ "delegate", ?NetServiceBrowserDelegate, .{} },
        .{ "includesPeerToPeer", objc.BOOL, .{} },
        .{ "removeFromRunLoop:forMode:", void, .{ NSRunLoop, objc.NSString } },
        .{ "scheduleInRunLoop:forMode:", void, .{ NSRunLoop, objc.NSString } },
        .{ "searchForBrowsableDomains", void, .{} },
        .{ "searchForRegistrationDomains", void, .{} },
        .{ "searchForServicesOfType:inDomain:", void, .{ objc.NSString, objc.NSString } },
        .{ "setDelegate:", void, .{?NetServiceBrowserDelegate} },
        .{ "setIncludesPeerToPeer:", void, .{objc.BOOL} },
        .{ "stop", void, .{} },
    };

    pub fn send(self: NSNetServiceBrowser, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSNetServiceBrowser", class_methods, selector, args);
    }
};

pub const NSNotification = struct {
    obj: Object,

    pub const methods = .{
        .{ "name", objc.NSString, .{} },
        .{ "object", ?Any, .{} },
        .{ "userInfo", ?*anyopaque, .{} },
    };

    pub fn send(self: NSNotification, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithName:object:userInfo:", Object, .{ objc.NSString, ?Any, ?Any } },
        .{ "notificationWithName:object:", Object, .{ objc.NSString, ?Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSNotification", class_methods, selector, args);
    }
};

pub const NSNotificationCenter = struct {
    obj: Object,

    pub const methods = .{
        .{ "addObserver:selector:name:object:", void, .{ Any, Selector, objc.NSString, ?Any } },
        .{ "addObserverForName:object:queue:usingBlock:", *anyopaque, .{ objc.NSString, ?Any, ?NSOperationQueue, void } },
        .{ "postNotification:", void, .{NSNotification} },
        .{ "postNotificationName:object:", void, .{ objc.NSString, ?Any } },
        .{ "postNotificationName:object:userInfo:", void, .{ objc.NSString, ?Any, ?Any } },
        .{ "removeObserver:", void, .{Any} },
        .{ "removeObserver:name:object:", void, .{ Any, objc.NSString, ?Any } },
    };

    pub fn send(self: NSNotificationCenter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultCenter", NSNotificationCenter, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSNotificationCenter", class_methods, selector, args);
    }
};

pub const NSNotificationQueue = struct {
    obj: Object,

    pub const methods = .{
        .{ "dequeueNotificationsMatching:coalesceMask:", void, .{ NSNotification, objc.NSInteger } },
        .{ "enqueueNotification:postingStyle:", void, .{ NSNotification, NSNotificationQueue.PostingStyle } },
        .{ "enqueueNotification:postingStyle:coalesceMask:forModes:", void, .{ NSNotification, NSNotificationQueue.PostingStyle, objc.NSInteger, void } },
    };

    pub fn send(self: NSNotificationQueue, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultQueue", NSNotificationQueue, .{} },
        .{ "initWithNotificationCenter:", Object, .{NSNotificationCenter} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSNotificationQueue", class_methods, selector, args);
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

    pub const class_methods = .{
        .{ "initWithBool:", Object, .{objc.BOOL} },
        .{ "initWithChar:", Object, .{?*anyopaque} },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithDouble:", Object, .{f64} },
        .{ "initWithFloat:", Object, .{f32} },
        .{ "initWithInt:", Object, .{i32} },
        .{ "initWithInteger:", Object, .{objc.NSInteger} },
        .{ "initWithLongLong:", Object, .{i64} },
        .{ "initWithShort:", Object, .{i16} },
        .{ "initWithUnsignedChar:", Object, .{u8} },
        .{ "initWithUnsignedInt:", Object, .{u32} },
        .{ "initWithUnsignedInteger:", Object, .{c_ulong} },
        .{ "initWithUnsignedLongLong:", Object, .{u64} },
        .{ "initWithUnsignedShort:", Object, .{u16} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSNumber", class_methods, selector, args);
    }
};

pub const NSNumberFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
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
        .{ "formatterBehavior", NSNumberFormatter.Behavior, .{} },
        .{ "formattingContext", NSFormatter.Context, .{} },
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
        .{ "numberStyle", NSNumberFormatter.Style, .{} },
        .{ "paddingCharacter", objc.NSString, .{} },
        .{ "paddingPosition", NSNumberFormatter.PadPosition, .{} },
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
        .{ "roundingMode", NSNumberFormatter.RoundingMode, .{} },
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
        .{ "setFormatterBehavior:", void, .{NSNumberFormatter.Behavior} },
        .{ "setFormattingContext:", void, .{NSFormatter.Context} },
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
        .{ "setNumberStyle:", void, .{NSNumberFormatter.Style} },
        .{ "setPaddingCharacter:", void, .{objc.NSString} },
        .{ "setPaddingPosition:", void, .{NSNumberFormatter.PadPosition} },
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
        .{ "setRoundingMode:", void, .{NSNumberFormatter.RoundingMode} },
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

    pub fn send(self: NSNumberFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultFormatterBehavior", NSNumberFormatter.Behavior, .{} },
        .{ "localizedStringFromNumber:numberStyle:", objc.NSString, .{ NSNumber, NSNumberFormatter.Style } },
        .{ "setDefaultFormatterBehavior:", void, .{NSNumberFormatter.Behavior} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSNumberFormatter", class_methods, selector, args);
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

pub const NSOperation = struct {
    obj: Object,

    pub const methods = .{
        .{ "addDependency:", void, .{NSOperation} },
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
        .{ "queuePriority", NSOperation.QueuePriority, .{} },
        .{ "ready", objc.BOOL, .{} },
        .{ "removeDependency:", void, .{NSOperation} },
        .{ "setCompletionBlock:", void, .{void} },
        .{ "setName:", void, .{?objc.NSString} },
        .{ "setQualityOfService:", void, .{QualityOfService} },
        .{ "setQueuePriority:", void, .{NSOperation.QueuePriority} },
        .{ "setThreadPriority:", void, .{f64} },
        .{ "start", void, .{} },
        .{ "threadPriority", f64, .{} },
        .{ "waitUntilFinished", void, .{} },
    };

    pub fn send(self: NSOperation, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const QueuePriority = enum(i64) {
        veryLow = -8,
        low = -4,
        normal = 0,
        high = 4,
        veryHigh = 8,
    };
};

pub const NSOperationQueue = struct {
    obj: Object,

    pub const methods = .{
        .{ "addBarrierBlock:", void, .{void} },
        .{ "addOperation:", void, .{NSOperation} },
        .{ "addOperationWithBlock:", void, .{void} },
        .{ "addOperations:waitUntilFinished:", void, .{ void, objc.BOOL } },
        .{ "cancelAllOperations", void, .{} },
        .{ "maxConcurrentOperationCount", objc.NSInteger, .{} },
        .{ "name", ?objc.NSString, .{} },
        .{ "operationCount", objc.NSInteger, .{} },
        .{ "operations", Object, .{} },
        .{ "progress", NSProgress, .{} },
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

    pub fn send(self: NSOperationQueue, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentQueue", ?NSOperationQueue, .{} },
        .{ "mainQueue", NSOperationQueue, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSOperationQueue", class_methods, selector, args);
    }
};

pub const NSOrderedCollectionChange = struct {
    obj: Object,

    pub const methods = .{
        .{ "associatedIndex", objc.NSInteger, .{} },
        .{ "changeType", NSCollectionChangeType, .{} },
        .{ "index", objc.NSInteger, .{} },
        .{ "object", ?Any, .{} },
    };

    pub fn send(self: NSOrderedCollectionChange, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithObject:type:index:", Object, .{ ?Any, NSCollectionChangeType, objc.NSInteger } },
        .{ "initWithObject:type:index:associatedIndex:", Object, .{ ?Any, NSCollectionChangeType, objc.NSInteger, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSOrderedCollectionChange", class_methods, selector, args);
    }
};

pub const NSOrderedCollectionDifference = struct {
    obj: Object,

    pub const methods = .{
        .{ "differenceByTransformingChangesWithBlock:", Any, .{void} },
        .{ "hasChanges", objc.BOOL, .{} },
        .{ "insertions", Object, .{} },
        .{ "inverseDifference", ?*anyopaque, .{} },
        .{ "removals", Object, .{} },
    };

    pub fn send(self: NSOrderedCollectionDifference, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithChanges:", Object, .{void} },
        .{ "initWithInsertIndexes:insertedObjects:removeIndexes:removedObjects:", Object, .{ NSIndexSet, void, NSIndexSet, void } },
        .{ "initWithInsertIndexes:insertedObjects:removeIndexes:removedObjects:additionalChanges:", Object, .{ NSIndexSet, void, NSIndexSet, void, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSOrderedCollectionDifference", class_methods, selector, args);
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
        .{ "enumerateObjectsAtIndexes:options:usingBlock:", void, .{ NSIndexSet, objc.NSInteger, void } },
        .{ "enumerateObjectsUsingBlock:", void, .{void} },
        .{ "enumerateObjectsWithOptions:usingBlock:", void, .{ objc.NSInteger, void } },
        .{ "filteredOrderedSetUsingPredicate:", NSOrderedSet, .{NSPredicate} },
        .{ "firstObject", ?Any, .{} },
        .{ "indexOfObject:", objc.NSInteger, .{Any} },
        .{ "indexOfObject:inSortedRange:options:usingComparator:", objc.NSInteger, .{ Any, NSRange, objc.NSInteger, void } },
        .{ "indexOfObjectAtIndexes:options:passingTest:", objc.NSInteger, .{ NSIndexSet, objc.NSInteger, void } },
        .{ "indexOfObjectPassingTest:", objc.NSInteger, .{void} },
        .{ "indexOfObjectWithOptions:passingTest:", objc.NSInteger, .{ objc.NSInteger, void } },
        .{ "indexesOfObjectsAtIndexes:options:passingTest:", NSIndexSet, .{ NSIndexSet, objc.NSInteger, void } },
        .{ "indexesOfObjectsPassingTest:", NSIndexSet, .{void} },
        .{ "indexesOfObjectsWithOptions:passingTest:", NSIndexSet, .{ objc.NSInteger, void } },
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
        .{ "sortedArrayUsingComparator:", Object, .{void} },
        .{ "sortedArrayUsingDescriptors:", Object, .{void} },
        .{ "sortedArrayWithOptions:usingComparator:", Object, .{ objc.NSInteger, void } },
        .{ "valueForKey:", Any, .{objc.NSString} },
    };

    pub fn send(self: NSOrderedSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithArray:", Object, .{void} },
        .{ "initWithArray:copyItems:", Object, .{ void, objc.BOOL } },
        .{ "initWithArray:range:copyItems:", Object, .{ void, NSRange, objc.BOOL } },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithObject:", Object, .{Any} },
        .{ "initWithObjects:count:", Object, .{ ?UnsafePointer, objc.NSInteger } },
        .{ "initWithOrderedSet:", Object, .{NSOrderedSet} },
        .{ "initWithOrderedSet:copyItems:", Object, .{ NSOrderedSet, objc.BOOL } },
        .{ "initWithOrderedSet:range:copyItems:", Object, .{ NSOrderedSet, NSRange, objc.BOOL } },
        .{ "initWithSet:", Object, .{?*anyopaque} },
        .{ "initWithSet:copyItems:", Object, .{ ?*anyopaque, objc.BOOL } },
        .{ "orderedSetWithObjects:count:", Object, .{ UnsafePointer, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSOrderedSet", class_methods, selector, args);
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
        .{ "languageMap", Object, .{} },
        .{ "languagesForScript:", ?*anyopaque, .{objc.NSString} },
    };

    pub fn send(self: NSOrthography, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultOrthographyForLanguage:", ?*anyopaque, .{objc.NSString} },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithDominantScript:languageMap:", Object, .{ objc.NSString, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSOrthography", class_methods, selector, args);
    }
};

pub const NSOutputStream = struct {
    obj: Object,

    pub const Super = NSStream;
    pub const methods = .{
        .{ "hasSpaceAvailable", objc.BOOL, .{} },
        .{ "write:maxLength:", objc.NSInteger, .{ u8, objc.NSInteger } },
    };

    pub fn send(self: NSOutputStream, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initToBuffer:capacity:", Object, .{ u8, objc.NSInteger } },
        .{ "initToFileAtPath:append:", Object, .{ objc.NSString, objc.BOOL } },
        .{ "initToMemory", Object, .{void} },
        .{ "initWithURL:append:", Object, .{ NSURL, objc.BOOL } },
        .{ "outputStreamToMemory", ?*anyopaque, .{} },
        .{ "outputStreamWithURL:append:", Object, .{ NSURL, objc.BOOL } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSOutputStream", class_methods, selector, args);
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
        .{ "phoneticRepresentation", ?*anyopaque, .{} },
        .{ "setFamilyName:", void, .{?objc.NSString} },
        .{ "setGivenName:", void, .{?objc.NSString} },
        .{ "setMiddleName:", void, .{?objc.NSString} },
        .{ "setNamePrefix:", void, .{?objc.NSString} },
        .{ "setNameSuffix:", void, .{?objc.NSString} },
        .{ "setNickname:", void, .{?objc.NSString} },
        .{ "setPhoneticRepresentation:", void, .{?*anyopaque} },
    };

    pub fn send(self: NSPersonNameComponents, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSPersonNameComponentsFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
    pub const methods = .{
        .{ "annotatedStringFromPersonNameComponents:", NSAttributedString, .{?*anyopaque} },
        .{ "getObjectValue:forString:errorDescription:", objc.BOOL, .{ ?*anyopaque, objc.NSString, ?objc.NSString } },
        .{ "locale", NSLocale, .{} },
        .{ "personNameComponentsFromString:", ?*anyopaque, .{objc.NSString} },
        .{ "phonetic", objc.BOOL, .{} },
        .{ "setLocale:", void, .{NSLocale} },
        .{ "setPhonetic:", void, .{objc.BOOL} },
        .{ "setStyle:", void, .{NSPersonNameComponentsFormatter.Style} },
        .{ "stringFromPersonNameComponents:", objc.NSString, .{?*anyopaque} },
        .{ "style", NSPersonNameComponentsFormatter.Style, .{} },
    };

    pub fn send(self: NSPersonNameComponentsFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "localizedStringFromPersonNameComponents:style:options:", objc.NSString, .{ ?*anyopaque, NSPersonNameComponentsFormatter.Style, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPersonNameComponentsFormatter", class_methods, selector, args);
    }

    pub const Style = enum(i64) {
        default = 0,
        short = 1,
        medium = 2,
        long = 3,
        abbreviated = 4,
    };
};

pub const NSPipe = struct {
    obj: Object,

    pub const methods = .{
        .{ "fileHandleForReading", NSFileHandle, .{} },
        .{ "fileHandleForWriting", NSFileHandle, .{} },
    };

    pub fn send(self: NSPipe, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSPointerArray = struct {
    obj: Object,

    pub const methods = .{
        .{ "addPointer:", void, .{?UnsafeMutableRawPointer} },
        .{ "allObjects", Object, .{} },
        .{ "compact", void, .{} },
        .{ "count", objc.NSInteger, .{} },
        .{ "insertPointer:atIndex:", void, .{ ?UnsafeMutableRawPointer, objc.NSInteger } },
        .{ "pointerAtIndex:", ?UnsafeMutableRawPointer, .{objc.NSInteger} },
        .{ "pointerFunctions", NSPointerFunctions, .{} },
        .{ "removePointerAtIndex:", void, .{objc.NSInteger} },
        .{ "replacePointerAtIndex:withPointer:", void, .{ objc.NSInteger, ?UnsafeMutableRawPointer } },
        .{ "setCount:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSPointerArray, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithOptions:", Object, .{objc.NSInteger} },
        .{ "initWithPointerFunctions:", Object, .{NSPointerFunctions} },
        .{ "strongObjectsPointerArray", NSPointerArray, .{} },
        .{ "weakObjectsPointerArray", NSPointerArray, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPointerArray", class_methods, selector, args);
    }
};

pub const NSPointerFunctions = struct {
    obj: Object,

    pub const methods = .{
        .{ "acquireFunction", ?UnsafeMutableRawPointer, .{} },
        .{ "descriptionFunction", ?objc.NSString, .{} },
        .{ "hashFunction", objc.NSInteger, .{} },
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

    pub fn send(self: NSPointerFunctions, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithOptions:", Object, .{objc.NSInteger} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPointerFunctions", class_methods, selector, args);
    }
};

pub const NSPort = struct {
    obj: Object,

    pub const methods = .{
        .{ "delegate", ?PortDelegate, .{} },
        .{ "invalidate", void, .{} },
        .{ "removeFromRunLoop:forMode:", void, .{ NSRunLoop, objc.NSString } },
        .{ "reservedSpaceLength", objc.NSInteger, .{} },
        .{ "scheduleInRunLoop:forMode:", void, .{ NSRunLoop, objc.NSString } },
        .{ "sendBeforeDate:components:from:reserved:", objc.BOOL, .{ NSDate, ?NSMutableArray, ?NSPort, objc.NSInteger } },
        .{ "sendBeforeDate:msgid:components:from:reserved:", objc.BOOL, .{ NSDate, objc.NSInteger, ?NSMutableArray, ?NSPort, objc.NSInteger } },
        .{ "setDelegate:", void, .{void} },
        .{ "valid", objc.BOOL, .{} },
    };

    pub fn send(self: NSPort, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSPortMessage = struct {
    obj: Object,

    pub const methods = .{
        .{ "components", ?*anyopaque, .{} },
        .{ "msgid", u32, .{} },
        .{ "receivePort", ?NSPort, .{} },
        .{ "sendBeforeDate:", objc.BOOL, .{NSDate} },
        .{ "sendPort", ?NSPort, .{} },
        .{ "setMsgid:", void, .{u32} },
    };

    pub fn send(self: NSPortMessage, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithSendPort:receivePort:components:", Object, .{ ?NSPort, ?NSPort, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPortMessage", class_methods, selector, args);
    }
};

pub const NSPositionalSpecifier = struct {
    obj: Object,

    pub const methods = .{
        .{ "evaluate", void, .{} },
        .{ "insertionContainer", ?Any, .{} },
        .{ "insertionIndex", objc.NSInteger, .{} },
        .{ "insertionKey", ?objc.NSString, .{} },
        .{ "insertionReplaces", objc.BOOL, .{} },
        .{ "objectSpecifier", NSScriptObjectSpecifier, .{} },
        .{ "position", NSPositionalSpecifier.InsertionPosition, .{} },
        .{ "setInsertionClassDescription:", void, .{NSScriptClassDescription} },
    };

    pub fn send(self: NSPositionalSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithPosition:objectSpecifier:", Object, .{ NSPositionalSpecifier.InsertionPosition, NSScriptObjectSpecifier } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPositionalSpecifier", class_methods, selector, args);
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
        .{ "evaluateWithObject:substitutionVariables:", objc.BOOL, .{ ?Any, ?Any } },
        .{ "predicateFormat", objc.NSString, .{} },
        .{ "predicateWithSubstitutionVariables:", ?*anyopaque, .{Any} },
    };

    pub fn send(self: NSPredicate, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "predicateFromMetadataQueryString:", Object, .{objc.NSString} },
        .{ "predicateWithBlock:", Object, .{objc.BOOL} },
        .{ "predicateWithFormat:argumentArray:", Object, .{ objc.NSString, void } },
        .{ "predicateWithFormat:arguments:", Object, .{ objc.NSString, ?*anyopaque } },
        .{ "predicateWithValue:", Object, .{objc.BOOL} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPredicate", class_methods, selector, args);
    }
};

pub const NSProcessInfo = struct {
    obj: Object,

    pub const methods = .{
        .{ "activeProcessorCount", objc.NSInteger, .{} },
        .{ "arguments", Object, .{} },
        .{ "automaticTerminationSupportEnabled", objc.BOOL, .{} },
        .{ "beginActivityWithOptions:reason:", *anyopaque, .{ objc.NSInteger, objc.NSString } },
        .{ "disableAutomaticTermination:", void, .{objc.NSString} },
        .{ "disableSuddenTermination", void, .{} },
        .{ "enableAutomaticTermination:", void, .{objc.NSString} },
        .{ "enableSuddenTermination", void, .{} },
        .{ "endActivity:", void, .{void} },
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
        .{ "performActivityWithOptions:reason:usingBlock:", void, .{ objc.NSInteger, objc.NSString, void } },
        .{ "physicalMemory", u64, .{} },
        .{ "processIdentifier", i32, .{} },
        .{ "processName", objc.NSString, .{} },
        .{ "processorCount", objc.NSInteger, .{} },
        .{ "setAutomaticTerminationSupportEnabled:", void, .{objc.BOOL} },
        .{ "setProcessName:", void, .{objc.NSString} },
        .{ "systemUptime", TimeInterval, .{} },
        .{ "thermalState", NSProcessInfo.ThermalState, .{} },
        .{ "userName", objc.NSString, .{} },
    };

    pub fn send(self: NSProcessInfo, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "processInfo", NSProcessInfo, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSProcessInfo", class_methods, selector, args);
    }

    pub const ThermalState = enum(i64) {
        nominal = 0,
        fair = 1,
        serious = 2,
        critical = 3,
    };
};

pub const NSProgress = struct {
    obj: Object,

    pub const methods = .{
        .{ "addChild:withPendingUnitCount:", void, .{ NSProgress, i64 } },
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

    pub fn send(self: NSProgress, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "addSubscriberForFileURL:withPublishingHandler:", Any, .{ NSURL, objc.NSString } },
        .{ "currentProgress", ?NSProgress, .{} },
        .{ "discreteProgressWithTotalUnitCount:", NSProgress, .{i64} },
        .{ "initWithParent:userInfo:", Object, .{ ?NSProgress, ?Any } },
        .{ "progressWithTotalUnitCount:", Object, .{i64} },
        .{ "progressWithTotalUnitCount:parent:pendingUnitCount:", Object, .{ i64, NSProgress, i64 } },
        .{ "removeSubscriber:", void, .{Any} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSProgress", class_methods, selector, args);
    }
};

pub const NSPropertyListSerialization = struct {
    pub const class_methods = .{
        .{ "dataFromPropertyList:format:errorDescription:", ?NSData, .{ Any, NSPropertyListSerialization.PropertyListFormat, ?objc.NSString } },
        .{ "dataWithPropertyList:format:options:error:", NSData, .{ Any, NSPropertyListSerialization.PropertyListFormat, objc.NSInteger } },
        .{ "propertyList:isValidForFormat:", objc.BOOL, .{ Any, NSPropertyListSerialization.PropertyListFormat } },
        .{ "propertyListFromData:mutabilityOption:format:errorDescription:", ?Any, .{ NSData, objc.NSInteger, NSPropertyListSerialization.PropertyListFormat, ?objc.NSString } },
        .{ "propertyListWithData:options:format:error:", Any, .{ NSData, objc.NSString, NSPropertyListSerialization.PropertyListFormat } },
        .{ "propertyListWithStream:options:format:error:", Any, .{ NSInputStream, objc.NSString, NSPropertyListSerialization.PropertyListFormat } },
        .{ "writePropertyList:toStream:format:options:error:", objc.NSInteger, .{ Any, NSOutputStream, NSPropertyListSerialization.PropertyListFormat, objc.NSInteger, Object } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSPropertyListSerialization", class_methods, selector, args);
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
        .{ "protocol", Object, .{} },
        .{ "target", ?*anyopaque, .{} },
    };

    pub fn send(self: NSProtocolChecker, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithTarget:protocol:", Object, .{ Object, Object } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSProtocolChecker", class_methods, selector, args);
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

    pub fn send(self: NSProxy, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "alloc", ?*anyopaque, .{} },
        .{ "class", AnyClass, .{} },
        .{ "respondsToSelector:", objc.BOOL, .{Selector} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSProxy", class_methods, selector, args);
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
};

pub const NSRangeSpecifier = struct {
    obj: Object,

    pub const Super = NSScriptObjectSpecifier;
    pub const methods = .{
        .{ "endSpecifier", ?NSScriptObjectSpecifier, .{} },
        .{ "setEndSpecifier:", void, .{?NSScriptObjectSpecifier} },
        .{ "setStartSpecifier:", void, .{?NSScriptObjectSpecifier} },
        .{ "startSpecifier", ?NSScriptObjectSpecifier, .{} },
    };

    pub fn send(self: NSRangeSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:startSpecifier:endSpecifier:", Object, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString, ?NSScriptObjectSpecifier, ?NSScriptObjectSpecifier } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSRangeSpecifier", class_methods, selector, args);
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

    pub fn send(self: NSRecursiveLock, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSRegularExpression = struct {
    obj: Object,

    pub const methods = .{
        .{ "enumerateMatchesInString:options:range:usingBlock:", void, .{ objc.NSString, objc.NSInteger, NSRange, void } },
        .{ "firstMatchInString:options:range:", ?NSTextCheckingResult, .{ objc.NSString, objc.NSInteger, NSRange } },
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

    pub fn send(self: NSRegularExpression, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "escapedPatternForString:", objc.NSString, .{objc.NSString} },
        .{ "escapedTemplateForString:", objc.NSString, .{objc.NSString} },
        .{ "initWithPattern:options:error:", Object, .{ objc.NSString, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSRegularExpression", class_methods, selector, args);
    }
};

pub const NSRelativeDateTimeFormatter = struct {
    obj: Object,

    pub const Super = NSFormatter;
    pub const methods = .{
        .{ "calendar", ?*anyopaque, .{} },
        .{ "dateTimeStyle", NSRelativeDateTimeFormatter.DateTimeStyle, .{} },
        .{ "formattingContext", NSFormatter.Context, .{} },
        .{ "locale", NSLocale, .{} },
        .{ "localizedStringForDate:relativeToDate:", objc.NSString, .{ NSDate, NSDate } },
        .{ "localizedStringFromDateComponents:", objc.NSString, .{?*anyopaque} },
        .{ "localizedStringFromTimeInterval:", objc.NSString, .{TimeInterval} },
        .{ "setCalendar:", void, .{?*anyopaque} },
        .{ "setDateTimeStyle:", void, .{NSRelativeDateTimeFormatter.DateTimeStyle} },
        .{ "setFormattingContext:", void, .{NSFormatter.Context} },
        .{ "setLocale:", void, .{NSLocale} },
        .{ "setUnitsStyle:", void, .{NSRelativeDateTimeFormatter.UnitsStyle} },
        .{ "stringForObjectValue:", ?objc.NSString, .{?Any} },
        .{ "unitsStyle", NSRelativeDateTimeFormatter.UnitsStyle, .{} },
    };

    pub fn send(self: NSRelativeDateTimeFormatter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
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
        .{ "relativePosition", NSRelativeSpecifier.RelativePosition, .{} },
        .{ "setBaseSpecifier:", void, .{?NSScriptObjectSpecifier} },
        .{ "setRelativePosition:", void, .{NSRelativeSpecifier.RelativePosition} },
    };

    pub fn send(self: NSRelativeSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:relativePosition:baseSpecifier:", Object, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString, NSRelativeSpecifier.RelativePosition, ?NSScriptObjectSpecifier } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSRelativeSpecifier", class_methods, selector, args);
    }

    pub const RelativePosition = enum(i64) {
        after = 0,
        before = 1,
    };
};

pub const NSRunLoop = struct {
    obj: Object,

    pub const methods = .{
        .{ "acceptInputForMode:beforeDate:", void, .{ objc.NSString, NSDate } },
        .{ "addPort:forMode:", void, .{ NSPort, objc.NSString } },
        .{ "addTimer:forMode:", void, .{ NSTimer, objc.NSString } },
        .{ "cancelPerformSelector:target:argument:", void, .{ Selector, Any, ?Any } },
        .{ "cancelPerformSelectorsWithTarget:", void, .{Any} },
        .{ "currentMode", objc.NSString, .{} },
        .{ "getCFRunLoop", objc.NSString, .{} },
        .{ "limitDateForMode:", ?NSDate, .{objc.NSString} },
        .{ "performBlock:", void, .{void} },
        .{ "performInModes:block:", void, .{ void, void } },
        .{ "performSelector:target:argument:order:modes:", void, .{ Selector, Any, ?Any, objc.NSInteger, void } },
        .{ "removePort:forMode:", void, .{ NSPort, objc.NSString } },
        .{ "run", void, .{} },
        .{ "runMode:beforeDate:", objc.BOOL, .{ objc.NSString, NSDate } },
        .{ "runUntilDate:", void, .{NSDate} },
    };

    pub fn send(self: NSRunLoop, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentRunLoop", NSRunLoop, .{} },
        .{ "mainRunLoop", NSRunLoop, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSRunLoop", class_methods, selector, args);
    }
};

pub const NSScanner = struct {
    obj: Object,

    pub const methods = .{
        .{ "atEnd", objc.BOOL, .{} },
        .{ "caseSensitive", objc.BOOL, .{} },
        .{ "charactersToBeSkipped", ?*anyopaque, .{} },
        .{ "locale", ?Any, .{} },
        .{ "scanCharactersFromSet:intoString:", objc.BOOL, .{ ?*anyopaque, ?objc.NSString } },
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
        .{ "scanUpToCharactersFromSet:intoString:", objc.BOOL, .{ ?*anyopaque, ?objc.NSString } },
        .{ "scanUpToString:intoString:", objc.BOOL, .{ objc.NSString, ?objc.NSString } },
        .{ "setCaseSensitive:", void, .{objc.BOOL} },
        .{ "setCharactersToBeSkipped:", void, .{?*anyopaque} },
        .{ "setLocale:", void, .{?Any} },
        .{ "setScanLocation:", void, .{objc.NSInteger} },
        .{ "string", objc.NSString, .{} },
    };

    pub fn send(self: NSScanner, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithString:", Object, .{objc.NSString} },
        .{ "localizedScannerWithString:", Any, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScanner", class_methods, selector, args);
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
        .{ "initWithSuiteName:className:dictionary:", Object, .{ objc.NSString, objc.NSString, ?Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScriptClassDescription", class_methods, selector, args);
    }
};

pub const NSScriptCoercionHandler = struct {
    obj: Object,

    pub const methods = .{
        .{ "coerceValue:toClass:", ?Any, .{ Any, AnyClass } },
        .{ "registerCoercer:selector:toConvertFromClass:toClass:", void, .{ Any, Selector, AnyClass, AnyClass } },
    };

    pub fn send(self: NSScriptCoercionHandler, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedCoercionHandler", NSScriptCoercionHandler, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScriptCoercionHandler", class_methods, selector, args);
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

    pub fn send(self: NSScriptCommand, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentCommand", ?NSScriptCommand, .{} },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithCommandDescription:", Object, .{NSScriptCommandDescription} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScriptCommand", class_methods, selector, args);
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
        .{ "isOptionalArgumentWithName:", objc.BOOL, .{objc.NSString} },
        .{ "returnType", ?objc.NSString, .{} },
        .{ "suiteName", objc.NSString, .{} },
        .{ "typeForArgumentWithName:", ?objc.NSString, .{objc.NSString} },
    };

    pub fn send(self: NSScriptCommandDescription, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithSuiteName:commandName:dictionary:", Object, .{ objc.NSString, objc.NSString, ?Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScriptCommandDescription", class_methods, selector, args);
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

    pub fn send(self: NSScriptExecutionContext, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedScriptExecutionContext", NSScriptExecutionContext, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScriptExecutionContext", class_methods, selector, args);
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

    pub fn send(self: NSScriptObjectSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:", Object, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString } },
        .{ "initWithContainerSpecifier:key:", Object, .{ NSScriptObjectSpecifier, objc.NSString } },
        .{ "objectSpecifierWithDescriptor:", Object, .{NSAppleEventDescriptor} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScriptObjectSpecifier", class_methods, selector, args);
    }
};

pub const NSScriptSuiteRegistry = struct {
    obj: Object,

    pub const methods = .{
        .{ "aeteResource:", ?NSData, .{objc.NSString} },
        .{ "appleEventCodeForSuite:", objc.NSString, .{objc.NSString} },
        .{ "bundleForSuite:", ?NSBundle, .{objc.NSString} },
        .{ "classDescriptionWithAppleEventCode:", ?NSScriptClassDescription, .{objc.NSString} },
        .{ "classDescriptionsInSuite:", ?*anyopaque, .{objc.NSString} },
        .{ "commandDescriptionWithAppleEventClass:andAppleEventCode:", ?NSScriptCommandDescription, .{ objc.NSString, objc.NSString } },
        .{ "commandDescriptionsInSuite:", ?*anyopaque, .{objc.NSString} },
        .{ "loadSuiteWithDictionary:fromBundle:", void, .{ Any, NSBundle } },
        .{ "loadSuitesFromBundle:", void, .{NSBundle} },
        .{ "registerClassDescription:", void, .{NSScriptClassDescription} },
        .{ "registerCommandDescription:", void, .{NSScriptCommandDescription} },
        .{ "suiteForAppleEventCode:", ?objc.NSString, .{objc.NSString} },
        .{ "suiteNames", Object, .{} },
    };

    pub fn send(self: NSScriptSuiteRegistry, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "setSharedScriptSuiteRegistry:", void, .{NSScriptSuiteRegistry} },
        .{ "sharedScriptSuiteRegistry", NSScriptSuiteRegistry, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScriptSuiteRegistry", class_methods, selector, args);
    }
};

pub const NSScriptWhoseTest = struct {
    obj: Object,

    pub const methods = .{
        .{ "isTrue", objc.BOOL, .{} },
    };

    pub fn send(self: NSScriptWhoseTest, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithCoder:", Object, .{NSCoder} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSScriptWhoseTest", class_methods, selector, args);
    }
};

pub const NSSecureUnarchiveFromDataTransformer = struct {
    pub const class_methods = .{
        .{ "allowedTopLevelClasses", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSecureUnarchiveFromDataTransformer", class_methods, selector, args);
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
        .{ "enumerateObjectsUsingBlock:", void, .{void} },
        .{ "enumerateObjectsWithOptions:usingBlock:", void, .{ objc.NSInteger, void } },
        .{ "filteredSetUsingPredicate:", ?*anyopaque, .{NSPredicate} },
        .{ "intersectsSet:", objc.BOOL, .{?*anyopaque} },
        .{ "isEqualToSet:", objc.BOOL, .{?*anyopaque} },
        .{ "isSubsetOfSet:", objc.BOOL, .{?*anyopaque} },
        .{ "member:", ?Any, .{Any} },
        .{ "objectEnumerator", NSEnumerator, .{} },
        .{ "objectsPassingTest:", ?*anyopaque, .{void} },
        .{ "objectsWithOptions:passingTest:", ?*anyopaque, .{ objc.NSInteger, void } },
        .{ "removeObserver:forKeyPath:", void, .{ Object, objc.NSString } },
        .{ "removeObserver:forKeyPath:context:", void, .{ Object, objc.NSString, ?UnsafeMutableRawPointer } },
        .{ "setByAddingObject:", ?*anyopaque, .{Any} },
        .{ "setByAddingObjectsFromArray:", ?*anyopaque, .{void} },
        .{ "setByAddingObjectsFromSet:", ?*anyopaque, .{?*anyopaque} },
        .{ "setValue:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "sortedArrayUsingDescriptors:", Object, .{void} },
        .{ "valueForKey:", Any, .{objc.NSString} },
    };

    pub fn send(self: NSSet, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithArray:", Object, .{void} },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithObjects:count:", Object, .{ ?UnsafePointer, objc.NSInteger } },
        .{ "initWithSet:", Object, .{?*anyopaque} },
        .{ "initWithSet:copyItems:", Object, .{ ?*anyopaque, objc.BOOL } },
        .{ "setWithObject:", Object, .{Any} },
        .{ "setWithObjects:count:", Object, .{ UnsafePointer, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSet", class_methods, selector, args);
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
};

pub const NSSocketPort = struct {
    obj: Object,

    pub const Super = NSPort;
    pub const methods = .{
        .{ "address", NSData, .{} },
        .{ "protocol", i32, .{} },
        .{ "protocolFamily", i32, .{} },
        .{ "socket", i32, .{} },
        .{ "socketType", i32, .{} },
    };

    pub fn send(self: NSSocketPort, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initRemoteWithProtocolFamily:socketType:protocol:address:", Object, .{ i32, i32, i32, NSData } },
        .{ "initRemoteWithTCPPort:host:", Object, .{ u16, ?objc.NSString } },
        .{ "initWithProtocolFamily:socketType:protocol:address:", Object, .{ i32, i32, i32, NSData } },
        .{ "initWithProtocolFamily:socketType:protocol:socket:", Object, .{ i32, i32, i32, i32 } },
        .{ "initWithTCPPort:", Object, .{u16} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSocketPort", class_methods, selector, args);
    }
};

pub const NSSortDescriptor = struct {
    obj: Object,

    pub const methods = .{
        .{ "allowEvaluation", void, .{} },
        .{ "ascending", objc.BOOL, .{} },
        .{ "comparator", objc.NSString, .{} },
        .{ "compareObject:toObject:", ComparisonResult, .{ Any, Any } },
        .{ "key", ?objc.NSString, .{} },
        .{ "reversedSortDescriptor", Any, .{} },
        .{ "selector", Selector, .{} },
    };

    pub fn send(self: NSSortDescriptor, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithKey:ascending:", Object, .{ ?objc.NSString, objc.BOOL } },
        .{ "initWithKey:ascending:comparator:", Object, .{ ?objc.NSString, objc.BOOL, objc.NSString } },
        .{ "initWithKey:ascending:selector:", Object, .{ ?objc.NSString, objc.BOOL, Selector } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSortDescriptor", class_methods, selector, args);
    }
};

pub const NSSpecifierTest = struct {
    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithObjectSpecifier:comparisonOperator:testObject:", Object, .{ ?NSScriptObjectSpecifier, NSSpecifierTest.TestComparisonOperation, ?Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSSpecifierTest", class_methods, selector, args);
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

    pub fn send(self: NSSpellServer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSStream = struct {
    obj: Object,

    pub const methods = .{
        .{ "close", void, .{} },
        .{ "delegate", ?StreamDelegate, .{} },
        .{ "open", void, .{} },
        .{ "propertyForKey:", ?Any, .{objc.NSString} },
        .{ "removeFromRunLoop:forMode:", void, .{ NSRunLoop, objc.NSString } },
        .{ "scheduleInRunLoop:forMode:", void, .{ NSRunLoop, objc.NSString } },
        .{ "setDelegate:", void, .{?StreamDelegate} },
        .{ "setProperty:forKey:", objc.BOOL, .{ ?Any, objc.NSString } },
        .{ "streamError", ?*anyopaque, .{} },
        .{ "streamStatus", NSStream.Status, .{} },
    };

    pub fn send(self: NSStream, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "getBoundStreamsWithBufferSize:inputStream:outputStream:", void, .{ objc.NSInteger, ?NSInputStream, ?NSOutputStream } },
        .{ "getStreamsToHost:port:inputStream:outputStream:", void, .{ NSHost, objc.NSInteger, ?NSInputStream, ?NSOutputStream } },
        .{ "getStreamsToHostWithName:port:inputStream:outputStream:", void, .{ objc.NSString, objc.NSInteger, ?NSInputStream, ?NSOutputStream } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSStream", class_methods, selector, args);
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
        .{ "completePathIntoString:caseSensitive:matchesIntoArray:filterTypes:", objc.NSInteger, .{ ?objc.NSString, objc.BOOL, ?NSArray, void } },
        .{ "componentsSeparatedByCharactersInSet:", Object, .{?*anyopaque} },
        .{ "componentsSeparatedByString:", Object, .{objc.NSString} },
        .{ "containsString:", objc.BOOL, .{objc.NSString} },
        .{ "dataUsingEncoding:", ?NSData, .{c_ulong} },
        .{ "dataUsingEncoding:allowLossyConversion:", ?NSData, .{ c_ulong, objc.BOOL } },
        .{ "decomposedStringWithCanonicalMapping", objc.NSString, .{} },
        .{ "decomposedStringWithCompatibilityMapping", objc.NSString, .{} },
        .{ "description", objc.NSString, .{} },
        .{ "doubleValue", f64, .{} },
        .{ "enumerateLinesUsingBlock:", void, .{void} },
        .{ "enumerateLinguisticTagsInRange:scheme:options:orthography:usingBlock:", void, .{ NSRange, objc.NSString, objc.NSInteger, ?NSOrthography, void } },
        .{ "enumerateSubstringsInRange:options:usingBlock:", void, .{ NSRange, objc.NSInteger, void } },
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
        .{ "rangeOfCharacterFromSet:", NSRange, .{?*anyopaque} },
        .{ "rangeOfCharacterFromSet:options:", NSRange, .{ ?*anyopaque, objc.NSInteger } },
        .{ "rangeOfCharacterFromSet:options:range:", NSRange, .{ ?*anyopaque, objc.NSInteger, NSRange } },
        .{ "rangeOfComposedCharacterSequenceAtIndex:", NSRange, .{objc.NSInteger} },
        .{ "rangeOfComposedCharacterSequencesForRange:", NSRange, .{NSRange} },
        .{ "rangeOfString:", NSRange, .{objc.NSString} },
        .{ "rangeOfString:options:", NSRange, .{ objc.NSString, objc.NSInteger } },
        .{ "rangeOfString:options:range:", NSRange, .{ objc.NSString, objc.NSInteger, NSRange } },
        .{ "rangeOfString:options:range:locale:", NSRange, .{ objc.NSString, objc.NSInteger, NSRange, ?NSLocale } },
        .{ "smallestEncoding", c_ulong, .{} },
        .{ "stringByAbbreviatingWithTildeInPath", objc.NSString, .{} },
        .{ "stringByAddingPercentEncodingWithAllowedCharacters:", ?objc.NSString, .{?*anyopaque} },
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
        .{ "stringByTrimmingCharactersInSet:", objc.NSString, .{?*anyopaque} },
        .{ "stringsByAppendingPaths:", Object, .{void} },
        .{ "substringFromIndex:", objc.NSString, .{objc.NSInteger} },
        .{ "substringToIndex:", objc.NSString, .{objc.NSInteger} },
        .{ "substringWithRange:", objc.NSString, .{NSRange} },
        .{ "uppercaseString", objc.NSString, .{} },
        .{ "uppercaseStringWithLocale:", objc.NSString, .{?NSLocale} },
        .{ "variantFittingPresentationWidth:", objc.NSString, .{objc.NSInteger} },
        .{ "writeToFile:atomically:encoding:error:", void, .{ objc.NSString, objc.BOOL, c_ulong } },
        .{ "writeToURL:atomically:encoding:error:", void, .{ NSURL, objc.BOOL, c_ulong } },
    };

    pub fn send(self: NSString, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "availableStringEncodings", c_ulong, .{} },
        .{ "defaultCStringEncoding", c_ulong, .{} },
        .{ "init", Object, .{} },
        .{ "initWithBytes:length:encoding:", Object, .{ UnsafeRawPointer, objc.NSInteger, c_ulong } },
        .{ "initWithBytesNoCopy:length:encoding:deallocator:", Object, .{ UnsafeMutableRawPointer, objc.NSInteger, c_ulong, void } },
        .{ "initWithBytesNoCopy:length:encoding:freeWhenDone:", Object, .{ UnsafeMutableRawPointer, objc.NSInteger, c_ulong, objc.BOOL } },
        .{ "initWithCString:encoding:", Object, .{ ?*anyopaque, c_ulong } },
        .{ "initWithCharacters:length:", Object, .{ u16, objc.NSInteger } },
        .{ "initWithCharactersNoCopy:length:deallocator:", Object, .{ u16, objc.NSInteger, void } },
        .{ "initWithCharactersNoCopy:length:freeWhenDone:", Object, .{ u16, objc.NSInteger, objc.BOOL } },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithContentsOfFile:encoding:error:", Object, .{ objc.NSString, c_ulong } },
        .{ "initWithContentsOfFile:usedEncoding:error:", Object, .{ objc.NSString, c_ulong } },
        .{ "initWithContentsOfURL:encoding:error:", Object, .{ NSURL, c_ulong } },
        .{ "initWithContentsOfURL:usedEncoding:error:", Object, .{ NSURL, c_ulong } },
        .{ "initWithData:encoding:", Object, .{ NSData, c_ulong } },
        .{ "initWithFormat:arguments:", Object, .{ objc.NSString, ?*anyopaque } },
        .{ "initWithFormat:locale:arguments:", Object, .{ objc.NSString, ?Any, ?*anyopaque } },
        .{ "initWithString:", Object, .{objc.NSString} },
        .{ "initWithUTF8String:", Object, .{?*anyopaque} },
        .{ "localizedNameOfStringEncoding:", objc.NSString, .{c_ulong} },
        .{ "pathWithComponents:", objc.NSString, .{void} },
        .{ "stringEncodingForData:encodingOptions:convertedString:usedLossyConversion:", c_ulong, .{ NSData, ?Any, ?objc.NSString, ?*anyopaque } },
        .{ "stringWithCString:encoding:", Object, .{ ?*anyopaque, c_ulong } },
        .{ "stringWithContentsOfURL:encoding:error:", Object, .{ NSURL, c_ulong } },
        .{ "stringWithContentsOfURL:usedEncoding:error:", Object, .{ NSURL, c_ulong } },
        .{ "stringWithUTF8String:", Object, .{?*anyopaque} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSString", class_methods, selector, args);
    }
};

pub const NSTask = struct {
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
        .{ "terminationReason", NSTask.TerminationReason, .{} },
        .{ "terminationStatus", i32, .{} },
        .{ "waitUntilExit", void, .{} },
    };

    pub fn send(self: NSTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "launchedTaskWithExecutableURL:arguments:error:terminationHandler:", NSTask, .{ NSURL, void, void } },
        .{ "launchedTaskWithLaunchPath:arguments:", NSTask, .{ objc.NSString, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTask", class_methods, selector, args);
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
        .{ "timeZone", ?*anyopaque, .{} },
    };

    pub fn send(self: NSTextCheckingResult, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "addressCheckingResultWithRange:components:", NSTextCheckingResult, .{ NSRange, objc.NSString } },
        .{ "correctionCheckingResultWithRange:replacementString:", NSTextCheckingResult, .{ NSRange, objc.NSString } },
        .{ "correctionCheckingResultWithRange:replacementString:alternativeStrings:", NSTextCheckingResult, .{ NSRange, objc.NSString, void } },
        .{ "dashCheckingResultWithRange:replacementString:", NSTextCheckingResult, .{ NSRange, objc.NSString } },
        .{ "dateCheckingResultWithRange:date:", NSTextCheckingResult, .{ NSRange, NSDate } },
        .{ "dateCheckingResultWithRange:date:timeZone:duration:", NSTextCheckingResult, .{ NSRange, NSDate, ?*anyopaque, TimeInterval } },
        .{ "grammarCheckingResultWithRange:details:", NSTextCheckingResult, .{ NSRange, Any } },
        .{ "linkCheckingResultWithRange:URL:", NSTextCheckingResult, .{ NSRange, NSURL } },
        .{ "orthographyCheckingResultWithRange:orthography:", NSTextCheckingResult, .{ NSRange, NSOrthography } },
        .{ "phoneNumberCheckingResultWithRange:phoneNumber:", NSTextCheckingResult, .{ NSRange, objc.NSString } },
        .{ "quoteCheckingResultWithRange:replacementString:", NSTextCheckingResult, .{ NSRange, objc.NSString } },
        .{ "regularExpressionCheckingResultWithRanges:count:regularExpression:", NSTextCheckingResult, .{ NSRange, objc.NSInteger, NSRegularExpression } },
        .{ "replacementCheckingResultWithRange:replacementString:", NSTextCheckingResult, .{ NSRange, objc.NSString } },
        .{ "spellCheckingResultWithRange:", NSTextCheckingResult, .{NSRange} },
        .{ "transitInformationCheckingResultWithRange:components:", NSTextCheckingResult, .{ NSRange, objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTextCheckingResult", class_methods, selector, args);
    }
};

pub const NSThread = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancel", void, .{} },
        .{ "cancelled", objc.BOOL, .{} },
        .{ "executing", objc.BOOL, .{} },
        .{ "finished", objc.BOOL, .{} },
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

    pub fn send(self: NSThread, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "callStackReturnAddresses", Object, .{} },
        .{ "callStackSymbols", Object, .{} },
        .{ "currentThread", NSThread, .{} },
        .{ "detachNewThreadSelector:toTarget:withObject:", void, .{ Selector, Any, ?Any } },
        .{ "detachNewThreadWithBlock:", void, .{void} },
        .{ "exit", void, .{} },
        .{ "init", Object, .{} },
        .{ "initWithBlock:", Object, .{void} },
        .{ "initWithTarget:selector:object:", Object, .{ Any, Selector, ?Any } },
        .{ "isMainThread", objc.BOOL, .{} },
        .{ "isMultiThreaded", objc.BOOL, .{} },
        .{ "mainThread", NSThread, .{} },
        .{ "setThreadPriority:", objc.BOOL, .{f64} },
        .{ "sleepForTimeInterval:", void, .{TimeInterval} },
        .{ "sleepUntilDate:", void, .{NSDate} },
        .{ "threadPriority", f64, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSThread", class_methods, selector, args);
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
        .{ "isDaylightSavingTimeForDate:", objc.BOOL, .{NSDate} },
        .{ "isEqualToTimeZone:", objc.BOOL, .{?*anyopaque} },
        .{ "localizedName:locale:", ?objc.NSString, .{ NSTimeZone.NameStyle, ?NSLocale } },
        .{ "name", objc.NSString, .{} },
        .{ "nextDaylightSavingTimeTransition", ?NSDate, .{} },
        .{ "nextDaylightSavingTimeTransitionAfterDate:", ?NSDate, .{NSDate} },
        .{ "secondsFromGMT", objc.NSInteger, .{} },
        .{ "secondsFromGMTForDate:", objc.NSInteger, .{NSDate} },
        .{ "setDaylightSavingTimeOffset:", void, .{TimeInterval} },
    };

    pub fn send(self: NSTimeZone, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "abbreviationDictionary", Object, .{} },
        .{ "defaultTimeZone", ?*anyopaque, .{} },
        .{ "initWithName:", Object, .{objc.NSString} },
        .{ "initWithName:data:", Object, .{ objc.NSString, ?NSData } },
        .{ "knownTimeZoneNames", Object, .{} },
        .{ "localTimeZone", ?*anyopaque, .{} },
        .{ "resetSystemTimeZone", void, .{} },
        .{ "setAbbreviationDictionary:", void, .{Object} },
        .{ "setDefaultTimeZone:", void, .{?*anyopaque} },
        .{ "systemTimeZone", ?*anyopaque, .{} },
        .{ "timeZoneDataVersion", objc.NSString, .{} },
        .{ "timeZoneForSecondsFromGMT:", Object, .{objc.NSInteger} },
        .{ "timeZoneWithAbbreviation:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTimeZone", class_methods, selector, args);
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

pub const NSTimer = struct {
    obj: Object,

    pub const methods = .{
        .{ "fire", void, .{} },
        .{ "fireDate", NSDate, .{} },
        .{ "invalidate", void, .{} },
        .{ "setFireDate:", void, .{NSDate} },
        .{ "setTolerance:", void, .{TimeInterval} },
        .{ "timeInterval", TimeInterval, .{} },
        .{ "tolerance", TimeInterval, .{} },
        .{ "userInfo", ?Any, .{} },
        .{ "valid", objc.BOOL, .{} },
    };

    pub fn send(self: NSTimer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithFireDate:interval:repeats:block:", Object, .{ NSDate, TimeInterval, objc.BOOL, void } },
        .{ "initWithFireDate:interval:target:selector:userInfo:repeats:", Object, .{ NSDate, TimeInterval, Any, Selector, ?Any, objc.BOOL } },
        .{ "scheduledTimerWithTimeInterval:invocation:repeats:", NSTimer, .{ TimeInterval, Object, objc.BOOL } },
        .{ "scheduledTimerWithTimeInterval:repeats:block:", NSTimer, .{ TimeInterval, objc.BOOL, void } },
        .{ "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", NSTimer, .{ TimeInterval, Any, Selector, ?Any, objc.BOOL } },
        .{ "timerWithTimeInterval:invocation:repeats:", Object, .{ TimeInterval, Object, objc.BOOL } },
        .{ "timerWithTimeInterval:repeats:block:", Object, .{ TimeInterval, objc.BOOL, void } },
        .{ "timerWithTimeInterval:target:selector:userInfo:repeats:", Object, .{ TimeInterval, Any, Selector, ?Any, objc.BOOL } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSTimer", class_methods, selector, args);
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
        .{ "bookmarkDataWithOptions:includingResourceValuesForKeys:relativeToURL:error:", NSData, .{ objc.NSInteger, void, ?NSURL } },
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
        .{ "isFileReferenceURL", objc.BOOL, .{} },
        .{ "lastPathComponent", ?objc.NSString, .{} },
        .{ "parameterString", ?objc.NSString, .{} },
        .{ "password", ?objc.NSString, .{} },
        .{ "path", ?objc.NSString, .{} },
        .{ "pathComponents", ?*anyopaque, .{} },
        .{ "pathExtension", ?objc.NSString, .{} },
        .{ "port", ?NSNumber, .{} },
        .{ "promisedItemResourceValuesForKeys:error:", Object, .{void} },
        .{ "query", ?objc.NSString, .{} },
        .{ "relativePath", ?objc.NSString, .{} },
        .{ "relativeString", objc.NSString, .{} },
        .{ "removeAllCachedResourceValues", void, .{} },
        .{ "removeCachedResourceValueForKey:", void, .{objc.NSString} },
        .{ "resourceSpecifier", ?objc.NSString, .{} },
        .{ "resourceValuesForKeys:error:", Object, .{void} },
        .{ "scheme", ?objc.NSString, .{} },
        .{ "setResourceValue:forKey:error:", void, .{ ?Any, objc.NSString } },
        .{ "setResourceValues:error:", void, .{Any} },
        .{ "setTemporaryResourceValue:forKey:", void, .{ void, objc.NSString } },
        .{ "standardizedURL", ?NSURL, .{} },
        .{ "startAccessingSecurityScopedResource", objc.BOOL, .{} },
        .{ "stopAccessingSecurityScopedResource", void, .{} },
        .{ "user", ?objc.NSString, .{} },
    };

    pub fn send(self: NSURL, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
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
        .{ "fileURLWithPathComponents:", ?NSURL, .{void} },
        .{ "initAbsoluteURLWithDataRepresentation:relativeToURL:", Object, .{ NSData, ?NSURL } },
        .{ "initByResolvingBookmarkData:options:relativeToURL:bookmarkDataIsStale:error:", Object, .{ NSData, objc.NSInteger, ?NSURL, ?*anyopaque } },
        .{ "initFileURLWithFileSystemRepresentation:isDirectory:relativeToURL:", Object, .{ ?*anyopaque, objc.BOOL, ?NSURL } },
        .{ "initFileURLWithPath:", Object, .{objc.NSString} },
        .{ "initFileURLWithPath:isDirectory:", Object, .{ objc.NSString, objc.BOOL } },
        .{ "initFileURLWithPath:isDirectory:relativeToURL:", Object, .{ objc.NSString, objc.BOOL, ?NSURL } },
        .{ "initFileURLWithPath:relativeToURL:", Object, .{ objc.NSString, ?NSURL } },
        .{ "initWithDataRepresentation:relativeToURL:", Object, .{ NSData, ?NSURL } },
        .{ "initWithScheme:host:path:", Object, .{ objc.NSString, ?objc.NSString, objc.NSString } },
        .{ "initWithString:", Object, .{objc.NSString} },
        .{ "initWithString:encodingInvalidCharacters:", Object, .{ objc.NSString, objc.BOOL } },
        .{ "initWithString:relativeToURL:", Object, .{ objc.NSString, ?NSURL } },
        .{ "resourceValuesForKeys:fromBookmarkData:", ?*anyopaque, .{ void, NSData } },
        .{ "writeBookmarkData:toURL:options:error:", void, .{ NSData, NSURL, objc.NSInteger } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURL", class_methods, selector, args);
    }
};

pub const NSURLAuthenticationChallenge = struct {
    obj: Object,

    pub const methods = .{
        .{ "error", ?*anyopaque, .{} },
        .{ "failureResponse", ?NSURLResponse, .{} },
        .{ "previousFailureCount", objc.NSInteger, .{} },
        .{ "proposedCredential", ?NSURLCredential, .{} },
        .{ "protectionSpace", NSURLProtectionSpace, .{} },
        .{ "sender", ?URLAuthenticationChallengeSender, .{} },
    };

    pub fn send(self: NSURLAuthenticationChallenge, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithAuthenticationChallenge:sender:", Object, .{ NSURLAuthenticationChallenge, void } },
        .{ "initWithProtectionSpace:proposedCredential:previousFailureCount:failureResponse:error:sender:", Object, .{ NSURLProtectionSpace, ?NSURLCredential, objc.NSInteger, ?NSURLResponse, void, void } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLAuthenticationChallenge", class_methods, selector, args);
    }
};

pub const NSURLCache = struct {
    obj: Object,

    pub const methods = .{
        .{ "cachedResponseForRequest:", ?NSCachedURLResponse, .{?*anyopaque} },
        .{ "currentDiskUsage", objc.NSInteger, .{} },
        .{ "currentMemoryUsage", objc.NSInteger, .{} },
        .{ "diskCapacity", objc.NSInteger, .{} },
        .{ "getCachedResponseForDataTask:completionHandler:", void, .{ NSURLSessionDataTask, void } },
        .{ "memoryCapacity", objc.NSInteger, .{} },
        .{ "removeAllCachedResponses", void, .{} },
        .{ "removeCachedResponseForDataTask:", void, .{NSURLSessionDataTask} },
        .{ "removeCachedResponseForRequest:", void, .{?*anyopaque} },
        .{ "removeCachedResponsesSinceDate:", void, .{NSDate} },
        .{ "setDiskCapacity:", void, .{objc.NSInteger} },
        .{ "setMemoryCapacity:", void, .{objc.NSInteger} },
        .{ "storeCachedResponse:forDataTask:", void, .{ NSCachedURLResponse, NSURLSessionDataTask } },
        .{ "storeCachedResponse:forRequest:", void, .{ NSCachedURLResponse, ?*anyopaque } },
    };

    pub fn send(self: NSURLCache, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithMemoryCapacity:diskCapacity:diskPath:", Object, .{ objc.NSInteger, objc.NSInteger, ?objc.NSString } },
        .{ "setSharedURLCache:", void, .{NSURLCache} },
        .{ "sharedURLCache", NSURLCache, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLCache", class_methods, selector, args);
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

    pub fn send(self: NSURLComponents, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithString:", Object, .{objc.NSString} },
        .{ "initWithString:encodingInvalidCharacters:", Object, .{ objc.NSString, objc.BOOL } },
        .{ "initWithURL:resolvingAgainstBaseURL:", Object, .{ NSURL, objc.BOOL } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLComponents", class_methods, selector, args);
    }
};

pub const NSURLConnection = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancel", void, .{} },
        .{ "currentRequest", ?*anyopaque, .{} },
        .{ "originalRequest", ?*anyopaque, .{} },
        .{ "scheduleInRunLoop:forMode:", void, .{ NSRunLoop, objc.NSString } },
        .{ "setDelegateQueue:", void, .{?NSOperationQueue} },
        .{ "start", void, .{} },
        .{ "unscheduleFromRunLoop:forMode:", void, .{ NSRunLoop, objc.NSString } },
    };

    pub fn send(self: NSURLConnection, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "canHandleRequest:", objc.BOOL, .{?*anyopaque} },
        .{ "initWithRequest:delegate:", Object, .{ ?*anyopaque, ?Any } },
        .{ "initWithRequest:delegate:startImmediately:", Object, .{ ?*anyopaque, ?Any, objc.BOOL } },
        .{ "sendAsynchronousRequest:queue:completionHandler:", void, .{ ?*anyopaque, NSOperationQueue, void } },
        .{ "sendSynchronousRequest:returningResponse:error:", NSData, .{ ?*anyopaque, ?NSURLResponse } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLConnection", class_methods, selector, args);
    }
};

pub const NSURLCredential = struct {
    obj: Object,

    pub const methods = .{
        .{ "certificates", Object, .{} },
        .{ "hasPassword", objc.BOOL, .{} },
        .{ "identity", ?*anyopaque, .{} },
        .{ "password", ?objc.NSString, .{} },
        .{ "persistence", NSURLCredential.Persistence, .{} },
        .{ "user", ?objc.NSString, .{} },
    };

    pub fn send(self: NSURLCredential, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "credentialForTrust:", Object, .{?*anyopaque} },
        .{ "initWithIdentity:certificates:persistence:", Object, .{ ?*anyopaque, void, NSURLCredential.Persistence } },
        .{ "initWithTrust:", Object, .{?*anyopaque} },
        .{ "initWithUser:password:persistence:", Object, .{ objc.NSString, objc.NSString, NSURLCredential.Persistence } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLCredential", class_methods, selector, args);
    }

    pub const Persistence = enum(i64) {
        none = 0,
        forSession = 1,
        permanent = 2,
        synchronizable = 3,
    };
};

pub const NSURLCredentialStorage = struct {
    obj: Object,

    pub const methods = .{
        .{ "allCredentials", Object, .{} },
        .{ "credentialsForProtectionSpace:", ?*anyopaque, .{NSURLProtectionSpace} },
        .{ "defaultCredentialForProtectionSpace:", ?NSURLCredential, .{NSURLProtectionSpace} },
        .{ "getCredentialsForProtectionSpace:task:completionHandler:", void, .{ NSURLProtectionSpace, NSURLSessionTask, void } },
        .{ "getDefaultCredentialForProtectionSpace:task:completionHandler:", void, .{ NSURLProtectionSpace, NSURLSessionTask, void } },
        .{ "removeCredential:forProtectionSpace:", void, .{ NSURLCredential, NSURLProtectionSpace } },
        .{ "removeCredential:forProtectionSpace:options:", void, .{ NSURLCredential, NSURLProtectionSpace, ?Any } },
        .{ "removeCredential:forProtectionSpace:options:task:", void, .{ NSURLCredential, NSURLProtectionSpace, ?Any, NSURLSessionTask } },
        .{ "setCredential:forProtectionSpace:", void, .{ NSURLCredential, NSURLProtectionSpace } },
        .{ "setCredential:forProtectionSpace:task:", void, .{ NSURLCredential, NSURLProtectionSpace, NSURLSessionTask } },
        .{ "setDefaultCredential:forProtectionSpace:", void, .{ NSURLCredential, NSURLProtectionSpace } },
        .{ "setDefaultCredential:forProtectionSpace:task:", void, .{ NSURLCredential, NSURLProtectionSpace, NSURLSessionTask } },
    };

    pub fn send(self: NSURLCredentialStorage, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "sharedCredentialStorage", NSURLCredentialStorage, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLCredentialStorage", class_methods, selector, args);
    }
};

pub const NSURLDownload = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancel", void, .{} },
        .{ "deletesFileUponFailure", objc.BOOL, .{} },
        .{ "request", ?*anyopaque, .{} },
        .{ "resumeData", ?NSData, .{} },
        .{ "setDeletesFileUponFailure:", void, .{objc.BOOL} },
        .{ "setDestination:allowOverwrite:", void, .{ objc.NSString, objc.BOOL } },
    };

    pub fn send(self: NSURLDownload, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "canResumeDownloadDecodedWithEncodingMIMEType:", objc.BOOL, .{objc.NSString} },
        .{ "initWithRequest:delegate:", Object, .{ ?*anyopaque, void } },
        .{ "initWithResumeData:delegate:path:", Object, .{ NSData, void, objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLDownload", class_methods, selector, args);
    }
};

pub const NSURLProtectionSpace = struct {
    obj: Object,

    pub const methods = .{
        .{ "authenticationMethod", objc.NSString, .{} },
        .{ "distinguishedNames", ?*anyopaque, .{} },
        .{ "host", objc.NSString, .{} },
        .{ "isProxy", objc.BOOL, .{} },
        .{ "port", objc.NSInteger, .{} },
        .{ "protocol", ?objc.NSString, .{} },
        .{ "proxyType", ?objc.NSString, .{} },
        .{ "realm", ?objc.NSString, .{} },
        .{ "receivesCredentialSecurely", objc.BOOL, .{} },
        .{ "serverTrust", ?*anyopaque, .{} },
    };

    pub fn send(self: NSURLProtectionSpace, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithHost:port:protocol:realm:authenticationMethod:", Object, .{ objc.NSString, objc.NSInteger, ?objc.NSString, ?objc.NSString, ?objc.NSString } },
        .{ "initWithProxyHost:port:type:realm:authenticationMethod:", Object, .{ objc.NSString, objc.NSInteger, ?objc.NSString, ?objc.NSString, ?objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLProtectionSpace", class_methods, selector, args);
    }
};

pub const NSURLProtocol = struct {
    obj: Object,

    pub const methods = .{
        .{ "cachedResponse", ?NSCachedURLResponse, .{} },
        .{ "client", ?URLProtocolClient, .{} },
        .{ "request", ?*anyopaque, .{} },
        .{ "startLoading", void, .{} },
        .{ "stopLoading", void, .{} },
        .{ "task", ?NSURLSessionTask, .{} },
    };

    pub fn send(self: NSURLProtocol, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "canInitWithRequest:", objc.BOOL, .{?*anyopaque} },
        .{ "canInitWithTask:", objc.BOOL, .{NSURLSessionTask} },
        .{ "canonicalRequestForRequest:", ?*anyopaque, .{?*anyopaque} },
        .{ "initWithRequest:cachedResponse:client:", Object, .{ ?*anyopaque, ?NSCachedURLResponse, void } },
        .{ "initWithTask:cachedResponse:client:", Object, .{ NSURLSessionTask, ?NSCachedURLResponse, void } },
        .{ "propertyForKey:inRequest:", ?Any, .{ objc.NSString, ?*anyopaque } },
        .{ "registerClass:", objc.BOOL, .{AnyClass} },
        .{ "removePropertyForKey:inRequest:", void, .{ objc.NSString, NSMutableURLRequest } },
        .{ "requestIsCacheEquivalent:toRequest:", objc.BOOL, .{ ?*anyopaque, ?*anyopaque } },
        .{ "setProperty:forKey:inRequest:", void, .{ Any, objc.NSString, NSMutableURLRequest } },
        .{ "unregisterClass:", void, .{AnyClass} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLProtocol", class_methods, selector, args);
    }
};

pub const NSURLQueryItem = struct {
    obj: Object,

    pub const methods = .{
        .{ "name", objc.NSString, .{} },
        .{ "value", ?objc.NSString, .{} },
    };

    pub fn send(self: NSURLQueryItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithName:value:", Object, .{ objc.NSString, ?objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLQueryItem", class_methods, selector, args);
    }
};

pub const NSURLRequest = struct {
    obj: Object,

    pub const methods = .{
        .{ "HTTPBody", ?NSData, .{} },
        .{ "HTTPBodyStream", ?NSInputStream, .{} },
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
        .{ "mainDocumentURL", ?NSURL, .{} },
        .{ "networkServiceType", NSURLRequest.NetworkServiceType, .{} },
        .{ "requiresDNSSECValidation", objc.BOOL, .{} },
        .{ "timeoutInterval", TimeInterval, .{} },
        .{ "valueForHTTPHeaderField:", ?objc.NSString, .{objc.NSString} },
    };

    pub fn send(self: NSURLRequest, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithURL:", Object, .{NSURL} },
        .{ "initWithURL:cachePolicy:timeoutInterval:", Object, .{ NSURL, NSURLRequest.CachePolicy, TimeInterval } },
        .{ "supportsSecureCoding", objc.BOOL, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLRequest", class_methods, selector, args);
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

pub const NSURLResponse = struct {
    obj: Object,

    pub const methods = .{
        .{ "MIMEType", ?objc.NSString, .{} },
        .{ "URL", ?NSURL, .{} },
        .{ "expectedContentLength", i64, .{} },
        .{ "suggestedFilename", ?objc.NSString, .{} },
        .{ "textEncodingName", ?objc.NSString, .{} },
    };

    pub fn send(self: NSURLResponse, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithURL:MIMEType:expectedContentLength:textEncodingName:", Object, .{ NSURL, ?objc.NSString, objc.NSInteger, ?objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLResponse", class_methods, selector, args);
    }
};

pub const NSURLSession = struct {
    obj: Object,

    pub const methods = .{
        .{ "configuration", NSURLSessionConfiguration, .{} },
        .{ "dataTaskWithRequest:", NSURLSessionDataTask, .{?*anyopaque} },
        .{ "dataTaskWithRequest:completionHandler:", NSURLSessionDataTask, .{ ?*anyopaque, void } },
        .{ "dataTaskWithURL:", NSURLSessionDataTask, .{NSURL} },
        .{ "dataTaskWithURL:completionHandler:", NSURLSessionDataTask, .{ NSURL, void } },
        .{ "delegate", ?URLSessionDelegate, .{} },
        .{ "delegateQueue", NSOperationQueue, .{} },
        .{ "downloadTaskWithRequest:", NSURLSessionDownloadTask, .{?*anyopaque} },
        .{ "downloadTaskWithRequest:completionHandler:", NSURLSessionDownloadTask, .{ ?*anyopaque, void } },
        .{ "downloadTaskWithResumeData:", NSURLSessionDownloadTask, .{NSData} },
        .{ "downloadTaskWithResumeData:completionHandler:", NSURLSessionDownloadTask, .{ NSData, void } },
        .{ "downloadTaskWithURL:", NSURLSessionDownloadTask, .{NSURL} },
        .{ "downloadTaskWithURL:completionHandler:", NSURLSessionDownloadTask, .{ NSURL, void } },
        .{ "finishTasksAndInvalidate", void, .{} },
        .{ "flushWithCompletionHandler:", void, .{void} },
        .{ "getAllTasksWithCompletionHandler:", void, .{void} },
        .{ "getTasksWithCompletionHandler:", void, .{void} },
        .{ "invalidateAndCancel", void, .{} },
        .{ "resetWithCompletionHandler:", void, .{void} },
        .{ "sessionDescription", ?objc.NSString, .{} },
        .{ "setSessionDescription:", void, .{?objc.NSString} },
        .{ "streamTaskWithHostName:port:", NSURLSessionStreamTask, .{ objc.NSString, objc.NSInteger } },
        .{ "streamTaskWithNetService:", NSURLSessionStreamTask, .{NSNetService} },
        .{ "uploadTaskWithRequest:fromData:", NSURLSessionUploadTask, .{ ?*anyopaque, NSData } },
        .{ "uploadTaskWithRequest:fromData:completionHandler:", NSURLSessionUploadTask, .{ ?*anyopaque, ?NSData, void } },
        .{ "uploadTaskWithRequest:fromFile:", NSURLSessionUploadTask, .{ ?*anyopaque, NSURL } },
        .{ "uploadTaskWithRequest:fromFile:completionHandler:", NSURLSessionUploadTask, .{ ?*anyopaque, NSURL, void } },
        .{ "uploadTaskWithResumeData:", NSURLSessionUploadTask, .{NSData} },
        .{ "uploadTaskWithResumeData:completionHandler:", NSURLSessionUploadTask, .{ NSData, void } },
        .{ "uploadTaskWithStreamedRequest:", NSURLSessionUploadTask, .{?*anyopaque} },
        .{ "webSocketTaskWithRequest:", NSURLSessionWebSocketTask, .{?*anyopaque} },
        .{ "webSocketTaskWithURL:", NSURLSessionWebSocketTask, .{NSURL} },
        .{ "webSocketTaskWithURL:protocols:", NSURLSessionWebSocketTask, .{ NSURL, void } },
    };

    pub fn send(self: NSURLSession, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "new", ?*anyopaque, .{} },
        .{ "sessionWithConfiguration:", Object, .{NSURLSessionConfiguration} },
        .{ "sessionWithConfiguration:delegate:delegateQueue:", Object, .{ NSURLSessionConfiguration, void, ?NSOperationQueue } },
        .{ "sharedSession", NSURLSession, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLSession", class_methods, selector, args);
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

pub const NSURLSessionConfiguration = struct {
    obj: Object,

    pub const methods = .{
        .{ "HTTPAdditionalHeaders", ?*anyopaque, .{} },
        .{ "HTTPCookieAcceptPolicy", NSHTTPCookie.AcceptPolicy, .{} },
        .{ "HTTPCookieStorage", ?NSHTTPCookieStorage, .{} },
        .{ "HTTPMaximumConnectionsPerHost", objc.NSInteger, .{} },
        .{ "HTTPShouldSetCookies", objc.BOOL, .{} },
        .{ "HTTPShouldUsePipelining", objc.BOOL, .{} },
        .{ "TLSMaximumSupportedProtocol", objc.NSInteger, .{} },
        .{ "TLSMaximumSupportedProtocolVersion", objc.NSInteger, .{} },
        .{ "TLSMinimumSupportedProtocol", objc.NSInteger, .{} },
        .{ "TLSMinimumSupportedProtocolVersion", objc.NSInteger, .{} },
        .{ "URLCache", ?NSURLCache, .{} },
        .{ "URLCredentialStorage", ?NSURLCredentialStorage, .{} },
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
        .{ "setHTTPCookieAcceptPolicy:", void, .{NSHTTPCookie.AcceptPolicy} },
        .{ "setHTTPCookieStorage:", void, .{?NSHTTPCookieStorage} },
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
        .{ "setURLCache:", void, .{?NSURLCache} },
        .{ "setURLCredentialStorage:", void, .{?NSURLCredentialStorage} },
        .{ "setUsesClassicLoadingMode:", void, .{objc.BOOL} },
        .{ "setWaitsForConnectivity:", void, .{objc.BOOL} },
        .{ "sharedContainerIdentifier", ?objc.NSString, .{} },
        .{ "shouldUseExtendedBackgroundIdleMode", objc.BOOL, .{} },
        .{ "timeoutIntervalForRequest", TimeInterval, .{} },
        .{ "timeoutIntervalForResource", TimeInterval, .{} },
        .{ "usesClassicLoadingMode", objc.BOOL, .{} },
        .{ "waitsForConnectivity", objc.BOOL, .{} },
    };

    pub fn send(self: NSURLSessionConfiguration, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "backgroundSessionConfiguration:", NSURLSessionConfiguration, .{objc.NSString} },
        .{ "backgroundSessionConfigurationWithIdentifier:", NSURLSessionConfiguration, .{objc.NSString} },
        .{ "defaultSessionConfiguration", NSURLSessionConfiguration, .{} },
        .{ "ephemeralSessionConfiguration", NSURLSessionConfiguration, .{} },
        .{ "init", Object, .{} },
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLSessionConfiguration", class_methods, selector, args);
    }
};

pub const NSURLSessionDataTask = struct {
    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLSessionDataTask", class_methods, selector, args);
    }
};

pub const NSURLSessionDownloadTask = struct {
    obj: Object,

    pub const Super = NSURLSessionTask;
    pub const methods = .{
        .{ "cancelByProducingResumeData:", void, .{void} },
    };

    pub fn send(self: NSURLSessionDownloadTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLSessionDownloadTask", class_methods, selector, args);
    }
};

pub const NSURLSessionStreamTask = struct {
    obj: Object,

    pub const Super = NSURLSessionTask;
    pub const methods = .{
        .{ "captureStreams", void, .{} },
        .{ "closeRead", void, .{} },
        .{ "closeWrite", void, .{} },
        .{ "readDataOfMinLength:maxLength:timeout:completionHandler:", void, .{ objc.NSInteger, objc.NSInteger, TimeInterval, void } },
        .{ "startSecureConnection", void, .{} },
        .{ "stopSecureConnection", void, .{} },
        .{ "writeData:timeout:completionHandler:", void, .{ NSData, TimeInterval, void } },
    };

    pub fn send(self: NSURLSessionStreamTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLSessionStreamTask", class_methods, selector, args);
    }
};

pub const NSURLSessionTask = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancel", void, .{} },
        .{ "countOfBytesClientExpectsToReceive", i64, .{} },
        .{ "countOfBytesClientExpectsToSend", i64, .{} },
        .{ "countOfBytesExpectedToReceive", i64, .{} },
        .{ "countOfBytesExpectedToSend", i64, .{} },
        .{ "countOfBytesReceived", i64, .{} },
        .{ "countOfBytesSent", i64, .{} },
        .{ "currentRequest", ?*anyopaque, .{} },
        .{ "delegate", ?URLSessionTaskDelegate, .{} },
        .{ "earliestBeginDate", ?NSDate, .{} },
        .{ "error", ?*anyopaque, .{} },
        .{ "originalRequest", ?*anyopaque, .{} },
        .{ "prefersIncrementalDelivery", objc.BOOL, .{} },
        .{ "priority", f32, .{} },
        .{ "progress", NSProgress, .{} },
        .{ "response", ?NSURLResponse, .{} },
        .{ "resume", void, .{} },
        .{ "setCountOfBytesClientExpectsToReceive:", void, .{i64} },
        .{ "setCountOfBytesClientExpectsToSend:", void, .{i64} },
        .{ "setDelegate:", void, .{?URLSessionTaskDelegate} },
        .{ "setEarliestBeginDate:", void, .{?NSDate} },
        .{ "setPrefersIncrementalDelivery:", void, .{objc.BOOL} },
        .{ "setPriority:", void, .{f32} },
        .{ "setTaskDescription:", void, .{?objc.NSString} },
        .{ "state", NSURLSessionTask.State, .{} },
        .{ "suspend", void, .{} },
        .{ "taskDescription", ?objc.NSString, .{} },
        .{ "taskIdentifier", objc.NSInteger, .{} },
    };

    pub fn send(self: NSURLSessionTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLSessionTask", class_methods, selector, args);
    }

    pub const State = enum(i64) {
        running = 0,
        suspended = 1,
        canceling = 2,
        completed = 3,
    };
};

pub const NSURLSessionTaskMetrics = struct {
    obj: Object,

    pub const methods = .{
        .{ "redirectCount", objc.NSInteger, .{} },
        .{ "taskInterval", ?*anyopaque, .{} },
        .{ "transactionMetrics", Object, .{} },
    };

    pub fn send(self: NSURLSessionTaskMetrics, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLSessionTaskMetrics", class_methods, selector, args);
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

pub const NSURLSessionTaskTransactionMetrics = struct {
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
        .{ "domainResolutionProtocol", NSURLSessionTaskMetrics.DomainResolutionProtocol, .{} },
        .{ "expensive", objc.BOOL, .{} },
        .{ "fetchStartDate", ?NSDate, .{} },
        .{ "localAddress", ?objc.NSString, .{} },
        .{ "multipath", objc.BOOL, .{} },
        .{ "networkProtocolName", ?objc.NSString, .{} },
        .{ "proxyConnection", objc.BOOL, .{} },
        .{ "remoteAddress", ?objc.NSString, .{} },
        .{ "request", ?*anyopaque, .{} },
        .{ "requestEndDate", ?NSDate, .{} },
        .{ "requestStartDate", ?NSDate, .{} },
        .{ "resourceFetchType", NSURLSessionTaskMetrics.ResourceFetchType, .{} },
        .{ "response", ?NSURLResponse, .{} },
        .{ "responseEndDate", ?NSDate, .{} },
        .{ "responseStartDate", ?NSDate, .{} },
        .{ "reusedConnection", objc.BOOL, .{} },
        .{ "secureConnectionEndDate", ?NSDate, .{} },
        .{ "secureConnectionStartDate", ?NSDate, .{} },
    };

    pub fn send(self: NSURLSessionTaskTransactionMetrics, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLSessionTaskTransactionMetrics", class_methods, selector, args);
    }
};

pub const NSURLSessionUploadTask = struct {
    obj: Object,

    pub const methods = .{
        .{ "cancelByProducingResumeData:", void, .{void} },
    };

    pub fn send(self: NSURLSessionUploadTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "new", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSURLSessionUploadTask", class_methods, selector, args);
    }
};

pub const NSURLSessionWebSocketTask = struct {
    obj: Object,

    pub const Super = NSURLSessionTask;
    pub const methods = .{
        .{ "cancelWithCloseCode:reason:", void, .{ NSURLSessionWebSocketTask.CloseCode, ?NSData } },
        .{ "closeCode", NSURLSessionWebSocketTask.CloseCode, .{} },
        .{ "closeReason", ?NSData, .{} },
        .{ "maximumMessageSize", objc.NSInteger, .{} },
        .{ "sendPingWithPongReceiveHandler:", void, .{void} },
        .{ "setMaximumMessageSize:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSURLSessionWebSocketTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
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
        .{ "compare:", ComparisonResult, .{?*anyopaque} },
        .{ "getUUIDBytes:", void, .{u8} },
    };

    pub fn send(self: NSUUID, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithUUIDBytes:", Object, .{u8} },
        .{ "initWithUUIDString:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUUID", class_methods, selector, args);
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
        .{ "setArray:forKey:", void, .{ void, objc.NSString } },
        .{ "setBool:forKey:", void, .{ objc.BOOL, objc.NSString } },
        .{ "setData:forKey:", void, .{ ?NSData, objc.NSString } },
        .{ "setDictionary:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "setDouble:forKey:", void, .{ f64, objc.NSString } },
        .{ "setLongLong:forKey:", void, .{ i64, objc.NSString } },
        .{ "setObject:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "setString:forKey:", void, .{ ?objc.NSString, objc.NSString } },
        .{ "stringForKey:", ?objc.NSString, .{objc.NSString} },
        .{ "synchronize", objc.BOOL, .{} },
    };

    pub fn send(self: NSUbiquitousKeyValueStore, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultStore", NSUbiquitousKeyValueStore, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUbiquitousKeyValueStore", class_methods, selector, args);
    }
};

pub const NSUnarchiver = struct {
    obj: Object,

    pub const Super = NSCoder;
    pub const methods = .{
        .{ "atEnd", objc.BOOL, .{} },
        .{ "classNameDecodedForArchiveClassName:", objc.NSString, .{objc.NSString} },
        .{ "decodeClassName:asClassName:", void, .{ objc.NSString, objc.NSString } },
        .{ "replaceObject:withObject:", void, .{ Any, Any } },
        .{ "systemVersion", u32, .{} },
    };

    pub fn send(self: NSUnarchiver, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "classNameDecodedForArchiveClassName:", objc.NSString, .{objc.NSString} },
        .{ "decodeClassName:asClassName:", void, .{ objc.NSString, objc.NSString } },
        .{ "initForReadingWithData:", Object, .{NSData} },
        .{ "unarchiveObjectWithData:", ?Any, .{NSData} },
        .{ "unarchiveObjectWithFile:", ?Any, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnarchiver", class_methods, selector, args);
    }
};

pub const NSUndoManager = struct {
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

    pub fn send(self: NSUndoManager, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSUniqueIDSpecifier = struct {
    obj: Object,

    pub const Super = NSScriptObjectSpecifier;
    pub const methods = .{
        .{ "setUniqueID:", void, .{Any} },
        .{ "uniqueID", Any, .{} },
    };

    pub fn send(self: NSUniqueIDSpecifier, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:uniqueID:", Object, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString, Any } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUniqueIDSpecifier", class_methods, selector, args);
    }
};

pub const NSUnit = struct {
    obj: Object,

    pub const methods = .{
        .{ "symbol", objc.NSString, .{} },
    };

    pub fn send(self: NSUnit, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithSymbol:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnit", class_methods, selector, args);
    }
};

pub const NSUnitAcceleration = struct {
    pub const class_methods = .{
        .{ "gravity", NSUnitAcceleration, .{} },
        .{ "metersPerSecondSquared", NSUnitAcceleration, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitAcceleration", class_methods, selector, args);
    }
};

pub const NSUnitAngle = struct {
    pub const class_methods = .{
        .{ "arcMinutes", NSUnitAngle, .{} },
        .{ "arcSeconds", NSUnitAngle, .{} },
        .{ "degrees", NSUnitAngle, .{} },
        .{ "gradians", NSUnitAngle, .{} },
        .{ "radians", NSUnitAngle, .{} },
        .{ "revolutions", NSUnitAngle, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitAngle", class_methods, selector, args);
    }
};

pub const NSUnitArea = struct {
    pub const class_methods = .{
        .{ "acres", NSUnitArea, .{} },
        .{ "ares", NSUnitArea, .{} },
        .{ "hectares", NSUnitArea, .{} },
        .{ "squareCentimeters", NSUnitArea, .{} },
        .{ "squareFeet", NSUnitArea, .{} },
        .{ "squareInches", NSUnitArea, .{} },
        .{ "squareKilometers", NSUnitArea, .{} },
        .{ "squareMegameters", NSUnitArea, .{} },
        .{ "squareMeters", NSUnitArea, .{} },
        .{ "squareMicrometers", NSUnitArea, .{} },
        .{ "squareMiles", NSUnitArea, .{} },
        .{ "squareMillimeters", NSUnitArea, .{} },
        .{ "squareNanometers", NSUnitArea, .{} },
        .{ "squareYards", NSUnitArea, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitArea", class_methods, selector, args);
    }
};

pub const NSUnitConcentrationMass = struct {
    pub const class_methods = .{
        .{ "gramsPerLiter", NSUnitConcentrationMass, .{} },
        .{ "milligramsPerDeciliter", NSUnitConcentrationMass, .{} },
        .{ "millimolesPerLiterWithGramsPerMole:", NSUnitConcentrationMass, .{f64} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitConcentrationMass", class_methods, selector, args);
    }
};

pub const NSUnitConverter = struct {
    obj: Object,

    pub const methods = .{
        .{ "baseUnitValueFromValue:", f64, .{f64} },
        .{ "valueFromBaseUnitValue:", f64, .{f64} },
    };

    pub fn send(self: NSUnitConverter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSUnitConverterLinear = struct {
    obj: Object,

    pub const Super = NSUnitConverter;
    pub const methods = .{
        .{ "coefficient", f64, .{} },
        .{ "constant", f64, .{} },
    };

    pub fn send(self: NSUnitConverterLinear, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithCoefficient:", Object, .{f64} },
        .{ "initWithCoefficient:constant:", Object, .{ f64, f64 } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitConverterLinear", class_methods, selector, args);
    }
};

pub const NSUnitDispersion = struct {
    pub const class_methods = .{
        .{ "partsPerMillion", NSUnitDispersion, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitDispersion", class_methods, selector, args);
    }
};

pub const NSUnitDuration = struct {
    pub const class_methods = .{
        .{ "hours", NSUnitDuration, .{} },
        .{ "microseconds", NSUnitDuration, .{} },
        .{ "milliseconds", NSUnitDuration, .{} },
        .{ "minutes", NSUnitDuration, .{} },
        .{ "nanoseconds", NSUnitDuration, .{} },
        .{ "picoseconds", NSUnitDuration, .{} },
        .{ "seconds", NSUnitDuration, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitDuration", class_methods, selector, args);
    }
};

pub const NSUnitElectricCharge = struct {
    pub const class_methods = .{
        .{ "ampereHours", NSUnitElectricCharge, .{} },
        .{ "coulombs", NSUnitElectricCharge, .{} },
        .{ "kiloampereHours", NSUnitElectricCharge, .{} },
        .{ "megaampereHours", NSUnitElectricCharge, .{} },
        .{ "microampereHours", NSUnitElectricCharge, .{} },
        .{ "milliampereHours", NSUnitElectricCharge, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitElectricCharge", class_methods, selector, args);
    }
};

pub const NSUnitElectricCurrent = struct {
    pub const class_methods = .{
        .{ "amperes", NSUnitElectricCurrent, .{} },
        .{ "kiloamperes", NSUnitElectricCurrent, .{} },
        .{ "megaamperes", NSUnitElectricCurrent, .{} },
        .{ "microamperes", NSUnitElectricCurrent, .{} },
        .{ "milliamperes", NSUnitElectricCurrent, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitElectricCurrent", class_methods, selector, args);
    }
};

pub const NSUnitElectricPotentialDifference = struct {
    pub const class_methods = .{
        .{ "kilovolts", NSUnitElectricPotentialDifference, .{} },
        .{ "megavolts", NSUnitElectricPotentialDifference, .{} },
        .{ "microvolts", NSUnitElectricPotentialDifference, .{} },
        .{ "millivolts", NSUnitElectricPotentialDifference, .{} },
        .{ "volts", NSUnitElectricPotentialDifference, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitElectricPotentialDifference", class_methods, selector, args);
    }
};

pub const NSUnitElectricResistance = struct {
    pub const class_methods = .{
        .{ "kiloohms", NSUnitElectricResistance, .{} },
        .{ "megaohms", NSUnitElectricResistance, .{} },
        .{ "microohms", NSUnitElectricResistance, .{} },
        .{ "milliohms", NSUnitElectricResistance, .{} },
        .{ "ohms", NSUnitElectricResistance, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitElectricResistance", class_methods, selector, args);
    }
};

pub const NSUnitEnergy = struct {
    pub const class_methods = .{
        .{ "calories", NSUnitEnergy, .{} },
        .{ "joules", NSUnitEnergy, .{} },
        .{ "kilocalories", NSUnitEnergy, .{} },
        .{ "kilojoules", NSUnitEnergy, .{} },
        .{ "kilowattHours", NSUnitEnergy, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitEnergy", class_methods, selector, args);
    }
};

pub const NSUnitFrequency = struct {
    pub const class_methods = .{
        .{ "framesPerSecond", NSUnitFrequency, .{} },
        .{ "gigahertz", NSUnitFrequency, .{} },
        .{ "hertz", NSUnitFrequency, .{} },
        .{ "kilohertz", NSUnitFrequency, .{} },
        .{ "megahertz", NSUnitFrequency, .{} },
        .{ "microhertz", NSUnitFrequency, .{} },
        .{ "millihertz", NSUnitFrequency, .{} },
        .{ "nanohertz", NSUnitFrequency, .{} },
        .{ "terahertz", NSUnitFrequency, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitFrequency", class_methods, selector, args);
    }
};

pub const NSUnitFuelEfficiency = struct {
    pub const class_methods = .{
        .{ "litersPer100Kilometers", NSUnitFuelEfficiency, .{} },
        .{ "milesPerGallon", NSUnitFuelEfficiency, .{} },
        .{ "milesPerImperialGallon", NSUnitFuelEfficiency, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitFuelEfficiency", class_methods, selector, args);
    }
};

pub const NSUnitIlluminance = struct {
    pub const class_methods = .{
        .{ "lux", NSUnitIlluminance, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitIlluminance", class_methods, selector, args);
    }
};

pub const NSUnitInformationStorage = struct {
    pub const class_methods = .{
        .{ "bits", NSUnitInformationStorage, .{} },
        .{ "bytes", NSUnitInformationStorage, .{} },
        .{ "exabits", NSUnitInformationStorage, .{} },
        .{ "exabytes", NSUnitInformationStorage, .{} },
        .{ "exbibits", NSUnitInformationStorage, .{} },
        .{ "exbibytes", NSUnitInformationStorage, .{} },
        .{ "gibibits", NSUnitInformationStorage, .{} },
        .{ "gibibytes", NSUnitInformationStorage, .{} },
        .{ "gigabits", NSUnitInformationStorage, .{} },
        .{ "gigabytes", NSUnitInformationStorage, .{} },
        .{ "kibibits", NSUnitInformationStorage, .{} },
        .{ "kibibytes", NSUnitInformationStorage, .{} },
        .{ "kilobits", NSUnitInformationStorage, .{} },
        .{ "kilobytes", NSUnitInformationStorage, .{} },
        .{ "mebibits", NSUnitInformationStorage, .{} },
        .{ "mebibytes", NSUnitInformationStorage, .{} },
        .{ "megabits", NSUnitInformationStorage, .{} },
        .{ "megabytes", NSUnitInformationStorage, .{} },
        .{ "nibbles", NSUnitInformationStorage, .{} },
        .{ "pebibits", NSUnitInformationStorage, .{} },
        .{ "pebibytes", NSUnitInformationStorage, .{} },
        .{ "petabits", NSUnitInformationStorage, .{} },
        .{ "petabytes", NSUnitInformationStorage, .{} },
        .{ "tebibits", NSUnitInformationStorage, .{} },
        .{ "tebibytes", NSUnitInformationStorage, .{} },
        .{ "terabits", NSUnitInformationStorage, .{} },
        .{ "terabytes", NSUnitInformationStorage, .{} },
        .{ "yobibits", NSUnitInformationStorage, .{} },
        .{ "yobibytes", NSUnitInformationStorage, .{} },
        .{ "yottabits", NSUnitInformationStorage, .{} },
        .{ "yottabytes", NSUnitInformationStorage, .{} },
        .{ "zebibits", NSUnitInformationStorage, .{} },
        .{ "zebibytes", NSUnitInformationStorage, .{} },
        .{ "zettabits", NSUnitInformationStorage, .{} },
        .{ "zettabytes", NSUnitInformationStorage, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitInformationStorage", class_methods, selector, args);
    }
};

pub const NSUnitLength = struct {
    pub const class_methods = .{
        .{ "astronomicalUnits", NSUnitLength, .{} },
        .{ "centimeters", NSUnitLength, .{} },
        .{ "decameters", NSUnitLength, .{} },
        .{ "decimeters", NSUnitLength, .{} },
        .{ "fathoms", NSUnitLength, .{} },
        .{ "feet", NSUnitLength, .{} },
        .{ "furlongs", NSUnitLength, .{} },
        .{ "hectometers", NSUnitLength, .{} },
        .{ "inches", NSUnitLength, .{} },
        .{ "kilometers", NSUnitLength, .{} },
        .{ "lightyears", NSUnitLength, .{} },
        .{ "megameters", NSUnitLength, .{} },
        .{ "meters", NSUnitLength, .{} },
        .{ "micrometers", NSUnitLength, .{} },
        .{ "miles", NSUnitLength, .{} },
        .{ "millimeters", NSUnitLength, .{} },
        .{ "nanometers", NSUnitLength, .{} },
        .{ "nauticalMiles", NSUnitLength, .{} },
        .{ "parsecs", NSUnitLength, .{} },
        .{ "picometers", NSUnitLength, .{} },
        .{ "scandinavianMiles", NSUnitLength, .{} },
        .{ "yards", NSUnitLength, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitLength", class_methods, selector, args);
    }
};

pub const NSUnitMass = struct {
    pub const class_methods = .{
        .{ "carats", NSUnitMass, .{} },
        .{ "centigrams", NSUnitMass, .{} },
        .{ "decigrams", NSUnitMass, .{} },
        .{ "grams", NSUnitMass, .{} },
        .{ "kilograms", NSUnitMass, .{} },
        .{ "metricTons", NSUnitMass, .{} },
        .{ "micrograms", NSUnitMass, .{} },
        .{ "milligrams", NSUnitMass, .{} },
        .{ "nanograms", NSUnitMass, .{} },
        .{ "ounces", NSUnitMass, .{} },
        .{ "ouncesTroy", NSUnitMass, .{} },
        .{ "picograms", NSUnitMass, .{} },
        .{ "poundsMass", NSUnitMass, .{} },
        .{ "shortTons", NSUnitMass, .{} },
        .{ "slugs", NSUnitMass, .{} },
        .{ "stones", NSUnitMass, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitMass", class_methods, selector, args);
    }
};

pub const NSUnitPower = struct {
    pub const class_methods = .{
        .{ "femtowatts", NSUnitPower, .{} },
        .{ "gigawatts", NSUnitPower, .{} },
        .{ "horsepower", NSUnitPower, .{} },
        .{ "kilowatts", NSUnitPower, .{} },
        .{ "megawatts", NSUnitPower, .{} },
        .{ "microwatts", NSUnitPower, .{} },
        .{ "milliwatts", NSUnitPower, .{} },
        .{ "nanowatts", NSUnitPower, .{} },
        .{ "picowatts", NSUnitPower, .{} },
        .{ "terawatts", NSUnitPower, .{} },
        .{ "watts", NSUnitPower, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitPower", class_methods, selector, args);
    }
};

pub const NSUnitPressure = struct {
    pub const class_methods = .{
        .{ "bars", NSUnitPressure, .{} },
        .{ "gigapascals", NSUnitPressure, .{} },
        .{ "hectopascals", NSUnitPressure, .{} },
        .{ "inchesOfMercury", NSUnitPressure, .{} },
        .{ "kilopascals", NSUnitPressure, .{} },
        .{ "megapascals", NSUnitPressure, .{} },
        .{ "millibars", NSUnitPressure, .{} },
        .{ "millimetersOfMercury", NSUnitPressure, .{} },
        .{ "newtonsPerMetersSquared", NSUnitPressure, .{} },
        .{ "poundsForcePerSquareInch", NSUnitPressure, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitPressure", class_methods, selector, args);
    }
};

pub const NSUnitSpeed = struct {
    pub const class_methods = .{
        .{ "kilometersPerHour", NSUnitSpeed, .{} },
        .{ "knots", NSUnitSpeed, .{} },
        .{ "metersPerSecond", NSUnitSpeed, .{} },
        .{ "milesPerHour", NSUnitSpeed, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitSpeed", class_methods, selector, args);
    }
};

pub const NSUnitTemperature = struct {
    pub const class_methods = .{
        .{ "celsius", NSUnitTemperature, .{} },
        .{ "fahrenheit", NSUnitTemperature, .{} },
        .{ "kelvin", NSUnitTemperature, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitTemperature", class_methods, selector, args);
    }
};

pub const NSUnitVolume = struct {
    pub const class_methods = .{
        .{ "acreFeet", NSUnitVolume, .{} },
        .{ "bushels", NSUnitVolume, .{} },
        .{ "centiliters", NSUnitVolume, .{} },
        .{ "cubicCentimeters", NSUnitVolume, .{} },
        .{ "cubicDecimeters", NSUnitVolume, .{} },
        .{ "cubicFeet", NSUnitVolume, .{} },
        .{ "cubicInches", NSUnitVolume, .{} },
        .{ "cubicKilometers", NSUnitVolume, .{} },
        .{ "cubicMeters", NSUnitVolume, .{} },
        .{ "cubicMiles", NSUnitVolume, .{} },
        .{ "cubicMillimeters", NSUnitVolume, .{} },
        .{ "cubicYards", NSUnitVolume, .{} },
        .{ "cups", NSUnitVolume, .{} },
        .{ "deciliters", NSUnitVolume, .{} },
        .{ "fluidOunces", NSUnitVolume, .{} },
        .{ "gallons", NSUnitVolume, .{} },
        .{ "imperialFluidOunces", NSUnitVolume, .{} },
        .{ "imperialGallons", NSUnitVolume, .{} },
        .{ "imperialPints", NSUnitVolume, .{} },
        .{ "imperialQuarts", NSUnitVolume, .{} },
        .{ "imperialTablespoons", NSUnitVolume, .{} },
        .{ "imperialTeaspoons", NSUnitVolume, .{} },
        .{ "kiloliters", NSUnitVolume, .{} },
        .{ "liters", NSUnitVolume, .{} },
        .{ "megaliters", NSUnitVolume, .{} },
        .{ "metricCups", NSUnitVolume, .{} },
        .{ "milliliters", NSUnitVolume, .{} },
        .{ "pints", NSUnitVolume, .{} },
        .{ "quarts", NSUnitVolume, .{} },
        .{ "tablespoons", NSUnitVolume, .{} },
        .{ "teaspoons", NSUnitVolume, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUnitVolume", class_methods, selector, args);
    }
};

pub const NSUserActivity = struct {
    obj: Object,

    pub const methods = .{
        .{ "activityType", objc.NSString, .{} },
        .{ "addUserInfoEntriesFromDictionary:", void, .{Any} },
        .{ "becomeCurrent", void, .{} },
        .{ "delegate", ?NSUserActivityDelegate, .{} },
        .{ "eligibleForHandoff", objc.BOOL, .{} },
        .{ "eligibleForPublicIndexing", objc.BOOL, .{} },
        .{ "eligibleForSearch", objc.BOOL, .{} },
        .{ "expirationDate", ?NSDate, .{} },
        .{ "getContinuationStreamsWithCompletionHandler:", void, .{void} },
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

    pub fn send(self: NSUserActivity, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "deleteAllSavedUserActivitiesWithCompletionHandler:", void, .{void} },
        .{ "deleteSavedUserActivitiesWithPersistentIdentifiers:completionHandler:", void, .{ void, void } },
        .{ "init", Object, .{} },
        .{ "initWithActivityType:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUserActivity", class_methods, selector, args);
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
};

pub const NSUserAutomatorTask = struct {
    obj: Object,

    pub const Super = NSUserScriptTask;
    pub const methods = .{
        .{ "executeWithInput:completionHandler:", void, .{ void, void } },
        .{ "setVariables:", void, .{?*anyopaque} },
        .{ "variables", ?*anyopaque, .{} },
    };

    pub fn send(self: NSUserAutomatorTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSUserDefaults = struct {
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
        .{ "integerForKey:", objc.NSInteger, .{objc.NSString} },
        .{ "objectForKey:", ?Any, .{objc.NSString} },
        .{ "objectIsForcedForKey:", objc.BOOL, .{objc.NSString} },
        .{ "objectIsForcedForKey:inDomain:", objc.BOOL, .{ objc.NSString, objc.NSString } },
        .{ "persistentDomainForName:", ?*anyopaque, .{objc.NSString} },
        .{ "registerDefaults:", void, .{Any} },
        .{ "removeObjectForKey:", void, .{objc.NSString} },
        .{ "removePersistentDomainForName:", void, .{objc.NSString} },
        .{ "removeSuiteNamed:", void, .{objc.NSString} },
        .{ "removeVolatileDomainForName:", void, .{objc.NSString} },
        .{ "setBool:forKey:", void, .{ objc.BOOL, objc.NSString } },
        .{ "setDouble:forKey:", void, .{ f64, objc.NSString } },
        .{ "setFloat:forKey:", void, .{ f32, objc.NSString } },
        .{ "setInteger:forKey:", void, .{ objc.NSInteger, objc.NSString } },
        .{ "setObject:forKey:", void, .{ ?Any, objc.NSString } },
        .{ "setPersistentDomain:forName:", void, .{ Any, objc.NSString } },
        .{ "setURL:forKey:", void, .{ ?NSURL, objc.NSString } },
        .{ "setVolatileDomain:forName:", void, .{ Any, objc.NSString } },
        .{ "stringArrayForKey:", ?*anyopaque, .{objc.NSString} },
        .{ "stringForKey:", ?objc.NSString, .{objc.NSString} },
        .{ "synchronize", objc.BOOL, .{} },
        .{ "volatileDomainForName:", Object, .{objc.NSString} },
        .{ "volatileDomainNames", Object, .{} },
    };

    pub fn send(self: NSUserDefaults, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithSuiteName:", Object, .{?objc.NSString} },
        .{ "resetStandardUserDefaults", void, .{} },
        .{ "standardUserDefaults", NSUserDefaults, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUserDefaults", class_methods, selector, args);
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
        .{ "contentImage", ?*anyopaque, .{} },
        .{ "deliveryDate", ?NSDate, .{} },
        .{ "deliveryRepeatInterval", ?*anyopaque, .{} },
        .{ "deliveryTimeZone", ?*anyopaque, .{} },
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
        .{ "setContentImage:", void, .{?*anyopaque} },
        .{ "setDeliveryDate:", void, .{?NSDate} },
        .{ "setDeliveryRepeatInterval:", void, .{?*anyopaque} },
        .{ "setDeliveryTimeZone:", void, .{?*anyopaque} },
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

    pub fn send(self: NSUserNotification, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUserNotification", class_methods, selector, args);
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

    pub fn send(self: NSUserNotificationAction, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "actionWithIdentifier:title:", Object, .{ ?objc.NSString, ?objc.NSString } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUserNotificationAction", class_methods, selector, args);
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

    pub fn send(self: NSUserNotificationCenter, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "defaultUserNotificationCenter", NSUserNotificationCenter, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUserNotificationCenter", class_methods, selector, args);
    }
};

pub const NSUserScriptTask = struct {
    obj: Object,

    pub const methods = .{
        .{ "executeWithCompletionHandler:", void, .{void} },
        .{ "scriptURL", NSURL, .{} },
    };

    pub fn send(self: NSUserScriptTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithURL:error:", Object, .{NSURL} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSUserScriptTask", class_methods, selector, args);
    }
};

pub const NSUserUnixTask = struct {
    obj: Object,

    pub const Super = NSUserScriptTask;
    pub const methods = .{
        .{ "executeWithArguments:completionHandler:", void, .{ void, void } },
        .{ "setStandardError:", void, .{?NSFileHandle} },
        .{ "setStandardInput:", void, .{?NSFileHandle} },
        .{ "setStandardOutput:", void, .{?NSFileHandle} },
        .{ "standardError", ?NSFileHandle, .{} },
        .{ "standardInput", ?NSFileHandle, .{} },
        .{ "standardOutput", ?NSFileHandle, .{} },
    };

    pub fn send(self: NSUserUnixTask, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }
};

pub const NSValue = struct {
    obj: Object,

    pub const methods = .{
        .{ "edgeInsetsValue", NSEdgeInsets, .{} },
        .{ "getValue:", void, .{UnsafeMutableRawPointer} },
        .{ "getValue:size:", void, .{ UnsafeMutableRawPointer, objc.NSInteger } },
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

    pub fn send(self: NSValue, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithBytes:objCType:", Object, .{ UnsafeRawPointer, ?*anyopaque } },
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "value:withObjCType:", Object, .{ UnsafeRawPointer, ?*anyopaque } },
        .{ "valueWithEdgeInsets:", Object, .{NSEdgeInsets} },
        .{ "valueWithNonretainedObject:", Object, .{?Any} },
        .{ "valueWithPoint:", Object, .{NSPoint} },
        .{ "valueWithPointer:", Object, .{?UnsafeRawPointer} },
        .{ "valueWithRange:", Object, .{NSRange} },
        .{ "valueWithRect:", Object, .{NSRect} },
        .{ "valueWithSize:", Object, .{NSSize} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSValue", class_methods, selector, args);
    }
};

pub const NSValueTransformer = struct {
    obj: Object,

    pub const methods = .{
        .{ "reverseTransformedValue:", ?Any, .{?Any} },
        .{ "transformedValue:", ?Any, .{?Any} },
    };

    pub fn send(self: NSValueTransformer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "allowsReverseTransformation", objc.BOOL, .{} },
        .{ "setValueTransformer:forName:", void, .{ ?NSValueTransformer, objc.NSString } },
        .{ "transformedValueClass", AnyClass, .{} },
        .{ "valueTransformerForName:", Object, .{objc.NSString} },
        .{ "valueTransformerNames", Object, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSValueTransformer", class_methods, selector, args);
    }
};

pub const NSWhoseSpecifier = struct {
    obj: Object,

    pub const Super = NSScriptObjectSpecifier;
    pub const methods = .{
        .{ "endSubelementIdentifier", NSWhoseSpecifier.SubelementIdentifier, .{} },
        .{ "endSubelementIndex", objc.NSInteger, .{} },
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

    pub const class_methods = .{
        .{ "initWithCoder:", Object, .{NSCoder} },
        .{ "initWithContainerClassDescription:containerSpecifier:key:test:", Object, .{ NSScriptClassDescription, ?NSScriptObjectSpecifier, objc.NSString, NSScriptWhoseTest } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSWhoseSpecifier", class_methods, selector, args);
    }

    pub const SubelementIdentifier = enum(i64) {
        indexSubelement = 0,
        everySubelement = 1,
        middleSubelement = 2,
        randomSubelement = 3,
        noSubelement = 4,
    };
};

pub const NSXMLDTD = struct {
    obj: Object,

    pub const Super = NSXMLNode;
    pub const methods = .{
        .{ "addChild:", void, .{NSXMLNode} },
        .{ "attributeDeclarationForName:elementName:", ?NSXMLDTDNode, .{ objc.NSString, objc.NSString } },
        .{ "elementDeclarationForName:", ?NSXMLDTDNode, .{objc.NSString} },
        .{ "entityDeclarationForName:", ?NSXMLDTDNode, .{objc.NSString} },
        .{ "insertChild:atIndex:", void, .{ NSXMLNode, objc.NSInteger } },
        .{ "insertChildren:atIndex:", void, .{ void, objc.NSInteger } },
        .{ "notationDeclarationForName:", ?NSXMLDTDNode, .{objc.NSString} },
        .{ "publicID", ?objc.NSString, .{} },
        .{ "removeChildAtIndex:", void, .{objc.NSInteger} },
        .{ "replaceChildAtIndex:withNode:", void, .{ objc.NSInteger, NSXMLNode } },
        .{ "setChildren:", void, .{void} },
        .{ "setPublicID:", void, .{?objc.NSString} },
        .{ "setSystemID:", void, .{?objc.NSString} },
        .{ "systemID", ?objc.NSString, .{} },
    };

    pub fn send(self: NSXMLDTD, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithContentsOfURL:options:error:", Object, .{ NSURL, objc.NSInteger } },
        .{ "initWithData:options:error:", Object, .{ NSData, objc.NSInteger } },
        .{ "predefinedEntityDeclarationForName:", ?NSXMLDTDNode, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSXMLDTD", class_methods, selector, args);
    }
};

pub const NSXMLDTDNode = struct {
    obj: Object,

    pub const Super = NSXMLNode;
    pub const methods = .{
        .{ "DTDKind", NSXMLDTDNode.DTDKind, .{} },
        .{ "external", objc.BOOL, .{} },
        .{ "notationName", ?objc.NSString, .{} },
        .{ "publicID", ?objc.NSString, .{} },
        .{ "setDTDKind:", void, .{NSXMLDTDNode.DTDKind} },
        .{ "setNotationName:", void, .{?objc.NSString} },
        .{ "setPublicID:", void, .{?objc.NSString} },
        .{ "setSystemID:", void, .{?objc.NSString} },
        .{ "systemID", ?objc.NSString, .{} },
    };

    pub fn send(self: NSXMLDTDNode, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithKind:options:", Object, .{ NSXMLNode.Kind, objc.NSInteger } },
        .{ "initWithXMLString:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSXMLDTDNode", class_methods, selector, args);
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

pub const NSXMLDocument = struct {
    obj: Object,

    pub const Super = NSXMLNode;
    pub const methods = .{
        .{ "DTD", ?NSXMLDTD, .{} },
        .{ "MIMEType", ?objc.NSString, .{} },
        .{ "XMLData", NSData, .{} },
        .{ "XMLDataWithOptions:", NSData, .{objc.NSInteger} },
        .{ "addChild:", void, .{NSXMLNode} },
        .{ "characterEncoding", ?objc.NSString, .{} },
        .{ "documentContentKind", NSXMLDocument.ContentKind, .{} },
        .{ "insertChild:atIndex:", void, .{ NSXMLNode, objc.NSInteger } },
        .{ "insertChildren:atIndex:", void, .{ void, objc.NSInteger } },
        .{ "objectByApplyingXSLT:arguments:error:", Any, .{ NSData, ?objc.NSString } },
        .{ "objectByApplyingXSLTAtURL:arguments:error:", Any, .{ NSURL, ?objc.NSString } },
        .{ "objectByApplyingXSLTString:arguments:error:", Any, .{ objc.NSString, ?objc.NSString } },
        .{ "removeChildAtIndex:", void, .{objc.NSInteger} },
        .{ "replaceChildAtIndex:withNode:", void, .{ objc.NSInteger, NSXMLNode } },
        .{ "rootElement", ?NSXMLElement, .{} },
        .{ "setCharacterEncoding:", void, .{?objc.NSString} },
        .{ "setChildren:", void, .{void} },
        .{ "setDTD:", void, .{?NSXMLDTD} },
        .{ "setDocumentContentKind:", void, .{NSXMLDocument.ContentKind} },
        .{ "setMIMEType:", void, .{?objc.NSString} },
        .{ "setRootElement:", void, .{NSXMLElement} },
        .{ "setStandalone:", void, .{objc.BOOL} },
        .{ "setVersion:", void, .{?objc.NSString} },
        .{ "standalone", objc.BOOL, .{} },
        .{ "validateAndReturnError:", void, .{} },
        .{ "version", ?objc.NSString, .{} },
    };

    pub fn send(self: NSXMLDocument, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "init", Object, .{} },
        .{ "initWithContentsOfURL:options:error:", Object, .{ NSURL, objc.NSInteger } },
        .{ "initWithData:options:error:", Object, .{ NSData, objc.NSInteger } },
        .{ "initWithRootElement:", Object, .{?NSXMLElement} },
        .{ "initWithXMLString:options:error:", Object, .{ objc.NSString, objc.NSInteger } },
        .{ "replacementClassForClass:", AnyClass, .{AnyClass} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSXMLDocument", class_methods, selector, args);
    }

    pub const ContentKind = enum(i64) {
        xml = 0,
        xhtml = 1,
        html = 2,
        text = 3,
    };
};

pub const NSXMLElement = struct {
    obj: Object,

    pub const Super = NSXMLNode;
    pub const methods = .{
        .{ "addAttribute:", void, .{NSXMLNode} },
        .{ "addChild:", void, .{NSXMLNode} },
        .{ "addNamespace:", void, .{NSXMLNode} },
        .{ "attributeForLocalName:URI:", ?NSXMLNode, .{ objc.NSString, ?objc.NSString } },
        .{ "attributeForName:", ?NSXMLNode, .{objc.NSString} },
        .{ "attributes", ?*anyopaque, .{} },
        .{ "elementsForLocalName:URI:", Object, .{ objc.NSString, ?objc.NSString } },
        .{ "elementsForName:", Object, .{objc.NSString} },
        .{ "insertChild:atIndex:", void, .{ NSXMLNode, objc.NSInteger } },
        .{ "insertChildren:atIndex:", void, .{ void, objc.NSInteger } },
        .{ "namespaceForPrefix:", ?NSXMLNode, .{objc.NSString} },
        .{ "namespaces", ?*anyopaque, .{} },
        .{ "normalizeAdjacentTextNodesPreservingCDATA:", void, .{objc.BOOL} },
        .{ "removeAttributeForName:", void, .{objc.NSString} },
        .{ "removeChildAtIndex:", void, .{objc.NSInteger} },
        .{ "removeNamespaceForPrefix:", void, .{objc.NSString} },
        .{ "replaceChildAtIndex:withNode:", void, .{ objc.NSInteger, NSXMLNode } },
        .{ "resolveNamespaceForName:", ?NSXMLNode, .{objc.NSString} },
        .{ "resolvePrefixForNamespaceURI:", ?objc.NSString, .{objc.NSString} },
        .{ "setAttributes:", void, .{?*anyopaque} },
        .{ "setAttributesAsDictionary:", void, .{Any} },
        .{ "setAttributesWithDictionary:", void, .{objc.NSString} },
        .{ "setChildren:", void, .{void} },
        .{ "setNamespaces:", void, .{?*anyopaque} },
    };

    pub fn send(self: NSXMLElement, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithKind:options:", Object, .{ NSXMLNode.Kind, objc.NSInteger } },
        .{ "initWithName:", Object, .{objc.NSString} },
        .{ "initWithName:URI:", Object, .{ objc.NSString, ?objc.NSString } },
        .{ "initWithName:stringValue:", Object, .{ objc.NSString, ?objc.NSString } },
        .{ "initWithXMLString:error:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSXMLElement", class_methods, selector, args);
    }
};

pub const NSXMLNode = struct {
    obj: Object,

    pub const methods = .{
        .{ "URI", ?objc.NSString, .{} },
        .{ "XMLString", objc.NSString, .{} },
        .{ "XMLStringWithOptions:", objc.NSString, .{objc.NSInteger} },
        .{ "XPath", ?objc.NSString, .{} },
        .{ "canonicalXMLStringPreservingComments:", objc.NSString, .{objc.BOOL} },
        .{ "childAtIndex:", ?NSXMLNode, .{objc.NSInteger} },
        .{ "childCount", objc.NSInteger, .{} },
        .{ "children", ?*anyopaque, .{} },
        .{ "description", objc.NSString, .{} },
        .{ "detach", void, .{} },
        .{ "index", objc.NSInteger, .{} },
        .{ "kind", NSXMLNode.Kind, .{} },
        .{ "level", objc.NSInteger, .{} },
        .{ "localName", ?objc.NSString, .{} },
        .{ "name", ?objc.NSString, .{} },
        .{ "nextNode", ?NSXMLNode, .{} },
        .{ "nextSibling", ?NSXMLNode, .{} },
        .{ "nodesForXPath:error:", Object, .{objc.NSString} },
        .{ "objectValue", ?Any, .{} },
        .{ "objectsForXQuery:constants:error:", Object, .{ objc.NSString, ?Any } },
        .{ "objectsForXQuery:error:", Object, .{objc.NSString} },
        .{ "parent", ?NSXMLNode, .{} },
        .{ "prefix", ?objc.NSString, .{} },
        .{ "previousNode", ?NSXMLNode, .{} },
        .{ "previousSibling", ?NSXMLNode, .{} },
        .{ "rootDocument", ?NSXMLDocument, .{} },
        .{ "setName:", void, .{?objc.NSString} },
        .{ "setObjectValue:", void, .{?Any} },
        .{ "setStringValue:", void, .{?objc.NSString} },
        .{ "setStringValue:resolvingEntities:", void, .{ objc.NSString, objc.BOOL } },
        .{ "setURI:", void, .{?objc.NSString} },
        .{ "stringValue", ?objc.NSString, .{} },
    };

    pub fn send(self: NSXMLNode, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "DTDNodeWithXMLString:", ?Any, .{objc.NSString} },
        .{ "attributeWithName:URI:stringValue:", Any, .{ objc.NSString, objc.NSString, objc.NSString } },
        .{ "attributeWithName:stringValue:", Any, .{ objc.NSString, objc.NSString } },
        .{ "commentWithStringValue:", Any, .{objc.NSString} },
        .{ "document", Any, .{} },
        .{ "documentWithRootElement:", Any, .{NSXMLElement} },
        .{ "elementWithName:", Any, .{objc.NSString} },
        .{ "elementWithName:URI:", Any, .{ objc.NSString, objc.NSString } },
        .{ "elementWithName:children:attributes:", Any, .{ objc.NSString, void, void } },
        .{ "elementWithName:stringValue:", Any, .{ objc.NSString, objc.NSString } },
        .{ "init", Object, .{} },
        .{ "initWithKind:", Object, .{NSXMLNode.Kind} },
        .{ "initWithKind:options:", Object, .{ NSXMLNode.Kind, objc.NSInteger } },
        .{ "localNameForName:", objc.NSString, .{objc.NSString} },
        .{ "namespaceWithName:stringValue:", Any, .{ objc.NSString, objc.NSString } },
        .{ "predefinedNamespaceForPrefix:", ?NSXMLNode, .{objc.NSString} },
        .{ "prefixForName:", ?objc.NSString, .{objc.NSString} },
        .{ "processingInstructionWithName:stringValue:", Any, .{ objc.NSString, objc.NSString } },
        .{ "textWithStringValue:", Any, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSXMLNode", class_methods, selector, args);
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

pub const NSXMLParser = struct {
    obj: Object,

    pub const methods = .{
        .{ "abortParsing", void, .{} },
        .{ "allowedExternalEntityURLs", ?NSURL, .{} },
        .{ "columnNumber", objc.NSInteger, .{} },
        .{ "delegate", ?XMLParserDelegate, .{} },
        .{ "externalEntityResolvingPolicy", NSXMLParser.ExternalEntityResolvingPolicy, .{} },
        .{ "lineNumber", objc.NSInteger, .{} },
        .{ "parse", objc.BOOL, .{} },
        .{ "parserError", ?*anyopaque, .{} },
        .{ "publicID", ?objc.NSString, .{} },
        .{ "setAllowedExternalEntityURLs:", void, .{?NSURL} },
        .{ "setDelegate:", void, .{?XMLParserDelegate} },
        .{ "setExternalEntityResolvingPolicy:", void, .{NSXMLParser.ExternalEntityResolvingPolicy} },
        .{ "setShouldProcessNamespaces:", void, .{objc.BOOL} },
        .{ "setShouldReportNamespacePrefixes:", void, .{objc.BOOL} },
        .{ "setShouldResolveExternalEntities:", void, .{objc.BOOL} },
        .{ "shouldProcessNamespaces", objc.BOOL, .{} },
        .{ "shouldReportNamespacePrefixes", objc.BOOL, .{} },
        .{ "shouldResolveExternalEntities", objc.BOOL, .{} },
        .{ "systemID", ?objc.NSString, .{} },
    };

    pub fn send(self: NSXMLParser, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "initWithContentsOfURL:", Object, .{NSURL} },
        .{ "initWithData:", Object, .{NSData} },
        .{ "initWithStream:", Object, .{NSInputStream} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSXMLParser", class_methods, selector, args);
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
        .{ "setUserInfo:", void, .{?*anyopaque} },
        .{ "userInfo", ?*anyopaque, .{} },
    };

    pub fn send(self: NSXPCCoder, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {
        return objc.typedSendChain(@This(), self.obj, selector, args);
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
        .{ "interruptionHandler", void, .{} },
        .{ "invalidate", void, .{} },
        .{ "invalidationHandler", void, .{} },
        .{ "processIdentifier", pid_t, .{} },
        .{ "remoteObjectInterface", ?NSXPCInterface, .{} },
        .{ "remoteObjectProxy", Any, .{} },
        .{ "remoteObjectProxyWithErrorHandler:", Any, .{void} },
        .{ "resume", void, .{} },
        .{ "scheduleSendBarrierBlock:", void, .{void} },
        .{ "serviceName", ?objc.NSString, .{} },
        .{ "setCodeSigningRequirement:", void, .{objc.NSString} },
        .{ "setExportedInterface:", void, .{?NSXPCInterface} },
        .{ "setExportedObject:", void, .{?Any} },
        .{ "setInterruptionHandler:", void, .{void} },
        .{ "setInvalidationHandler:", void, .{void} },
        .{ "setRemoteObjectInterface:", void, .{?NSXPCInterface} },
        .{ "suspend", void, .{} },
        .{ "synchronousRemoteObjectProxyWithErrorHandler:", Any, .{void} },
    };

    pub fn send(self: NSXPCConnection, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "currentConnection", ?NSXPCConnection, .{} },
        .{ "initWithListenerEndpoint:", Object, .{Object} },
        .{ "initWithMachServiceName:options:", Object, .{ objc.NSString, objc.NSInteger } },
        .{ "initWithServiceName:", Object, .{objc.NSString} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSXPCConnection", class_methods, selector, args);
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

    pub fn send(self: NSXPCInterface, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "interfaceWithProtocol:", Object, .{Object} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSXPCInterface", class_methods, selector, args);
    }
};

pub const NSXPCListener = struct {
    obj: Object,

    pub const methods = .{
        .{ "activate", void, .{} },
        .{ "delegate", ?NSXPCListenerDelegate, .{} },
        .{ "endpoint", Object, .{} },
        .{ "invalidate", void, .{} },
        .{ "resume", void, .{} },
        .{ "setConnectionCodeSigningRequirement:", void, .{objc.NSString} },
        .{ "setDelegate:", void, .{?NSXPCListenerDelegate} },
        .{ "suspend", void, .{} },
    };

    pub fn send(self: NSXPCListener, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const class_methods = .{
        .{ "anonymousListener", NSXPCListener, .{} },
        .{ "initWithMachServiceName:", Object, .{objc.NSString} },
        .{ "serviceListener", NSXPCListener, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSXPCListener", class_methods, selector, args);
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
