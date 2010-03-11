//
//  PageTurnerViewController.h
//  PageTurner
//
//  Created by Kevin Griffin on 3/11/10.
//  Copyright Chariot Solutions LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageTurnerViewController : UIViewController {
	IBOutlet UIView *secondPage;
	CGPoint startTouchPosition;
}

@property (nonatomic) CGPoint startTouchPosition;

- (IBAction)toggleView:(id)sender; 
- (IBAction)returnView:(id)sender;
- (void)swipeLeft;
- (void)swipeRight;

@end

