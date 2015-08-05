//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/messages/OwnReadActor.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/entity/ContentDescription.h"
#include "im/actor/model/entity/Message.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/TextContent.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Notifications.h"
#include "im/actor/model/modules/messages/ConversationActor.h"
#include "im/actor/model/modules/messages/CursorReaderActor.h"
#include "im/actor/model/modules/messages/OwnReadActor.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"

@interface ImActorModelModulesMessagesOwnReadActor_InMessage () {
 @public
  AMPeer *peer_;
  AMMessage *message_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesOwnReadActor_InMessage, peer_, AMPeer *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesOwnReadActor_InMessage, message_, AMMessage *)

@implementation ImActorModelModulesMessagesOwnReadActor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  ImActorModelModulesMessagesOwnReadActor_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

- (void)onInMessageWithAMPeer:(AMPeer *)peer
                withAMMessage:(AMMessage *)message {
  jlong readState = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) loadReadStateWithAMPeer:peer];
  if ([((AMMessage *) nil_chk(message)) getSortDate] <= readState) {
    return;
  }
  jboolean hasUserMention = NO;
  if ([[message getContent] isKindOfClass:[AMTextContent class]]) {
    AMTextContent *textContent = (AMTextContent *) check_class_cast([message getContent], [AMTextContent class]);
    hasUserMention = [((JavaUtilArrayList *) nil_chk([((AMTextContent *) nil_chk(textContent)) getMentions])) containsWithId:JavaLangInteger_valueOfWithInt_([self myUid])];
  }
  [((ImActorModelModulesNotifications *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getNotifications])) onInMessageWithAMPeer:peer withInt:[message getSenderId] withLong:[message getSortDate] withAMContentDescription:AMContentDescription_fromContentWithAMAbsContent_([message getContent]) withBoolean:hasUserMention];
}

- (void)onMessageReadWithAMPeer:(AMPeer *)peer
                       withLong:(jlong)sortingDate {
  jlong readState = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) loadReadStateWithAMPeer:peer];
  if (sortingDate <= readState) {
    return;
  }
  [((DKActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getPlainReadActor])) sendWithId:new_ImActorModelModulesMessagesCursorReaderActor_MarkRead_initWithAMPeer_withLong_(peer, sortingDate)];
  [((DKActorRef *) nil_chk([self getConversationActorWithAMPeer:peer])) sendWithId:new_ImActorModelModulesMessagesConversationActor_MessageReadByMe_initWithLong_(sortingDate)];
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) saveReadStateWithAMPeer:peer withLong:sortingDate];
  [((ImActorModelModulesNotifications *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getNotifications])) onOwnReadWithAMPeer:peer withLong:sortingDate];
}

- (void)onMessageReadByMeWithAMPeer:(AMPeer *)peer
                           withLong:(jlong)sortingDate {
  jlong readState = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) loadReadStateWithAMPeer:peer];
  if (sortingDate <= readState) {
    return;
  }
  [((DKActorRef *) nil_chk([self getConversationActorWithAMPeer:peer])) sendWithId:new_ImActorModelModulesMessagesConversationActor_MessageReadByMe_initWithLong_(sortingDate)];
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) saveReadStateWithAMPeer:peer withLong:sortingDate];
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorModelModulesMessagesOwnReadActor_MessageRead class]]) {
    ImActorModelModulesMessagesOwnReadActor_MessageRead *messageRead = (ImActorModelModulesMessagesOwnReadActor_MessageRead *) check_class_cast(message, [ImActorModelModulesMessagesOwnReadActor_MessageRead class]);
    [self onMessageReadWithAMPeer:[((ImActorModelModulesMessagesOwnReadActor_MessageRead *) nil_chk(messageRead)) getPeer] withLong:[messageRead getSortingDate]];
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesOwnReadActor_MessageReadByMe class]]) {
    ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *readByMe = (ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *) check_class_cast(message, [ImActorModelModulesMessagesOwnReadActor_MessageReadByMe class]);
    [self onMessageReadByMeWithAMPeer:[((ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *) nil_chk(readByMe)) getPeer] withLong:[readByMe getSortDate]];
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesOwnReadActor_InMessage class]]) {
    ImActorModelModulesMessagesOwnReadActor_InMessage *inMessage = (ImActorModelModulesMessagesOwnReadActor_InMessage *) check_class_cast(message, [ImActorModelModulesMessagesOwnReadActor_InMessage class]);
    [self onInMessageWithAMPeer:[((ImActorModelModulesMessagesOwnReadActor_InMessage *) nil_chk(inMessage)) getPeer] withAMMessage:[inMessage getMessage]];
  }
  else {
    [self dropWithId:message];
  }
}

@end

void ImActorModelModulesMessagesOwnReadActor_initWithImActorModelModulesModules_(ImActorModelModulesMessagesOwnReadActor *self, ImActorModelModulesModules *messenger) {
  (void) ImActorModelModulesUtilsModuleActor_initWithImActorModelModulesModules_(self, messenger);
}

ImActorModelModulesMessagesOwnReadActor *new_ImActorModelModulesMessagesOwnReadActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) {
  ImActorModelModulesMessagesOwnReadActor *self = [ImActorModelModulesMessagesOwnReadActor alloc];
  ImActorModelModulesMessagesOwnReadActor_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesOwnReadActor)

@implementation ImActorModelModulesMessagesOwnReadActor_MessageReadByMe

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)sortDate {
  ImActorModelModulesMessagesOwnReadActor_MessageReadByMe_initWithAMPeer_withLong_(self, peer, sortDate);
  return self;
}

- (AMPeer *)getPeer {
  return peer_;
}

- (jlong)getSortDate {
  return sortDate_;
}

@end

void ImActorModelModulesMessagesOwnReadActor_MessageReadByMe_initWithAMPeer_withLong_(ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *self, AMPeer *peer, jlong sortDate) {
  (void) NSObject_init(self);
  self->peer_ = peer;
  self->sortDate_ = sortDate;
}

ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *new_ImActorModelModulesMessagesOwnReadActor_MessageReadByMe_initWithAMPeer_withLong_(AMPeer *peer, jlong sortDate) {
  ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *self = [ImActorModelModulesMessagesOwnReadActor_MessageReadByMe alloc];
  ImActorModelModulesMessagesOwnReadActor_MessageReadByMe_initWithAMPeer_withLong_(self, peer, sortDate);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesOwnReadActor_MessageReadByMe)

@implementation ImActorModelModulesMessagesOwnReadActor_MessageRead

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)sortingDate {
  ImActorModelModulesMessagesOwnReadActor_MessageRead_initWithAMPeer_withLong_(self, peer, sortingDate);
  return self;
}

- (AMPeer *)getPeer {
  return peer_;
}

- (jlong)getSortingDate {
  return sortingDate_;
}

@end

void ImActorModelModulesMessagesOwnReadActor_MessageRead_initWithAMPeer_withLong_(ImActorModelModulesMessagesOwnReadActor_MessageRead *self, AMPeer *peer, jlong sortingDate) {
  (void) NSObject_init(self);
  self->peer_ = peer;
  self->sortingDate_ = sortingDate;
}

ImActorModelModulesMessagesOwnReadActor_MessageRead *new_ImActorModelModulesMessagesOwnReadActor_MessageRead_initWithAMPeer_withLong_(AMPeer *peer, jlong sortingDate) {
  ImActorModelModulesMessagesOwnReadActor_MessageRead *self = [ImActorModelModulesMessagesOwnReadActor_MessageRead alloc];
  ImActorModelModulesMessagesOwnReadActor_MessageRead_initWithAMPeer_withLong_(self, peer, sortingDate);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesOwnReadActor_MessageRead)

@implementation ImActorModelModulesMessagesOwnReadActor_InMessage

- (instancetype)initWithAMPeer:(AMPeer *)peer
                 withAMMessage:(AMMessage *)message {
  ImActorModelModulesMessagesOwnReadActor_InMessage_initWithAMPeer_withAMMessage_(self, peer, message);
  return self;
}

- (AMPeer *)getPeer {
  return peer_;
}

- (AMMessage *)getMessage {
  return message_;
}

@end

void ImActorModelModulesMessagesOwnReadActor_InMessage_initWithAMPeer_withAMMessage_(ImActorModelModulesMessagesOwnReadActor_InMessage *self, AMPeer *peer, AMMessage *message) {
  (void) NSObject_init(self);
  self->peer_ = peer;
  self->message_ = message;
}

ImActorModelModulesMessagesOwnReadActor_InMessage *new_ImActorModelModulesMessagesOwnReadActor_InMessage_initWithAMPeer_withAMMessage_(AMPeer *peer, AMMessage *message) {
  ImActorModelModulesMessagesOwnReadActor_InMessage *self = [ImActorModelModulesMessagesOwnReadActor_InMessage alloc];
  ImActorModelModulesMessagesOwnReadActor_InMessage_initWithAMPeer_withAMMessage_(self, peer, message);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesOwnReadActor_InMessage)