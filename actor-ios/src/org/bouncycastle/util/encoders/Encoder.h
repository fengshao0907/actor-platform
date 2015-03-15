//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/util/encoders/Encoder.java
//

#ifndef _OrgBouncycastleUtilEncodersEncoder_H_
#define _OrgBouncycastleUtilEncodersEncoder_H_

@class IOSByteArray;
@class JavaIoOutputStream;

#include "J2ObjC_header.h"

@protocol OrgBouncycastleUtilEncodersEncoder < NSObject, JavaObject >

- (jint)encodeWithByteArray:(IOSByteArray *)data
                    withInt:(jint)off
                    withInt:(jint)length
     withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (jint)decodeWithByteArray:(IOSByteArray *)data
                    withInt:(jint)off
                    withInt:(jint)length
     withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (jint)decodeWithNSString:(NSString *)data
    withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleUtilEncodersEncoder)

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleUtilEncodersEncoder)

#endif // _OrgBouncycastleUtilEncodersEncoder_H_