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
    UILabel *myLabel1;
}

- (IBAction)showInfo:(id)sender;

@end
