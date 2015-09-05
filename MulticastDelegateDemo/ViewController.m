//
//  ViewController.m
//  MulticastDelegateDemo
//
//  Created by Tyrone Zhang on 8/19/15.
//  Copyright (c) 2015 augmentum. All rights reserved.
//

#import "ViewController.h"
#import "TestModel.h"
#import "AViewListener.h"
#import "BView.h"

@interface ViewController ()
{
    
}
@property (weak, nonatomic) IBOutlet AViewListener *aView;
@property (weak, nonatomic) IBOutlet BView *bView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_queue_t queue = dispatch_queue_create("aView.queue", DISPATCH_QUEUE_CONCURRENT);
    TestModel *mod = [[TestModel alloc] init];
    [mod addDelegate:_aView];
    [mod addDelegate:_bView];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 3 * NSEC_PER_SEC), queue, ^{
        [mod action];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
