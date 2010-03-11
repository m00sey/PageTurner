//
//  SwipeAwareView.m
//  PageTurner
//
//  Created by Kevin Griffin on 3/11/10.
//  Copyright 2010 Chariot Solutions LLC. All rights reserved.
//

#import "SwipeAwareView.h"
#define HORIZONTAL_SWIPE_DRAG_MIN 15

@implementation SwipeAwareView
@synthesize startTouchPosition;

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        // Initialization code
    }
    return self;
}


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
			[UIView beginAnimations:nil context:nil];
			[UIView setAnimationDuration:0.75];
			[UIView setAnimationTransition: UIViewAnimationTransitionCurlUp
								   forView:self
									 cache:YES];
			//[[self view] addSubview:pageView];
			[UIView commitAnimations];
		} else {
			[UIView beginAnimations:nil context:nil];
			[UIView setAnimationDuration:0.75];
			[UIView setAnimationTransition: UIViewAnimationTransitionCurlDown
								   forView:self
									 cache:YES];
			[UIView commitAnimations];
		}
	}
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    startTouchPosition = CGPointMake(0, 0);
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    startTouchPosition = CGPointMake(0, 0);
}


- (void)dealloc {
    [super dealloc];
}


@end
