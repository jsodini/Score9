//
//  CZPlayerScore.m
//  Score9
//
//  Created by James Sodini on 2/16/13.
//  Copyright (c) 2013 Cocoa Zombie. All rights reserved.
//

#import "CZPlayerScore.h"

@implementation CZPlayerScore

- (id)initWithSkillLevel:(NSUInteger)skillLevel {
    self = [super init];
    
    [self setSkillLevel:skillLevel];
    [self setCurrentScore:0];
    
    return self;
}

- (void)increaseSkillLevel {
    if ([self skillLevel] < 9) {
        [self setSkillLevel:[self skillLevel] + 1];
    }
}

- (void)decreaseSkillLevel {
    if ([self skillLevel] > 1) {
        [self setSkillLevel:[self skillLevel] - 1];
    }
}

@end
