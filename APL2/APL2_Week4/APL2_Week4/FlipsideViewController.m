//
//  FlipsideViewController.m
//  APL2_Week4
//
//  Created by Jesse Nave on 10/17/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "FlipsideViewController.h"

@interface FlipsideViewController ()

@end

@implementation FlipsideViewController

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

//initiate right and left swipe gestures

- (void) viewWillAppear:(BOOL)animated
{
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:rightSwiper];
    
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLabel addGestureRecognizer:leftSwiper];
    
    [super viewWillAppear:animated];
}

//swipe method used to change views and give error message

- (void)onSwipe:(UISwipeGestureRecognizer *)recognizer
{
    
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if(defaults != nil)
    {
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
        NSString *dateText = [dateFormat stringFromDate:datePicker.date];
        
        NSString *textString = textField.text;
        [defaults setObject:textString forKey:@"textField"];
        [defaults setObject:dateText forKey:@"date"];
        [defaults synchronize];
        [dateFormat release];
    }
    
        [self.delegate flipsideViewControllerDidFinish:self];
        
}



@end
