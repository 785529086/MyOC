//
//  main.m
//  OC03_属性
//
//  Created by dllo on 12/2/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Phone.h"
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - 知识点1 属性
        /*属性的3个作用: 
         1. 声明了一个实例变量,名字_ 属性名
         2. 声明和实现 setter 方法
         3. 声明和实现getter 方法
          详见 Person类
         */
#pragma mark - 知识点2 属性的特性( 共3个特性, 相当于3个形容词 )
        /*属性的3个特性:
         *1.可读性
         *2.原子性
         *3.语义特性
         *详见 Person类*****
         */
#pragma mark - 知识点3 点语法
        /*注意!!!!!*
         *点语法 只对属性的访问起作用
         *其它方法, 还是[ ] 消息语法格式.
         *
         */
        Phone *phone1 = [[Phone alloc] init];
        Phone *phone2 = [[Phone alloc] init];
        
        phone1.name = @"Apple";
        phone1.color = @"white";
        phone1.size = 4.7;
        NSLog(@"name:%@, color:%@, size:%.2f",phone1.name,phone1.color,phone1.size);
        
        phone2.name = phone1.name;
        
        /*便利构造器*/
        Fraction *fra1 = [Fraction FractionWithNumerator:5 denominator:10];
        Fraction *fra2 = [Fraction FractionWithNumerator:1 denominator:2];
         /*自定义初始化*/
//        Fraction *fra1 = [[Fraction alloc] initWithNumerator:5 denominator:10];
//        Fraction *fra2 = [[Fraction alloc] initWithNumerator:1 denominator:4];
        
        Fraction *sumFra = [fra1 addOperationWithFraction:fra2];
        NSLog(@"%ld / %ld",sumFra.numerator, sumFra.denominator);
        
        
        Fraction *differenceFra = [fra1 subtractOperationWithFraction:fra2];
        NSLog(@"%ld / %ld",differenceFra.numerator, differenceFra.denominator);
        
        
        
        
    }
    return 0;
}
