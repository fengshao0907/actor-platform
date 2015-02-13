//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/dispatch/DispatchResult.java
//

#ifndef _ComDroidkitActorsDispatchDispatchResult_H_
#define _ComDroidkitActorsDispatchDispatchResult_H_

@class JavaLangThreadLocal;

#include "J2ObjC_header.h"

@interface ComDroidkitActorsDispatchDispatchResult : NSObject {
}

+ (ComDroidkitActorsDispatchDispatchResult *)resultWithId:(id)res;

+ (ComDroidkitActorsDispatchDispatchResult *)delayWithLong:(jlong)delay;

- (instancetype)initWithBoolean:(jboolean)isResult
                         withId:(id)res
                       withLong:(jlong)delay;

- (void)updateWithBoolean:(jboolean)isResult
                   withId:(id)res
                 withLong:(jlong)delay;

- (jboolean)isResult;

- (id)getRes;

- (jlong)getDelay;

- (void)recycle;

@end

FOUNDATION_EXPORT BOOL ComDroidkitActorsDispatchDispatchResult_initialized;
J2OBJC_STATIC_INIT(ComDroidkitActorsDispatchDispatchResult)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ComDroidkitActorsDispatchDispatchResult *ComDroidkitActorsDispatchDispatchResult_resultWithId_(id res);

FOUNDATION_EXPORT ComDroidkitActorsDispatchDispatchResult *ComDroidkitActorsDispatchDispatchResult_delayWithLong_(jlong delay);

FOUNDATION_EXPORT JavaLangThreadLocal *ComDroidkitActorsDispatchDispatchResult_FREE_RESULTS_;
J2OBJC_STATIC_FIELD_GETTER(ComDroidkitActorsDispatchDispatchResult, FREE_RESULTS_, JavaLangThreadLocal *)
J2OBJC_STATIC_FIELD_SETTER(ComDroidkitActorsDispatchDispatchResult, FREE_RESULTS_, JavaLangThreadLocal *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComDroidkitActorsDispatchDispatchResult)

#endif // _ComDroidkitActorsDispatchDispatchResult_H_