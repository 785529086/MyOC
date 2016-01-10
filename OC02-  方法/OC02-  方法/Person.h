//
//  Person.h
//  OC02-  方法
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    NSInteger _age;
    NSString *_sex;
}
-(void)information;
/* setter方法 :目的,给一个实例变量赋值
   getter方法 :目的,取出一个实例变量的值*/
- (void)setName:(NSString *)name;
- (NSString *)name;

-(void)setAge:(NSInteger)age;
-(NSInteger)age;

-(void)setSex:(NSString *)sex;
-(NSString *)sex;

-(void)study;
/* 初始化方法 */
-(instancetype)initWithName:(NSString *)name
                        age:(NSInteger)age
                        sex:(NSString *)sex;
/* 便利构造器方法 ( 是类方法, 类可以调用此方法) */
+(instancetype)personWithName :(NSString *)name
                           age:(NSInteger)age
                           sex:(NSString *)sex;









@end
