//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateMessageReadByMe.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateMessageReadByMe.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateMessageReadByMe () {
 @public
  ImActorModelApiPeer *peer_;
  jlong startDate_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateMessageReadByMe, peer_, ImActorModelApiPeer *)

@implementation ImActorModelApiUpdatesUpdateMessageReadByMe

+ (ImActorModelApiUpdatesUpdateMessageReadByMe *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateMessageReadByMe_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                   withLong:(jlong)startDate {
  if (self = [super init]) {
    self->peer_ = peer;
    self->startDate_ = startDate;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiPeer *)getPeer {
  return self->peer_;
}

- (jlong)getStartDate {
  return self->startDate_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:[[ImActorModelApiPeer alloc] init]];
  self->startDate_ = [values getLongWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  [writer writeLongWithInt:2 withLong:self->startDate_];
}

- (NSString *)description {
  NSString *res = @"update MessageReadByMe{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", startDate=", self->startDate_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateMessageReadByMe_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateMessageReadByMe *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->startDate_ = startDate_;
}

@end

ImActorModelApiUpdatesUpdateMessageReadByMe *ImActorModelApiUpdatesUpdateMessageReadByMe_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateMessageReadByMe_init();
  return ((ImActorModelApiUpdatesUpdateMessageReadByMe *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateMessageReadByMe alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateMessageReadByMe)