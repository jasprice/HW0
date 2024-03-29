//
//  PlayingCard.h
//  Matchismo
//
//  Created by jasprice on 2/5/13.
//  Copyright (c) 2013 jasprice. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
