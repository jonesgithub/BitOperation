//
//  BitOperationClass.h
//  BitOperation
//
//  Created by MexiQQ on 15/3/18.
//  Copyright (c) 2015年 MexiQQ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BitOperationClass : NSObject
- (BOOL)isOdd:(int)num;
- (void)swap:(int *)a with:(int *)b;
- (int)abs:(int)a;
- (int)average:(int)a with:(int)b;
- (int)bitcount:(int)a;
@end
