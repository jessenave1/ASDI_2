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
        
        [button1 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [button1 setTitle:@"Please Login:" forState:UIControlStateNormal];
        [self.view addSubview:button1];
    }
    
    UIButton *myDate = [UIButton buttonWithType:UIButtonTypeInfoLight];
    
    if (myDate != nil) {
        myDate.tintColor = [UIColor blueColor];
        myDate.frame = CGRectMake(20.0f, 300.0f, 150.0f, 50.0f);
        myDate.tag = myTag2;
        
        [myDate setTitle:@"View Current Date" forState:UIControlStateNormal];
        [myDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:myDate];
    }
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    
    if (infoButton != nil) {
        infoButton.frame = CGRectMake(20.0f, 300.0f, 150.0f, 50.0f);
        infoButton.tag = myTag3;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];
    }
    
    myInput = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 20.0f, 200.0f, 40.0f)];
    
    if(myInput != nil)
    {
        myInput.borderStyle = UITextBorderStyleBezel;
        myInput.textColor = [UIColor blackColor];
        myInput.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:myInput];
    }
    myLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 200.0f, 80.0f)];
    if (myLabel1 != nil) {
        myLabel1.textColor = [UIColor blackColor];
        myLabel1.backgroundColor = [UIColor whiteColor];
        myLabel1.text = @"Enter Username: ";
        [self.view addSubview:myLabel1];
    }
    myLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 200.0f, 80.0f)];
    
    
    
    
       
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
