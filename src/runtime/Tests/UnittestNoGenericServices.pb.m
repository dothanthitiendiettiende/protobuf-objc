// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "UnittestNoGenericServices.pb.h"

@implementation UnittestNoGenericServicesRoot
static id<PBExtensionField> UnittestNoGenericServicesRoot_testExtension = nil;
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [UnittestNoGenericServicesRoot class]) {
    UnittestNoGenericServicesRoot_testExtension =
      [[PBConcreteExtensionField extensionWithType:PBExtensionTypeInt32
                                     extendedClass:[TestMessage class]
                                       fieldNumber:1000
                                      defaultValue:[NSNumber numberWithInt:0]
                               messageOrGroupClass:[NSNumber class]
                                        isRepeated:NO
                                          isPacked:NO
                            isMessageSetWireFormat:NO] retain];
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = [registry retain];
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
  [registry addExtension:UnittestNoGenericServicesRoot_testExtension];
}
+ (id<PBExtensionField>) testExtension {
  return UnittestNoGenericServicesRoot_testExtension;
}
@end

BOOL TestEnumIsValidValue(TestEnum value) {
  switch (value) {
    case TestEnumFoo:
      return YES;
    default:
      return NO;
  }
}
@interface TestMessage ()
@property NSInteger a;
@end

@implementation TestMessage

- (BOOL) hasA {
  return !!hasA_;
}
- (void) setHasA:(BOOL) value {
  hasA_ = !!value;
}
@synthesize a;
- (void) dealloc {
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.a = 0;
  }
  return self;
}
static TestMessage* defaultTestMessageInstance = nil;
+ (void) initialize {
  if (self == [TestMessage class]) {
    defaultTestMessageInstance = [[TestMessage alloc] init];
  }
}
+ (TestMessage*) defaultInstance {
  return defaultTestMessageInstance;
}
- (TestMessage*) defaultInstance {
  return defaultTestMessageInstance;
}
- (BOOL) isInitialized {
  if (!self.extensionsAreInitialized) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasA) {
    [output writeInt32:1 value:self.a];
  }
  [self writeExtensionsToCodedOutputStream:output
                                      from:1000
                                        to:536870912];
  [self.unknownFields writeToCodedOutputStream:output];
}
- (NSInteger) serializedSize {
  NSInteger size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasA) {
    size += computeInt32Size(1, self.a);
  }
  size += [self extensionsSerializedSize];
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (TestMessage*) parseFromData:(NSData*) data {
  return (TestMessage*)[[[TestMessage builder] mergeFromData:data] build];
}
+ (TestMessage*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (TestMessage*)[[[TestMessage builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (TestMessage*) parseFromInputStream:(NSInputStream*) input {
  return (TestMessage*)[[[TestMessage builder] mergeFromInputStream:input] build];
}
+ (TestMessage*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (TestMessage*)[[[TestMessage builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (TestMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (TestMessage*)[[[TestMessage builder] mergeFromCodedInputStream:input] build];
}
+ (TestMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (TestMessage*)[[[TestMessage builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (TestMessage_Builder*) builder {
  return [[[TestMessage_Builder alloc] init] autorelease];
}
+ (TestMessage_Builder*) builderWithPrototype:(TestMessage*) prototype {
  return [[TestMessage builder] mergeFrom:prototype];
}
- (TestMessage_Builder*) builder {
  return [TestMessage builder];
}
- (TestMessage_Builder*) toBuilder {
  return [TestMessage builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasA) {
    [output appendFormat:@"%@%@: %@\n", indent, @"a", [NSNumber numberWithInt:self.a]];
  }
  [self writeExtensionDescriptionToMutableString:(NSMutableString*)output
                                            from:1000
                                              to:536870912
                                      withIndent:indent];
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[TestMessage class]]) {
    return NO;
  }
  TestMessage *otherMessage = other;
  return
      self.hasA == otherMessage.hasA &&
      (!self.hasA || self.a == otherMessage.a) &&
      
      [self isEqualExtensionsInOther:otherMessage from:1000 to:536870912] &&
      
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  NSUInteger hashCode = 7;
  if (self.hasA) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInt:self.a] hash];
  }
  hashCode = hashCode * 31 + [self hashExtensionsFrom:1000 to:536870912];
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface TestMessage_Builder()
@property (retain) TestMessage* result;
@end

@implementation TestMessage_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[TestMessage alloc] init] autorelease];
  }
  return self;
}
- (PBExtendableMessage*) internalGetResult {
  return result;
}
- (TestMessage_Builder*) clear {
  self.result = [[[TestMessage alloc] init] autorelease];
  return self;
}
- (TestMessage_Builder*) clone {
  return [TestMessage builderWithPrototype:result];
}
- (TestMessage*) defaultInstance {
  return [TestMessage defaultInstance];
}
- (TestMessage*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (TestMessage*) buildPartial {
  TestMessage* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (TestMessage_Builder*) mergeFrom:(TestMessage*) other {
  if (other == [TestMessage defaultInstance]) {
    return self;
  }
  if (other.hasA) {
    [self setA:other.a];
  }
  [self mergeExtensionFields:other];
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (TestMessage_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (TestMessage_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    NSInteger tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setA:[input readInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasA {
  return result.hasA;
}
- (NSInteger) a {
  return result.a;
}
- (TestMessage_Builder*) setA:(NSInteger) value {
  result.hasA = YES;
  result.a = value;
  return self;
}
- (TestMessage_Builder*) clearA {
  result.hasA = NO;
  result.a = 0;
  return self;
}
@end

