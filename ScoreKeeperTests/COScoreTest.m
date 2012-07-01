//
//  COScoreTest.m
//  ScoreKeeper
//
//  Created by James Sodini on 7/1/12.
//  Copyright (c) 2012 Case Orange Software. All rights reserved.
//

#import "COScoreTest.h"
#import "COScore.h"
#import "COPlayer.h"

@implementation COScoreTest

- (void)testVariablesSetWhenUsingArgumentConstructor {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:4];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];

    STAssertNotNil(score, @"init returned nil");
    STAssertEquals(player, score.player, @"%@ != %@", player, score.player);
    STAssertEquals((NSUInteger)0, score.points, @"0 != %d", score.points);
}

@end
