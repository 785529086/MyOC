//
//  main.m
//  OC02-  方法
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "CollegeStudent.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - 知识点1 OC的方法语法
/*OC 方法分 ' + ' 类方法和 ' - ' 对象方法
*'+'类方法中不能有实例变量,使用时必须明确方法是类方法还是对象方法   */
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
        
        
 /**  通过setter ,getter 方法访问实例变量 */
        
        Person *person = [[Person alloc] init];
        [person information];
        [person setName:@"WangLe"];
        [person setAge:20];
        [person setSex:@"female"];
        [person information];
#pragma mark - 知识点3 继承
/*注意:子类继承父类所有的实例变量和方法,实例变量可见度为@private , 同样能继承下来 */
    /* Student 类继承于Person类*/
        Student * stu = [[Student alloc] init];
        [stu information];
        [stu setName:@"ZengBin"];
        [stu information];
        [stu study];
        Student *stu2 = [[Student alloc] init];
        [stu2 setName:@"Tom"];
        [stu2 setAge:21];
        [stu2 setSex:@"male"];
        [stu2 setSchool:@"Lanou"];
        [stu2 setNumber:1];
        [stu2 information];
        [stu2 informationOfStudent];
        NSLog(@"name:%@ , age:%ld, sex:%@ ",person.name,person.age,person.sex);
        [stu2 informationOfStudent];
        CollegeStudent * colleagestu1 = [[CollegeStudent alloc]initWithName:@"zengbin" age:22 sex:@"male" major:@"IT" academy:@"优秀"];
        NSLog(@"name:%@,age:%ld,sex:%@,major:%@, academy:%@",colleagestu1.name,colleagestu1.age,colleagestu1.sex,colleagestu1.major,colleagestu1.academy);
     //   NSLog(@"name:%@, age:%ld, sex:%@, major:%@, academy:%@",colleagestu->name,age,sex,major, academy);
     //   [collegestu1 informationOfCollegeStudent];
              
        
        
    }
    return 0;
}
