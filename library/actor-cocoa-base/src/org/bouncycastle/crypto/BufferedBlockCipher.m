//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/crypto/BufferedBlockCipher.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/crypto/BufferedBlockCipher.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/System.h"
#include "org/bouncycastle/crypto/BlockCipher.h"
#include "org/bouncycastle/crypto/BufferedBlockCipher.h"
#include "org/bouncycastle/crypto/CipherParameters.h"
#include "org/bouncycastle/crypto/DataLengthException.h"
#include "org/bouncycastle/crypto/InvalidCipherTextException.h"
#include "org/bouncycastle/crypto/OutputLengthException.h"
#include "org/bouncycastle/crypto/StreamCipher.h"


#line 12
@implementation OrgBouncycastleCryptoBufferedBlockCipher


#line 26
- (instancetype)init {
  OrgBouncycastleCryptoBufferedBlockCipher_init(self);
  return self;
}


#line 35
- (instancetype)initWithOrgBouncycastleCryptoBlockCipher:(id<OrgBouncycastleCryptoBlockCipher>)cipher {
  OrgBouncycastleCryptoBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_(self, cipher);
  return self;
}


#line 66
- (id<OrgBouncycastleCryptoBlockCipher>)getUnderlyingCipher {
  
#line 68
  return cipher_;
}


#line 80
- (void)init__WithBoolean:(jboolean)forEncryption
withOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)params {
  
#line 85
  self->forEncryption_ = forEncryption;
  
#line 87
  [self reset];
  
#line 89
  [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) init__WithBoolean:forEncryption withOrgBouncycastleCryptoCipherParameters:params];
}


#line 97
- (jint)getBlockSize {
  
#line 99
  return [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) getBlockSize];
}


#line 110
- (jint)getUpdateOutputSizeWithInt:(jint)len {
  
#line 113
  jint total = len + bufOff_;
  jint leftOver;
  
#line 116
  if (pgpCFB_) {
    
#line 118
    leftOver = total % ((IOSByteArray *) nil_chk(buf_))->size_ - ([((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) getBlockSize] + 2);
  }
  else {
    
#line 122
    leftOver = total % ((IOSByteArray *) nil_chk(buf_))->size_;
  }
  
#line 125
  return total - leftOver;
}


#line 136
- (jint)getOutputSizeWithInt:(jint)length {
  
#line 140
  return length + bufOff_;
}


#line 153
- (jint)processByteWithByte:(jbyte)inArg
              withByteArray:(IOSByteArray *)outArg
                    withInt:(jint)outOff {
  
#line 159
  jint resultLen = 0;
  
#line 161
  *IOSByteArray_GetRef(nil_chk(buf_), bufOff_++) = inArg;
  
#line 163
  if (bufOff_ == buf_->size_) {
    
#line 165
    resultLen = [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) processBlockWithByteArray:buf_ withInt:0 withByteArray:outArg withInt:outOff];
    bufOff_ = 0;
  }
  
#line 169
  return resultLen;
}


#line 184
- (jint)processBytesWithByteArray:(IOSByteArray *)inArg
                          withInt:(jint)inOff
                          withInt:(jint)len
                    withByteArray:(IOSByteArray *)outArg
                          withInt:(jint)outOff {
  
#line 192
  if (len < 0) {
    
#line 194
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Can't have a negative input length!");
  }
  
#line 197
  jint blockSize = [self getBlockSize];
  jint length = [self getUpdateOutputSizeWithInt:len];
  
#line 200
  if (length > 0) {
    
#line 202
    if ((outOff + length) > ((IOSByteArray *) nil_chk(outArg))->size_) {
      
#line 204
      @throw new_OrgBouncycastleCryptoOutputLengthException_initWithNSString_(@"output buffer too short");
    }
  }
  
#line 208
  jint resultLen = 0;
  jint gapLen = ((IOSByteArray *) nil_chk(buf_))->size_ - bufOff_;
  
#line 211
  if (len > gapLen) {
    
#line 213
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(inArg, inOff, buf_, bufOff_, gapLen);
    
#line 215
    resultLen += [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) processBlockWithByteArray:buf_ withInt:0 withByteArray:outArg withInt:outOff];
    
#line 217
    bufOff_ = 0;
    len -= gapLen;
    inOff += gapLen;
    
#line 221
    while (len > buf_->size_) {
      
#line 223
      resultLen += [cipher_ processBlockWithByteArray:inArg withInt:inOff withByteArray:outArg withInt:outOff + resultLen];
      
#line 225
      len -= blockSize;
      inOff += blockSize;
    }
  }
  
