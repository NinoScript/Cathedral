//
//  NSMutableArray+Bidimensional.m
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/19/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import "NSMutableArray+Bidimensional.h"

@implementation NSMutableArray (Bidimensional)

- (id)objectAtIndexX:(NSUInteger)x Y:(NSUInteger)y whereWidth:(NSUInteger)width
{
	return [self objectAtIndex:x+y*width];
}

- (void)replaceObjectAtIndexX:(NSUInteger)x Y:(NSUInteger)y whereWidth:(NSUInteger)width withObject:(id)anObject
{
	[self replaceObjectAtIndex:x+y*width withObject:anObject];
}

@end
