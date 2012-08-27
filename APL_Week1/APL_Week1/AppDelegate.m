//
//  AppDelegate.m
//  APL_Week1
//
//  Created by Jesse Nave on 8/27/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //Declare my variables
    float myFloat = 32.00;
    BOOL myBool = NO;
    char *myString = "Did the IF statement prove to be true?";
    
    //Log the float
    NSLog(@"myFloat%.2f", myFloat);
    
    //cast to int and log
    NSLog(@"myFloat%d", (int)myFloat);
    
    //AND OR comparison
    if (((myFloat != 0 && (int)myFloat == 32) || (((int)myFloat < 100) && myFloat > 22))) {
        myBool = YES;
    }
    NSLog(@"myString=%s, myBool=%c", myString, myBool);
    
    //If/else check
    if (myBool == YES) {
        myFloat = 100.00;
    } else {
        myFloat = 200.00;
    }
    NSLog(@"myFloat=%.2f", myFloat);
    
    //For loop
    for (int i = 0; i < 10; i++) {
        NSLog(@"i=%d", i);
    }
    
    //Nested loop
    for(int i = 0; i < 10; i++){
        for (int a = 7; a > 3; a--) {
            NSLog(@"a=%d", a);
        }
        NSLog(@"i=%d", i);
    }
    
    //while loop
    while(myFloat < 110){
        NSLog(@"myFloat=%f", myFloat);
        myFloat++;
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
