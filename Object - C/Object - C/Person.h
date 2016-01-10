//
//  Person.h
//  Object - C
//
//  Created by dllo on 15/11/29.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
/* 类的接口部分  */
/*1.定义一个类
 2.  添加当前类属性(特征)
 3.  添加当前类的行为(方法)*/
@interface Person : NSObject
{
    /*大括号内部, 添加当前类属性
     字符串类型*/
    NSString *name;/*姓名,NSString 同样是一个类,  整型*/
    NSInteger  age;/*年龄,  数值类型*/
    NSString *gender;/*性别*/
}
/*初始化方法, 希望通过初始化方法,能够获得一个Person类的实例对象,并且希望对象具有自己的姓名属性*/
-(id)initWithName:(NSString *)_name;

/*大括号外部, 添加当前类行为*/
-( void )sayHi;
/*设置器 setter*/
-(void )setName: (NSString*)_name;
-(void)setAge:(NSInteger)_age;
-(void )setGender: (NSString * )_gender;
/*访问器  getter*/
- (NSString*)getName;
-(NSInteger)getAge;
-(NSString*)getgender;
@end
