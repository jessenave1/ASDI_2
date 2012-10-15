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
    NSDate *passedDate;
    NSString *passedString;
}
@property (nonatomic, retain)NSDate *passedDate;
@property (nonatomic, retain)NSString *passedString;
@property (nonatomic, retain)UILabel *noteLabel;
@property (nonatomic, retain)UILabel *dateLabel;
- (IBAction)showInfo:(id)sender;

@end
