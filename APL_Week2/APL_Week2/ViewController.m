//
//  ViewController.m
//  APL_Week2
//
//  Created by Jesse Nave on 9/3/12.
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
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)viewWillAppear:(BOOL)animated
{
    NSArray *myArray = [[NSArray alloc] initWithObjects:@"motorcycles, ", @"medicine, ", @"guns, ", @"food, ", @"virus", nil];
    
    
    NSMutableString *myString =[[NSMutableString alloc] initWithString:@""];
    
    
    
    self.view.backgroundColor = [UIColor greenColor];
    label = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 20.0f)];
    if(label != nil)
    {
        label.text = @"The Stand";
        label.backgroundColor = [UIColor clearColor];
        label.textAlignment = UITextAlignmentCenter;
    }
    
    label2 = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 30.0f, 320.0f, 20.0f)];
    if(label2 != nil)
    {
        label2.text = @"Author:";
        label2.backgroundColor = [UIColor clearColor];
        label2.textAlignment = UITextAlignmentLeft;
    }
    label3 = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 30.0f, 320.0f, 20.0f)];
    if(label3 != nil)
    {
        label3.text = @"Stephen King";
        label3.backgroundColor = [UIColor clearColor];
        label3.textAlignment = UITextAlignmentRight;
    }
    label4 = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 60.0f, 320.0f, 20.0f)];
    if(label4 != nil)
    {
        label4.text = @"Published:";
        label4.backgroundColor = [UIColor clearColor];
        label4.textAlignment = UITextAlignmentLeft;
    }
    label5 = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 60.0f, 320.0f, 20.0f)];
    if(label5 != nil)
    {
        label5.text = @"1978";
        label5.backgroundColor = [UIColor clearColor];
        label5.textAlignment = UITextAlignmentRight;
    }
    label6 = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 90.0f, 320.0f, 20.0f)];
    if(label6 != nil)
    {
        label6.text = @"Summary:";
        label6.backgroundColor = [UIColor clearColor];
        label6.textAlignment = UITextAlignmentLeft;
    }
    label7 = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 120.0f, 320.0f, 140.0f)];
    if(label7 != nil)
    {
        label7.text = @"After a virus escapes from a government lab, 99% of the human population is wiped out.  The survivors struggle to build a new civilization from the wreckage that was left behind.";
        label7.backgroundColor = [UIColor clearColor];
        label7.textAlignment = UITextAlignmentCenter;
        label7.numberOfLines = 6;
    }
    label8 = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 280.0f, 320.0f, 20.0f)];
    if(label8 != nil)
    {
        label8.text = @"List of items:";
        label8.backgroundColor = [UIColor clearColor];
        label8.textAlignment = UITextAlignmentLeft;
    }
    
    for (NSString *string in myArray) {
        [myString appendString:string];
    }
    
    label9 = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 310.0f, 320.0f, 20.0f)];
    if(label9 != nil)
    {
        label9.text = myString;
        label9.backgroundColor = [UIColor clearColor];
        label9.textAlignment = UITextAlignmentCenter;
        label9.numberOfLines = 2;
    }
    [self.view addSubview:label9];
    [self.view addSubview:label8];
    [self.view addSubview:label7];
    [self.view addSubview:label6];
    [self.view addSubview:label5];
    [self.view addSubview:label4];
    [self.view addSubview:label3];
    [self.view addSubview:label];
    [self.view addSubview:label2];
    
    
    
    [super viewWillAppear:animated];
    
    
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
