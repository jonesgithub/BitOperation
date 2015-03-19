//
//  SegmentFaultTests.m
//  SegmentFaultTests
//
//  Created by MexiQQ on 15/3/17.
//  Copyright (c) 2015年 MexiQQ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Kiwi/Kiwi.h>
#import "BitOperationClass.h"
SPEC_BEGIN(SimpleStringSpec)
describe(@"BitOperation", ^{
  BitOperationClass *bitOperation = [BitOperationClass new];
  context(@"when valid a number odd or even", ^{
    it(@"shuld be reture true", ^{
      [[theValue([bitOperation isOdd:2]) should] equal:theValue(true)];
    });

    it(@"should be return false", ^{
      [[theValue([bitOperation isOdd:3]) should] equal:theValue(false)];
    });
  });

  context(@"swap two number", ^{
    int a = 1025;
    int b = 100899893;
    it(@"should swap a and b value", ^{
      [bitOperation swap:&a with:&b];
      [[theValue(a) should] equal:theValue(100899893)];
      [[theValue(b) should] equal:theValue(1025)];
    });
  });

  context(@"should return absolute value", ^{
    it(@"should return 5", ^{
      [[theValue([bitOperation abs:(-5)]) should] equal:theValue(5)];
      [[theValue([bitOperation abs:(5)]) should] equal:theValue(5)];
    });
  });
  context(@"should return average value", ^{
    int a = 10;
    int b = 8;
    it(@"should return 5", ^{
      [[theValue([bitOperation average:a with:b]) should] equal:theValue(9)];
    });
  });
  context(@"should return 1 numbers", ^{
    it(@"should return 2", ^{
      [[theValue([bitOperation bitcount:9]) should] equal:theValue(2)];
    });
  });
});
SPEC_END
