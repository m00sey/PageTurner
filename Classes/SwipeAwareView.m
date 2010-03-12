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

- (void)dealloc {
    [super dealloc];
}


@end
