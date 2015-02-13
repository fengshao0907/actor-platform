//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/mailbox/collections/sparse/ArrayUtils.java
//

#ifndef _ComDroidkitActorsMailboxCollectionsSparseArrayUtils_H_
#define _ComDroidkitActorsMailboxCollectionsSparseArrayUtils_H_

@class IOSByteArray;
@class IOSClass;
@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;

#include "J2ObjC_header.h"

#define ComDroidkitActorsMailboxCollectionsSparseArrayUtils_CACHE_SIZE 73

@interface ComDroidkitActorsMailboxCollectionsSparseArrayUtils : NSObject {
}

+ (jint)idealByteArraySizeWithInt:(jint)need;

+ (jint)idealBooleanArraySizeWithInt:(jint)need;

+ (jint)idealShortArraySizeWithInt:(jint)need;

+ (jint)idealCharArraySizeWithInt:(jint)need;

+ (jint)idealIntArraySizeWithInt:(jint)need;

+ (jint)idealFloatArraySizeWithInt:(jint)need;

+ (jint)idealObjectArraySizeWithInt:(jint)need;

+ (jint)idealLongArraySizeWithInt:(jint)need;

+ (jboolean)equalsWithByteArray:(IOSByteArray *)array1
                  withByteArray:(IOSByteArray *)array2
                        withInt:(jint)length;

+ (IOSObjectArray *)emptyArrayWithIOSClass:(IOSClass *)kind;

+ (jboolean)containsWithNSObjectArray:(IOSObjectArray *)array
                               withId:(id)value;

+ (jint)indexOfWithNSObjectArray:(IOSObjectArray *)array
                          withId:(id)value;

+ (jboolean)containsAllWithNSObjectArray:(IOSObjectArray *)array
                       withNSObjectArray:(IOSObjectArray *)check;

+ (jboolean)containsWithIntArray:(IOSIntArray *)array
                         withInt:(jint)value;

+ (jlong)totalWithLongArray:(IOSLongArray *)array;

+ (IOSObjectArray *)appendElementWithIOSClass:(IOSClass *)kind
                            withNSObjectArray:(IOSObjectArray *)array
                                       withId:(id)element;

+ (IOSObjectArray *)removeElementWithIOSClass:(IOSClass *)kind
                            withNSObjectArray:(IOSObjectArray *)array
                                       withId:(id)element;

+ (IOSIntArray *)appendIntWithIntArray:(IOSIntArray *)cur
                               withInt:(jint)val;

+ (IOSIntArray *)removeIntWithIntArray:(IOSIntArray *)cur
                               withInt:(jint)val;

@end

FOUNDATION_EXPORT BOOL ComDroidkitActorsMailboxCollectionsSparseArrayUtils_initialized;
J2OBJC_STATIC_INIT(ComDroidkitActorsMailboxCollectionsSparseArrayUtils)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT jint ComDroidkitActorsMailboxCollectionsSparseArrayUtils_idealByteArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ComDroidkitActorsMailboxCollectionsSparseArrayUtils_idealBooleanArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ComDroidkitActorsMailboxCollectionsSparseArrayUtils_idealShortArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ComDroidkitActorsMailboxCollectionsSparseArrayUtils_idealCharArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ComDroidkitActorsMailboxCollectionsSparseArrayUtils_idealIntArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ComDroidkitActorsMailboxCollectionsSparseArrayUtils_idealFloatArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ComDroidkitActorsMailboxCollectionsSparseArrayUtils_idealObjectArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jint ComDroidkitActorsMailboxCollectionsSparseArrayUtils_idealLongArraySizeWithInt_(jint need);

FOUNDATION_EXPORT jboolean ComDroidkitActorsMailboxCollectionsSparseArrayUtils_equalsWithByteArray_withByteArray_withInt_(IOSByteArray *array1, IOSByteArray *array2, jint length);

FOUNDATION_EXPORT IOSObjectArray *ComDroidkitActorsMailboxCollectionsSparseArrayUtils_emptyArrayWithIOSClass_(IOSClass *kind);

FOUNDATION_EXPORT jboolean ComDroidkitActorsMailboxCollectionsSparseArrayUtils_containsWithNSObjectArray_withId_(IOSObjectArray *array, id value);

FOUNDATION_EXPORT jint ComDroidkitActorsMailboxCollectionsSparseArrayUtils_indexOfWithNSObjectArray_withId_(IOSObjectArray *array, id value);

FOUNDATION_EXPORT jboolean ComDroidkitActorsMailboxCollectionsSparseArrayUtils_containsAllWithNSObjectArray_withNSObjectArray_(IOSObjectArray *array, IOSObjectArray *check);

FOUNDATION_EXPORT jboolean ComDroidkitActorsMailboxCollectionsSparseArrayUtils_containsWithIntArray_withInt_(IOSIntArray *array, jint value);

FOUNDATION_EXPORT jlong ComDroidkitActorsMailboxCollectionsSparseArrayUtils_totalWithLongArray_(IOSLongArray *array);

FOUNDATION_EXPORT IOSObjectArray *ComDroidkitActorsMailboxCollectionsSparseArrayUtils_appendElementWithIOSClass_withNSObjectArray_withId_(IOSClass *kind, IOSObjectArray *array, id element);

FOUNDATION_EXPORT IOSObjectArray *ComDroidkitActorsMailboxCollectionsSparseArrayUtils_removeElementWithIOSClass_withNSObjectArray_withId_(IOSClass *kind, IOSObjectArray *array, id element);

FOUNDATION_EXPORT IOSIntArray *ComDroidkitActorsMailboxCollectionsSparseArrayUtils_appendIntWithIntArray_withInt_(IOSIntArray *cur, jint val);

FOUNDATION_EXPORT IOSIntArray *ComDroidkitActorsMailboxCollectionsSparseArrayUtils_removeIntWithIntArray_withInt_(IOSIntArray *cur, jint val);

FOUNDATION_EXPORT IOSObjectArray *ComDroidkitActorsMailboxCollectionsSparseArrayUtils_EMPTY_;
J2OBJC_STATIC_FIELD_GETTER(ComDroidkitActorsMailboxCollectionsSparseArrayUtils, EMPTY_, IOSObjectArray *)
J2OBJC_STATIC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsSparseArrayUtils, EMPTY_, IOSObjectArray *)

J2OBJC_STATIC_FIELD_GETTER(ComDroidkitActorsMailboxCollectionsSparseArrayUtils, CACHE_SIZE, jint)

FOUNDATION_EXPORT IOSObjectArray *ComDroidkitActorsMailboxCollectionsSparseArrayUtils_sCache_;
J2OBJC_STATIC_FIELD_GETTER(ComDroidkitActorsMailboxCollectionsSparseArrayUtils, sCache_, IOSObjectArray *)
J2OBJC_STATIC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsSparseArrayUtils, sCache_, IOSObjectArray *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComDroidkitActorsMailboxCollectionsSparseArrayUtils)

#endif // _ComDroidkitActorsMailboxCollectionsSparseArrayUtils_H_