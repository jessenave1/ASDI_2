//
//  FlipsideViewController.h
//  APL2_Week3
//
//  Created by Jesse Nave on 10/7/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController {
    
    IBOutlet UIDatePicker *pickerView;
    IBOutlet UITextField *tf1;
    IBOutlet UIButton *save;
    IBOutlet UIButton *hideKeyboard;
    NSString *passedValue;
}
@property (nonatomic, retain)NSString *passedValue;
@property (assign, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

-(IBAction)onClick:(id)sender;
-(IBAction)onHide:(id)sender;

@end
