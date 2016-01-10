//
//  Person.h
//  OC - 06集合遍历和数组排序
//
//  Created by dllo on 15/12/8.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *sex;
@property (nonatomic, assign) NSInteger age;

- (instancetype) initWithName:(NSString *)name
                          sex:(NSString *)sex
                          age:(NSInteger)age;


/* 声明一个按照姓名 #升序#  排序的方法. */
- (NSComparisonResult)compareWithNameUp:(Person *)anotherPerson;


/* 声明一个按照姓名 #降序# 排序的方法. */
- (NSComparisonResult)compareWithNameDown:(Person *)anotherPerson;
/* 声明一个按照年龄 #升序#  排序的方法   */
- (NSComparisonResult)compareWithAgeUp:(Person *)anotherPerson;

@end
