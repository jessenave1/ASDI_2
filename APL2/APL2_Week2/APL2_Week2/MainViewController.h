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
    //Hooking up buttons and textfields
    IBOutlet UITextField *tf1;
    IBOutlet UIButton *btn0;
    IBOutlet UIButton *btn1;
    IBOutlet UIButton *btn2;
    IBOutlet UIButton *btn3;
    IBOutlet UIButton *btn4;
    IBOutlet UIButton *btn5;
    IBOutlet UIButton *btn6;
    IBOutlet UIButton *btn7;
    IBOutlet UIButton *btn8;
    IBOutlet UIButton *btn9;
    IBOutlet UIButton *btn10;
    IBOutlet UIButton *btn11;
    IBOutlet UIButton *btn12;
    //variables
    int firstNum;
    int secondNum;
    int answer;
}
//methods 
- (IBAction)showInfo:(id)sender;
- (IBAction)onClick:(id)sender;
- (IBAction)onSwitched:(id)sender;
@end
