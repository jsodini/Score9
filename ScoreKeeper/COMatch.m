//
//  COMatch.m
//  ScoreKeeper
//
//  Created by James Sodini on 7/1/12.
//  Copyright (c) 2012 Case Orange Software. All rights reserved.
//

#import "COMatch.h"
#import "COPlayer.h"
#import "COScore.h"

@implementation COMatch

@synthesize playerOneScore;
@synthesize playerTwoScore;

- (id)initWithPlayerOne:(COPlayer *)playerOne andPlayerTwo:(COPlayer *)playerTwo {
    if (self = [super init]) {
        playerOneScore = [[COScore alloc] initWithPlayer:playerOne];
        playerTwoScore = [[COScore alloc] initWithPlayer:playerTwo];
    }
    
    return self;
}

@end
