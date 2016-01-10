//
//  main.m
//  OC09_类的扩展(类目_扩展_代理)
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Addmethod.h"
#import "NSString+FirstName.h"
#import "AddressBook.h"
#import "Contact.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
#pragma mark - 知识点1 :category(类目,分类)
/*
 *类目的2个作用:
 1. 编写.h 文件时,将众多方法进行分类,以便查看接口时方便(如系统类的.h文件)
 *
 2.扩展类的方法,一般针对没有源代码的类(如系统NSString类等.)
 *
 */
  /* 
   需求:给NSString 添加一个sayHi方法
   详见 类目文件:NSString + AddMethod
   */
    
        [NSString sayHi];
        
#pragma mark ** 练习
  /*为NSString类扩展一个新的方法，要求获取字符串的首字母并且将该首字母大写。*/
      NSString *str = @"xiaoming";
        NSLog(@"%@",[str firstName]);
        
#pragma mark - 知识点2 : 类的延展
        
        /* 使用延展的目的:
         有一些属性和方法,类的内部实现需要,但不希望外部访问.所以需要将这些属性和方法隐藏起来,即私有化.
         详见,AddressBook,通讯录
         */
        AddressBook *ab = [[AddressBook alloc]init];
        Contact *con1 = [[Contact alloc] init];
        con1.name = @"Tom";
        [ab addContact:con1];
        
#pragma mark - 知识点3 : 代理
       
    }
    return 0;
}
