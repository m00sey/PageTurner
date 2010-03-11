//
//  PageTurnerViewController.m
//  PageTurner
//
//  Created by Kevin Griffin on 3/11/10.
//  Copyright Chariot Solutions LLC 2010. All rights reserved.
//

#import "PageTurnerViewController.h"
#define HORIZONTAL_SWIPE_DRAG_MIN 12


@implementation PageTurnerViewController

@synthesize startTouchPosition;

#pragma mark swipes

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	UITouch *touch = [touches anyObject];
	
	startTouchPosition = [touch locationInView:self];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [touches anyObject];
	CGPoint currentTouchPosition = [touch locationInView:self];
	
	if (fabsf(startTouchPosition.x - currentTouchPosition.x) >= HORIZONTAL_SWIPE_DRAG_MIN) {
		if (startTouchPosition.x < currentTouchPosition.x) {
			[self swipeRight];
		} else {
			[self swipeLeft];
		}
	}
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    startTouchPosition = CGPointMake(0, 0);
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    startTouchPosition = CGPointMake(0, 0);
}

#pragma mark swipe processing

- (void)swipeRight {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationTransition: UIViewAnimationTransitionCurlUp
						   forView:[self view]
							 cache:YES];
	[[self view] addSubview:secondPage];
	[UIView commitAnimations];	
}

- (void)swipeLeft {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationTransition: UIViewAnimationTransitionCurlDown
						   forView:[self view]
							 cache:YES];
	[[self view] addSubview:secondPage];
	[UIView commitAnimations];	
}

#pragma mark animations

- (IBAction)toggleView:(id)sender {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationTransition: UIViewAnimationTransitionCurlUp
						   forView:[self view]
							 cache:YES];
	[[self view] addSubview:secondPage];
	[UIView commitAnimations];
}

- (IBAction)returnView:(id)sender {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationTransition:UIViewAnimationTransitionCurlDown
						   forView:[self view]
							 cache:YES];
	[secondPage removeFromSuperview];
	[UIView commitAnimations];
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
