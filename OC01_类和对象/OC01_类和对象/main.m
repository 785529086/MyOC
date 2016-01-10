//
//  main.m
//  OC01_类和对象
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"/*  导入类的头文件 */

int main(int argc, const char * argv[]) {
    @autoreleasepool/*自动释放池*/
    {
#pragma mark - 知识点1 类的定义
/*详见Person.h 和Person.m 文件*/
#pragma mark - 知识点2 创建对象
      //  Person *person1 = [[Person alloc] init];
       Person *person1 = [[Person alloc ] init];
        /*alloc 类方法, 作用在堆区开辟空间 */
       person1 = [person1 init];   /*初始化*/
      /* 通常将alloc 方法和init方法连写*/
        Person *person2 = [[Person alloc] init];
        [person1 sayHello];
        [person1 information];
#pragma mark -知识点3 实例变量的访问( 赋值和取值).详见类文件中的 实例变量可见度
        Person *person3 = [[Person alloc] init];
        /*实例变量*/
        person3 ->_name = @"zhang";
        person3->_age = 20;
        person3->_number = 1;
//      person3->_weight = 50.f;  _weight 是私有的,不能直接访问
        [person3 information];
        /*实例变量的取值*/
        NSLog(@"name:%@, age:%d, number:%ld",person3->_name,person3->_age,person3->_number);
        [person2 informationOfPerson:person3];
    }
    return 0;
}
