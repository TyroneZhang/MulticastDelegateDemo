//
//  BView.m
//  MulticastDelegateDemo
//
//  Created by Tyrone Zhang on 8/19/15.
//  Copyright (c) 2015 augmentum. All rights reserved.
//

#import "BView.h"

@implementation BView

@synthesize animationDuration = _animationDuration;

- (void)didReceiveAnimationOrder
{
    self.animationDuration = 3;
    
    [UIView beginAnimations:@"background animation" context:nil];
    [UIView setAnimationDuration:self.animationDuration];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    self.backgroundColor = [UIColor greenColor];
    
    [UIView commitAnimations];
}

@end
