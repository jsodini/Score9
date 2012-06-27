//
//  COPlayerTest.m
//  ScoreKeeper
//
//  Created by James Sodini on 6/27/12.
//  Copyright (c) 2012 Case Orange Software. All rights reserved.
//

#import "COPlayer.h"
#import "COPlayerTest.h"

@implementation COPlayerTest

- (void)testDefaultVariablesSetWhenUsingStandardConstructor {
    COPlayer *player = [[COPlayer alloc] init];
	STAssertNotNil(player, @"init returned nil");
	STAssertEquals(@"", player.name, @"\"\" != %@", player.name);
	STAssertEquals((NSUInteger)0, player.skillLevel, @"0 != %d", (int)player.skillLevel);
}

- (void)testVariablesSetWhenUsingArgumentConstructor {
	NSString *name = @"test";
	NSUInteger skillLevel = 42;

	COPlayer *player = [[COPlayer alloc] initWithName:name andSkillLevel:skillLevel];
	STAssertNotNil(player, @"init returned nil");
	STAssertEquals(name, player.name, @"%@ != %@", name, player.name);
	STAssertEquals(skillLevel, player.skillLevel, @"%d != %d", skillLevel, player.skillLevel);
}

@end
