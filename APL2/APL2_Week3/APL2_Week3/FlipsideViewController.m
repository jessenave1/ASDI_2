//
//  FlipsideViewController.m
//  APL2_Week3
//
//  Created by Jesse Nave on 10/7/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "FlipsideViewController.h"

@interface FlipsideViewController ()

@end

@implementation FlipsideViewController

@synthesize passedValue;

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

- (IBAction)onClick:(id)sender
{
    if(pickerView != nil)
    {
    NSDate *date = pickerView.date;
    
    NSLog(@"%@", date);
    }
}

- (IBAction)onHide:(id)sender
{
    [self.view endEditing:YES];
}

@end
