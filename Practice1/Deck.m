//
//  Deck.m
//  Practice1
//
//  Created by Rachel Johnson on 2/16/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "Deck.h"

@implementation Deck

-(void)addCard:(Card*)aCard:(BOOL) atTop{
    if(atTop){
        [self.cards insertObject:aCard atIndex:0];
    }
    else{
        [self.cards addObject:aCard];
    }
    
}
-(void)addCard:(Card*)aCard{
    [self.cards addObject:aCard];
}

-(NSMutableArray *)cards{
    if(!_cards){
        _cards = [[NSMutableArray alloc]init];
    }
    return _cards;
}

-(Card *)drawRandomCard{
    if(self.cards.count >=1){
        int index = arc4random() % self.cards.count;
        [self.cards removeObjectAtIndex:index];
        return ([self.cards objectAtIndex:index]);
    }
    else{
        return nil;
    }
}

@end