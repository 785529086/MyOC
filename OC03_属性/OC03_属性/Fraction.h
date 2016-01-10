//
//  Fraction.h
//  OC03_属性
//
//  Created by dllo on 12/2/15.
//  Copyright © 2015 doll. All rights reserved.
//
/*
创建一个Fraction类(分数)实现分数的加减乘除,⽐较⼤小、约分等方法。
提示：1.声明属性 numerator(分子)、denominator(分母)。
2.声明自定义初始化方法、遍历构造器，用于给分子分母赋值。
3.声明功能方法。*/

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property (nonatomic, assign) NSInteger numerator;
@property (nonatomic, assign) NSInteger denominator;


- (instancetype)initWithNumerator:(NSInteger)numerator
                      denominator:(NSInteger)denominator;

+ (instancetype)FractionWithNumerator:(NSInteger)numerator
                          denominator:(NSInteger)denominator;
/*加法*/
- (Fraction *)addOperationWithFraction:(Fraction *)fraction;
/*减法*/
- (Fraction *)subtractOperationWithFraction:(Fraction *)fraction;
/*除法*/
- (Fraction *)divideOperationWithFraction:(Fraction *)fraction;
/*乘法*/
- (Fraction *)takeOperationWithFraction:(Fraction *)fraction;
/*约分*/
- (void)reduceOperationWithFraction:(Fraction *)fraction;
/*  比较两个分数的大小 */
- (NSComparisonResult)compareWithFraction:(Fraction *)frac;


@end
