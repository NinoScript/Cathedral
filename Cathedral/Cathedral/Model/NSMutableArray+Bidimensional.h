//
//  NSMutableArray+Bidimensional.h
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/19/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Bidimensional)

- (id)objectAtIndexX:(NSUInteger)x Y:(NSUInteger)y whereWidth:(NSUInteger)width;

- (void)replaceObjectAtIndexX:(NSUInteger)x Y:(NSUInteger)y whereWidth:(NSUInteger)width withObject:(id)anObject;

@end
