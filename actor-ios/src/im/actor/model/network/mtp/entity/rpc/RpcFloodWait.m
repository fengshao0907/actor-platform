//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/rpc/RpcFloodWait.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcFloodWait.h"
#include "im/actor/model/util/StreamingUtils.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"

@interface MTRpcFloodWait () {
 @public
  jint delay_;
}
@end

@implementation MTRpcFloodWait

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return [super initWithJavaIoInputStream:stream];
}

- (instancetype)initWithInt:(jint)delay {
  if (self = [super init]) {
    self->delay_ = delay;
  }
  return self;
}

- (jint)getDelay {
  return delay_;
}

- (jint)getLength {
  return 1 + 4;
}

- (jbyte)getHeader {
  return MTRpcFloodWait_HEADER;
}

- (void)writeBodyWithJavaIoOutputStream:(JavaIoOutputStream *)bs {
  AMStreamingUtils_writeIntWithInt_withJavaIoOutputStream_(delay_, bs);
}

- (void)readBodyWithJavaIoInputStream:(JavaIoInputStream *)bs {
  delay_ = AMStreamingUtils_readIntWithJavaIoInputStream_(bs);
}

- (void)copyAllFieldsTo:(MTRpcFloodWait *)other {
  [super copyAllFieldsTo:other];
  other->delay_ = delay_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoInputStream:", "RpcFloodWait", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithInt:", "RpcFloodWait", NULL, 0x1, NULL },
    { "getDelay", NULL, "I", 0x1, NULL },
    { "getLength", NULL, "I", 0x1, NULL },
    { "getHeader", NULL, "B", 0x4, NULL },
    { "writeBodyWithJavaIoOutputStream:", "writeBody", "V", 0x4, "Ljava.io.IOException;" },
    { "readBodyWithJavaIoInputStream:", "readBody", "V", 0x4, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "B", NULL, .constantValue.asChar = MTRpcFloodWait_HEADER },
    { "delay_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _MTRpcFloodWait = { 1, "RpcFloodWait", "im.actor.model.network.mtp.entity.rpc", NULL, 0x1, 7, methods, 2, fields, 0, NULL};
  return &_MTRpcFloodWait;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTRpcFloodWait)