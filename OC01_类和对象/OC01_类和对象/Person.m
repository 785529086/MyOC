//
//  Person.m
//  OC01_类和对象
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Person.h"

@implementation Person
/*  .m 文件 实现方法
    .h 中声明的方法在  .m  中必须实现
     方法的实现是在相应的@implementation 和@end 之间*/
- (void)sayHello {
    NSLog(@"\nHello , world !");/*  NSLog, OC中的输出函数.  注意( ) 里面@""开头,输出""号之间的内容NSLog,会在后面将自动加一个换行*/
}
- (void)informationOfPerson:(Person *)person  {
   NSLog (@"\nname : %@, age:%d, number: %ld, weight:%.2f",person->_name,person->_age, person->_number, person->_weight);
}

- (void) information {
    NSLog (@"\nname: %@, age:%d, number:%ld, weight:%.2f", _name, _age, _number, _weight);
}

@end
