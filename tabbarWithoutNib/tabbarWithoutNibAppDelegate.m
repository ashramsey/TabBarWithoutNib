//
//  tabbarWithoutNibAppDelegate.m
//  tabbarWithoutNib
//
//  Created by Ashley Ramsey on 6/06/11.
//  Copyright 2011 ashramsey. All rights reserved.
//

#import "tabbarWithoutNibAppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@implementation tabbarWithoutNibAppDelegate


@synthesize window=_window, tabbarController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // NSLog(@"%s", __FUNCTION__);
    // Create tabbar
    tabbarController = [[UITabBarController alloc] init];
    
    // Initialise a rootViewController for each tab
    firstVC = [[FirstViewController alloc] init];
    secondVC = [[SecondViewController alloc] init];
    thirdVC = [[ThirdViewController alloc] init];
    
    UINavigationController *thirdNavController = [[[UINavigationController alloc] initWithRootViewController:thirdVC] autorelease];
    [thirdVC release];
    
    // Add the root vie controllers to an array and assign that array to the tabbar controller's
    // viewcontrollers property
    NSArray * controllers = [NSArray arrayWithObjects:firstVC, secondVC, thirdNavController, nil];
    tabbarController.viewControllers = controllers;
    
    
    // Override point for customization after application launch.
    [self.window addSubview:tabbarController.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // NSLog(@"%s", __FUNCTION__);
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // NSLog(@"%s", __FUNCTION__);
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // NSLog(@"%s", __FUNCTION__);
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // NSLog(@"%s", __FUNCTION__);
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // NSLog(@"%s", __FUNCTION__);
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    // NSLog(@"%s", __FUNCTION__);
    [firstVC release];
    [secondVC release];
    [thirdVC release];
    [tabbarController release];
    [_window release];
    [super dealloc];
}

@end
