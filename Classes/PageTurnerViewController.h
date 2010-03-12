//
//  PageTurnerViewController.h
//  PageTurner
//
//  Created by Kevin Griffin on 3/11/10.
//  Copyright Chariot Solutions LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageTurnerViewController : UIViewController <UIGestureRecognizerDelegate> {
	UIView *swipeView;
	
	UISwipeGestureRecognizer *swipeLeftRecognizer;	
}

@property (nonatomic, retain) UISwipeGestureRecognizer *swipeLeftRecognizer;


- (void)swipeLeft;
- (void)swipeRight;
- (IBAction)toggleView:(id)sender; 
- (IBAction)returnView:(id)sender;

@end

