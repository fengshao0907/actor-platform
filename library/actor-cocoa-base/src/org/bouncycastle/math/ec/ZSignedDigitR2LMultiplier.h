//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/math/ec/ZSignedDigitR2LMultiplier.java
//

#ifndef _OrgBouncycastleMathEcZSignedDigitR2LMultiplier_H_
#define _OrgBouncycastleMathEcZSignedDigitR2LMultiplier_H_

#include "J2ObjC_header.h"
#include "org/bouncycastle/math/ec/AbstractECMultiplier.h"

@class JavaMathBigInteger;
@class OrgBouncycastleMathEcECPoint;

@interface OrgBouncycastleMathEcZSignedDigitR2LMultiplier : OrgBouncycastleMathEcAbstractECMultiplier

#pragma mark Public

- (instancetype)init;

#pragma mark Protected

- (OrgBouncycastleMathEcECPoint *)multiplyPositiveWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                            withJavaMathBigInteger:(JavaMathBigInteger *)k;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleMathEcZSignedDigitR2LMultiplier)

FOUNDATION_EXPORT void OrgBouncycastleMathEcZSignedDigitR2LMultiplier_init(OrgBouncycastleMathEcZSignedDigitR2LMultiplier *self);

FOUNDATION_EXPORT OrgBouncycastleMathEcZSignedDigitR2LMultiplier *new_OrgBouncycastleMathEcZSignedDigitR2LMultiplier_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcZSignedDigitR2LMultiplier)

#endif // _OrgBouncycastleMathEcZSignedDigitR2LMultiplier_H_
