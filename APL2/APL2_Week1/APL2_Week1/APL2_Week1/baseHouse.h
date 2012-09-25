//
//  baseHouse.h
//  APL2_Week1
//
//  Created by Jesse Nave on 9/25/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseHouse : NSObject
{
    int houseEnum;
}

typedef enum
{
    BRICK,
    LOG
}houseEnum;

@property NSArray *materials;
@property NSString *instructions;
@property int buildingTimeMinutes;

-(id)init;

-(void)calculateBuildingTime;



@end
