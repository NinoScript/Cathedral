//
//  KDPlacement.h
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KDPlayer.h"
#import "KDPiece.h"
#import "KDPoint.h"

@interface KDPlacement : NSObject

@property KDPlayer *player;
@property KDPiece  *piece;
@property KDPoint  *location;

-(id)initWithPiece:(KDPiece*)piece atLocation:(KDPoint*)location byPlayer:(KDPlayer*)player;

	+(id)placementWithPiece:(KDPiece*)piece atLocation:(KDPoint*)location byPlayer:(KDPlayer*)player;


@end
