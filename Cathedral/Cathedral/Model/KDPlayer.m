//
//  KDPlayer.m
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import "KDPlayer.h"

@interface KDPlayer ()

@property NSMutableArray *pieces;

@end

@implementation KDPlayer

- (id)initWithID:(NSString*)playerID
{
	self = [super init];
	if (self) {
		self.player = playerID;
		self.pieces = [NSMutableArray new];
	}
	return self;
}

- (void)receivePieces:(NSArray*)pieces
{
	NSAssert([pieces count] == 0 || [pieces objectAtIndex:0] isKindOfClass:[KDPiece class], "Array is not of pieces.");
	[self.pieces addObjectsFromArray:pieces];
}

-(void)givePiece:(KDPiece *)piece
{
	[self.pieces removeObject:piece];
}


@end
