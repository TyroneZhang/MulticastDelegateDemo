//
//  AViewListener.m
//  MulticastDelegateDemo
//
//  Created by Tyrone Zhang on 8/19/15.
//  Copyright (c) 2015 augmentum. All rights reserved.
//

#import "AViewListener.h"

@implementation AViewListener

@synthesize animationDuration = _animationDuration;

- (void)didReceiveAnimationOrder
{
    self.animationDuration = 3;
    
    [UIView beginAnimations:@"background animation" context:nil];
    [UIView setAnimationDuration:self.animationDuration];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    self.backgroundColor = [UIColor purpleColor];
    
    [UIView commitAnimations];
}

@end
