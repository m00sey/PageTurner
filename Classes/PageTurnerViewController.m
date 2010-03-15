//
//  PageTurnerViewController.m
//  PageTurner
//
//  Created by Kevin Griffin on 3/11/10.
//  Copyright Chariot Solutions LLC 2010. All rights reserved.
//

#import "PageTurnerViewController.h"
#define HORIZONTAL_SWIPE_DRAG_MIN 5
#define HORIZ_SWIPE_DRAG_MIN  2

@implementation PageTurnerViewController
@synthesize swipeLeftRecognizer, startPoint;

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//UIGestureRecognizer *recognizer;
//	
//    /*
//     Create a swipe gesture recognizer to recognize right swipes (the default).
//     We're only interested in receiving messages from this recognizer, and the view will take ownership of it, so we don't need to keep a reference to it.
//     */
//    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
//    [self.view addGestureRecognizer:recognizer];
//    [recognizer release];
//    
//    /*
//     Create a swipe gesture recognizer to recognize left swipes.
//     Keep a reference to the recognizer so that it can be added to and removed from the view in takeLeftSwipeRecognitionEnabledFrom:.
//     Add the recognizer to the view if the segmented control shows that left swipe recognition is allowed.
//     */
//    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
//    self.swipeLeftRecognizer = (UISwipeGestureRecognizer *)recognizer;
//    swipeLeftRecognizer.direction = UISwipeGestureRecognizerDirectionLeft;
//    
//    [self.view addGestureRecognizer:swipeLeftRecognizer];
//	
//    self.swipeLeftRecognizer = (UISwipeGestureRecognizer *)recognizer;
//	
//    [recognizer release];
}

/*
 In response to a swipe gesture, show the image view appropriately then move the image view in the direction of the swipe as it fades out.
 */
//- (void)handleSwipeFrom:(UISwipeGestureRecognizer *)recognizer {
//    
////    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
////		NSLog(@"Swipe Left");
////        [self swipeLeft];
////    }
////    else {
////		NSLog(@"Swipe Right");
////		[self swipeRight];
////    }
//}
//
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
////	if (gestureRecognizer == tapRecognizer) {
////		return NO;
////	}
//    return YES;
//}

#pragma mark swipe processing

- (void)swipeRight {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationTransition: UIViewAnimationTransitionCurlUp
						   forView:[self view]
							 cache:YES];
	//[[self view] addSubview:pageView];
	[UIView commitAnimations];	
}

- (void)swipeLeft {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationTransition: UIViewAnimationTransitionCurlDown
						   forView:[self view]
							 cache:YES];
//	[[self view] addSubview:pageView];
	[UIView commitAnimations];	
}

#pragma mark animations

- (IBAction)toggleView:(id)sender {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationTransition: UIViewAnimationTransitionCurlUp
						   forView:[self view]
							 cache:YES];
//	[[self view] addSubview:pageView];
	[UIView commitAnimations];
}

- (IBAction)returnView:(id)sender {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationTransition:UIViewAnimationTransitionCurlDown
						   forView:[self view]
							 cache:YES];
//	[pageView removeFromSuperview];
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

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint currentTouchPosition = [touch locationInView:self.view];
	
    // To be a swipe, direction of touch must be horizontal and long enough.
    if (fabsf(startPoint.x - currentTouchPosition.x) >= HORIZ_SWIPE_DRAG_MIN)
    {
        // It appears to be a swipe.
        if (startPoint.x < currentTouchPosition.x) {
			[self swipeRight];
		} else {
			[self swipeLeft];
		}
    }
}

- (void)dealloc {
//    [swipeLeftRecognizer release];//
    [super dealloc];
}

@end
