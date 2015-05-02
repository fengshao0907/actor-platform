//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/AppStateModule.java
//

#ifndef _ImActorModelModulesAppStateModule_H_
#define _ImActorModelModulesAppStateModule_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/BaseModule.h"

@class AMAppStateVM;
@class ImActorModelModulesModules;

@interface ImActorModelModulesAppStateModule : ImActorModelModulesBaseModule

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (AMAppStateVM *)getAppStateVM;

- (void)onBookImported;

- (void)onContactsLoaded;

- (void)onContactsUpdateWithBoolean:(jboolean)isEmpty;

- (void)onDialogsLoaded;

- (void)onDialogsUpdateWithBoolean:(jboolean)isEmpty;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesAppStateModule)

FOUNDATION_EXPORT void ImActorModelModulesAppStateModule_initWithImActorModelModulesModules_(ImActorModelModulesAppStateModule *self, ImActorModelModulesModules *modules);

FOUNDATION_EXPORT ImActorModelModulesAppStateModule *new_ImActorModelModulesAppStateModule_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesAppStateModule)

#endif // _ImActorModelModulesAppStateModule_H_
