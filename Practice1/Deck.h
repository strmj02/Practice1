//
//  Deck.h
//  Practice1
//
//  Created by Rachel Johnson on 2/16/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

@property (nonatomic) NSMutableArray *cards;

-(void)addCard:(Card*)aCard:(BOOL) atTop;
-(void)addCard:(Card*)aCard;
-(Card *)drawRandomCard;

-(NSMutableArray *)cards;

@end