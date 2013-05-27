//
//  CZPointsTableTests.m
//  Score9
//
//  Created by James Sodini on 5/26/13.
//  Copyright (c) 2013 James Sodini. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "CZPointsTable.h"

@interface CZPointsTableTests : SenTestCase

@end


@implementation CZPointsTableTests

- (void)testSkillLevelOne {
    PointsTable pointsTable = [CZPointsTable PointsTableWithSkillLevel:1];
    
    for (NSUInteger points = 0; points < 14; points++) {
        switch (points) {
            case 0:
            case 1:
            case 2:
                STAssertEquals((NSUInteger)0, pointsTable(points), @"%ld != %ld", (NSUInteger)0, pointsTable(points));
                break;
            case 3:
                STAssertEquals((NSUInteger)1, pointsTable(points), @"%ld != %ld", (NSUInteger)1, pointsTable(points));
                break;
            case 4:
                STAssertEquals((NSUInteger)2, pointsTable(points), @"%ld != %ld", (NSUInteger)2, pointsTable(points));
                break;
            case 5:
            case 6:
                STAssertEquals((NSUInteger)3, pointsTable(points), @"%ld != %ld", (NSUInteger)3, pointsTable(points));
                break;
            case 7:
                STAssertEquals((NSUInteger)4, pointsTable(points), @"%ld != %ld", (NSUInteger)4, pointsTable(points));
                break;
            case 8:
                STAssertEquals((NSUInteger)5, pointsTable(points), @"%ld != %ld", (NSUInteger)5, pointsTable(points));
                break;
            case 9:
            case 10:
                STAssertEquals((NSUInteger)6, pointsTable(points), @"%ld != %ld", (NSUInteger)6, pointsTable(points));
                break;
            case 11:
                STAssertEquals((NSUInteger)7, pointsTable(points), @"%ld != %ld", (NSUInteger)7, pointsTable(points));
                break;
            case 12:
            case 13:
                STAssertEquals((NSUInteger)8, pointsTable(points), @"%ld != %ld", (NSUInteger)8, pointsTable(points));
                break;
            default:
                continue;
        }
    }
}

- (void)testSkillLevelTwo {
    PointsTable pointsTable = [CZPointsTable PointsTableWithSkillLevel:2];
    
    for (NSUInteger points = 0; points < 19; points++) {
        switch (points) {
            case 0:
            case 1:
            case 2:
            case 3:
                STAssertEquals((NSUInteger)0, pointsTable(points), @"%ld != %ld", (NSUInteger)0, pointsTable(points));
                break;
            case 4:
            case 5:
                STAssertEquals((NSUInteger)1, pointsTable(points), @"%ld != %ld", (NSUInteger)1, pointsTable(points));
                break;
            case 6:
            case 7:
                STAssertEquals((NSUInteger)2, pointsTable(points), @"%ld != %ld", (NSUInteger)2, pointsTable(points));
                break;
            case 8:
                STAssertEquals((NSUInteger)3, pointsTable(points), @"%ld != %ld", (NSUInteger)3, pointsTable(points));
                break;
            case 9:
            case 10:
                STAssertEquals((NSUInteger)4, pointsTable(points), @"%ld != %ld", (NSUInteger)4, pointsTable(points));
                break;
            case 11:
            case 12:
                STAssertEquals((NSUInteger)5, pointsTable(points), @"%ld != %ld", (NSUInteger)5, pointsTable(points));
                break;
            case 13:
            case 14:
                STAssertEquals((NSUInteger)6, pointsTable(points), @"%ld != %ld", (NSUInteger)6, pointsTable(points));
                break;
            case 15:
            case 16:
                STAssertEquals((NSUInteger)7, pointsTable(points), @"%ld != %ld", (NSUInteger)7, pointsTable(points));
                break;
            case 17:
            case 18:
                STAssertEquals((NSUInteger)8, pointsTable(points), @"%ld != %ld", (NSUInteger)8, pointsTable(points));
                break;
            default:
                continue;
        }
    }
}

