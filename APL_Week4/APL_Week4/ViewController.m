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
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if(button1 != nil)
        
    {
        
        button1.frame = CGRectMake(200.0f, 50.0f, 100.0f, 40.0f);
        button1.tintColor = [UIColor blueColor];
        button1.tag = myTag1;
        
        [button1 addTarget:self action:(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [button1 setTitle:@"Please Login:" forState:UIControlStateNormal];
        [self.view addSubview:button1];
    }
    
    userIdInput = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 20.0f, 200.0f, 40.0f)];
    
    if(userIdInput != nil)
    {
        userIdInput.borderStyle = UITextBorderStyleBezel;
        userIdInput.textColor = [UIColor blackColor];
        userIdInput.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:userIdInput];
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
