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
    //create loghouse and set log count
    
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
    
    
    myLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, 100.0f, 20.0f)];
    if (myLabel1 != nil) {
        myLabel1.textColor = [UIColor blackColor];
        myLabel1.backgroundColor = [UIColor clearColor];
        myLabel1.text = @"Log House: ";
        [self.view addSubview:myLabel1];
    }
    myLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 80.0f, 300.0f, 300.0f)];
    
    if (myLabel2 != nil) {
        myLabel2.backgroundColor = [UIColor blueColor];
        myLabel2.textColor = [UIColor redColor];
        myLabel2.textAlignment = UITextAlignmentLeft;
        myLabel2.numberOfLines = 3;
        myLabel2.text = [NSString stringWithFormat:@"The %@ are used and you must %@.", [myLogHouse materials], [myLogHouse instructions]];
        [self.view addSubview:myLabel2];
    }
    myLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 300.0f, 320.0f, 60.0f)];
    if (myLabel3 != nil)
    {
        myLabel3.backgroundColor = [UIColor lightGrayColor];
        myLabel3.textColor = [UIColor blueColor];
        myLabel3.text = @"Please enter Username";
        myLabel3.textAlignment = UITextAlignmentCenter;
        [self.view addSubview:myLabel3];
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
