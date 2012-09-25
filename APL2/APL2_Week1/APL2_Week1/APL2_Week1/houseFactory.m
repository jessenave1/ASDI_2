//
//  houseFactory.m
//  APL2_Week1
//
//  Created by Jesse Nave on 9/25/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "houseFactory.h"

@implementation houseFactory

+(baseHouse *)createNewHouse:(int)houseType
{
    return [[brickHouse alloc] init];
}

@end
