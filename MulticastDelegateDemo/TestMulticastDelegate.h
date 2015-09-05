//
//  TestMulticastDelegate.h
//  MulticastDelegateDemo
//
//  Created by Tyrone Zhang on 8/19/15.
//  Copyright (c) 2015 augmentum. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TestMulticastDelegate <NSObject>

@property (nonatomic, assign) NSTimeInterval animationDuration;

- (void)didReceiveAnimationOrder;

@end
