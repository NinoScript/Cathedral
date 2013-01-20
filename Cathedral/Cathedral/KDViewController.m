//
//  KDViewController.m
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import "KDViewController.h"
#import "KDGame.h"

@interface KDViewController ()

@property KDGameModel *game;
@property KDPlayer *p1;
@property KDPlayer *p2;
@property KDBoard *board;

@end

@implementation KDViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	self.p1 = [KDPlayer playerWithID:@"blanco"];
	self.p2 = [KDPlayer playerWithID:@"negro"];
	self.board = [KDBoard boardWithWidth:10 height:10];
	
	KDShape *o = [KDShape shapeWithBlocks:[NSArray arrayWithObjects:
					       [KDBlock blockWithX: 0 Y: 0],
					       nil]];
	KDShape *L = [KDShape shapeWithBlocks:[NSArray arrayWithObjects:
					       [KDBlock blockWithX: 0 Y: 0],
					       [KDBlock blockWithX: 1 Y: 0],
					       [KDBlock blockWithX: 1 Y:-1],
					       [KDBlock blockWithX: 1 Y:-2],
					       nil]];
	
	KDShape *S = [KDShape shapeWithBlocks:[NSArray arrayWithObjects:
					       [KDBlock blockWithX: 0 Y: 0],
					       [KDBlock blockWithX: 0 Y:-1],
					       [KDBlock blockWithX: 1 Y:-1],
					       [KDBlock blockWithX: 1 Y:-2],
					       nil]];
	KDShape *T = [KDShape shapeWithBlocks:[NSArray arrayWithObjects:
					       [KDBlock blockWithX: 0 Y: 0],
					       [KDBlock blockWithX:-1 Y:-1],
					       [KDBlock blockWithX: 0 Y:-1],
					       [KDBlock blockWithX: 1 Y:-1],
					       nil]];
	
	NSArray *piecesForP1 = [NSArray arrayWithObjects:
				[KDPiece pieceWithShape:o],
				[KDPiece pieceWithShape:o],
				[KDPiece pieceWithShape:L],
				[KDPiece pieceWithShape:S],
				[KDPiece pieceWithShape:T],
				nil];
	NSArray *piecesForP2 = [[NSArray alloc] initWithArray:piecesForP1 copyItems:YES];
	[self.p1 receivePieces:piecesForP1];
	[self.p2 receivePieces:piecesForP2];
	
	self.game = [KDGameModel gameWithPlayer1:self.p1 player2:self.p2 andBoard:self.board];
}

@end
