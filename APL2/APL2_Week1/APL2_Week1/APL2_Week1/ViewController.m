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
