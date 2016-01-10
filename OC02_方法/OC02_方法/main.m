//
//  main.m
//  OC02_方法
//
//  Created by dllo on 15/12/1.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "CollegeStudent.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark -  知识点1   OC的方法语法
    /*OC 方法分   ' + ' 类方法和 ' - ' 对象方法  
       '+'  类方法中不能有实例变量
     使用方法时必须明确方法是类方法还是对象方法 
     */
        //  - (NSString *)substringFromIndex:(NSUInteger)anIndex
        /**上面的方法,其中 ' - '  号说明是对象方法,只能对象调用此方法!!!!
         *返回值类型为  (NSString)
         *参数形容词为 substringFromIndex
         *冒号 ' : '   说明后面有参数
         *参数类型为    (NSUInteger)
         *参数名为   anIndex
         *方法名为  substringFromIndex:     注意:带 ' : ' */
#pragma mark - 知识点2 setter, getter方法
        /**
         *实例变量默认的可见度为受保护@protected,外部不能直接访问(赋值/取值)
         *通过方法间接的对实例变量进行访问
         * 涉及到两个方法, 即赋值方法(setter), 取值方法(getter)
         */
    /*创建对象*/
        Person *per1 = [[Person alloc] init];
        /**  通过setter ,getter 方法访问实例变量 */
      //  [per1 setName:@"zhangsan"];
        [per1 setAge:20];
        //per1.age = 23;
        [per1 setSex:@"male"];
        NSLog(@"name:%@",[per1 name]);
     //   NSLog(@"name:%@",[per1.name ]);
        NSLog(@"age:%ld",[per1 age]);
        NSLog(@"sex:%@",[per1 sex]);


#pragma mark - 知识点3 继承
        /*注意:子类继承父类所有的实例变量和方法,实例变量可见度为@private , 同样能继承下来 */
        /* Student 类继承于Person类*/
        Student * stu = [[Student alloc] init];
        [stu setName:@"Tom"];
        [stu setAge:29];
        [stu setSex:@"male"];
        [stu setNumber:30];
        [stu setSchool:@"lanou"];
     //   [stu study];
        /*创建CollegeStudent对象*/
        CollegeStudent * collegeStu1 = [[CollegeStudent alloc] init];
    //    [collegeStu1 study];
        NSLog(@"name:%@",collegeStu1.name);
#pragma mark - 知识点4 初始化方法(详见Person类)
   /*创建一个Person对象,并且实例变量赋值 */
        Person *person5 = [[Person alloc] init];
    //    [person5 setName:@"zhangsan"];
        [person5 setAge:20];
        [person5 setSex:@"male"];
        Person *person6 = [[Person alloc] initWithName:@"Lisi" age:18 sex:@"male"];

#pragma mark - 知识点5 便利构造器方法(详见Person类)
        Person *person7 = [Person personWithName:@"Lili" age:18 sex:@"female"];
      //  Person *person8 = [Person person];
    }
    
    return 0;
}
