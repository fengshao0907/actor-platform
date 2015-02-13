//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/dispatch/AbstractDispatcher.java
//

#include "J2ObjC_source.h"
#include "com/droidkit/actors/dispatch/AbstractDispatchQueue.h"
#include "com/droidkit/actors/dispatch/AbstractDispatcher.h"
#include "com/droidkit/actors/dispatch/Dispatch.h"

@interface ComDroidkitActorsDispatchAbstractDispatcher () {
 @public
  ComDroidkitActorsDispatchAbstractDispatchQueue *queue_;
}
@end

J2OBJC_FIELD_SETTER(ComDroidkitActorsDispatchAbstractDispatcher, queue_, id)

@interface ComDroidkitActorsDispatchAbstractDispatcher_$1 () {
 @public
  ComDroidkitActorsDispatchAbstractDispatcher *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ComDroidkitActorsDispatchAbstractDispatcher_$1, this$0_, ComDroidkitActorsDispatchAbstractDispatcher *)

@implementation ComDroidkitActorsDispatchAbstractDispatcher

- (instancetype)initWithComDroidkitActorsDispatchAbstractDispatchQueue:(ComDroidkitActorsDispatchAbstractDispatchQueue *)queue
                                 withComDroidkitActorsDispatchDispatch:(id<ComDroidkitActorsDispatchDispatch>)dispatch {
  if (self = [super init]) {
    ComDroidkitActorsDispatchAbstractDispatcher_set_queue_(self, queue);
    ComDroidkitActorsDispatchAbstractDispatcher_set_dispatch_(self, dispatch);
    [((ComDroidkitActorsDispatchAbstractDispatchQueue *) nil_chk(self->queue_)) setListenerWithComDroidkitActorsDispatchQueueListener:[[[ComDroidkitActorsDispatchAbstractDispatcher_$1 alloc] initWithComDroidkitActorsDispatchAbstractDispatcher:self] autorelease]];
  }
  return self;
}

- (id)getQueue {
  return queue_;
}

- (void)dispatchMessageWithId:(id)message {
  if (dispatch_ != nil) {
    [dispatch_ dispatchMessageWithId:message];
  }
}

- (void)notifyDispatcher {
}

- (void)dealloc {
  RELEASE_(queue_);
  RELEASE_(dispatch_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComDroidkitActorsDispatchAbstractDispatcher *)other {
  [super copyAllFieldsTo:other];
  ComDroidkitActorsDispatchAbstractDispatcher_set_queue_(other, queue_);
  ComDroidkitActorsDispatchAbstractDispatcher_set_dispatch_(other, dispatch_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComDroidkitActorsDispatchAbstractDispatchQueue:withComDroidkitActorsDispatchDispatch:", "AbstractDispatcher", NULL, 0x4, NULL },
    { "getQueue", NULL, "TQ;", 0x1, NULL },
    { "dispatchMessageWithId:", "dispatchMessage", "V", 0x4, NULL },
    { "notifyDispatcher", NULL, "V", 0x4, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "queue_", NULL, 0x12, "TQ;", NULL,  },
    { "dispatch_", NULL, 0x10, "Lcom.droidkit.actors.dispatch.Dispatch;", NULL,  },
  };
  static const J2ObjcClassInfo _ComDroidkitActorsDispatchAbstractDispatcher = { 1, "AbstractDispatcher", "com.droidkit.actors.dispatch", NULL, 0x401, 4, methods, 2, fields, 0, NULL};
  return &_ComDroidkitActorsDispatchAbstractDispatcher;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComDroidkitActorsDispatchAbstractDispatcher)

@implementation ComDroidkitActorsDispatchAbstractDispatcher_$1

- (void)onQueueChanged {
  [this$0_ notifyDispatcher];
}

- (instancetype)initWithComDroidkitActorsDispatchAbstractDispatcher:(ComDroidkitActorsDispatchAbstractDispatcher *)outer$ {
  ComDroidkitActorsDispatchAbstractDispatcher_$1_set_this$0_(self, outer$);
  return [super init];
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComDroidkitActorsDispatchAbstractDispatcher_$1 *)other {
  [super copyAllFieldsTo:other];
  ComDroidkitActorsDispatchAbstractDispatcher_$1_set_this$0_(other, this$0_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onQueueChanged", NULL, "V", 0x1, NULL },
    { "initWithComDroidkitActorsDispatchAbstractDispatcher:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.droidkit.actors.dispatch.AbstractDispatcher;", NULL,  },
  };
  static const J2ObjcClassInfo _ComDroidkitActorsDispatchAbstractDispatcher_$1 = { 1, "$1", "com.droidkit.actors.dispatch", "AbstractDispatcher", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComDroidkitActorsDispatchAbstractDispatcher_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComDroidkitActorsDispatchAbstractDispatcher_$1)