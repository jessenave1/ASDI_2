//
//  MainViewController.h
//  APL2_Week3
//
//  Created by Jesse Nave on 10/7/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>
{
    IBOutlet UIScrollView *scrollview;
    IBOutlet UILabel *noteLabel;
    IBOutlet UILabel *dateLabel;
    NSString *passedValue;
    NSDate *passedDate;
}
@property (nonatomic, retain)NSDate *passedDate;
@property (nonatomic, retain)NSString *passedValue;

- (IBAction)showInfo:(id)sender;

@end
