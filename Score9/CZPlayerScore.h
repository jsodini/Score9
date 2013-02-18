//
//  CZPlayerScore.h
//  Score9
//
//  Created by James Sodini on 2/16/13.
//  Copyright (c) 2013 Cocoa Zombie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZPlayerScore : NSObject

@property (assign, nonatomic) NSUInteger skillLevel;
@property (assign, nonatomic) NSUInteger currentScore;
@property (retain, nonatomic) CZPlayerScore *opponent;

- (id)initWithSkillLevel:(NSUInteger)skillLevel;

- (void)increaseSkillLevel;
- (void)decreaseSkillLevel;

- (void)increaseScore;
- (void)decreaseScore;

- (BOOL)hasWon;

- (NSUInteger)pointsToWin;
- (NSUInteger)nextPoint;
- (NSUInteger)remainingPoints;
- (NSUInteger)score;

- (float)percentageComplete;

@end
