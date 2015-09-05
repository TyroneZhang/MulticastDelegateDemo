//
//  TestModel.h
//  MulticastDelegateDemo
//
//  Created by Tyrone Zhang on 8/19/15.
//  Copyright (c) 2015 augmentum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestMulticastDelegate.h"

@interface TestModel : NSObject

- (void)addDelegate:(id <TestMulticastDelegate>)delegate;

- (void)action;

@end
