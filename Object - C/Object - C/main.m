//
//  main.m
//  Object - C
//
//  Created by dllo on 15/11/29.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
int main(int argc, const char * argv[ ]) {
    /*1. 创建Person类的实例对象*/
    Person* person = [ [ Person alloc ] initWithName:@"Lewis"];
    /*2.给Person 发送实例消息 sayHi*/
    [ person sayHi];
    //    3.先打印当前Person实例对象的姓名是什么
    NSLog(@"person's name is %@",[ person getName]);
    //    修改当前person实例对象的姓名,修改成Jack
    [person setName:@"Jack"];
    
    //  第二次打印当前person实例对象的姓名
    NSLog(@"person' s name is %@",
          [person getName]);
    /*作业: 创建 你所熟悉的15个类  包括setter, getter
     作业提示 :水杯.钱包,火车票, 鞋子,手表, 胸卡,书包,电视, 椅子*/
    
    /*
     @autoreleasepool {
     // insert code here...
     NSLog(@"Hello, World!");
     }
     */
    //    实例化Student 类的实例对象
    Student *student = [[Student  alloc]  init];
    [ student setName:@"Jack"];
    [student sayHi];
    
    //   通过便利构造器创建实例对象
    Student*autoStudent = [Student studentWithName:@"Xiaoa"];
    [autoStudent sayHi];
    /*作业: 为上次作业中15个类,添加初始化方法和指定初始化方法 以及添加便利构造器方法*/

    return 0;
}
