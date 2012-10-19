//
//  FlipsideViewController.h
//  APL2_Week4
//
//  Created by Jesse Nave on 10/17/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController
{
    //create outlet for label, text field, and date picker
    IBOutlet UILabel *swipeLabel;
    IBOutlet UITextField *textField;
    IBOutlet UIDatePicker *datePicker;
    
    //create gesture recognizer for right and left swipe actions
    UISwipeGestureRecognizer *rightSwiper;
    UISwipeGestureRecognizer *leftSwiper;
}

@property (assign, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

//create ibaction for onswipe method
- (IBAction)onSwipe:(id)recognizer;


@end
