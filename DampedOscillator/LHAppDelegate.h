//
//  LHAppDelegate.h
//  DampedOscillator
//
//  Created by Dan Loewenherz on 7/10/13.
//  Copyright (c) 2013 Lionheart Software LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LHViewController;

@interface LHAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) LHViewController *viewController;

@end
