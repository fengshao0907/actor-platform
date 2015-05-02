//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateGroupUserAdded.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateGroupUserAdded.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateGroupUserAdded.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateGroupUserAdded () {
 @public
  jint groupId_;
  jlong rid_;
  jint uid_;
  jint inviterUid_;
  jlong date_;
}

@end


#line 20
@implementation ImActorModelApiUpdatesUpdateGroupUserAdded


#line 23
+ (ImActorModelApiUpdatesUpdateGroupUserAdded *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateGroupUserAdded_fromBytesWithByteArray_(data);
}


#line 33
- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                    withInt:(jint)inviterUid
                   withLong:(jlong)date {
  ImActorModelApiUpdatesUpdateGroupUserAdded_initWithInt_withLong_withInt_withInt_withLong_(self, groupId, rid, uid, inviterUid, date);
  return self;
}


#line 41
- (instancetype)init {
  ImActorModelApiUpdatesUpdateGroupUserAdded_init(self);
  return self;
}


#line 45
- (jint)getGroupId {
  return self->groupId_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jint)getUid {
  return self->uid_;
}

- (jint)getInviterUid {
  return self->inviterUid_;
}

- (jlong)getDate {
  return self->date_;
}


#line 66
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->rid_ = [values getLongWithInt:5];
  self->uid_ = [values getIntWithInt:2];
  self->inviterUid_ = [values getIntWithInt:3];
  self->date_ = [values getLongWithInt:4];
}


#line 75
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:5 withLong:self->rid_];
  [writer writeIntWithInt:2 withInt:self->uid_];
  [writer writeIntWithInt:3 withInt:self->inviterUid_];
  [writer writeLongWithInt:4 withLong:self->date_];
}


#line 84
- (NSString *)description {
  NSString *res = @"update GroupUserAdded{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groupId=", self->groupId_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", uid=", self->uid_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", inviterUid=", self->inviterUid_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", date=", self->date_));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 96
- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateGroupUserAdded_HEADER;
}

@end


#line 23
ImActorModelApiUpdatesUpdateGroupUserAdded *ImActorModelApiUpdatesUpdateGroupUserAdded_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateGroupUserAdded_initialize();
  
#line 24
  return ((ImActorModelApiUpdatesUpdateGroupUserAdded *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiUpdatesUpdateGroupUserAdded_init(), data));
}


#line 33
void ImActorModelApiUpdatesUpdateGroupUserAdded_initWithInt_withLong_withInt_withInt_withLong_(ImActorModelApiUpdatesUpdateGroupUserAdded *self, jint groupId, jlong rid, jint uid, jint inviterUid, jlong date) {
  (void) ImActorModelNetworkParserUpdate_init(self);
  
#line 34
  self->groupId_ = groupId;
  self->rid_ = rid;
  self->uid_ = uid;
  self->inviterUid_ = inviterUid;
  self->date_ = date;
}


#line 33
ImActorModelApiUpdatesUpdateGroupUserAdded *new_ImActorModelApiUpdatesUpdateGroupUserAdded_initWithInt_withLong_withInt_withInt_withLong_(jint groupId, jlong rid, jint uid, jint inviterUid, jlong date) {
  ImActorModelApiUpdatesUpdateGroupUserAdded *self = [ImActorModelApiUpdatesUpdateGroupUserAdded alloc];
  ImActorModelApiUpdatesUpdateGroupUserAdded_initWithInt_withLong_withInt_withInt_withLong_(self, groupId, rid, uid, inviterUid, date);
  return self;
}


#line 41
void ImActorModelApiUpdatesUpdateGroupUserAdded_init(ImActorModelApiUpdatesUpdateGroupUserAdded *self) {
  (void) ImActorModelNetworkParserUpdate_init(self);
}


#line 41
ImActorModelApiUpdatesUpdateGroupUserAdded *new_ImActorModelApiUpdatesUpdateGroupUserAdded_init() {
  ImActorModelApiUpdatesUpdateGroupUserAdded *self = [ImActorModelApiUpdatesUpdateGroupUserAdded alloc];
  ImActorModelApiUpdatesUpdateGroupUserAdded_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateGroupUserAdded)
