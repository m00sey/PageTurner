//
//  PageTurnerAppDelegate.h
//  PageTurner
//
//  Created by Kevin Griffin on 3/11/10.
//  Copyright Chariot Solutions LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PageTurnerViewController;

@interface PageTurnerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PageTurnerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PageTurnerViewController *viewController;

@end

