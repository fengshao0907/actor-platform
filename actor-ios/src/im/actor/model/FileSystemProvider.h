//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/FileSystemProvider.java
//

#ifndef _AMFileSystemProvider_H_
#define _AMFileSystemProvider_H_

@class AMFileReference;
@protocol AMFileSystemReference;

#include "J2ObjC_header.h"

@protocol AMFileSystemProvider < NSObject, JavaObject >

- (id<AMFileSystemReference>)createTempFile;

- (id<AMFileSystemReference>)commitTempFile:(id<AMFileSystemReference>)sourceFile withReference:(AMFileReference *)fileReference;

- (jboolean)isFsPersistent;

- (id<AMFileSystemReference>)fileFromDescriptor:(NSString *)descriptor;

@end

J2OBJC_EMPTY_STATIC_INIT(AMFileSystemProvider)

#define ImActorModelFileSystemProvider AMFileSystemProvider

J2OBJC_TYPE_LITERAL_HEADER(AMFileSystemProvider)

#endif // _AMFileSystemProvider_H_