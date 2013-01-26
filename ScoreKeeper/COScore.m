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

- (id)initWithPlayer:(COPlayer *)shooter {
    if (self = [super init]) {
        [self setPlayer:shooter];
        [self setPoints:0];
    }
    
    return self;
}

- (void)addPoint {
    if ([self pointsToWin] == _points) {
        return;
    }

    _points++;
}

- (void)subtractPoint {
    if (_points == 0) {
        return;
    }
    
    _points--;
}

- (NSUInteger)pointsToWin {
    if ([_player skillLevel] < 1 || [_player skillLevel] > 9) {
        [NSException raise:@"Invalid Skill Level"
                    format:@"%d is not a valid skill level", [_player skillLevel]];
    }

    switch ([_player skillLevel]) {
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
