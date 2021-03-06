//
//  CZPlayerScore.m
//  Score9
//
//  Created by James Sodini on 2/16/13.
//  Copyright (c) 2013 James Sodini. All rights reserved.
//

#import "CZPlayerScore.h"
#import "CZPointsTable.h"

@implementation CZPlayerScore

- (id)initWithSkillLevel:(NSUInteger)skillLevel {
    self = [super init];
    
    [self setSkillLevel:skillLevel];
    [self setCurrentScore:0];
    [self setOpponent:nil];
    
    return self;
}

- (NSUInteger)score {
    if ([self hasWon] && [self opponent] != nil) {
        return 20 - [[self opponent] score];
    }
    
    PointsTable pointsTable = [CZPointsTable PointsTableWithSkillLevel:[self skillLevel]];
    
    return pointsTable([self currentScore]);
}

- (void)increaseSkillLevel {
    if ([self skillLevel] < 9) {
        [self setSkillLevel:[self skillLevel] + 1];
    }
}

- (void)decreaseSkillLevel {
    if ([self skillLevel] > 1) {
        [self setSkillLevel:[self skillLevel] - 1];
    }
}

- (void)increaseScore {
    if ([self currentScore] < [self pointsToWin]) {
        [self setCurrentScore:[self currentScore] + 1];
    }
}

- (void)decreaseScore {
    if ([self currentScore] > 1) {
        [self setCurrentScore:[self currentScore] - 1];
    }
}

- (BOOL)hasWon {
    return [self currentScore] == [self pointsToWin];
}

- (NSUInteger)pointsToWin {
    switch ([self skillLevel]) {
        case 1:
            return 14;
        case 2:
            return 19;
        case 3:
            return 25;
        case 4:
            return 31;
        case 5:
            return 38;
        case 6:
            return 46;
        case 7:
            return 55;
        case 8:
            return 65;
        case 9:
            return 75;
        default:
            return 0;
    }
}

- (NSUInteger)nextPoint {
    PointsTable pointsTable = [CZPointsTable PointsTableWithSkillLevel:[self skillLevel]];
    
    NSUInteger points = pointsTable([self currentScore]);
    
    for (NSUInteger score = [self currentScore] + 1; score < [self pointsToWin]; score++) {        
        if (pointsTable(score) > points) {
            return score - [self currentScore];
        }
    }
    
    return [self remainingPoints];
}

- (NSUInteger)remainingPoints {
    return [self pointsToWin] - [self currentScore];
}

- (float)percentageComplete {
    return [self currentScore] / ([self pointsToWin] * 1.0);
}

@end
