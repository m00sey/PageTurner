//
//  SwipeAwareView.h
//  PageTurner
//
//  Created by Kevin Griffin on 3/11/10.
//  Copyright 2010 Chariot Solutions LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SwipeAwareView : UIView {
	CGPoint startTouchPosition;
}

@property (nonatomic) CGPoint startTouchPosition;

@end
