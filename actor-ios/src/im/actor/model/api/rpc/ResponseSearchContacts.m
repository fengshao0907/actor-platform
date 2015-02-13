//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/ResponseSearchContacts.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/Bser.h"
#include "com/droidkit/bser/BserObject.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/rpc/ResponseSearchContacts.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcResponseSearchContacts () {
 @public
  id<JavaUtilList> users_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseSearchContacts, users_, id<JavaUtilList>)

@implementation ImActorModelApiRpcResponseSearchContacts

+ (ImActorModelApiRpcResponseSearchContacts *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseSearchContacts_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)users {
  if (self = [super init]) {
    ImActorModelApiRpcResponseSearchContacts_set_users_(self, users);
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
  ImActorModelApiRpcResponseSearchContacts_set_users_(self, [((ComDroidkitBserBserValues *) nil_chk(values)) getRepeatedObjWithInt:1 withIOSClass:ImActorModelApiUser_class_()]);
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
  [((ComDroidkitBserBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->users_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcResponseSearchContacts_HEADER;
}

- (void)dealloc {
  RELEASE_(users_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcResponseSearchContacts *)other {
  [super copyAllFieldsTo:other];
  ImActorModelApiRpcResponseSearchContacts_set_users_(other, users_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.ResponseSearchContacts;", 0x9, "Ljava.io.IOException;" },
    { "initWithJavaUtilList:", "ResponseSearchContacts", NULL, 0x1, NULL },
    { "init", "ResponseSearchContacts", NULL, 0x1, NULL },
    { "getUsers", NULL, "Ljava.util.List;", 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcResponseSearchContacts_HEADER },
    { "users_", NULL, 0x2, "Ljava.util.List;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiRpcResponseSearchContacts = { 1, "ResponseSearchContacts", "im.actor.model.api.rpc", NULL, 0x1, 7, methods, 2, fields, 0, NULL};
  return &_ImActorModelApiRpcResponseSearchContacts;
}

@end

ImActorModelApiRpcResponseSearchContacts *ImActorModelApiRpcResponseSearchContacts_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseSearchContacts_init();
  return ((ImActorModelApiRpcResponseSearchContacts *) ComDroidkitBserBser_parseWithIOSClass_withByteArray_(ImActorModelApiRpcResponseSearchContacts_class_(), data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseSearchContacts)