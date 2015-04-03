//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/mailbox/Envelope.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/mailbox/Envelope.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorScope.h"
#include "im/actor/model/droidkit/actors/ActorTime.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"

@interface DKEnvelope () {
 @public
  id message_;
  DKActorRef *sender_;
  DKMailbox *mailbox_;
  DKActorScope *scope_;
  jlong sendTime_;
}
@end

J2OBJC_FIELD_SETTER(DKEnvelope, message_, id)
J2OBJC_FIELD_SETTER(DKEnvelope, sender_, DKActorRef *)
J2OBJC_FIELD_SETTER(DKEnvelope, mailbox_, DKMailbox *)
J2OBJC_FIELD_SETTER(DKEnvelope, scope_, DKActorScope *)


#line 12
@implementation DKEnvelope


#line 26
- (instancetype)initWithId:(id)message
          withDKActorScope:(DKActorScope *)scope
             withDKMailbox:(DKMailbox *)mailbox
            withDKActorRef:(DKActorRef *)sender {
  if (self = [super init]) {
    
#line 27
    self->scope_ = scope;
    
#line 28
    self->message_ = message;
    
#line 29
    self->sender_ = sender;
    
#line 30
    self->mailbox_ = mailbox;
    
#line 31
    self->sendTime_ = DKActorTime_currentTime();
  }
  return self;
}


#line 34
- (DKActorScope *)getScope {
  
#line 35
  return scope_;
}


#line 43
- (id)getMessage {
  
#line 44
  return message_;
}


#line 52
- (DKMailbox *)getMailbox {
  
#line 53
  return mailbox_;
}


#line 61
- (DKActorRef *)getSender {
  
#line 62
  return sender_;
}


#line 65
- (jlong)getSendTime {
  
#line 66
  return sendTime_;
}

- (NSString *)description {
  return JreStrcat("C@$$C", '{', message_, @" -> ", [((DKActorScope *) nil_chk(scope_)) getPath], '}');
}

- (void)copyAllFieldsTo:(DKEnvelope *)other {
  [super copyAllFieldsTo:other];
  other->message_ = message_;
  other->sender_ = sender_;
  other->mailbox_ = mailbox_;
  other->scope_ = scope_;
  other->sendTime_ = sendTime_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKEnvelope)