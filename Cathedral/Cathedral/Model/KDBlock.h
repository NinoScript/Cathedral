//
//  KDBlock.h
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KDPoint.h"

@interface KDBlock : NSObject

@property int x;
@property int y;

-(BOOL)collidesWith:(KDBlock*)block atRelativeLocation:(KDPoint*)location;

@end
