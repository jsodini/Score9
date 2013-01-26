//
//  COPlayer.m
//  ScoreKeeper
//
//  Created by James Sodini on 6/27/12.
//  Copyright (c) 2012 Case Orange Software. All rights reserved.
//

#import "COPlayer.h"

@implementation COPlayer

- (id)init {
	if (self = [super init]) {
		return [self initWithName:@"" andSkillLevel:0];
	}
	
	return self;
}

- (id)initWithName:(NSString *)playerName andSkillLevel:(NSUInteger)playerSkillLevel {
	if (self = [super init]) {
		[self setName:playerName];
		[self setSkillLevel:playerSkillLevel];
	}
	
	return self;
}

@end
