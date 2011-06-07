//
//  tabbarWithoutNibAppDelegate.h
//  tabbarWithoutNib
//
//  Created by Ashley Ramsey on 6/06/11.
//  Copyright 2011 ashramsey. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FirstViewController;
@class SecondViewController;
@class ThirdViewController;

@interface tabbarWithoutNibAppDelegate : NSObject <UIApplicationDelegate> {
    UITabBarController *tabbarController;
    
    FirstViewController *firstVC;
    SecondViewController *secondVC;
    ThirdViewController *thirdVC;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UITabBarController *tabbarController;

@end
