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
    NSString *myString = [self Append:(NSString*)@"Jesse" :(NSString*)@"Nave"];
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"error" message:(NSString*)myString delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
    
    if(alertView != nil){
        [alertView show];
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

- (int)Add:(int)num1 :(int)num2{
    
    int answer;
    
    answer = num1 + num2;
    
    return answer;
    
}

-(bool)Compare:(int)num1 num2:(int)num2{
    
    bool answer = false;
    
    if(num1 == num2){
        answer = true;
    }
    
    return answer;
}




-(NSString*)Append:(NSString*)string1 string2:(NSString*)string2{
    NSMutableString *answer;
    answer = [NSMutableString stringWithCapacity:50];
    [answer appendString:string1];
    [answer appendString:string2];
    NSString *string3 = (NSString*)answer;
    return string3;
}

@end
