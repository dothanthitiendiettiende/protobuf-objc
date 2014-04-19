// Protocol Buffers for Objective C
//
// Copyright 2010 Booyah Inc.
// Copyright 2008 Cyrus Najmabadi
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "WireFormat.h"

#import "Utilities.h"

NSInteger PBWireFormatMakeTag(NSInteger fieldNumber, NSInteger wireType) {
  return (fieldNumber << PBWireFormatTagTypeBits) | wireType;
}


NSInteger PBWireFormatGetTagWireType(NSInteger tag) {
  return tag & PBWireFormatTagTypeMask;
}


NSInteger PBWireFormatGetTagFieldNumber(NSInteger tag) {
  return logicalRightShift32(tag, PBWireFormatTagTypeBits);
}
