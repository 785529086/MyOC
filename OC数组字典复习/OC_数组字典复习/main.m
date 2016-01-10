//
//  main.m
//  OC_数组字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Contact.h"
#import "AdressBook.h"
#import "AddressBookV2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - 复习1: 分数
#if 0
        /*创建对象*/
        Fraction *fra1 = [[Fraction alloc] initWithNum:2 deno:7];
        Fraction *fra2 = [[Fraction alloc] initWithNum:2 deno:5];
        
        /*使用对象*/
        [fra2 addFraction:fra1];
        Fraction *addFra = [fra2 addFraction:fra1];
        NSLog(@"%ld / %ld",addFra.num,addFra.deno);
#endif
        
        
#pragma mark - 复习: 联系人
#if 0
      /*涉及到两个类: AddressBook(通讯录类)  Contact(联系人类) */
        
        /*创建通讯录对象*/
        AdressBook *ab = [[AdressBook alloc] init];
        /* AressBook类 指针ab存在栈区,指针指向堆区中的ISA地址,以此为首地址 ,存着往上实例变量的地址,这些实例变量的地址都指向空*/
        
        //  ab.arr = [NSMutableArray array];/* 数组初始化  漏了不报错,但没输出,在此语句之前指针全指向空 */

        
        // AdressBook *ab2 = [[AdressBook alloc] init];
        
        
  
        /*创建联系人对象(2个)*/
        Contact *con1 = [[Contact alloc] initWithName:@"zhangsan" phonenumber:@"13517323704"];
        Contact *con2 = [[Contact alloc] initWithName:@"Lisi" phonenumber:@"13644686625"];
        Contact *con3 = [[Contact alloc] initWithName:@"Lily" phonenumber:nil];
//        Contact *con4 = [[Contact ]]
        
          /* 使用通讯录对象方法*/
        [ab addContact:con1];
        [ab addContact:con2];
        [ab addContact:con3];

        /* 显示所有联系人 */
        [ab listAllContacts];
        

        /* 删除指定联系人 */
        [ab deleteContact:con1];
        
        /* 显示所有联系人 */
        [ab listAllContacts];
        
        
        
        
#endif
#pragma mark - 复习:通讯录(中等难度)
#if 0
 
        AddressBookV2 *abv2 = [[AddressBookV2 alloc]init];
        
        Contact *con1 = [[Contact alloc] initWithName:@"zhangsan" phonenumber:@"13517323704"];
        Contact *con2 = [[Contact alloc] initWithName:@"Lisi" phonenumber:@"13644686625"];
        Contact *con3 = [[Contact alloc] initWithName:@"Lily" phonenumber:nil];
        Contact *con4 = [[Contact alloc] initWithName:@"zhangxiao" phonenumber:@"13546878546"];
        
        
        
         [abv2 addContact:con1];
         [abv2 addContact:con2];
         [abv2 addContact:con3];
         [abv2 addContact:con4];
        
        /*显示某个分组下的所有联系人*/
        [abv2 listForGroup:@"z"];
#endif
        
#if 1
#pragma mark - 练习 : 省市区
        NSString *file = [NSString stringWithContentsOfFile:@"/Users/dllo/Desktop/OC_数组字典复习/OC_数组字典复习/area副本.txt" encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@",file);
        /*  将字符串进行截取,按照\n  */
        NSArray *arr = [file componentsSeparatedByString:@"\n"];
        NSLog(@"%@",arr);
        
        
        NSString *provinceName = nil;
        NSString *cityName = nil;
        NSString *areaName = nil;
        
        
        
        /* 创建中国数组 */
        NSMutableArray *chinaArr = [NSMutableArray array];
        
        /*遍历数组*/
        for (NSString *line in arr) {
            
            if (![line hasPrefix:@" "]) {/* 字符串不是以空格开头,说明是省名 */
                provinceName = line;/*记录省名*/
                /*创建省字典,加入到中国数组当中*/
                
                NSMutableArray *cityArr = [NSMutableArray array];
                
                NSMutableDictionary *proDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:provinceName,@"省名", cityArr,@"市", nil];
                
                [chinaArr addObject:proDic];
                
            }else if (![line hasPrefix:@"    "]){/*说明是市名*/
                
                cityName = line;/*记录市名*/
            /*创建市字典,添加在对应省的市数组中*/
                
                NSMutableArray *areaArr = [NSMutableArray array];
                NSMutableDictionary *cityDic = [NSMutableDictionary dictionaryWithObjectsAndKeys:cityName,@"市名", areaArr,@"区", nil];
                
                /*从中国数组中找出对应省得市市数组*/
                NSMutableArray *tempArr = [[chinaArr lastObject]objectForKey:@"市"];
                [tempArr addObject:cityDic];
          
            }else{
                areaName = line; /*记录下区名*/
                /*找出区 所在省 的市数组 的区 相应市 的区数组*/
              NSMutableArray *tempArr = [[chinaArr lastObject] objectForKey:@"市"];
                NSMutableArray *tempAreas = [[tempArr lastObject] objectForKey:@"区"];
                [tempAreas addObject:areaName];
            }
        }
      
#endif
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
