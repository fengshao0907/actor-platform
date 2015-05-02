//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/dispatch/AbstractDispatcher.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/dispatch/AbstractDispatcher.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/dispatch/AbstractDispatchQueue.h"
#include "im/actor/model/droidkit/actors/dispatch/AbstractDispatcher.h"
#include "im/actor/model/droidkit/actors/dispatch/Dispatch.h"
#include "im/actor/model/droidkit/actors/dispatch/QueueListener.h"

@interface DKAbstractDispatcher () {
 @public
  DKAbstractDispatchQueue *queue_;
}

@end

J2OBJC_FIELD_SETTER(DKAbstractDispatcher, queue_, id)

@interface DKAbstractDispatcher_$1 : NSObject < DKQueueListener > {
 @public
  DKAbstractDispatcher *this$0_;
}

- (void)onQueueChanged;

- (instancetype)initWithDKAbstractDispatcher:(DKAbstractDispatcher *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(DKAbstractDispatcher_$1)

J2OBJC_FIELD_SETTER(DKAbstractDispatcher_$1, this$0_, DKAbstractDispatcher *)

__attribute__((unused)) static void DKAbstractDispatcher_$1_initWithDKAbstractDispatcher_(DKAbstractDispatcher_$1 *self, DKAbstractDispatcher *outer$);

__attribute__((unused)) static DKAbstractDispatcher_$1 *new_DKAbstractDispatcher_$1_initWithDKAbstractDispatcher_(DKAbstractDispatcher *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(DKAbstractDispatcher_$1)


#line 6
@implementation DKAbstractDispatcher


#line 10
- (instancetype)initWithDKAbstractDispatchQueue:(DKAbstractDispatchQueue *)queue
                                 withDKDispatch:(id<DKDispatch>)dispatch {
  DKAbstractDispatcher_initWithDKAbstractDispatchQueue_withDKDispatch_(self, queue, dispatch);
  return self;
}


#line 26
- (id)getQueue {
  return queue_;
}


#line 35
- (void)dispatchMessageWithId:(id)message {
  if (dispatch_ != nil) {
    [dispatch_ dispatchMessageWithId:message];
  }
}


#line 44
- (void)notifyDispatcher {
}

@end


#line 10
void DKAbstractDispatcher_initWithDKAbstractDispatchQueue_withDKDispatch_(DKAbstractDispatcher *self, DKAbstractDispatchQueue *queue, id<DKDispatch> dispatch) {
  (void) NSObject_init(self);
  
#line 11
  self->queue_ = queue;
  self->dispatch_ = dispatch;
  [((DKAbstractDispatchQueue *) nil_chk(self->queue_)) setListenerWithDKQueueListener:new_DKAbstractDispatcher_$1_initWithDKAbstractDispatcher_(self)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKAbstractDispatcher)

@implementation DKAbstractDispatcher_$1


#line 15
- (void)onQueueChanged {
  [this$0_ notifyDispatcher];
}

- (instancetype)initWithDKAbstractDispatcher:(DKAbstractDispatcher *)outer$ {
  DKAbstractDispatcher_$1_initWithDKAbstractDispatcher_(self, outer$);
  return self;
}

@end

void DKAbstractDispatcher_$1_initWithDKAbstractDispatcher_(DKAbstractDispatcher_$1 *self, DKAbstractDispatcher *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

DKAbstractDispatcher_$1 *new_DKAbstractDispatcher_$1_initWithDKAbstractDispatcher_(DKAbstractDispatcher *outer$) {
  DKAbstractDispatcher_$1 *self = [DKAbstractDispatcher_$1 alloc];
  DKAbstractDispatcher_$1_initWithDKAbstractDispatcher_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKAbstractDispatcher_$1)
