//
//  brickHouse.h
//  APL2_Week1
//
//  Created by Jesse Nave on 9/25/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import "baseHouse.h"

@interface brickHouse : baseHouse

{
    int brickType;
}

typedef enum
{
 
    REGULAR,
    QUEEN,
    VINTAGE
    
}brickType;

@property int brickType;
@property int squareFootage;
@property int totalBuildTime;

@end
