//
//  CZPointsTable.m
//  Score9
//
//  Created by James Sodini on 2/16/13.
//  Copyright (c) 2013 Cocoa Zombie. All rights reserved.
//

#import "CZPointsTable.h"

@interface CZPointsTable ()
+ (id)sharedInstance;

- (PointsTable)skillLevelOne;
- (PointsTable)skillLevelTwo;
- (PointsTable)skillLevelThree;
- (PointsTable)skillLevelFour;
- (PointsTable)skillLevelFive;
- (PointsTable)skillLevelSix;
- (PointsTable)skillLevelSeven;
- (PointsTable)skillLevelEight;
- (PointsTable)skillLevelNine;

@end

@implementation CZPointsTable

+ (PointsTable)PointsTableWithSkillLevel:(NSUInteger)skillLevel {
    switch (skillLevel) {
        case 1:
            return [[CZPointsTable sharedInstance] skillLevelOne];
        case 2:
            return [[CZPointsTable sharedInstance] skillLevelTwo];
        case 3:
            return [[CZPointsTable sharedInstance] skillLevelThree];
        case 4:
            return [[CZPointsTable sharedInstance] skillLevelFour];
        case 5:
            return [[CZPointsTable sharedInstance] skillLevelFive];
        case 6:
            return [[CZPointsTable sharedInstance] skillLevelSix];
        case 7:
            return [[CZPointsTable sharedInstance] skillLevelSeven];
        case 8:
            return [[CZPointsTable sharedInstance] skillLevelEight];
        case 9:
            return [[CZPointsTable sharedInstance] skillLevelNine];
        default:
            return nil;
    }
    
    return nil;
}

+ (id)sharedInstance {
    static CZPointsTable *sharedInstance = nil;
    static dispatch_once_t once;
    
    dispatch_once(&once, ^{
        sharedInstance = [[CZPointsTable alloc] init];
    });
    
    return sharedInstance;
}

- (PointsTable)skillLevelOne {
    return ^NSUInteger(NSUInteger points) {
        switch (points) {
            case 1:
            case 2:
                return 0;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 3;
            case 7:
                return 4;
            case 8:
                return 5;
            case 9:
            case 10:
                return 6;
            case 11:
                return 7;
            case 12:
            case 13:
                return 8;
            default:
                return 0;
        }
    };
}

- (PointsTable)skillLevelTwo {
    return ^NSUInteger(NSUInteger points) {
        switch (points) {
            case 1:
            case 2:
            case 3:
                return 0;
            case 4:
            case 5:
                return 1;
            case 6:
            case 7:
                return 2;
            case 8:
                return 3;
            case 9:
            case 10:
                return 4;
            case 11:
            case 12:
                return 5;
            case 13:
            case 14:
                return 6;
            case 15:
            case 16:
                return 7;
            case 17:
            case 18:
                return 8;
            default:
                return 0;
        }
    };
}

- (PointsTable)skillLevelThree {
    return ^NSUInteger(NSUInteger points) {
        switch (points) {
            case 1:
            case 2:
            case 3:
            case 4:
                return 0;
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 2;
            case 10:
            case 11:
                return 3;
            case 12:
            case 13:
            case 14:
                return 4;
            case 15:
            case 16:
                return 5;
            case 17:
            case 18:
            case 19:
                return 6;
            case 20:
            case 21:
                return 7;
            case 22:
            case 23:
                return 8;
            default:
                return 0;
        }
    };
}

- (PointsTable)skillLevelFour {
    return ^NSUInteger(NSUInteger points) {
        switch (points) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return 0;
            case 6:
            case 7:
            case 8:
                return 1;
            case 9:
            case 10:
            case 11:
                return 2;
            case 12:
            case 13:
            case 14:
                return 3;
            case 15:
            case 16:
            case 17:
            case 18:
                return 4;
            case 19:
            case 20:
            case 21:
                return 5;
            case 22:
            case 23:
            case 24:
                return 6;
            case 25:
            case 26:
            case 27:
                return 7;
            case 28:
            case 29:
            case 30:
                return 8;
            default:
                return 0;
        }
    };
}

- (PointsTable)skillLevelFive {
    return ^NSUInteger(NSUInteger points) {
        switch (points) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return 0;
            case 7:
            case 8:
            case 9:
            case 10:
                return 1;
            case 11:
            case 12:
            case 13:
            case 14:
                return 2;
            case 15:
            case 16:
            case 17:
            case 18:
                return 3;
            case 19:
            case 20:
            case 21:
            case 22:
                return 4;
            case 24:
            case 25:
            case 26:
                return 5;
            case 27:
            case 28:
            case 29:
                return 6;
            case 30:
            case 31:
            case 32:
            case 33:
                return 7;
            case 34:
            case 35:
            case 36:
            case 37:
                return 8;
            default:
                return 0;
        }
    };
}

- (PointsTable)skillLevelSix {
    return ^NSUInteger(NSUInteger points) {
        switch (points) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return 0;
            case 9:
            case 10:
            case 11:
            case 12:
                return 1;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                return 2;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
                return 3;
            case 24:
            case 25:
            case 26:
            case 27:
                return 4;
            case 28:
            case 29:
            case 31:
                return 5;
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
                return 6;
            case 37:
            case 38:
            case 39:
            case 40:
                return 7;
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
                return 8;
            default:
                return 0;
        }
    };
}

- (PointsTable)skillLevelSeven {
    return ^NSUInteger(NSUInteger points) {
        switch (points) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                return 0;
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 1;
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                return 2;
            case 22:
            case 24:
            case 25:
            case 26:
                return 3;
            case 27:
            case 28:
            case 29:
            case 31:
            case 32:
                return 4;
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                return 5;
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
                return 6;
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                return 7;
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
                return 8;
            default:
                return 0;
        }
    };
}

- (PointsTable)skillLevelEight {
    return ^NSUInteger(NSUInteger points) {
        switch (points) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                return 0;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                return 1;
            case 20:
            case 21:
            case 22:
            case 24:
            case 25:
            case 26:
                return 2;
            case 27:
            case 28:
            case 29:
            case 31:
            case 32:
                return 3;
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
                return 4;
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
                return 5;
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
                return 6;
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
                return 7;
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
                return 8;
            default:
                return 0;
        }
    };
}

- (PointsTable)skillLevelNine {
    return ^NSUInteger(NSUInteger points) {
        switch (points) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                return 0;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 24:
                return 1;
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 31:
                return 2;
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
                return 3;
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
                return 4;
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
                return 5;
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
                return 6;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                return 7;
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
                return 8;
            default:
                return 0;
        }
    };
}

@end
