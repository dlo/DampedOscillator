//
//  LHViewController.m
//  DampedOscillator
//
//  Created by Dan Loewenherz on 7/10/13.
//  Copyright (c) 2013 Lionheart Software LLC. All rights reserved.
//

#import "LHViewController.h"
#import "LHOscillatorView.h"

@interface LHViewController ()

@end

@implementation LHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.oscillator = [[LHOscillatorView alloc] init];
    self.oscillator.time = 0;
    self.oscillator.backgroundColor = [UIColor whiteColor];
    self.oscillator.frame = self.view.frame;
    [self.view addSubview:self.oscillator];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSTimer *timer = [NSTimer timerWithTimeInterval:0.005 target:self.oscillator selector:@selector(setNeedsDisplay) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
}

@end
