//
//  COScore.h
//  ScoreKeeper
//
//  Created by James Sodini on 7/1/12.
//  Copyright (c) 2012 Case Orange Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class COPlayer;

@interface COScore : NSObject {
    COPlayer *player;
    NSUInteger points;
}

@property (readwrite, retain) COPlayer *player;
@property (readwrite, assign) NSUInteger points;

- (id)initWithPlayer:(COPlayer *)shooter;

- (void)addPoint;
- (void)subtractPoint;

- (NSUInteger)pointsToWin;

@end
