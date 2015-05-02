//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseGetFileUrl.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseGetFileUrl.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/ResponseGetFileUrl.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcResponseGetFileUrl () {
 @public
  NSString *url_;
  jint timeout_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetFileUrl, url_, NSString *)


#line 20
@implementation ImActorModelApiRpcResponseGetFileUrl


#line 23
+ (ImActorModelApiRpcResponseGetFileUrl *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseGetFileUrl_fromBytesWithByteArray_(data);
}


#line 30
- (instancetype)initWithNSString:(NSString *)url
                         withInt:(jint)timeout {
  ImActorModelApiRpcResponseGetFileUrl_initWithNSString_withInt_(self, url, timeout);
  return self;
}


#line 35
- (instancetype)init {
  ImActorModelApiRpcResponseGetFileUrl_init(self);
  return self;
}


#line 39
- (NSString *)getUrl {
  return self->url_;
}

- (jint)getTimeout {
  return self->timeout_;
}


#line 48
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->url_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  self->timeout_ = [values getIntWithInt:2];
}


#line 54
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->url_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->url_];
  [writer writeIntWithInt:2 withInt:self->timeout_];
}


#line 63
- (NSString *)description {
  NSString *res = @"tuple GetFileUrl{";
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 70
- (jint)getHeaderKey {
  return ImActorModelApiRpcResponseGetFileUrl_HEADER;
}

@end


#line 23
ImActorModelApiRpcResponseGetFileUrl *ImActorModelApiRpcResponseGetFileUrl_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseGetFileUrl_initialize();
  
#line 24
  return ((ImActorModelApiRpcResponseGetFileUrl *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcResponseGetFileUrl_init(), data));
}

void ImActorModelApiRpcResponseGetFileUrl_initWithNSString_withInt_(ImActorModelApiRpcResponseGetFileUrl *self, NSString *url, jint timeout) {
  (void) ImActorModelNetworkParserResponse_init(self);
  
#line 31
  self->url_ = url;
  self->timeout_ = timeout;
}


#line 30
ImActorModelApiRpcResponseGetFileUrl *new_ImActorModelApiRpcResponseGetFileUrl_initWithNSString_withInt_(NSString *url, jint timeout) {
  ImActorModelApiRpcResponseGetFileUrl *self = [ImActorModelApiRpcResponseGetFileUrl alloc];
  ImActorModelApiRpcResponseGetFileUrl_initWithNSString_withInt_(self, url, timeout);
  return self;
}


#line 35
void ImActorModelApiRpcResponseGetFileUrl_init(ImActorModelApiRpcResponseGetFileUrl *self) {
  (void) ImActorModelNetworkParserResponse_init(self);
}


#line 35
ImActorModelApiRpcResponseGetFileUrl *new_ImActorModelApiRpcResponseGetFileUrl_init() {
  ImActorModelApiRpcResponseGetFileUrl *self = [ImActorModelApiRpcResponseGetFileUrl alloc];
  ImActorModelApiRpcResponseGetFileUrl_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseGetFileUrl)
