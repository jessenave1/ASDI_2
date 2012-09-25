//
//  baseHouse.m
//  APL2_Week1
//
//  Created by Jesse Nave on 9/25/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "baseHouse.h"

@implementation baseHouse

@synthesize materials, instructions, buildingTimeMinutes;

-(id)init
{
    self = [super init];
    if (self != nil) {
        [self setBuildingTimeMinutes:0];
        [self setMaterials:nil];
        instructions = nil;
    }
    return self;
};

-(void)calculateBuildingTime
{
    NSLog(@"It will take %i minutes to build this house.", buildingTimeMinutes);
}

@end