- (void)testSkillLevelThree {
    PointsTable pointsTable = [CZPointsTable PointsTableWithSkillLevel:3];
    
    for (NSUInteger points = 0; points < 25; points++) {
        switch (points) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                STAssertEquals((NSUInteger)0, pointsTable(points), @"%ld != %ld", (NSUInteger)0, pointsTable(points));
                break;
            case 5:
            case 6:
                STAssertEquals((NSUInteger)1, pointsTable(points), @"%ld != %ld", (NSUInteger)1, pointsTable(points));
                break;
            case 7:
            case 8:
            case 9:
                STAssertEquals((NSUInteger)2, pointsTable(points), @"%ld != %ld", (NSUInteger)2, pointsTable(points));
                break;
            case 10:
            case 11:
                STAssertEquals((NSUInteger)3, pointsTable(points), @"%ld != %ld", (NSUInteger)3, pointsTable(points));
                break;
            case 12:
            case 13:
            case 14:
                STAssertEquals((NSUInteger)4, pointsTable(points), @"%ld != %ld", (NSUInteger)4, pointsTable(points));
                break;
            case 15:
            case 16:
                STAssertEquals((NSUInteger)5, pointsTable(points), @"%ld != %ld", (NSUInteger)5, pointsTable(points));
                break;
            case 17:
            case 18:
            case 19:
                STAssertEquals((NSUInteger)6, pointsTable(points), @"%ld != %ld", (NSUInteger)6, pointsTable(points));
                break;
            case 20:
            case 21:
                STAssertEquals((NSUInteger)7, pointsTable(points), @"%ld != %ld", (NSUInteger)7, pointsTable(points));
                break;
            case 22:
            case 23:
                STAssertEquals((NSUInteger)8, pointsTable(points), @"%ld != %ld", (NSUInteger)8, pointsTable(points));
                break;
            default:
                continue;
        }
    }
}

- (void)testSkillLevelFour {
    PointsTable pointsTable = [CZPointsTable PointsTableWithSkillLevel:4];
    
    for (NSUInteger points = 0; points < 31; points++) {
        switch (points) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                STAssertEquals((NSUInteger)0, pointsTable(points), @"%ld != %ld", (NSUInteger)0, pointsTable(points));
                break;
            case 6:
            case 7:
            case 8:
                STAssertEquals((NSUInteger)1, pointsTable(points), @"%ld != %ld", (NSUInteger)1, pointsTable(points));
                break;
            case 9:
            case 10:
            case 11:
                STAssertEquals((NSUInteger)2, pointsTable(points), @"%ld != %ld", (NSUInteger)2, pointsTable(points));
                break;
            case 12:
            case 13:
            case 14:
                STAssertEquals((NSUInteger)3, pointsTable(points), @"%ld != %ld", (NSUInteger)3, pointsTable(points));
                break;
            case 15:
            case 16:
            case 17:
            case 18:
                STAssertEquals((NSUInteger)4, pointsTable(points), @"%ld != %ld", (NSUInteger)4, pointsTable(points));
                break;
            case 19:
            case 20:
            case 21:
                STAssertEquals((NSUInteger)5, pointsTable(points), @"%ld != %ld", (NSUInteger)5, pointsTable(points));
                break;
            case 22:
            case 23:
            case 24:
                STAssertEquals((NSUInteger)6, pointsTable(points), @"%ld != %ld", (NSUInteger)6, pointsTable(points));
                break;
            case 25:
            case 26:
            case 27:
                STAssertEquals((NSUInteger)7, pointsTable(points), @"%ld != %ld", (NSUInteger)7, pointsTable(points));
                break;
            case 28:
            case 29:
            case 30:
                STAssertEquals((NSUInteger)8, pointsTable(points), @"%ld != %ld", (NSUInteger)8, pointsTable(points));
                break;
            default:
                continue;
        }
    }
}

