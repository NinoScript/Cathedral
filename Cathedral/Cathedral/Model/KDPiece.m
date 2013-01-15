//
//  KDPiece.m
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import "KDPiece.h"
#import "KDBlock.h"

@implementation KDPiece

-(BOOL)collidesWith:(KDPiece*)piece atRelativeLocation:(KDPoint*)location {
	__block BOOL isColliding = NO;
	[self.shape.blocks enumerateObjectsUsingBlock:^(KDBlock *myBlock, NSUInteger idx1, BOOL *stop1) {
		[piece.shape.blocks enumerateObjectsUsingBlock:^(KDBlock *block, NSUInteger idx2, BOOL *stop2) {
			if (myBlock.x == block.x + location.x
			    && myBlock.y == block.y + location.y) {
				isColliding = *stop1 = *stop2 = YES;
			}
		}];
	}];
	return isColliding;
}

@end
