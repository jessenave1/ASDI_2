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
        NSLog(@"You built a house!");
    }
    return self;
};

@end
