//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/log/Log.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/log/Log.java"

#include "J2ObjC_source.h"
#include "im/actor/model/LogProvider.h"
#include "im/actor/model/log/Log.h"
#include "java/lang/Throwable.h"

static id<AMLogProvider> AMLog_log_;
J2OBJC_STATIC_FIELD_GETTER(AMLog, log_, id<AMLogProvider>)
J2OBJC_STATIC_FIELD_SETTER(AMLog, log_, id<AMLogProvider>)


#line 8
@implementation AMLog


#line 12
+ (id<AMLogProvider>)getLog {
  return AMLog_getLog();
}

+ (void)setLogWithAMLogProvider:(id<AMLogProvider>)log {
  AMLog_setLogWithAMLogProvider_(log);
}

+ (void)wWithNSString:(NSString *)tag
         withNSString:(NSString *)message {
  AMLog_wWithNSString_withNSString_(tag, message);
}


#line 26
+ (void)eWithNSString:(NSString *)tag
withJavaLangThrowable:(JavaLangThrowable *)throwable {
  AMLog_eWithNSString_withJavaLangThrowable_(tag, throwable);
}


#line 32
+ (void)dWithNSString:(NSString *)tag
         withNSString:(NSString *)message {
  AMLog_dWithNSString_withNSString_(tag, message);
}


#line 38
+ (void)vWithNSString:(NSString *)tag
         withNSString:(NSString *)message {
  AMLog_vWithNSString_withNSString_(tag, message);
}

- (instancetype)init {
  AMLog_init(self);
  return self;
}

@end


#line 12
id<AMLogProvider> AMLog_getLog() {
  AMLog_initialize();
  
#line 13
  return AMLog_log_;
}


#line 16
void AMLog_setLogWithAMLogProvider_(id<AMLogProvider> log) {
  AMLog_initialize();
  
#line 17
  AMLog_log_ = log;
}


#line 20
void AMLog_wWithNSString_withNSString_(NSString *tag, NSString *message) {
  AMLog_initialize();
  
#line 21
  if (AMLog_log_ != nil) {
    [AMLog_log_ w:tag withMessage:message];
  }
}


#line 26
void AMLog_eWithNSString_withJavaLangThrowable_(NSString *tag, JavaLangThrowable *throwable) {
  AMLog_initialize();
  
#line 27
  if (AMLog_log_ != nil) {
    [AMLog_log_ v:tag withError:throwable];
  }
}


#line 32
void AMLog_dWithNSString_withNSString_(NSString *tag, NSString *message) {
  AMLog_initialize();
  
#line 33
  if (AMLog_log_ != nil) {
    [AMLog_log_ d:tag withMessage:message];
  }
}


#line 38
void AMLog_vWithNSString_withNSString_(NSString *tag, NSString *message) {
  AMLog_initialize();
  
#line 39
  if (AMLog_log_ != nil) {
    [AMLog_log_ v:tag withMessage:message];
  }
}

void AMLog_init(AMLog *self) {
  (void) NSObject_init(self);
}

AMLog *new_AMLog_init() {
  AMLog *self = [AMLog alloc];
  AMLog_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMLog)
