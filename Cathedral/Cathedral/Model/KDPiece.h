//
//  KDPiece.h
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KDShape.h"
#import "KDPoint.h"

@interface KDPiece : NSObject

@property KDShape  *shape;
@property NSString *orientation;

-(BOOL)collidesWith:(KDPiece*)piece atRelativeLocation:(KDPoint*)location;
- (id) initWithShape:(KDShape*)shape;
+ (id)pieceWithShape:(KDShape*)shape;


@end
