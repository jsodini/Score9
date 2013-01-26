//
//  COPlayer.h
//  ScoreKeeper
//
//  Created by James Sodini on 6/27/12.
//  Copyright (c) 2012 Case Orange Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface COPlayer : NSObject

@property (readwrite, retain) NSString *name;
@property (readwrite, assign) NSUInteger skillLevel;

- (id)initWithName:(NSString *)playerName andSkillLevel:(NSUInteger)playerSkillLevel;

@end
