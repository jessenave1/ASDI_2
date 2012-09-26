//
//  houseFactory.h
//  APL2_Week1
//
//  Created by Jesse Nave on 9/25/12.
//  Copyright (c) 2012 Jesse Nave. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "baseHouse.h"
#import "logHouse.h"
#import "brickHouse.h"
#import "adobeHouse.h"

@interface houseFactory : NSObject

+(baseHouse *)createNewHouse: (int)houseType;

@end
