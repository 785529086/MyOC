//
//  Person.m
//  Object - C
//
//  Created by dllo on 15/11/29.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Person.h"

@implementation Person
-(id)initWithName:(NSString *)_name
{
    /*1. 原始初始化*/
    self = [ super  init];
    /*2.原始初始化成功之后, 需要设置当前对象的姓名为形参*/
    if(self != nil )
    {
        name = _name;
    }
    /*3. 返回当前对象 */
    return self;
}

- ( void )sayHi;
{
    NSLog(@"hello world");/*将字符串打印在控制台进行输出,类似C中标准输入输出*/
}

/*设置器 setter*/
-(void )setName: (NSString*)_name
{
    //设置给当前对象的属性
    name = _name;
}
-(void)setAge:(NSInteger)_age
{
    age = _age;
}
-(void )setGender: (NSString * )_gender
{
    gender = _gender;
}
/*访问器  getter*/
- (NSString*)getName
{
    //访问当前对象的属性
    return name;
}
-(NSInteger)getAge
{
    return age;
}
-(NSString*)getgender
{
    return gender;
}


@end
