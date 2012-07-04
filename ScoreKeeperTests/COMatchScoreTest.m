//
//  COMatchScoreTest.m
//  ScoreKeeper
//
//  Created by James Sodini on 7/3/12.
//  Copyright (c) 2012 Case Orange Software. All rights reserved.
//

#import "COMatchScoreTest.h"
#import "COMatchScore.h"

@implementation COMatchScoreTest

- (void)testDefaultVariablesSetWhenUsingStandardConstructor {
    COMatchScore *matchScore = [[COMatchScore alloc] init];
    
    STAssertNotNil(matchScore, @"init returned nil");
    STAssertEquals((NSUInteger)0, matchScore.minimum, @"0 != %d", matchScore.minimum);
    STAssertEquals((NSUInteger)0, matchScore.maximum, @"0 != %d", matchScore.maximum);
}

- (void)testVariablesSetWhenUsingArgumentConstructor {
    NSUInteger minimum = 8;
    NSUInteger maximum = 12;

    COMatchScore *matchScore = [[COMatchScore alloc] initWithMinimum:minimum andMaximum:maximum];

    STAssertNotNil(matchScore, @"init returned nil");
    STAssertEquals(minimum, matchScore.minimum, @"%d != %d", minimum, matchScore.minimum);
    STAssertEquals(maximum, matchScore.maximum, @"%d != %d", maximum, matchScore.maximum);
}

@end
