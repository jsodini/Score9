//
//  COMatchScore.h
//  ScoreKeeper
//
//  Created by James Sodini on 7/3/12.
//  Copyright (c) 2012 Case Orange Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface COMatchScore : NSObject

@property (readonly, nonatomic) NSUInteger minimum;
@property (readonly, nonatomic) NSUInteger maximum;

- (id)initWithMinimum:(NSUInteger)min andMaximum:(NSUInteger)max;

@end
