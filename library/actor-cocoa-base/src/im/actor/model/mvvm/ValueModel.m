//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/mvvm/ValueModel.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/mvvm/ValueModel.java"

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/MainThreadProvider.h"
#include "im/actor/model/mvvm/MVVMEngine.h"
#include "im/actor/model/mvvm/ValueChangedListener.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "java/lang/Runnable.h"
#include "java/util/ArrayList.h"

@interface AMValueModel () {
 @public
  JavaUtilArrayList *listeners_;
  NSString *name_;
  id value_;
}

- (void)notifyWithId:(id)value;

@end

J2OBJC_FIELD_SETTER(AMValueModel, listeners_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(AMValueModel, name_, NSString *)
J2OBJC_FIELD_SETTER(AMValueModel, value_, id)

__attribute__((unused)) static void AMValueModel_notifyWithId_(AMValueModel *self, id value);

@interface AMValueModel_$1 : NSObject < JavaLangRunnable > {
 @public
  AMValueModel *this$0_;
  id val$value_;
}

- (void)run;

- (instancetype)initWithAMValueModel:(AMValueModel *)outer$
                              withId:(id)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(AMValueModel_$1)

J2OBJC_FIELD_SETTER(AMValueModel_$1, this$0_, AMValueModel *)
J2OBJC_FIELD_SETTER(AMValueModel_$1, val$value_, id)

__attribute__((unused)) static void AMValueModel_$1_initWithAMValueModel_withId_(AMValueModel_$1 *self, AMValueModel *outer$, id capture$0);

__attribute__((unused)) static AMValueModel_$1 *new_AMValueModel_$1_initWithAMValueModel_withId_(AMValueModel *outer$, id capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMValueModel_$1)


#line 10
@implementation AMValueModel


#line 22
- (instancetype)initWithNSString:(NSString *)name
                          withId:(id)defaultValue {
  AMValueModel_initWithNSString_withId_(self, name, defaultValue);
  return self;
}


#line 32
- (id)get {
  return value_;
}


#line 43
- (jboolean)changeWithId:(id)value {
  if (self->value_ != nil && value != nil && [value isEqual:self->value_]) {
    return NO;
  }
  
#line 49
  self->value_ = value;
  
#line 51
  AMValueModel_notifyWithId_(self, value);
  
#line 53
  return YES;
}


#line 62
- (void)subscribeWithAMValueChangedListener:(id<AMValueChangedListener>)listener {
  [self subscribeWithAMValueChangedListener:listener withBoolean:YES];
}


#line 73
- (void)subscribeWithAMValueChangedListener:(id<AMValueChangedListener>)listener
                                withBoolean:(jboolean)notify {
  AMMVVMEngine_checkMainThread();
  
#line 76
  if ([((JavaUtilArrayList *) nil_chk(listeners_)) containsWithId:listener]) {
    return;
  }
  [listeners_ addWithId:listener];
  if (notify) {
    [((id<AMValueChangedListener>) nil_chk(listener)) onChangedWithId:value_ withAMValueModel:self];
  }
}


#line 91
- (void)unsubscribeWithAMValueChangedListener:(id<AMValueChangedListener>)listener {
  AMMVVMEngine_checkMainThread();
  
#line 94
  [((JavaUtilArrayList *) nil_chk(listeners_)) removeWithId:listener];
}


#line 97
- (void)notifyWithId:(id)value {
  AMValueModel_notifyWithId_(self, value);
}


#line 110
- (NSString *)description {
  return JreStrcat("@", value_);
}

@end


#line 22
void AMValueModel_initWithNSString_withId_(AMValueModel *self, NSString *name, id defaultValue) {
  (void) NSObject_init(self);
  self->listeners_ = new_JavaUtilArrayList_init();
  
#line 23
  self->name_ = name;
  self->value_ = defaultValue;
}


#line 22
AMValueModel *new_AMValueModel_initWithNSString_withId_(NSString *name, id defaultValue) {
  AMValueModel *self = [AMValueModel alloc];
  AMValueModel_initWithNSString_withId_(self, name, defaultValue);
  return self;
}


#line 97
void AMValueModel_notifyWithId_(AMValueModel *self, id value) {
  [((id<AMMainThreadProvider>) nil_chk(AMMVVMEngine_getMainThreadProvider())) postToMainThread:new_AMValueModel_$1_initWithAMValueModel_withId_(self, value)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMValueModel)

@implementation AMValueModel_$1


#line 100
- (void)run {
  {
    IOSObjectArray *a__ = [this$0_->listeners_ toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[((JavaUtilArrayList *) nil_chk(this$0_->listeners_)) size] type:AMValueChangedListener_class_()]];
    id<AMValueChangedListener> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<AMValueChangedListener> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<AMValueChangedListener> listener = *b__++;
      
#line 103
      [((id<AMValueChangedListener>) nil_chk(listener)) onChangedWithId:val$value_ withAMValueModel:this$0_];
    }
  }
}

- (instancetype)initWithAMValueModel:(AMValueModel *)outer$
                              withId:(id)capture$0 {
  AMValueModel_$1_initWithAMValueModel_withId_(self, outer$, capture$0);
  return self;
}

@end

void AMValueModel_$1_initWithAMValueModel_withId_(AMValueModel_$1 *self, AMValueModel *outer$, id capture$0) {
  self->this$0_ = outer$;
  self->val$value_ = capture$0;
  (void) NSObject_init(self);
}

AMValueModel_$1 *new_AMValueModel_$1_initWithAMValueModel_withId_(AMValueModel *outer$, id capture$0) {
  AMValueModel_$1 *self = [AMValueModel_$1 alloc];
  AMValueModel_$1_initWithAMValueModel_withId_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMValueModel_$1)
