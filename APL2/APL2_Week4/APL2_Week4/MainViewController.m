//
//  MainViewController.m
//  APL2_Week4
//
//  Created by Jesse Nave on 10/17/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)showInfo:(id)sender
{    
    FlipsideViewController *controller = [[[FlipsideViewController alloc] initWithNibName:@"FlipsideViewController" bundle:nil] autorelease];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:nil];
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
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
        
        FlipsideViewController *controller = [[[FlipsideViewController alloc] initWithNibName:@"FlipsideViewController" bundle:nil] autorelease];
        controller.delegate = self;
        controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:controller animated:YES completion:nil];
        
    } else if(recognizer.direction == UISwipeGestureRecognizerDirectionLeft){
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Must swipe right."
        message:@"You must swipe right to continue." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        [alert release];

    }
}

//save button click function
//accesses NSUserDefaults and stores text view info there
- (void)onClick:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if(defaults != nil)
    {
        NSString *textString = textView.text;
        [defaults setObject:textString forKey:@"text"];
        [defaults synchronize];
    }
}


//Load NSuserDefaults into the textView
- (void)viewDidAppear:(BOOL)animated
{
        
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if(defaults != nil)
    {
        NSString *textString = [defaults objectForKey:@"text"];
        
        textView.text = textString;
        
        NSString *textFieldString = [defaults objectForKey:@"textField"];
        
        textLabel.text = textFieldString;
        
        NSString *dateString = [defaults objectForKey:@"date"];
        
        textLabel2.text = dateString;
        NSLog(@"%@", dateString);
    }
}
@end
