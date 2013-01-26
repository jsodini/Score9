//
//  COMatch.h
//  ScoreKeeper
//
//  Created by James Sodini on 7/1/12.
//  Copyright (c) 2012 Case Orange Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class COScore;
@class COPlayer;

@interface COMatch : NSObject

- (id)initWithPlayerOne:(COPlayer *)playerOne andPlayerTwo:(COPlayer *)playerTwo;

@property (readonly, retain) COScore *playerOneScore;
@property (readonly, retain) COScore *playerTwoScore;

@end
