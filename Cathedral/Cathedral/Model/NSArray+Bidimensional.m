//
//  NSArray+Bidimensional.m
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/19/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import "NSArray+Bidimensional.h"

@implementation NSArray (Bidimensional)

- (id)objectAtIndexX:(NSUInteger)x Y:(NSUInteger)y whereWidth:(NSUInteger)width
{
	return [self objectAtIndex:x+y*width];
}

@end