- (void)testSkillLevelFive {
    PointsTable pointsTable = [CZPointsTable PointsTableWithSkillLevel:5];
    
    for (NSUInteger points = 0; points < 38; points++) {
        switch (points) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                STAssertEquals((NSUInteger)0, pointsTable(points), @"%ld != %ld", (NSUInteger)0, pointsTable(points));
                break;
            case 7:
            case 8:
            case 9:
            case 10:
                STAssertEquals((NSUInteger)1, pointsTable(points), @"%ld != %ld", (NSUInteger)1, pointsTable(points));
                break;
            case 11:
            case 12:
            case 13:
            case 14:
                STAssertEquals((NSUInteger)2, pointsTable(points), @"%ld != %ld", (NSUInteger)2, pointsTable(points));
                break;
            case 15:
            case 16:
            case 17:
            case 18:
                STAssertEquals((NSUInteger)3, pointsTable(points), @"%ld != %ld", (NSUInteger)3, pointsTable(points));
                break;
            case 19:
            case 20:
            case 21:
            case 22:
                STAssertEquals((NSUInteger)4, pointsTable(points), @"%ld != %ld", (NSUInteger)4, pointsTable(points));
                break;
            case 24:
            case 25:
            case 26:
                STAssertEquals((NSUInteger)5, pointsTable(points), @"%ld != %ld", (NSUInteger)5, pointsTable(points));
                break;
            case 27:
            case 28:
            case 29:
                STAssertEquals((NSUInteger)6, pointsTable(points), @"%ld != %ld", (NSUInteger)6, pointsTable(points));
                break;
            case 30:
            case 31:
            case 32:
            case 33:
                STAssertEquals((NSUInteger)7, pointsTable(points), @"%ld != %ld", (NSUInteger)7, pointsTable(points));
                break;
            case 34:
            case 35:
            case 36:
            case 37:
                STAssertEquals((NSUInteger)8, pointsTable(points), @"%ld != %ld", (NSUInteger)8, pointsTable(points));
                break;
            default:
                continue;
        }
    }
}

- (void)testSkillLevelSix {
    PointsTable pointsTable = [CZPointsTable PointsTableWithSkillLevel:6];
    
    for (NSUInteger points = 0; points < 46; points++) {
        switch (points) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                STAssertEquals((NSUInteger)0, pointsTable(points), @"%ld != %ld", (NSUInteger)0, pointsTable(points));
                break;
            case 9:
            case 10:
            case 11:
            case 12:
                STAssertEquals((NSUInteger)1, pointsTable(points), @"%ld != %ld", (NSUInteger)1, pointsTable(points));
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                STAssertEquals((NSUInteger)2, pointsTable(points), @"%ld != %ld", (NSUInteger)2, pointsTable(points));
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
                STAssertEquals((NSUInteger)3, pointsTable(points), @"%ld != %ld", (NSUInteger)3, pointsTable(points));
                break;
            case 24:
            case 25:
            case 26:
            case 27:
                STAssertEquals((NSUInteger)4, pointsTable(points), @"%ld != %ld", (NSUInteger)4, pointsTable(points));
                break;
            case 28:
            case 29:
            case 31:
                STAssertEquals((NSUInteger)5, pointsTable(points), @"%ld != %ld", (NSUInteger)5, pointsTable(points));
                break;
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
                STAssertEquals((NSUInteger)6, pointsTable(points), @"%ld != %ld", (NSUInteger)6, pointsTable(points));
                break;
            case 37:
            case 38:
            case 39:
            case 40:
                STAssertEquals((NSUInteger)7, pointsTable(points), @"%ld != %ld", (NSUInteger)7, pointsTable(points));
                break;
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
                STAssertEquals((NSUInteger)8, pointsTable(points), @"%ld != %ld", (NSUInteger)8, pointsTable(points));
                break;
            default:
                continue;
        }
    }
}

- (void)testSkillLevelSeven {
    PointsTable pointsTable = [CZPointsTable PointsTableWithSkillLevel:7];
    
    for (NSUInteger points = 0; points < 55; points++) {
        switch (points) {
            case 0:
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
                STAssertEquals((NSUInteger)0, pointsTable(points), @"%ld != %ld", (NSUInteger)0, pointsTable(points));
                break;
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                STAssertEquals((NSUInteger)1, pointsTable(points), @"%ld != %ld", (NSUInteger)1, pointsTable(points));
                break;
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                STAssertEquals((NSUInteger)2, pointsTable(points), @"%ld != %ld", (NSUInteger)2, pointsTable(points));
                break;
            case 22:
            case 24:
            case 25:
            case 26:
                STAssertEquals((NSUInteger)3, pointsTable(points), @"%ld != %ld", (NSUInteger)3, pointsTable(points));
                break;
            case 27:
            case 28:
            case 29:
            case 31:
            case 32:
                STAssertEquals((NSUInteger)4, pointsTable(points), @"%ld != %ld", (NSUInteger)4, pointsTable(points));
                break;
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                STAssertEquals((NSUInteger)5, pointsTable(points), @"%ld != %ld", (NSUInteger)5, pointsTable(points));
                break;
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
                STAssertEquals((NSUInteger)6, pointsTable(points), @"%ld != %ld", (NSUInteger)6, pointsTable(points));
                break;
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                STAssertEquals((NSUInteger)7, pointsTable(points), @"%ld != %ld", (NSUInteger)7, pointsTable(points));
                break;
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
                STAssertEquals((NSUInteger)8, pointsTable(points), @"%ld != %ld", (NSUInteger)8, pointsTable(points));
                break;
            default:
                continue;
        }
    }
}

