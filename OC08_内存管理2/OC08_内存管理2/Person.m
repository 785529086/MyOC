//
//  Person.m
//  OC08_内存管理2
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "Person.h"

@implementation Person



- (void)dealloc {
    [_name release];
    [_sex release];
    [super dealloc];
}

/*实现协议方法(NSCoping 协议方法)*/
- (id)copyWithZone:(NSZone *)zone {
    Person *per = [[Person allocWithZone:zone]init];
    per.name = self.name;
    per.age = self.age;
    per.sex =  self.sex;
    return per;
}






@end
