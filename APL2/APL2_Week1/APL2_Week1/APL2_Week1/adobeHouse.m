//
//  adobeHouse.m
//  APL2_Week1
//
//  Created by Jesse Nave on 9/26/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "adobeHouse.h"

@implementation adobeHouse

@synthesize squareFootage, totalBuildTime;

-(id)init
{
    self = [super init];
    if (self != nil) {
        [self setBuildingTimeMinutes:0];
        [self setSquareFootage:4000];
        NSLog(@"You built a mud house!");
    }
    return self;
}

-(void)calculateBuildingTime
{
    [self setBuildingTimeMinutes:squareFootage * .5];
    NSLog(@"It will take %i minutes to build this adobe house.", self.buildingTimeMinutes);
}

@end
