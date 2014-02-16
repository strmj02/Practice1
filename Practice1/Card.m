//
//  Card.m
//  Practice1
//
//  Created by Rachel Johnson on 2/16/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(Card*)card{
    if([card.contents isEqualToString:self.contents]){
        return 1;
    }
    else{
        return 0;
    }
};

@end