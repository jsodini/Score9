//
//  CZPointsTable.h
//  Score9
//
//  Created by James Sodini on 2/16/13.
//  Copyright (c) 2013 Cocoa Zombie. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NSUInteger (^PointsTable)(NSUInteger);

@interface CZPointsTable : NSObject

+ (PointsTable)PointsTableWithSkillLevel:(NSUInteger)skillLevel;

@end
