//
//  KDBoard.m
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import "KDBoard.h"
#import "NSMutableArray+Bidimensional.h"

@interface KDBoard ()

@property unsigned int width;
@property unsigned int height;

@end

@implementation KDBoard

- (id)init
{
	return [self initWithWidth:0 height:0]; // Will crash :B
}

- (id)initWithWidth:(unsigned int)width height:(unsigned int)height
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

+ (id)boardWithWidth:(unsigned int)width height:(unsigned int)height
{
	return [[self alloc] initWithWidth:width height:height];
}


- (BOOL)canPlacePiece:(KDPiece *)piece atLocation:(KDPoint *)location
{
	for (KDPlacement *placement in self.placements) {
		if ([placement.piece collidesWith:piece atRelativeLocation:location]) {
			return NO;
		}
	}
	return YES;
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

- (NSArray*)bidimensionalArrayRepresentation
{
	NSMutableArray *array = [NSMutableArray arrayWithCapacity:self.width*self.height];
	
	for (int i=0; i<self.width*self.height; ++i) {
		[array addObject:[NSNumber numberWithInt:0]];
	}
	for (KDPlacement *placement in self.placements) {
		for (KDBlock *block in placement.piece.shape.blocks) {
			[array replaceObjectAtIndexX:block.x+placement.location.x
						   Y:block.y+placement.location.y
					  whereWidth:self.width
					  withObject:placement];
		}
	}
	
	return [array copy];
}

@end
