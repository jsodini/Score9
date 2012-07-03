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

- (void)testIncreasesPointsByOneWhenAddPointCalled {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:4];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];

    [score addPoint];

    STAssertEquals((NSUInteger)1, score.points, @"1 != %d", score.points);
}

- (void)testDecreasesPointsByOneWhenSubtractPointCalled {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:4];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];

    [score setPoints:43];
    [score subtractPoint];

    STAssertEquals((NSUInteger)42, score.points, @"42 != %d", score.points);
}

- (void)testSubtractPointDoesNothingWhenPointIsZero {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:4];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];

    [score subtractPoint];

    STAssertEquals((NSUInteger)0, score.points, @"0 != %d", score.points);
}

- (void)testPointsToWinReturnsCorrectScoreWhenSkillLevelIsOne {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:1];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];

    STAssertEquals((NSUInteger)14, [score pointsToWin], @"14 != %d", [score pointsToWin]);
}

- (void)testPointsToWinReturnsCorrectScoreWhenSkillLevelIsTwo {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:2];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];
    
    STAssertEquals((NSUInteger)19, [score pointsToWin], @"19 != %d", [score pointsToWin]);
}

- (void)testPointsToWinReturnsCorrectScoreWhenSkillLevelIsThree {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:3];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];
    
    STAssertEquals((NSUInteger)25, [score pointsToWin], @"25 != %d", [score pointsToWin]);
}

- (void)testPointsToWinReturnsCorrectScoreWhenSkillLevelIsFour {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:4];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];
    
    STAssertEquals((NSUInteger)31, [score pointsToWin], @"31 != %d", [score pointsToWin]);
}

- (void)testPointsToWinReturnsCorrectScoreWhenSkillLevelIsFive {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:5];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];
    
    STAssertEquals((NSUInteger)38, [score pointsToWin], @"38 != %d", [score pointsToWin]);
}

- (void)testPointsToWinReturnsCorrectScoreWhenSkillLevelIsSix {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:6];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];
    
    STAssertEquals((NSUInteger)46, [score pointsToWin], @"46 != %d", [score pointsToWin]);
}

- (void)testPointsToWinReturnsCorrectScoreWhenSkillLevelIsSeven {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:7];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];
    
    STAssertEquals((NSUInteger)55, [score pointsToWin], @"55 != %d", [score pointsToWin]);
}

- (void)testPointsToWinReturnsCorrectScoreWhenSkillLevelIsEight {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:8];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];
    
    STAssertEquals((NSUInteger)65, [score pointsToWin], @"65 != %d", [score pointsToWin]);
}

- (void)testPointsToWinReturnsCorrectScoreWhenSkillLevelIsNine {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:9];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];
    
    STAssertEquals((NSUInteger)75, [score pointsToWin], @"75 != %d", [score pointsToWin]);
}

- (void)testPointsToWinThrowsExceptionWhenSkillLevelTooLow {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:0];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];

    STAssertThrows([score pointsToWin], @"no exception thrown");
}

- (void)testPointsToWinThrowsExceptionWhenSkillLevelTooHigh {
    COPlayer *player = [[COPlayer alloc] initWithName:@"Test" andSkillLevel:10];
    COScore  *score  = [[COScore  alloc] initWithPlayer:player];
    
    STAssertThrows([score pointsToWin], @"no exception thrown");
}

@end
