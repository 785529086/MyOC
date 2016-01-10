//
//  Student.m
//  OC02_方法
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Student.h"

@implementation Student


/*重写父类方法: study方法 */
/*注意: super 不是对象,是编译器指令,给supper发送消息,是调用父类中此方法的实现*/



- (void)setSchool:(NSString *)school {
        _school = school;
}
- (NSString *)school {
    return _school;
}


- (void)setNumber:(NSInteger)number {
    _number = number;
}
- (NSInteger)number {
    return _number;
}

/*自定义初始化方法*/
-(instancetype)initWithName:(NSString *)name
                        age:(NSInteger)age
                        sex:(NSString *)sex
                     school:(NSString *)school
                     number:(NSInteger)number;
{
    self = [super init];
    if (nil != self) {   /*这个步骤是判断 super有没有出错, 没出错就执行下一步,init 方法是被封装了的   */
        _name = name;
        _age = age;
        _sex = sex;
        _school = school;
        _number = number;
        
    }
    return self;
}





@end
