//
//  KDPoint.m
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/13/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import "KDPoint.h"

@implementation KDPoint

- (id)initWithX:(int)x Y:(int)y
{
	self = [super init];
	if (self) {
		self.x = x;
		self.y = y;
	}
	return self;
}
+ (id)pointWithX:(int)x Y:(int)y
{
	return [(KDPoint*)[self alloc] initWithX:x Y:y];
}
@end
