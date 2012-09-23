//
//  ViewController.m
//  APL_Week4
//
//  Created by Jesse Nave on 9/21/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    UILabel *submit = [[UILabel alloc] initWithFrame:CGRectMake(30.0f, 20.0f, 80.0f, 20.0f)];
    
    if (submit != nil)
    {
        submit.backgroundColor = [UIColor clearColor];
        
        submit.text = @"Username: ";
        submit.textColor = [UIColor blueColor];
        
        [self.view addSubview:submit];
    }
    
       
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

@end
