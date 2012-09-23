//
//  ViewController.m
//  APL_Week4
//
//  Created by Jesse Nave on 9/17/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

const int button1Tag = 101;
const int button2Tag = 102;
const int button3Tag = 103;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if(button1 != nil)
        
    {
        
        button1.frame = CGRectMake(200.0f, 90.0f, 100.0f, 40.0f);
        button1.tintColor = [UIColor redColor];
        button1.tag = button1Tag;
        
        [button1 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [button1 setTitle:@"Login" forState:UIControlStateNormal];
        [self.view addSubview:button1];
    }
    
    UIButton *myDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if (myDate != nil) {
        myDate.tintColor = [UIColor whiteColor];
        myDate.frame = CGRectMake(10.0f, 250.0f, 100.0f, 50.0f);
        myDate.tag = button2Tag;
        
        [myDate setTitle:@"Show Date" forState:UIControlStateNormal];
        [myDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:myDate];
    }
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    
    if (infoButton != nil) {
        infoButton.frame = CGRectMake(10.0f, 350.0f, 20.0f, 20.0f);
        infoButton.tag = button3Tag;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [infoButton setTitle:nil forState:UIControlStateNormal];
        [self.view addSubview:infoButton];
    }
    
    myInput = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 200.0f, 30.0f)];
    
    if(myInput != nil)
    {
        myInput.borderStyle = UITextBorderStyleBezel;
        myInput.textColor = [UIColor blackColor];
        myInput.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:myInput];
    }
    myLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, 100.0f, 20.0f)];
    if (myLabel1 != nil) {
        myLabel1.textColor = [UIColor blackColor];
        myLabel1.backgroundColor = [UIColor clearColor];
        myLabel1.text = @"Username: ";
        [self.view addSubview:myLabel1];
    }
    myLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 410.0f, 300.0f, 40.0f)];
    
    if (myLabel2 != nil) {
        myLabel2.backgroundColor = [UIColor clearColor];
        myLabel2.textColor = [UIColor blueColor];
        myLabel2.numberOfLines = 2;
        [self.view addSubview:myLabel2];
    }
    myLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 180.0f, 320.0f, 60.0f)];
    if (myLabel3 != nil)
    {
        myLabel3.backgroundColor = [UIColor lightGrayColor];
        myLabel3.textColor = [UIColor blueColor];
        myLabel3.text = @"Please enter Username";
        myLabel3.textAlignment = UITextAlignmentCenter;
        [self.view addSubview:myLabel3];
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

-(void)onClick:(UIButton*)sender
{
    switch (sender.tag)
    {
        case button1Tag:
        {
            NSString *myString = [myInput text];
            
            if([myString length] >= 1)
            {
                NSString *login = [[NSString alloc] initWithFormat:@"Login Successful!",myString];
                myLabel3.textColor = [UIColor lightTextColor];
                myLabel3.text = login;
            }
            else
            {
                myLabel3.text = @"You must enter a Username";
                myLabel3.textColor = [UIColor redColor];
                myLabel3.text = [myLabel3.text uppercaseString];
            }
            break;
            
            case button2Tag:
        {
            NSDate *myDate = [NSDate date];
            NSDateFormatter *format = [[NSDateFormatter alloc] init];
            if(format != nil)
            {
                [format setDateFormat:@"MMMM dd, yyyy h:mm:ss"];
                NSString *dateText = [[NSString alloc] initWithFormat:@"%@", [format stringFromDate:myDate]];
                UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"Date: " message:dateText delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
                if(myAlert != nil)
                {
                    [myAlert show];
                }
            }
        }
        }
            break;
            
            case button3Tag:
            
            myLabel2.text = @"This application was written by: Jesse Nave";
            //myLabel2.numberOfLines = 2;
            
            break;
            
        default:
        {
            UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"An error occured" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            if(error != nil)
            {
                [error show];
            }
        }
            break;
    }

}






























@end
