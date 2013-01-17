//
//  KDBoard.m
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import "KDBoard.h"

@interface KDBoard ()

@property unsigned int width;
@property unsigned int height;

@end

@implementation KDBoard

- (id)init
{
	return [self initWithWidth:0 andHeight:0]; // Will crash :B
}

- (id)initWithWidth:(unsigned int)width andHeight:(unsigned int)height
{
	NSAssert(width>0 && height>0, @"Null sized board");
	
	self = [super init];
	if (self) {
		self.width  = width;
		self.height = height;
		self.placements = [NSMutableArray new];
	}
	return self;
}

- (BOOL)canPlacePiece:(KDPiece *)piece atLocation:(KDPoint *)location
{
	__block BOOL canPlace = YES;
	[self.placements enumerateObjectsUsingBlock:^(KDPlacement *placement, NSUInteger idx, BOOL *stop) {
		if ([placement.piece collidesWith:piece atRelativeLocation:location]) {
			canPlace = NO;
			*stop = YES;
		}
	}];
	return canPlace;
}

- (void)placePiece:(KDPiece *)piece atLocation:(KDPoint *)location byPlayer:(KDPlayer *)player
{
	[self addPlacement:[KDPlacement placementWithPiece:piece atLocation:location byPlayer:player]];
}

- (BOOL)canAddPlacement:(KDPlacement *)placement
{
	return [self canPlacePiece:placement.piece
			atLocation:placement.location];
}

- (void)addPlacement:(KDPlacement *)placement
{
	[self.placements addObject:placement];
}

@end
