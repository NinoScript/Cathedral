//
//  KDBoard.h
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KDBlock.h"
#import "KDPiece.h"
#import "KDPlayer.h"
#import "KDPlacement.h"

@interface KDBoard : NSObject

@property NSMutableArray *placements;

-(BOOL)canPlacePiece:(KDPiece*)piece atLocation:(KDPoint*)location;
-(void)   placePiece:(KDPiece*)piece atLocation:(KDPoint*)location byPlayer:(KDPlayer*)player;
-(BOOL)canAddPlacement:(KDPlacement*)placement;
-(void)   addPlacement:(KDPlacement*)placement;

@end
