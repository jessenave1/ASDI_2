//
//  MainViewController.h
//  APL2_Week2
//
//  Created by Jesse Nave on 10/1/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>
{
    IBOutlet UITextField *tf1;
    int firstNum;
    int secondNum;
    int answer;
}

- (IBAction)showInfo:(id)sender;
- (IBAction)onClick:(id)sender;
@end
