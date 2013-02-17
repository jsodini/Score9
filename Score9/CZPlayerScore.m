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

- (NSUInteger)increaseSkillLevel {
    if ([self skillLevel] < 9) {
        [self setSkillLevel:[self skillLevel] + 1];
    }

    return [self skillLevel];
}

- (NSUInteger)decreaseSkillLevel {    
    if ([self skillLevel] > 1) {
        [self setSkillLevel:[self skillLevel] - 1];
    }
    
    return [self skillLevel];
}

@end
