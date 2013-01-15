//
//  KDPlacement.m
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import "KDPlacement.h"

@implementation KDPlacement

-(id)initWithPiece:(KDPiece*)piece atLocation:(KDPoint*)location byPlayer:(KDPlayer*)player {
	self = [super init];
	if (self) {
		self.piece    = piece;
		self.location = location;
		self.player   = player;
	}
	return self;
}

+(id)placementWithPiece:(KDPiece*)piece atLocation:(KDPoint*)location byPlayer:(KDPlayer*)player {
	return [[self alloc] initWithPiece:piece atLocation:location byPlayer:player];
}

@end
