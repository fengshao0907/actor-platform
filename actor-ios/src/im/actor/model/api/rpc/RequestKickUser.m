//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestKickUser.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/Bser.h"
#include "com/droidkit/bser/BserObject.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/api/UserOutPeer.h"
#include "im/actor/model/api/rpc/RequestKickUser.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestKickUser () {
 @public
  ImActorModelApiGroupOutPeer *groupPeer_;
  jlong rid_;
  ImActorModelApiUserOutPeer *user_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestKickUser, groupPeer_, ImActorModelApiGroupOutPeer *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestKickUser, user_, ImActorModelApiUserOutPeer *)

@implementation ImActorModelApiRpcRequestKickUser

+ (ImActorModelApiRpcRequestKickUser *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestKickUser_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiGroupOutPeer:(ImActorModelApiGroupOutPeer *)groupPeer
                                           withLong:(jlong)rid
                     withImActorModelApiUserOutPeer:(ImActorModelApiUserOutPeer *)user {
  if (self = [super init]) {
    ImActorModelApiRpcRequestKickUser_set_groupPeer_(self, groupPeer);
    self->rid_ = rid;
    ImActorModelApiRpcRequestKickUser_set_user_(self, user);
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiGroupOutPeer *)getGroupPeer {
  return self->groupPeer_;
}

- (jlong)getRid {
  return self->rid_;
}

- (ImActorModelApiUserOutPeer *)getUser {
  return self->user_;
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
  ImActorModelApiRpcRequestKickUser_set_groupPeer_(self, [((ComDroidkitBserBserValues *) nil_chk(values)) getObjWithInt:1 withIOSClass:ImActorModelApiGroupOutPeer_class_()]);
  self->rid_ = [values getLongWithInt:4];
  ImActorModelApiRpcRequestKickUser_set_user_(self, [values getObjWithInt:3 withIOSClass:ImActorModelApiUserOutPeer_class_()]);
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [((ComDroidkitBserBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withComDroidkitBserBserObject:self->groupPeer_];
  [writer writeLongWithInt:4 withLong:self->rid_];
  if (self->user_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [writer writeObjectWithInt:3 withComDroidkitBserBserObject:self->user_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestKickUser_HEADER;
}

- (void)dealloc {
  RELEASE_(groupPeer_);
  RELEASE_(user_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestKickUser *)other {
  [super copyAllFieldsTo:other];
  ImActorModelApiRpcRequestKickUser_set_groupPeer_(other, groupPeer_);
  other->rid_ = rid_;
  ImActorModelApiRpcRequestKickUser_set_user_(other, user_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.RequestKickUser;", 0x9, "Ljava.io.IOException;" },
    { "initWithImActorModelApiGroupOutPeer:withLong:withImActorModelApiUserOutPeer:", "RequestKickUser", NULL, 0x1, NULL },
    { "init", "RequestKickUser", NULL, 0x1, NULL },
    { "getGroupPeer", NULL, "Lim.actor.model.api.GroupOutPeer;", 0x1, NULL },
    { "getRid", NULL, "J", 0x1, NULL },
    { "getUser", NULL, "Lim.actor.model.api.UserOutPeer;", 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcRequestKickUser_HEADER },
    { "groupPeer_", NULL, 0x2, "Lim.actor.model.api.GroupOutPeer;", NULL,  },
    { "rid_", NULL, 0x2, "J", NULL,  },
    { "user_", NULL, 0x2, "Lim.actor.model.api.UserOutPeer;", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.api.rpc.ResponseSeqDate;"};
  static const J2ObjcClassInfo _ImActorModelApiRpcRequestKickUser = { 1, "RequestKickUser", "im.actor.model.api.rpc", NULL, 0x1, 9, methods, 4, fields, 1, superclass_type_args};
  return &_ImActorModelApiRpcRequestKickUser;
}

@end

ImActorModelApiRpcRequestKickUser *ImActorModelApiRpcRequestKickUser_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestKickUser_init();
  return ((ImActorModelApiRpcRequestKickUser *) ComDroidkitBserBser_parseWithIOSClass_withByteArray_(ImActorModelApiRpcRequestKickUser_class_(), data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestKickUser)