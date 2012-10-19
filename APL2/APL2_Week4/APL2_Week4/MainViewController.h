//
//  MainViewController.h
//  APL2_Week4
//
//  Created by Jesse Nave on 10/17/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>
{
    //create outlet for label and text view
    IBOutlet UILabel *swipeLabel;
    IBOutlet UITextView *textView;
    IBOutlet UILabel *textLabel;
    IBOutlet UILabel *textLabel2;
    
    //create gesture recognizer for right and left swipe actions
    UISwipeGestureRecognizer *rightSwiper;
    UISwipeGestureRecognizer *leftSwiper;
}

- (IBAction)showInfo:(id)sender;
//create ibaction for onswipe method
- (IBAction)onSwipe:(id)recognizer;
- (IBAction)onClick:(id)sender;
@end
