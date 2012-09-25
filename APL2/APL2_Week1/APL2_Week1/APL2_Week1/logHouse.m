//
//  logHouse.m
//  APL2_Week1
//
//  Created by Jesse Nave on 9/25/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "logHouse.h"

@implementation logHouse

@synthesize logs, timePerLog;

-(id)init
{
    self = [super init];
    if(self != nil)
    {
        [self setBuildingTimeMinutes:20];
        [self setLogs:0];
        [self setTimePerLog:45];
    }
    return self;
};

-(void)calculateBuildingTime
{
    [self setBuildingTimeMinutes:(logs * timePerLog)];
    NSLog(@"It will take %i minutes to build this house.", self.buildingTimeMinutes);
}
@end
