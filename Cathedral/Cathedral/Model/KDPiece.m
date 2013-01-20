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

- (id)initWithShape:(KDShape*)shape
{
	self = [super init];
	if (self) {
		self.shape = shape;
		self.orientation = @"N";
	}
	return self;
}

+ (id)pieceWithShape:(KDShape *)shape
{
	return [[self alloc] initWithShape:shape];
}

- (BOOL)collidesWith:(KDPiece*)piece atRelativeLocation:(KDPoint*)location {
	for (KDBlock *myBlock in self.shape.blocks) {
		for (KDBlock *block in piece.shape.blocks) {
			if ([myBlock collidesWith:block atRelativeLocation:location]) {
				return YES;
			}
		}
	}
	return NO;
}

@end
