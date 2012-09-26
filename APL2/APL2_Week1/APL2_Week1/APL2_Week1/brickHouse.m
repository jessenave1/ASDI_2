//
//  brickHouse.m
//  APL2_Week1
//
//  Created by Jesse Nave on 9/25/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "brickHouse.h"

@implementation brickHouse

@synthesize brickType, squareFootage, totalBuildTime;

-(id)init
{
    self = [super init];
    if (self != nil) {
        [self setBuildingTimeMinutes:0];
        [self setBrickType:QUEEN];
        [self setSquareFootage:4000];
        NSLog(@"You built a brick house!");
    }
    return self;
};

-(void)calculateBuildingTime
{
    if (brickType == REGULAR) {
        [self setBuildingTimeMinutes:(squareFootage * .2)];
    }else if (brickType == QUEEN)
    {
        [self setBuildingTimeMinutes:(squareFootage * .4)];
    }else if (brickType == VINTAGE)
    {
        [self setBuildingTimeMinutes:(squareFootage * .6)];
    }else
    {
        NSLog(@"You need to specify a valid brick type.");
    }
    
    NSLog(@"It will take %i minutes to build this brick house", self.buildingTimeMinutes);
}
@end
