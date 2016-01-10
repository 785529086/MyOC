//
//  AdressBook.m
//  OC_数组字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "AdressBook.h"

@implementation AdressBook


/* 重写init 方法  目的:属性数组初始化*/
- (instancetype)init {
    if ([super init]) {
        self.arr = [NSMutableArray array];
    }
    return self;
}


- (void)addContact:(Contact *)con {
    [self.arr addObject:con];    /* 联系人参数,添加到数组中 */
}

- (void)listAllContacts {
    /*遍历数组,输出联系人信息*/
    for (Contact *con in self.arr) {
        NSLog(@"name:%@,phone:%@,address:%@",con.name,con.phonenumber,con.address);
    }
}

- (void)deleteContact:(Contact *)con {
    /* 遍历数组,找到符合条件的对象 */
    NSMutableArray *tempArr  = [NSMutableArray array];
    for (Contact * conInArr in self.arr) {
        if ([con.name isEqualToString:conInArr.name]) {
                   [tempArr addObject:conInArr];
        }
    }
         /*从数组中删除联系人*/
    [self.arr removeObjectsInArray:tempArr];
}   


@end
