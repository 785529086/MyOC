//
//  main.m
//  知识总复习
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

#pragma mark - 知识点1 属性
#pragma mark - 知识点2 属性的特性
#pragma mark - 知识点3 点语法
    
#pragma mark - 知识点1 不可变字符串
    /*创建字符串对象*/
//    NSString *str = [[NSString alloc]init];
// NSString *str = [NSString alloc] initWithFormat:<#(nonnull NSString *), ...#>
//NSString *str = [NSString alloc]initWithString:<#(nonnull NSString *)#>
    
    /*字符串构造器*/
    //    NSString *str = [NSString stringWithString:<#(nonnull NSString *)#>]
    //    NSString *str = [NSString stringWithFormat:<#(nonnull NSString *), ...#>]
    
    NSString *str = [[NSString alloc]init];
    //    unichar c =[str characterAtIndex:<#(NSUInteger)#>
    //    NSString *str1 = [[NSString alloc] init];
    //    str isEqualToString:<#(nonnull NSString *)#>
    //    str compare:<#(nonnull NSString *)#>
    
    
    //    str substringFromIndex:<#(NSUInteger)#>
    //str substringToIndex:<#(NSUInteger)#>
    //str substringWithRange:<#(NSRange)#>
    //str rangeOfString:<#(nonnull NSString *)#>
    //str stringByAppendingString:<#(nonnull NSString *)#>
    //str stringByReplacingOccurrencesOfString:<#(nonnull NSString *)#> withString:<#(nonnull NSString *)#>
    //    str stringByReplacingCharactersInRange:<#(NSRange)#> withString:<#(nonnull NSString *)#>
    //    str.integerValue
    //    str uppercaseString
    //    str lowercaseString
    //    str.capitalizedString
    //    str hasPrefix:<#(nonnull NSString *)#>
    //    str hasSuffix:<#(nonnull NSString *)#>
//    str componentsSeparatedByString:<#(nonnull NSString *)#>
    
#pragma mark - 知识点2 可变字符串
    NSMutableString *mStr = [[NSMutableString alloc] init];
//    NSMutableString *mStr = [[NSMutableString stringWithString:<#(nonnull NSString *)#>]]
//    NSMutableString *mStr = [NSMutableString stringWithFormat:<#(nonnull NSString *), ...#>]
//    mStr appendString:<#(nonnull NSString *)#>
//    mStr deleteCharactersInRange:<#(NSRange)#>
//    mStr insertString:<#(nonnull NSString *)#> atIndex:<#(NSUInteger)#>
//    mStr replaceCharactersInRange:<#(NSRange)#> withString:<#(nonnull NSString *)#>
//    mStr setString:<#(nonnull NSString *)#>
#pragma mark - 知识点3 NSNumber
//    NSNumber *num1 = [NSNumber numberWithInt:<#(int)#>]
#pragma mark - 知识点4 NSValue
//    NSValue *value = [NSValue valueWithRange:<#(NSRange)#>]
    
    
#pragma mark - 知识点1 不可变数组
    /*init方法*/
//    NSArray *arr = [NSArray alloc] initWithObjects:<#(nonnull id), ...#>, nil
   /*构造器方法*/
//    NSArray *arr = [NSArray arrayWithObjects:<#(nonnull id), ...#>, nil]
    /*字面量方法*/
    NSArray *arr = [[NSArray alloc] init];
//    arr.count
//    arr objectAtIndex:<#(NSUInteger)#>
//    arr containsObject:<#(nonnull id)#>
//    arr indexOfObject:<#(nonnull id)#>
//    arr componentsJoinedByString:<#(nonnull NSString *)#>
#pragma mark - 知识点2 可变数组
    NSMutableArray *mArr = [[NSMutableArray alloc] init];
//    mArr addObject:<#(nonnull id)#>
//    mArr insertObject:<#(nonnull id)#> atIndex:<#(NSUInteger)#>
//    mArr removeObject:<#(nonnull id)#>
//    mArr removeAllObjects
//    mArr removeLastObject
//    mArr removeObjectAtIndex:<#(NSUInteger)#>
//    mArr replaceObjectAtIndex:<#(NSUInteger)#> withObject:<#(nonnull id)#>
//    mArr exchangeObjectAtIndex:<#(NSUInteger)#> withObjectAtIndex:<#(NSUInteger)#>
#pragma mark  - 知识点3 不可变字典
    NSDictionary *dic = [[NSDictionary alloc] init];
//    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:<#(nonnull id), ...#>, nil]
//    NSDictionary *dic = [NSDictionary dictionaryWithObject:<#(nonnull id)#> forKey:<#(nonnull id<NSCopying>)#>]
//    dic.count
//    dic allKeys
//    dic allValues
//    dic objectForKey:<#(nonnull id)#>
#pragma mark - 知识点4 可变字典
    NSMutableDictionary *mDic = [[NSMutableDictionary alloc] init];
//    NSMutableDictionary *mDic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:<#(nonnull id), ...#>, nil]
//    mDic setObject:<#(nonnull id)#> forKey:<#(nonnull id<NSCopying>)#>
//    mDic removeObjectForKey:<#(nonnull id)#>
//    mDic removeAllObjects
 
    
    
    return 0;
}
