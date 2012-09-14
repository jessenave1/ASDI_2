//
//  ViewController.m
//  APL_Week3
//
//  Created by Jesse Nave on 9/12/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    int intNum1 = 45;
    int intNum2 = 63;
    NSInteger num1_1 = intNum1;
    NSInteger num2_1 = intNum2;
    NSString *myString = [[NSString alloc] initWithString:@""];
    
    int myInt = [self Add:(int) num1_1 numA:(int)num2_1 ];
    
    NSString *myString2 = [[NSString alloc] initWithFormat:@"The Answer: %d", myInt];
    
    NSNumber *myNum = [[NSNumber alloc] initWithInt:myInt];
    
    BOOL comparing = [self Compare:num1_1 :num2_1];
    
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"error" message:(NSString*)myString delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
    
    if(alertView != nil){
        [alertView show];
    }
    
    [self DisplayAlertWithString:myString2];
    
    if(comparing){
        NSString *compared = [[NSString alloc] initWithFormat:@"%@ %d is the same as %d", comparing ? @"yes":@"no", num2_1, num1_1];
        [self DisplayAlertWithString:compared];
    }
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

- (int)Add:(int)num1 numA:(int)num2{
    
    return num1 + num2;
    
}

-(bool)Compare:(NSInteger)num1 numA:(NSInteger)num2{
    
    bool answer = false;
    
    if(num1 == num2){
        answer = true;
    }
    
    return answer;
}




-(NSString*)Append:(NSString*)string1 string2:(NSString*)string2{
    
    NSMutableString *string3 = [[NSMutableString alloc] initWithString:string1]; [string2 appendString:string2];
    
    return string3;
}

-(void)DisplayAlertWithString:(NSString*)string4{
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"APL Week3"
                                                    message:string4
                                                   delegate:nil
                                          cancelButtonTitle:@"ok"
                                          otherButtonTitles:nil];
    [alert show];
}

@end
