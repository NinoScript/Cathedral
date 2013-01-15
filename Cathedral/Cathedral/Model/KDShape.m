//
//  KDShape.m
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import "KDShape.h"
#import "KDBlock.h"

@interface KDShape ()

@property NSArray *blocks;

@end

@implementation KDShape

- (id)init
{
	return [self initWithBlocks:[NSArray arrayWithObjects:[KDBlock new], nil]];
}
-(id)initWithBlocks:(NSArray*)blocks {
	self = [super init];
	if (self) {
		self.blocks = blocks;
	}
	return self;
}

@end