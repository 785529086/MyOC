//
//  Student.h
//  Object - C
//
//  Created by dllo on 15/11/29.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Person.h"

@interface Student : Person
{
    //学号
    NSInteger number;
    //    分数
    CGFloat score;
}
//指定初始化方法  通常情况下是能够赋初始值最多的方法
- (id)initWithName:(NSString *)_name
               Age:(NSInteger)_age
            Gender:(NSString*)_gender
            Number:(NSInteger)_number
             Score:(CGFloat)_score;
//自定义初始化方法
-(id)initWithName:(NSString *)_name;
-(id)initWithNumber:(NSInteger)_number;
//便利构造器
+(id)studentWithName:(NSString*)_name;
+(id)studentWithNumber:(NSInteger )_number;
+(id)studentWithName:(NSString *)_name
                 Age:(NSInteger)_age
              Gender:(NSString*)_gender
              Number:(NSInteger)_number
               Score:(CGFloat)_score;
//自定义初始化方法
//指定初始化方法
//便利构造器

@end
