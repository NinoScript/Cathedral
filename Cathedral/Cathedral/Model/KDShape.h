//
//  KDShape.h
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/12/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KDShape : NSObject

@property (readonly) NSArray *blocks;

- (id) initWithBlocks:(NSArray*)blocks;
+ (id)shapeWithBlocks:(NSArray*)blocks;

@end
