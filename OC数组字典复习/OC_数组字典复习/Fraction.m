//
//  Fraction.m
//  OC_数组字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
- (instancetype)initWithNum:(NSInteger)num
                       deno:(NSInteger)deno {
    if ([ super init]) {
        _num = num;
        _deno = deno;
    }
    return self;
}

- (Fraction *)addFraction:(Fraction *)fraction {
    Fraction *newFrac =  [[Fraction alloc] init];
    newFrac.num = self.num * fraction.deno + self.deno * fraction.num;
    newFrac.deno = self.num * fraction.deno;
  
    return newFrac;
}




@end
