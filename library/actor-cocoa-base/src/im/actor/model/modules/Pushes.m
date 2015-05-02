//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Pushes.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Pushes.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Pushes.h"
#include "im/actor/model/modules/push/PushRegisterActor.h"

@interface ImActorModelModulesPushes () {
 @public
  DKActorRef *pushActor_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesPushes, pushActor_, DKActorRef *)

@interface ImActorModelModulesPushes_$1 : NSObject < DKActorCreator > {
 @public
  ImActorModelModulesPushes *this$0_;
}

- (ImActorModelModulesPushPushRegisterActor *)create;

- (instancetype)initWithImActorModelModulesPushes:(ImActorModelModulesPushes *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPushes_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesPushes_$1, this$0_, ImActorModelModulesPushes *)

__attribute__((unused)) static void ImActorModelModulesPushes_$1_initWithImActorModelModulesPushes_(ImActorModelModulesPushes_$1 *self, ImActorModelModulesPushes *outer$);

__attribute__((unused)) static ImActorModelModulesPushes_$1 *new_ImActorModelModulesPushes_$1_initWithImActorModelModulesPushes_(ImActorModelModulesPushes *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPushes_$1)


#line 13
@implementation ImActorModelModulesPushes


#line 16
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  ImActorModelModulesPushes_initWithImActorModelModulesModules_(self, modules);
  return self;
}


#line 27
- (void)registerGooglePushWithLong:(jlong)projectId
                      withNSString:(NSString *)token {
  [((DKActorRef *) nil_chk(pushActor_)) sendWithId:new_ImActorModelModulesPushPushRegisterActor_RegisterGooglePush_initWithLong_withNSString_(projectId, token)];
}


#line 31
- (void)registerApplePushWithInt:(jint)apnsKey
                    withNSString:(NSString *)token {
  [((DKActorRef *) nil_chk(pushActor_)) sendWithId:new_ImActorModelModulesPushPushRegisterActor_RegisterApplePush_initWithInt_withNSString_(apnsKey, token)];
}

@end


#line 16
void ImActorModelModulesPushes_initWithImActorModelModulesModules_(ImActorModelModulesPushes *self, ImActorModelModulesModules *modules) {
  (void) ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(self, modules);
  
#line 19
  self->pushActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesPushPushRegisterActor_class_(), new_ImActorModelModulesPushes_$1_initWithImActorModelModulesPushes_(self)) withNSString:
#line 24
  @"actor/push"];
}


#line 16
ImActorModelModulesPushes *new_ImActorModelModulesPushes_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) {
  ImActorModelModulesPushes *self = [ImActorModelModulesPushes alloc];
  ImActorModelModulesPushes_initWithImActorModelModulesModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPushes)

@implementation ImActorModelModulesPushes_$1


#line 21
- (ImActorModelModulesPushPushRegisterActor *)create {
  return new_ImActorModelModulesPushPushRegisterActor_initWithImActorModelModulesModules_([this$0_ modules]);
}

- (instancetype)initWithImActorModelModulesPushes:(ImActorModelModulesPushes *)outer$ {
  ImActorModelModulesPushes_$1_initWithImActorModelModulesPushes_(self, outer$);
  return self;
}

@end

void ImActorModelModulesPushes_$1_initWithImActorModelModulesPushes_(ImActorModelModulesPushes_$1 *self, ImActorModelModulesPushes *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesPushes_$1 *new_ImActorModelModulesPushes_$1_initWithImActorModelModulesPushes_(ImActorModelModulesPushes *outer$) {
  ImActorModelModulesPushes_$1 *self = [ImActorModelModulesPushes_$1 alloc];
  ImActorModelModulesPushes_$1_initWithImActorModelModulesPushes_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPushes_$1)
