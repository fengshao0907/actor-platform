//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/entity/MTRpcResponse.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/entity/MTRpcResponse.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/MTRpcResponse.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "java/io/IOException.h"

@interface MTMTRpcResponse () {
 @public
  jlong messageId_;
  IOSByteArray *payload_;
}

@end

J2OBJC_FIELD_SETTER(MTMTRpcResponse, payload_, IOSByteArray *)


#line 8
@implementation MTMTRpcResponse


#line 15
- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  MTMTRpcResponse_initWithBSDataInput_(self, stream);
  return self;
}


#line 19
- (jlong)getMessageId {
  return messageId_;
}

- (IOSByteArray *)getPayload {
  return payload_;
}


#line 28
- (jbyte)getHeader {
  return MTMTRpcResponse_HEADER;
}


#line 33
- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs {
  [((BSDataOutput *) nil_chk(bs)) writeLongWithLong:messageId_];
  [bs writeProtoBytesWithByteArray:payload_ withInt:0 withInt:((IOSByteArray *) nil_chk(payload_))->size_];
}


#line 39
- (void)readBodyWithBSDataInput:(BSDataInput *)bs {
  messageId_ = [((BSDataInput *) nil_chk(bs)) readLong];
  payload_ = [bs readProtoBytes];
}


#line 45
- (NSString *)description {
  return JreStrcat("$JC", @"ResponseBox [", messageId_, ']');
}

@end


#line 15
void MTMTRpcResponse_initWithBSDataInput_(MTMTRpcResponse *self, BSDataInput *stream) {
  (void) MTProtoStruct_initWithBSDataInput_(self, stream);
}


#line 15
MTMTRpcResponse *new_MTMTRpcResponse_initWithBSDataInput_(BSDataInput *stream) {
  MTMTRpcResponse *self = [MTMTRpcResponse alloc];
  MTMTRpcResponse_initWithBSDataInput_(self, stream);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTMTRpcResponse)
