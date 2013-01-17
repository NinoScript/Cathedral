//
//  KDPlayer.h
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KDPiece.h"

@interface KDPlayer : NSObject

@property NSString *player;

- (id)initWithID:(NSString*)playerID;
- (void)receivePieces:(NSArray*)pieces;
- (void)givePiece:(KDPiece*)piece;

@end

@interface KDPlayer (Collections)

@property (readonly) NSArray *pieces;

@end