- (void)testSkillLevelEight {
    PointsTable pointsTable = [CZPointsTable PointsTableWithSkillLevel:8];
    
    for (NSUInteger points = 0; points < 65; points++) {
        switch (points) {
            case 0:
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
                STAssertEquals((NSUInteger)0, pointsTable(points), @"%ld != %ld", (NSUInteger)0, pointsTable(points));
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                STAssertEquals((NSUInteger)1, pointsTable(points), @"%ld != %ld", (NSUInteger)1, pointsTable(points));
                break;
            case 20:
            case 21:
            case 22:
            case 24:
            case 25:
            case 26:
                STAssertEquals((NSUInteger)2, pointsTable(points), @"%ld != %ld", (NSUInteger)2, pointsTable(points));
                break;
            case 27:
            case 28:
            case 29:
            case 31:
            case 32:
                STAssertEquals((NSUInteger)3, pointsTable(points), @"%ld != %ld", (NSUInteger)3, pointsTable(points));
                break;
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
                STAssertEquals((NSUInteger)4, pointsTable(points), @"%ld != %ld", (NSUInteger)4, pointsTable(points));
                break;
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
                STAssertEquals((NSUInteger)5, pointsTable(points), @"%ld != %ld", (NSUInteger)5, pointsTable(points));
                break;
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
                STAssertEquals((NSUInteger)6, pointsTable(points), @"%ld != %ld", (NSUInteger)6, pointsTable(points));
                break;
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
                STAssertEquals((NSUInteger)7, pointsTable(points), @"%ld != %ld", (NSUInteger)7, pointsTable(points));
                break;
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
                STAssertEquals((NSUInteger)8, pointsTable(points), @"%ld != %ld", (NSUInteger)8, pointsTable(points));
                break;
            default:
                continue;
        }
    }
}

- (void)testSkillLevelNine {
    PointsTable pointsTable = [CZPointsTable PointsTableWithSkillLevel:9];
    
    for (NSUInteger points = 0; points < 75; points++) {
        switch (points) {
            case 0:
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
                STAssertEquals((NSUInteger)0, pointsTable(points), @"%ld != %ld", (NSUInteger)0, pointsTable(points));
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 24:
                STAssertEquals((NSUInteger)1, pointsTable(points), @"%ld != %ld", (NSUInteger)1, pointsTable(points));
                break;
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 31:
                STAssertEquals((NSUInteger)2, pointsTable(points), @"%ld != %ld", (NSUInteger)2, pointsTable(points));
                break;
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
                STAssertEquals((NSUInteger)3, pointsTable(points), @"%ld != %ld", (NSUInteger)3, pointsTable(points));
                break;
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
                STAssertEquals((NSUInteger)4, pointsTable(points), @"%ld != %ld", (NSUInteger)4, pointsTable(points));
                break;
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
                STAssertEquals((NSUInteger)5, pointsTable(points), @"%ld != %ld", (NSUInteger)5, pointsTable(points));
                break;
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
                STAssertEquals((NSUInteger)6, pointsTable(points), @"%ld != %ld", (NSUInteger)6, pointsTable(points));
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                STAssertEquals((NSUInteger)7, pointsTable(points), @"%ld != %ld", (NSUInteger)7, pointsTable(points));
                break;
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
                STAssertEquals((NSUInteger)8, pointsTable(points), @"%ld != %ld", (NSUInteger)8, pointsTable(points));
                break;
            default:
                continue;
        }
    }
}

@end
