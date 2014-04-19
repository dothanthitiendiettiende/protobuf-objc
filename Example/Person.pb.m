// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Person.pb.h"
// @@protoc_insertion_point(imports)

@implementation PersonRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [PersonRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface Person ()
@property (strong) NSString* name;
@property NSInteger personId;
@property (strong) NSString* email;
@property (strong) PBAppendableArray * phonesArray;
@end

@implementation Person

- (BOOL) hasName {
  return !!hasName_;
}
- (void) setHasName:(BOOL) value_ {
  hasName_ = !!value_;
}
@synthesize name;
- (BOOL) hasPersonId {
  return !!hasPersonId_;
}
- (void) setHasPersonId:(BOOL) value_ {
  hasPersonId_ = !!value_;
}
@synthesize personId;
- (BOOL) hasEmail {
  return !!hasEmail_;
}
- (void) setHasEmail:(BOOL) value_ {
  hasEmail_ = !!value_;
}
@synthesize email;
@synthesize phonesArray;
@dynamic phones;
- (void) dealloc {
  self.name = nil;
  self.email = nil;
  self.phonesArray = nil;
}
- (id) init {
  if ((self = [super init])) {
    self.name = @"";
    self.personId = 0;
    self.email = @"";
  }
  return self;
}
static Person* defaultPersonInstance = nil;
+ (void) initialize {
  if (self == [Person class]) {
    defaultPersonInstance = [[Person alloc] init];
  }
}
+ (Person*) defaultInstance {
  return defaultPersonInstance;
}
- (Person*) defaultInstance {
  return defaultPersonInstance;
}
- (PBArray *)phones {
  return phonesArray;
}
- (PersonPhoneNumber*)phonesAtIndex:(NSUInteger)index {
  return [phonesArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  if (!self.hasName) {
    return NO;
  }
  if (!self.hasPersonId) {
    return NO;
  }
  for (PersonPhoneNumber* element in self.phones) {
    if (!element.isInitialized) {
      return NO;
    }
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasName) {
    [output writeString:1 value:self.name];
  }
  if (self.hasPersonId) {
    [output writeInt32:2 value:self.personId];
  }
  if (self.hasEmail) {
    [output writeString:3 value:self.email];
  }
  for (PersonPhoneNumber *element in self.phonesArray) {
    [output writeMessage:4 value:element];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (NSInteger) serializedSize {
  NSInteger size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasName) {
    size_ += computeStringSize(1, self.name);
  }
  if (self.hasPersonId) {
    size_ += computeInt32Size(2, self.personId);
  }
  if (self.hasEmail) {
    size_ += computeStringSize(3, self.email);
  }
  for (PersonPhoneNumber *element in self.phonesArray) {
    size_ += computeMessageSize(4, element);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (Person*) parseFromData:(NSData*) data {
  return (Person*)[[[Person builder] mergeFromData:data] build];
}
+ (Person*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Person*)[[[Person builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (Person*) parseFromInputStream:(NSInputStream*) input {
  return (Person*)[[[Person builder] mergeFromInputStream:input] build];
}
+ (Person*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Person*)[[[Person builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Person*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (Person*)[[[Person builder] mergeFromCodedInputStream:input] build];
}
+ (Person*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Person*)[[[Person builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (PersonBuilder*) builder {
  return [[PersonBuilder alloc] init];
}
+ (PersonBuilder*) builderWithPrototype:(Person*) prototype {
  return [[Person builder] mergeFrom:prototype];
}
- (PersonBuilder*) builder {
  return [Person builder];
}
- (PersonBuilder*) toBuilder {
  return [Person builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"name", self.name];
  }
  if (self.hasPersonId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"personId", [NSNumber numberWithInteger:self.personId]];
  }
  if (self.hasEmail) {
    [output appendFormat:@"%@%@: %@\n", indent, @"email", self.email];
  }
  for (PersonPhoneNumber* element in self.phonesArray) {
    [output appendFormat:@"%@%@ {\n", indent, @"phones"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[Person class]]) {
    return NO;
  }
  Person *otherMessage = other;
  return
      self.hasName == otherMessage.hasName &&
      (!self.hasName || [self.name isEqual:otherMessage.name]) &&
      self.hasPersonId == otherMessage.hasPersonId &&
      (!self.hasPersonId || self.personId == otherMessage.personId) &&
      self.hasEmail == otherMessage.hasEmail &&
      (!self.hasEmail || [self.email isEqual:otherMessage.email]) &&
      [self.phonesArray isEqualToArray:otherMessage.phonesArray] &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  NSUInteger hashCode = 7;
  if (self.hasName) {
    hashCode = hashCode * 31 + [self.name hash];
  }
  if (self.hasPersonId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.personId] hash];
  }
  if (self.hasEmail) {
    hashCode = hashCode * 31 + [self.email hash];
  }
  for (PersonPhoneNumber* element in self.phonesArray) {
    hashCode = hashCode * 31 + [element hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

BOOL PersonPhoneTypeIsValidValue(PersonPhoneType value) {
  switch (value) {
    case PersonPhoneTypeMobile:
    case PersonPhoneTypeHome:
    case PersonPhoneTypeWork:
      return YES;
    default:
      return NO;
  }
}
@interface PersonPhoneNumber ()
@property (strong) NSString* number;
@property PersonPhoneType type;
@end

@implementation PersonPhoneNumber

- (BOOL) hasNumber {
  return !!hasNumber_;
}
- (void) setHasNumber:(BOOL) value_ {
  hasNumber_ = !!value_;
}
@synthesize number;
- (BOOL) hasType {
  return !!hasType_;
}
- (void) setHasType:(BOOL) value_ {
  hasType_ = !!value_;
}
@synthesize type;
- (void) dealloc {
  self.number = nil;
}
- (id) init {
  if ((self = [super init])) {
    self.number = @"";
    self.type = PersonPhoneTypeHome;
  }
  return self;
}
static PersonPhoneNumber* defaultPersonPhoneNumberInstance = nil;
+ (void) initialize {
  if (self == [PersonPhoneNumber class]) {
    defaultPersonPhoneNumberInstance = [[PersonPhoneNumber alloc] init];
  }
}
+ (PersonPhoneNumber*) defaultInstance {
  return defaultPersonPhoneNumberInstance;
}
- (PersonPhoneNumber*) defaultInstance {
  return defaultPersonPhoneNumberInstance;
}
- (BOOL) isInitialized {
  if (!self.hasNumber) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasNumber) {
    [output writeString:1 value:self.number];
  }
  if (self.hasType) {
    [output writeEnum:2 value:self.type];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (NSInteger) serializedSize {
  NSInteger size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasNumber) {
    size_ += computeStringSize(1, self.number);
  }
  if (self.hasType) {
    size_ += computeEnumSize(2, self.type);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (PersonPhoneNumber*) parseFromData:(NSData*) data {
  return (PersonPhoneNumber*)[[[PersonPhoneNumber builder] mergeFromData:data] build];
}
+ (PersonPhoneNumber*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (PersonPhoneNumber*)[[[PersonPhoneNumber builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (PersonPhoneNumber*) parseFromInputStream:(NSInputStream*) input {
  return (PersonPhoneNumber*)[[[PersonPhoneNumber builder] mergeFromInputStream:input] build];
}
+ (PersonPhoneNumber*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (PersonPhoneNumber*)[[[PersonPhoneNumber builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (PersonPhoneNumber*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (PersonPhoneNumber*)[[[PersonPhoneNumber builder] mergeFromCodedInputStream:input] build];
}
+ (PersonPhoneNumber*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (PersonPhoneNumber*)[[[PersonPhoneNumber builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (PersonPhoneNumberBuilder*) builder {
  return [[PersonPhoneNumberBuilder alloc] init];
}
+ (PersonPhoneNumberBuilder*) builderWithPrototype:(PersonPhoneNumber*) prototype {
  return [[PersonPhoneNumber builder] mergeFrom:prototype];
}
- (PersonPhoneNumberBuilder*) builder {
  return [PersonPhoneNumber builder];
}
- (PersonPhoneNumberBuilder*) toBuilder {
  return [PersonPhoneNumber builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasNumber) {
    [output appendFormat:@"%@%@: %@\n", indent, @"number", self.number];
  }
  if (self.hasType) {
    [output appendFormat:@"%@%@: %d\n", indent, @"type", self.type];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[PersonPhoneNumber class]]) {
    return NO;
  }
  PersonPhoneNumber *otherMessage = other;
  return
      self.hasNumber == otherMessage.hasNumber &&
      (!self.hasNumber || [self.number isEqual:otherMessage.number]) &&
      self.hasType == otherMessage.hasType &&
      (!self.hasType || self.type == otherMessage.type) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  NSUInteger hashCode = 7;
  if (self.hasNumber) {
    hashCode = hashCode * 31 + [self.number hash];
  }
  if (self.hasType) {
    hashCode = hashCode * 31 + self.type;
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface PersonPhoneNumberBuilder()
@property (strong) PersonPhoneNumber* result;
@end

@implementation PersonPhoneNumberBuilder
@synthesize result;
- (void) dealloc {
  self.result = nil;
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[PersonPhoneNumber alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (PersonPhoneNumberBuilder*) clear {
  self.result = [[PersonPhoneNumber alloc] init];
  return self;
}
- (PersonPhoneNumberBuilder*) clone {
  return [PersonPhoneNumber builderWithPrototype:result];
}
- (PersonPhoneNumber*) defaultInstance {
  return [PersonPhoneNumber defaultInstance];
}
- (PersonPhoneNumber*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (PersonPhoneNumber*) buildPartial {
  PersonPhoneNumber* returnMe = result;
  self.result = nil;
  return returnMe;
}
- (PersonPhoneNumberBuilder*) mergeFrom:(PersonPhoneNumber*) other {
  if (other == [PersonPhoneNumber defaultInstance]) {
    return self;
  }
  if (other.hasNumber) {
    [self setNumber:other.number];
  }
  if (other.hasType) {
    [self setType:other.type];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (PersonPhoneNumberBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (PersonPhoneNumberBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
      case 10: {
        [self setNumber:[input readString]];
        break;
      }
      case 16: {
        NSInteger value = [input readEnum];
        if (PersonPhoneTypeIsValidValue(value)) {
          [self setType:value];
        } else {
          [unknownFields mergeVarintField:2 value:value];
        }
        break;
      }
    }
  }
}
- (BOOL) hasNumber {
  return result.hasNumber;
}
- (NSString*) number {
  return result.number;
}
- (PersonPhoneNumberBuilder*) setNumber:(NSString*) value {
  result.hasNumber = YES;
  result.number = value;
  return self;
}
- (PersonPhoneNumberBuilder*) clearNumber {
  result.hasNumber = NO;
  result.number = @"";
  return self;
}
- (BOOL) hasType {
  return result.hasType;
}
- (PersonPhoneType) type {
  return result.type;
}
- (PersonPhoneNumberBuilder*) setType:(PersonPhoneType) value {
  result.hasType = YES;
  result.type = value;
  return self;
}
- (PersonPhoneNumberBuilder*) clearType {
  result.hasType = NO;
  result.type = PersonPhoneTypeHome;
  return self;
}
@end

@interface PersonBuilder()
@property (strong) Person* result;
@end

@implementation PersonBuilder
@synthesize result;
- (void) dealloc {
  self.result = nil;
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[Person alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (PersonBuilder*) clear {
  self.result = [[Person alloc] init];
  return self;
}
- (PersonBuilder*) clone {
  return [Person builderWithPrototype:result];
}
- (Person*) defaultInstance {
  return [Person defaultInstance];
}
- (Person*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (Person*) buildPartial {
  Person* returnMe = result;
  self.result = nil;
  return returnMe;
}
- (PersonBuilder*) mergeFrom:(Person*) other {
  if (other == [Person defaultInstance]) {
    return self;
  }
  if (other.hasName) {
    [self setName:other.name];
  }
  if (other.hasPersonId) {
    [self setPersonId:other.personId];
  }
  if (other.hasEmail) {
    [self setEmail:other.email];
  }
  if (other.phonesArray.count > 0) {
    if (result.phonesArray == nil) {
      result.phonesArray = [other.phonesArray copy];
    } else {
      [result.phonesArray appendArray:other.phonesArray];
    }
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (PersonBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (PersonBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
      case 10: {
        [self setName:[input readString]];
        break;
      }
      case 16: {
        [self setPersonId:[input readInt32]];
        break;
      }
      case 26: {
        [self setEmail:[input readString]];
        break;
      }
      case 34: {
        PersonPhoneNumberBuilder* subBuilder = [PersonPhoneNumber builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addPhones:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasName {
  return result.hasName;
}
- (NSString*) name {
  return result.name;
}
- (PersonBuilder*) setName:(NSString*) value {
  result.hasName = YES;
  result.name = value;
  return self;
}
- (PersonBuilder*) clearName {
  result.hasName = NO;
  result.name = @"";
  return self;
}
- (BOOL) hasPersonId {
  return result.hasPersonId;
}
- (NSInteger) personId {
  return result.personId;
}
- (PersonBuilder*) setPersonId:(NSInteger) value {
  result.hasPersonId = YES;
  result.personId = value;
  return self;
}
- (PersonBuilder*) clearPersonId {
  result.hasPersonId = NO;
  result.personId = 0;
  return self;
}
- (BOOL) hasEmail {
  return result.hasEmail;
}
- (NSString*) email {
  return result.email;
}
- (PersonBuilder*) setEmail:(NSString*) value {
  result.hasEmail = YES;
  result.email = value;
  return self;
}
- (PersonBuilder*) clearEmail {
  result.hasEmail = NO;
  result.email = @"";
  return self;
}
- (PBAppendableArray *)phones {
  return result.phonesArray;
}
- (PersonPhoneNumber*)phonesAtIndex:(NSUInteger)index {
  return [result phonesAtIndex:index];
}
- (PersonBuilder *)addPhones:(PersonPhoneNumber*)value {
  if (result.phonesArray == nil) {
    result.phonesArray = [PBAppendableArray arrayWithValueType:PBArrayValueTypeObject];
  }
  [result.phonesArray addObject:value];
  return self;
}
- (PersonBuilder *)setPhonesArray:(NSArray *)array {
  result.phonesArray = [PBAppendableArray arrayWithArray:array valueType:PBArrayValueTypeObject];
  return self;
}
- (PersonBuilder *)setPhonesValues:(const PersonPhoneNumber* __strong *)values count:(NSUInteger)count {
  result.phonesArray = [PBAppendableArray arrayWithValues:values count:count valueType:PBArrayValueTypeObject];
  return self;
}
- (PersonBuilder *)clearPhones {
  result.phonesArray = nil;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
