//
//  Person.m
//  OC - 06集合遍历和数组排序
//
//  Created by dllo on 15/12/8.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype) initWithName:(NSString *)name
                          sex:(NSString *)sex
                          age:(NSInteger)age {
    if ([super init]) {
        _name = name;
        _sex = sex;
        _age = age;
    }
    return self;
}


/* 声明一个按照姓名升序排序的方法. */
- (NSComparisonResult)compareWithNameUp:(Person *)anotherPerson {
    return [self.name compare:anotherPerson.name];
}

/* 声明一个按照姓名 #降序# 排序的方法. */
- (NSComparisonResult)compareWithNameDown:(Person *)anotherPerson {
    return [self.name compare:anotherPerson.name] * -1;
}
/* 声明一个按照年龄 #升序#  排序的方法   */
/*判断外层输出是升序还是降序看两点:一点if()括号中是降序还是升序,NSOrderDescending能改变if中的降序还是升序*/
- (NSComparisonResult)compareWithAgeUp:(Person *)anotherPerson {
    if (self.age > anotherPerson.age) {
        return NSOrderedDescending;/*改变if中的降序*/
    }else if(self.age < anotherPerson.age) {
        return NSOrderedAscending;/*保持if中升序,因而外层整体保持升序*/
    }else{
        return NSOrderedSame;
    }

}






@end
