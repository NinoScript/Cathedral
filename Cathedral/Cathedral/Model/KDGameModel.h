//
//  KDGame.h
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KDGame.h"

@interface KDGameModel : NSObject

@property KDPlayer *p1;
@property KDPlayer *p2;

@property KDBoard *board;

-(id)initWithPlayer1:(KDPlayer*)p1 player2:(KDPlayer*)p2 andBoard:(KDBoard*)board;

+(id)gameWithPlayer1:(KDPlayer*)p1 player2:(KDPlayer*)p2 andBoard:(KDBoard*)board;
@end
