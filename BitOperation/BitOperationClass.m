//
//  BitOperationClass.m
//  BitOperation
//
//  Created by MexiQQ on 15/3/18.
//  Copyright (c) 2015年 MexiQQ. All rights reserved.
//

#import "BitOperationClass.h"

@implementation BitOperationClass

/**
 *  通过位操作判断奇偶
 *
 *  @param num 被判断数字
 *
 *  @return ture / false
 */
- (BOOL)isOdd:(int)num {
  if ((num & 1) == 0) {
    return true;
  } else {
    return false;
  }
}

/**
 *  位操作交换两个数字
 *
 *  @param a
 *  @param b
 */
- (void)swap:(int *)a with:(int *)b {
  *a = *a ^ *b;
  *b = *a ^ *b;
  *a = *a ^ *b;
}

/**
 *  求绝对值
 *
 *  @param a 被求绝对值的数值
 *
 *  @return 绝对值
 */
- (int)abs:(int)a {
  int i = a >> 31;
  return ((a ^ i) - i);
}

/**
 *  求平均值 防止溢出
 *
 *  @param a
 *  @param b
 *
 *  @return average value
 */
- (int)average:(int)a with:(int)b {
  int i = a & b;
  int j = (a ^ b) >> 1;
  return i + j;
}

/**
 *  求二进制表示中数字1的个数
 *
 *  @param a
 *
 *  @return 1的个数
 */
- (int)bitcount:(int)a {
  int b;
  for (b = 0; a != 0;) {
    b++;
    a = a & (a - 1);
  }
  return b;
}
@end
