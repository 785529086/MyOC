//
//  Fraction.m
//  OC03_属性
//
//  Created by dllo on 12/2/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
- (instancetype)initWithNumerator:(NSInteger)numerator
                      denominator:(NSInteger)denominator
{
    self = [super init];
    if (self) {
        self.numerator = numerator;
        self.denominator = denominator;/*也可以用下划线*/
    }
    return self;

}

+ (instancetype)FractionWithNumerator:(NSInteger)numerator
                          denominator:(NSInteger)denominator

{
    Fraction *fra = [[Fraction alloc] initWithNumerator:3 denominator:9];
    return fra;
}


/*加法*/
- (Fraction *)addOperationWithFraction:(Fraction *)fraction
{
    Fraction * newFra = [[Fraction alloc] init];
    newFra.numerator = self.numerator * fraction.denominator + self.denominator * fraction.numerator;
    newFra.denominator = self.denominator * fraction.denominator;
    /* 约分 */
    NSInteger temp = 0;
    NSInteger x = newFra.numerator;
    NSInteger y = newFra.denominator;
    
    while ( x % y != 0) {
        temp = x % y;
        x = y;
        y = temp;
    }
    
    newFra.numerator = newFra.numerator / y;
    newFra.denominator = newFra.denominator / y;

    return newFra;
}
/*减法*/
- (Fraction *)subtractOperationWithFraction:(Fraction *)fraction
{
    Fraction * newFraction = [[Fraction alloc] init];
newFraction.numerator = self.numerator * fraction.denominator - self.denominator * fraction.numerator;
newFraction.denominator = self.denominator * fraction.denominator;
    
    NSInteger temp = 0;
    NSInteger x = newFraction.numerator;
    NSInteger y = newFraction.denominator;
    while (x % y != 0) {
        temp = x % y;
           x = y;
           y = temp;
    }
    newFraction.numerator = newFraction.numerator / y;
    newFraction.denominator = newFraction.denominator / y;
return newFraction;
}

/*除法*/
- (Fraction *)divideOperationWithFraction:(Fraction *)fraction
{   Fraction *newFraction = [[Fraction alloc] init];
    newFraction.numerator = self.numerator * fraction.denominator;
  newFraction.denominator = self.denominator * fraction.numerator;
    NSInteger temp = 0;
    NSInteger x = newFraction.numerator;
    NSInteger y = newFraction.denominator;
    while (x % y != 0) {
     temp = x % y;
        x = y ;
        y = temp;
    }
    newFraction.numerator = newFraction.numerator / y;
    newFraction.denominator = newFraction. denominator / y;
    
    return newFraction;
}
/*乘法*/
- (Fraction *)takeOperationWithFraction:(Fraction *)fraction
{   Fraction *newFraction = [[Fraction alloc] init];
   newFraction.numerator = self.numerator * fraction.numerator;
  newFraction.denominator = self.denominator * fraction.denominator;
    
    NSInteger temp = 0;
    NSInteger x = newFraction.numerator;
    NSInteger y = newFraction.denominator;
    while ( x % y != 0) {
        temp = x % y;
        x = y;
        y = temp;
    }
    newFraction.numerator = newFraction.numerator / y;
    newFraction.denominator = newFraction.denominator / y;
    return newFraction;
}
/*约分*/
- (void)reduceOperationWithFraction:(Fraction *)fraction
{
    NSInteger temp = 0;
    NSInteger x = fraction.numerator;
    NSInteger y = fraction.denominator;
    
    while ( x % y != 0) {
        temp = x % y;
        x = y;
        y = temp;
    }
  fraction.numerator = fraction.numerator / y;
  fraction.denominator = fraction.denominator / y;
    NSLog(@"%ld / %ld",fraction.numerator, fraction.denominator);
}

/*  比较两个分数的大小 */
/*返回值类型: NSComparisonResult 是个枚举值, 在OC比较方法中, 经常用到的一个类型,里面有3个值,-1,0,1,其中-1(NSOrderedAscending)表示升序,即前一个比后一个小,0(NSOrderedSame)表示相等,1(NSOrderedDescending)表示降序,即前一个比后一个大*/
- (NSComparisonResult)compareWithFraction:(Fraction *)frac
{
    
    /*两个分数的差*/
    Fraction * newFraction = [self subtractOperationWithFraction:frac];
    /*判断两个分数的差是正数还是负数*/
    if (newFraction.numerator * newFraction.denominator > 0 ) {
        return NSOrderedDescending;
    }else if (newFraction.numerator < newFraction.denominator){
        return NSOrderedAscending;
}else
{
    return NSOrderedSame;
}

}

@end
