//
//  PageTurnerAppDelegate.m
//  PageTurner
//
//  Created by Kevin Griffin on 3/11/10.
//  Copyright Chariot Solutions LLC 2010. All rights reserved.
//

#import "PageTurnerAppDelegate.h"
#import "PageTurnerViewController.h"

@implementation PageTurnerAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
