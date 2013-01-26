//
//  COMatchScore.m
//  ScoreKeeper
//
//  Created by James Sodini on 7/3/12.
//  Copyright (c) 2012 Case Orange Software. All rights reserved.
//

#import "COMatchScore.h"

@implementation COMatchScore

- (id)initWithMinimum:(NSUInteger)min andMaximum:(NSUInteger)max {
    if (self = [super init]) {
        _minimum = min;
        _maximum = max;
    }
    
    return self;
}

@end
