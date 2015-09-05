//
//  TestModel.m
//  MulticastDelegateDemo
//
//  Created by Tyrone Zhang on 8/19/15.
//  Copyright (c) 2015 augmentum. All rights reserved.
//

#import "TestModel.h"
#import "GCDMulticastDelegate.h"


@implementation TestModel
{
    GCDMulticastDelegate <TestMulticastDelegate> *_multicastDelegate;
}

- (instancetype)init
{
    if (self = [super init]) {
        _multicastDelegate = (GCDMulticastDelegate <TestMulticastDelegate> *)[[GCDMulticastDelegate alloc] init];
    }
    
    return self;
}

- (void)addDelegate:(id<TestMulticastDelegate>)delegate
{
    [_multicastDelegate addDelegate:delegate delegateQueue:dispatch_get_main_queue()];
}

- (void)action
{
    [_multicastDelegate didReceiveAnimationOrder];
}

@end
