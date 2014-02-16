//
//  PlayingCard.m
//  Practice1
//
//  Created by Rachel Johnson on 2/16/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;
@synthesize rank;

-(void)setSuit:(NSString *)suit{
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}

+(NSArray *)validSuits{
    return ([NSArray arrayWithObjects:@"♥", "♣", "♦", "♠", nil]);
}

+(NSString *)suit{
    if(!self.suit){
        return @"?";
    }
    else{
        return self.suit;
    }
}

+(NSArray *)rankStrings{
    NSArray *arr =[NSArray arrayWithObjects:@"A", "2", "3", "4", "5", "6", "7",
                   "8", "9", "10", "J", "Q", "K", nil];
    return arr;
}

-(NSString*)content{
    NSArray *rankStrings = [PlayingCard  rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

-(NSUInteger)maxRank{
    return [[PlayingCard rankStrings] count]-1;
}

-(void)setRank:(NSUInteger)rank2{
    if(rank2 <= [PlayingCard maxRank]){
        rank = rank2;
    }
}



@end