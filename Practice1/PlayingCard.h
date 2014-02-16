//
//  PlayingCard.h
//  Practice1
//
//  Created by Rachel Johnson on 2/16/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(void)setSuit:(NSString *)suit;
+(NSArray*)validSuits;
+(NSString *)suit;
+(NSArray *)rankStrings;
+(NSString*)content;
+(NSUInteger)maxRank;

@end
