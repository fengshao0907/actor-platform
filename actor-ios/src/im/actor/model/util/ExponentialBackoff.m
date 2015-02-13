//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/util/ExponentialBackoff.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/util/ExponentialBackoff.h"
#include "java/util/Random.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"

@interface AMExponentialBackoff () {
 @public
  JavaUtilConcurrentAtomicAtomicInteger *currentFailureCount_;
  JavaUtilRandom *random_;
}
@end

J2OBJC_FIELD_SETTER(AMExponentialBackoff, currentFailureCount_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(AMExponentialBackoff, random_, JavaUtilRandom *)

@implementation AMExponentialBackoff

- (jlong)exponentialWait {
  jlong maxDelay = AMExponentialBackoff_MIN_DELAY + ((AMExponentialBackoff_MAX_DELAY - AMExponentialBackoff_MIN_DELAY) / AMExponentialBackoff_MAX_FAILURE_COUNT) * [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(currentFailureCount_)) get];
  @synchronized(random_) {
    return J2ObjCFpToLong(([((JavaUtilRandom *) nil_chk(random_)) nextFloat] * maxDelay));
  }
}

- (void)onFailure {
  jint val = [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(currentFailureCount_)) incrementAndGet];
  if (val > 50) {
    [currentFailureCount_ compareAndSetWithInt:val withInt:AMExponentialBackoff_MAX_FAILURE_COUNT];
  }
}

- (void)onSuccess {
  [self reset];
}

- (void)reset {
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(currentFailureCount_)) setWithInt:0];
}

- (instancetype)init {
  if (self = [super init]) {
    AMExponentialBackoff_setAndConsume_currentFailureCount_(self, [[JavaUtilConcurrentAtomicAtomicInteger alloc] init]);
    AMExponentialBackoff_setAndConsume_random_(self, [[JavaUtilRandom alloc] init]);
  }
  return self;
}

- (void)dealloc {
  RELEASE_(currentFailureCount_);
  RELEASE_(random_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(AMExponentialBackoff *)other {
  [super copyAllFieldsTo:other];
  AMExponentialBackoff_set_currentFailureCount_(other, currentFailureCount_);
  AMExponentialBackoff_set_random_(other, random_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "exponentialWait", NULL, "J", 0x1, NULL },
    { "onFailure", NULL, "V", 0x1, NULL },
    { "onSuccess", NULL, "V", 0x1, NULL },
    { "reset", NULL, "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MIN_DELAY_", NULL, 0x1a, "I", NULL, .constantValue.asInt = AMExponentialBackoff_MIN_DELAY },
    { "MAX_DELAY_", NULL, 0x1a, "I", NULL, .constantValue.asInt = AMExponentialBackoff_MAX_DELAY },
    { "MAX_FAILURE_COUNT_", NULL, 0x1a, "I", NULL, .constantValue.asInt = AMExponentialBackoff_MAX_FAILURE_COUNT },
    { "currentFailureCount_", NULL, 0x12, "Ljava.util.concurrent.atomic.AtomicInteger;", NULL,  },
    { "random_", NULL, 0x12, "Ljava.util.Random;", NULL,  },
  };
  static const J2ObjcClassInfo _AMExponentialBackoff = { 1, "ExponentialBackoff", "im.actor.model.util", NULL, 0x1, 5, methods, 5, fields, 0, NULL};
  return &_AMExponentialBackoff;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMExponentialBackoff)