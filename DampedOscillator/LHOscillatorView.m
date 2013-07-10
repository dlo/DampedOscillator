//
//  LHOscillatorView.m
//  DampedOscillator
//
//  Created by Dan Loewenherz on 7/10/13.
//  Copyright (c) 2013 Lionheart Software LLC. All rights reserved.
//

#import "LHOscillatorView.h"

@implementation LHOscillatorView

- (id)init {
    self = [super init];
    if (self) {
        self.time = 0;
        self.damping_coefficient = 0.01;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, rect.origin.x, 0);
    self.time += 0.01;
    if (self.time > 100) {
        self.time = 0;
    }
    
    self.damping_coefficient = 0.01 * sin(self.time);

    CGFloat x;
    CGFloat y;
    for (NSInteger i=rect.origin.x; i<rect.origin.x + rect.size.width; i++) {
        x = i + self.time + 50;
        y = 100 + exp(-1 * x * self.damping_coefficient) * 50 * cos(x * 50);
        CGContextAddLineToPoint(context, i, y);
    }

    CGContextStrokePath(context);
}

@end
