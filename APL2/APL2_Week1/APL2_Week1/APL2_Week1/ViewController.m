//
//  ViewController.m
//  APL2_Week1
//
//  Created by Jesse Nave on 9/24/12.
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
    
    logHouse *myLogHouse = (logHouse *)[houseFactory createNewHouse:LOG];
    [myLogHouse setLogs:2500];
    
    if (myLogHouse != nil) {
        NSArray *logMaterials = [[NSArray alloc] initWithObjects:@"logs", @"shingles", nil];
        [myLogHouse setMaterials:logMaterials];
        
        NSString *logInstructions = @"See blueprint on site.";
        [myLogHouse setInstructions:logInstructions];
        
        NSLog(@"You've built a log house with the materials %@", [myLogHouse materials]);
        NSLog(@"%@", myLogHouse.instructions);
        
        [myLogHouse calculateBuildingTime];
    }
    
    brickHouse *myBrickHouse = (brickHouse*)[houseFactory createNewHouse:BRICK];
    
    if(myBrickHouse != nil)
    {
        [myBrickHouse setBrickType:QUEEN];
        [myBrickHouse setSquareFootage:3500];
        [myBrickHouse setInstructions:@""];
        
        [myBrickHouse calculateBuildingTime];
        int myHouseBuildingTime = myBrickHouse.buildingTimeMinutes;
        NSLog(@"%i", myHouseBuildingTime);
    }
    
    adobeHouse *myAdobeHouse = (adobeHouse*)[houseFactory createNewHouse:ADOBE];
    if(myAdobeHouse != nil)
    {
        [myAdobeHouse setSquareFootage:2400];
        [myAdobeHouse setInstructions:@"Mix and stack mud."];
        
        [myAdobeHouse calculateBuildingTime];
        int myAdobeBuildingTime = myAdobeHouse.buildingTimeMinutes;
        NSLog(@"%i", myAdobeBuildingTime);
    }
    
    UIButton *logHouse = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if (logHouse != nil) {
        logHouse.tintColor = [UIColor whiteColor];
        logHouse.frame = CGRectMake(10.0f, 250.0f, 100.0f, 50.0f);
        logHouse.tag = button1Tag;
        
        [logHouse setTitle:@"Log House" forState:UIControlStateNormal];
        [logHouse addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:logHouse];
    }
    
    UIButton *brickHouse = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if (brickHouse != nil) {
        brickHouse.tintColor = [UIColor whiteColor];
        brickHouse.frame = CGRectMake(10.0f, 250.0f, 100.0f, 50.0f);
        brickHouse.tag = button2Tag;
        
        [brickHouse setTitle:@"Brick House" forState:UIControlStateNormal];
        [brickHouse addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:brickHouse];
    }
    UIButton *adobeHouse = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if (adobeHouse != nil) {
        adobeHouse.tintColor = [UIColor whiteColor];
        adobeHouse.frame = CGRectMake(10.0f, 250.0f, 100.0f, 50.0f);
        adobeHouse.tag = button3Tag;
        
        [adobeHouse setTitle:@"Adobe House" forState:UIControlStateNormal];
        [adobeHouse addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:adobeHouse];
    }
    
    [super viewDidLoad];
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
