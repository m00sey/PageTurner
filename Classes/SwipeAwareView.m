//
//  SwipeAwareView.m
//  PageTurner
//
//  Created by Kevin Griffin on 3/11/10.
//  Copyright 2010 Chariot Solutions LLC. All rights reserved.
//

#import "SwipeAwareView.h"
#define HORIZONTAL_SWIPE_DRAG_MIN 1

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

- (void)dealloc {
    [super dealloc];
}


@end
