//
//  Student.m
//  Object - C
//
//  Created by dllo on 15/11/29.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Student.h"

@implementation Student
- (void)sayHi
{
    NSLog(@"学生的姓名是%@",name);
}

//指定初始化方法  通常情况下是能够赋初始值最多的方法
- (id)initWithName:(NSString *)_name
               Age:(NSInteger)_age
            Gender:(NSString*)_gender
            Number:(NSInteger)_number
             Score:(CGFloat)_score;
//    self 指的就是将消息发送给本对象
//    super 指的就是将消息发送给父类对象
{
    self = [super init];
    //    [super init] 就是将消息init 发送给学生类的父类Person进行执行
    if (self != nil) {
        name = _name;
        age = _age;
        gender = _gender;
        number = _number;
        score = _score;
    }
    return self;
}
//自定义初始化方法
-(id)initWithName:(NSString *)_name
{
    return [self initWithName:_name Age:0 Gender:nil Number:0 Score:0.0f];
}
-(id)initWithNumber:(NSInteger)_number
{
    return [self initWithName:nil Age:0 Gender:nil Number:0 Score:0.0f];
}
//便利构造器
+(id)studentWithName:(NSString*)_name
{
    Student *student = [[Student alloc] initWithName:_name];
    return [student autorelease];
}
+(id)studentWithNumber:(NSInteger )_number
{
    Student *student =[[Student alloc] initWithNumber:_number];
    return [student autorelease];
}
+(id)studentWithName:(NSString *)_name
                 Age:(NSInteger)_age
              Gender:(NSString*)_gender
              Number:(NSInteger)_number
               Score:(CGFloat)_score;
{
    Student *student = [[Student  alloc] initWithName:_name Age:_age Gender:_gender Number:_number Score:_score];
    return [student autorelease];
}

@end
