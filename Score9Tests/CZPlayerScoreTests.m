//
//  CZPlayerScoreTests.m
//  Score9
//
//  Created by James Sodini on 2/16/13.
//  Copyright (c) 2013 Cocoa Zombie. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

#import "CZPlayerScore.h"

@interface CZPlayerScoreTests : SenTestCase

@end

@implementation CZPlayerScoreTests

- (void)testDefaultValuesWhenInstantiated {
    CZPlayerScore *playerScore = [[CZPlayerScore alloc] initWithSkillLevel:2];
    STAssertEquals((NSUInteger)2, [playerScore skillLevel], @"2 != %ld", [playerScore skillLevel]);
}

- (void)testReturnsOneWhenDecreasingSkillOfOne {
    CZPlayerScore *playerScore = [[CZPlayerScore alloc] initWithSkillLevel:1];
    [playerScore decreaseSkillLevel];
    STAssertEquals((NSUInteger)1, [playerScore skillLevel], @"1 != %ld", [playerScore skillLevel]);
}

- (void)testReturnsTwoWhenDecreasingSkillOfThree {
    CZPlayerScore *playerScore = [[CZPlayerScore alloc] initWithSkillLevel:3];
    [playerScore decreaseSkillLevel];
    STAssertEquals((NSUInteger)2, [playerScore skillLevel], @"2 != %ld", [playerScore skillLevel]);
}

- (void)testReturnsNineWhenIncreasingSkillOfNine {
    CZPlayerScore *playerScore = [[CZPlayerScore alloc] initWithSkillLevel:9];
    [playerScore increaseSkillLevel];
    STAssertEquals((NSUInteger)9, [playerScore skillLevel], @"9 != %ld", [playerScore skillLevel]);
}

- (void)testReturnsNineWhenIncreasingSkillOfEight {
    CZPlayerScore *playerScore = [[CZPlayerScore alloc] initWithSkillLevel:8];
    [playerScore increaseSkillLevel];
    STAssertEquals((NSUInteger)9, [playerScore skillLevel], @"9 != %ld", [playerScore skillLevel]);
}

- (void)testReturnsOneWhenDecreasingScoreOfOne {
    CZPlayerScore *playerScore = [[CZPlayerScore alloc] initWithSkillLevel:1];
    [playerScore setCurrentScore:1];
    [playerScore decreaseScore];
    STAssertEquals((NSUInteger)1, [playerScore currentScore], @"1 != %ld", [playerScore currentScore]);
}

- (void)testReturnsOneWhenDecreasingScoreOfTwo {
    CZPlayerScore *playerScore = [[CZPlayerScore alloc] initWithSkillLevel:1];
    [playerScore setCurrentScore:2];
    [playerScore decreaseScore];
    STAssertEquals((NSUInteger)1, [playerScore currentScore], @"1 != %ld", [playerScore currentScore]);
}

- (void)testReturnsFourteenWhenIncreasingScoreOfFourteen {
    CZPlayerScore *playerScore = [[CZPlayerScore alloc] initWithSkillLevel:1];
    [playerScore setCurrentScore:14];
    [playerScore increaseScore];
    STAssertEquals((NSUInteger)14, [playerScore currentScore], @"14 != %ld", [playerScore currentScore]);
}

- (void)testReturnsFourteenWhenIncreasingScoreOfThirteen {
    CZPlayerScore *playerScore = [[CZPlayerScore alloc] initWithSkillLevel:1];
    [playerScore setCurrentScore:13];
    [playerScore increaseScore];
    STAssertEquals((NSUInteger)14, [playerScore currentScore], @"14 != %ld", [playerScore currentScore]);
}

@end