#line 230
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(inArg, inOff, buf_, bufOff_, len);
  
#line 232
  bufOff_ += len;
  
#line 234
  if (bufOff_ == buf_->size_) {
    
#line 236
    resultLen += [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) processBlockWithByteArray:buf_ withInt:0 withByteArray:outArg withInt:outOff + resultLen];
    bufOff_ = 0;
  }
  
#line 240
  return resultLen;
}


#line 257
- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff {
  
#line 262
  @try {
    
#line 264
    jint resultLen = 0;
    
#line 266
    if (outOff + bufOff_ > ((IOSByteArray *) nil_chk(outArg))->size_) {
      
#line 268
      @throw new_OrgBouncycastleCryptoOutputLengthException_initWithNSString_(@"output buffer too short for doFinal()");
    }
    
#line 271
    if (bufOff_ != 0) {
      
#line 273
      if (!partialBlockOkay_) {
        
#line 275
        @throw new_OrgBouncycastleCryptoDataLengthException_initWithNSString_(@"data not block size aligned");
      }
      
#line 278
      [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) processBlockWithByteArray:buf_ withInt:0 withByteArray:buf_ withInt:0];
      resultLen = bufOff_;
      bufOff_ = 0;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buf_, 0, outArg, outOff, resultLen);
    }
    
#line 284
    return resultLen;
  }
  @finally {
    
#line 288
    [self reset];
  }
}


#line 296
- (void)reset {
  
#line 301
  for (jint i = 0; i < ((IOSByteArray *) nil_chk(buf_))->size_; i++) {
    
#line 303
    *IOSByteArray_GetRef(buf_, i) = 0;
  }
  
#line 306
  bufOff_ = 0;
  
#line 311
  [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_)) reset];
}

@end


#line 26
void OrgBouncycastleCryptoBufferedBlockCipher_init(OrgBouncycastleCryptoBufferedBlockCipher *self) {
  (void) NSObject_init(self);
}


#line 26
OrgBouncycastleCryptoBufferedBlockCipher *new_OrgBouncycastleCryptoBufferedBlockCipher_init() {
  OrgBouncycastleCryptoBufferedBlockCipher *self = [OrgBouncycastleCryptoBufferedBlockCipher alloc];
  OrgBouncycastleCryptoBufferedBlockCipher_init(self);
  return self;
}


#line 35
void OrgBouncycastleCryptoBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_(OrgBouncycastleCryptoBufferedBlockCipher *self, id<OrgBouncycastleCryptoBlockCipher> cipher) {
  (void) NSObject_init(self);
  
#line 38
  self->cipher_ = cipher;
  
#line 40
  self->buf_ = [IOSByteArray newArrayWithLength:[((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher)) getBlockSize]];
  self->bufOff_ = 0;
  
#line 46
  NSString *name = [cipher getAlgorithmName];
  jint idx = [((NSString *) nil_chk(name)) indexOf:'/'] + 1;
  
#line 49
  self->pgpCFB_ = (idx > 0 && [name hasPrefix:@"PGP" offset:idx]);
  
#line 51
  if (self->pgpCFB_ || [OrgBouncycastleCryptoStreamCipher_class_() isInstance:cipher]) {
    
#line 53
    self->partialBlockOkay_ = YES;
  }
  else {
    
#line 57
    self->partialBlockOkay_ = (idx > 0 && ([name hasPrefix:@"OpenPGP" offset:idx]));
  }
}


#line 35
OrgBouncycastleCryptoBufferedBlockCipher *new_OrgBouncycastleCryptoBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_(id<OrgBouncycastleCryptoBlockCipher> cipher) {
  OrgBouncycastleCryptoBufferedBlockCipher *self = [OrgBouncycastleCryptoBufferedBlockCipher alloc];
  OrgBouncycastleCryptoBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_(self, cipher);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoBufferedBlockCipher)
