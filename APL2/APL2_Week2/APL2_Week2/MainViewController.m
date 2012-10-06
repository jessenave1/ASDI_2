//
//  MainViewController.m
//  APL2_Week2
//
//  Created by Jesse Nave on 10/1/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController


- (void)viewDidLoad
{
    int firstNum;
    int secondNum;
    int answer;
    
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)showInfo:(id)sender
{    
    FlipsideViewController *controller = [[[FlipsideViewController alloc] initWithNibName:@"FlipsideViewController" bundle:nil] autorelease];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
}

- (IBAction)onClick:(id)sender
{
    UIButton *btn = (UIButton*)sender;
    if(btn != nil)
    {        
        if (btn.tag == 0) {
            tf1.text = (@"0");
            firstNum = 0;
        } else if(btn.tag == 1)
        {
            tf1.text = @"1";
            firstNum = 1;
        } else if(btn.tag == 2)
        {
            tf1.text = @"2";
            firstNum = 2;
        } else if(btn.tag == 3)
        {
            tf1.text = @"3";
            firstNum = 3;
        } else if(btn.tag == 4)
        {
            tf1.text = @"4";
            firstNum = 4;
        } else if(btn.tag == 5)
        {
            tf1.text = @"5";
            firstNum = 5;
        } else if(btn.tag == 6)
        {
            tf1.text = @"6";
            firstNum = 6;
        } else if(btn.tag == 7)
        {
            tf1.text = @"7";
            firstNum = 7;
        } else if(btn.tag == 8)
        {
            tf1.text = @"8";
            firstNum = 8;
        } else if(btn.tag == 9)
        {
            tf1.text = @"9";
            firstNum = 9;
        } else if(btn.tag == 10)
        {
            secondNum = firstNum;
            
        } else if(btn.tag == 11)
{
    answer = (firstNum + secondNum);
    NSString *mystring = [NSString stringWithFormat:@"%d",answer];
    tf1.text = mystring;
}

    }
}
@end
