//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/content/FileLocalSource.java
//

#ifndef _ImActorModelEntityContentFileLocalSource_H_
#define _ImActorModelEntityContentFileLocalSource_H_

@class ImActorModelDroidkitBserBserValues;
@class ImActorModelDroidkitBserBserWriter;

#include "J2ObjC_header.h"
#include "im/actor/model/entity/content/FileSource.h"

@interface ImActorModelEntityContentFileLocalSource : ImActorModelEntityContentFileSource {
}

+ (ImActorModelEntityContentFileLocalSource *)fromValuesWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)reader;

- (instancetype)initWithNSString:(NSString *)fileName;

- (NSString *)getFileName;

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values;

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelEntityContentFileLocalSource)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelEntityContentFileLocalSource *ImActorModelEntityContentFileLocalSource_fromValuesWithImActorModelDroidkitBserBserValues_(ImActorModelDroidkitBserBserValues *reader);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelEntityContentFileLocalSource)

#endif // _ImActorModelEntityContentFileLocalSource_H_