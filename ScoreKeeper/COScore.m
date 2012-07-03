//
//  COScore.m
//  ScoreKeeper
//
//  Created by James Sodini on 7/1/12.
//  Copyright (c) 2012 Case Orange Software. All rights reserved.
//

#import "COScore.h"
#import "COPlayer.h"

@implementation COScore

@synthesize player;
@synthesize points;

- (id)initWithPlayer:(COPlayer *)shooter {
    if (self = [super init]) {
        [self setPlayer:shooter];
        [self setPoints:0];
    }
    
    return self;
}

- (void)addPoint {
    points++;
}

- (void)subtractPoint {
    if (points == 0) {
        return;
    }
    
    points--;
}

- (NSUInteger)pointsToWin {
    if (player.skillLevel < 1 || player.skillLevel > 9) {
        [NSException raise:@"Invalid Skill Level"
                    format:@"%d is not a valid skill level", player.skillLevel];
    }

    switch (player.skillLevel) {
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
            return 0;  // Unreachable
    }
}

@end
