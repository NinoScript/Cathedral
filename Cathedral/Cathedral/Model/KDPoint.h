//
//  KDPoint.h
//  Cathedral
//
//  Created by Cristián Arenas Ulloa on 1/13/13.
//  Copyright (c) 2013 Cristián Arenas Ulloa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KDPoint : NSObject

@property int x;
@property int y;

- (id) initWithX:(int)x Y:(int)y;
+ (id)pointWithX:(int)x Y:(int)y;

@end
