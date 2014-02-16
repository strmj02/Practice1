//
//  Card.h
//  Practice1
//
//  Created by Rachel Johnson on 2/16/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Card : NSObject

@property (strong) NSString *contents;
@property (nonatomic) BOOL matched;
@property (nonatomic) BOOL chosen;


+(int)match:(Card*)card;



@end