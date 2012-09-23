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
    
    self.view.backgroundColor = [UIColor blueColor];
    
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if(button1 != nil)
        
    {
        
        button1.frame = CGRectMake(100.0f, 90.0f, 100.0f, 40.0f);
        button1.tintColor = [UIColor redColor];
        button1.tag = button1Tag;
        
        [button1 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [button1 setTitle:@"Login" forState:UIControlStateNormal];
        [self.view addSubview:button1];
    }
    
    UIButton *myDate = [UIButton buttonWithType:UIButtonTypeInfoLight];
    
    if (myDate != nil) {
        myDate.tintColor = [UIColor blueColor];
        myDate.frame = CGRectMake(50.0f, 250.0f, 150.0f, 50.0f);
        myDate.tag = button2Tag;
        
        [myDate setTitle:@"Current Date" forState:UIControlStateNormal];
        [myDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:myDate];
    }
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    
    if (infoButton != nil) {
        infoButton.frame = CGRectMake(20.0f, 350.0f, 150.0f, 50.0f);
        infoButton.tag = button3Tag;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [infoButton setTitle:@"Info" forState:UIControlStateNormal];
        [self.view addSubview:infoButton];
    }
    
    myInput = [[UITextField alloc] initWithFrame:CGRectMake(50.0f, 50.0f, 200.0f, 30.0f)];
    
    if(myInput != nil)
    {
        myInput.borderStyle = UITextBorderStyleBezel;
        myInput.textColor = [UIColor blackColor];
        myInput.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:myInput];
    }
    myLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(60.0f, 10.0f, 240.0f, 20.0f)];
    if (myLabel1 != nil) {
        myLabel1.textColor = [UIColor whiteColor];
        myLabel1.backgroundColor = [UIColor clearColor];
        myLabel1.text = @"Enter Username: ";
        [self.view addSubview:myLabel1];
    }
    myLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 410.0f, 300.0f, 40.0f)];
    
    if (myLabel2 != nil) {
        myLabel2.backgroundColor = [UIColor clearColor];
        myLabel2.textColor = [UIColor yellowColor];
        myLabel2.numberOfLines = 2;
        [self.view addSubview:myLabel2];
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
                NSString *login = [[NSString alloc] initWithFormat:@"Login Successful: ",myString];
                myLabel1.textColor = [UIColor lightTextColor];
                myLabel1.text = login;
            }
            else
            {
                myLabel1.text = @"You must enter a Username";
                myLabel1.textColor = [UIColor redColor];
            }
            break;
            
            case button2Tag:
        {
            NSDate *myDate = [NSDate date];
            NSDateFormatter *format = [[NSDateFormatter alloc] init];
            if(format != nil)
            {
                [format setDateFormat:@"mm dd, yy h:mm:ss"];
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
