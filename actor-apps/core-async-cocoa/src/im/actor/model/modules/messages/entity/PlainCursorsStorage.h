//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/messages/entity/PlainCursorsStorage.java
//

#ifndef _ImActorModelModulesMessagesEntityPlainCursorsStorage_H_
#define _ImActorModelModulesMessagesEntityPlainCursorsStorage_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class AMPeer;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelModulesMessagesEntityPlainCursor;
@protocol JavaUtilCollection;

@interface ImActorModelModulesMessagesEntityPlainCursorsStorage : BSBserObject

#pragma mark Public

- (instancetype)init;

+ (ImActorModelModulesMessagesEntityPlainCursorsStorage *)fromBytesWithByteArray:(IOSByteArray *)data;

- (id<JavaUtilCollection>)getAllCursors;

- (ImActorModelModulesMessagesEntityPlainCursor *)getCursorWithAMPeer:(AMPeer *)peer;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)putCursorWithImActorModelModulesMessagesEntityPlainCursor:(ImActorModelModulesMessagesEntityPlainCursor *)cursor;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesEntityPlainCursorsStorage)

FOUNDATION_EXPORT ImActorModelModulesMessagesEntityPlainCursorsStorage *ImActorModelModulesMessagesEntityPlainCursorsStorage_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelModulesMessagesEntityPlainCursorsStorage_init(ImActorModelModulesMessagesEntityPlainCursorsStorage *self);

FOUNDATION_EXPORT ImActorModelModulesMessagesEntityPlainCursorsStorage *new_ImActorModelModulesMessagesEntityPlainCursorsStorage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesEntityPlainCursorsStorage)

#endif // _ImActorModelModulesMessagesEntityPlainCursorsStorage_H_