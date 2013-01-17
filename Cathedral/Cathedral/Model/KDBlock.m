//
//  KDBlock.m
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import "KDBlock.h"

@implementation KDBlock

-(BOOL)collidesWith:(KDBlock*)block atRelativeLocation:(KDPoint*)location
{
	return self.x == block.x + location.x
	    && self.y == block.y + location.y;
}

@end

