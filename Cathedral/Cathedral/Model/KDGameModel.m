//
//  KDGame.m
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import "KDGameModel.h"

@implementation KDGameModel

-(id)initWithPlayer1:(KDPlayer*)p1 player2:(KDPlayer*)p2 andBoard:(KDBoard*)board
{
	self = [super init];
	if (self) {
		self.p1 = p1;
		self.p2 = p2;
		self.board = board;
	}
	return self;
}
+(id)gameWithPlayer1:(KDPlayer*)p1 player2:(KDPlayer*)p2 andBoard:(KDBoard*)board
{
	return [[self alloc] initWithPlayer1:p1 player2:p2 andBoard:board];
}

@end
