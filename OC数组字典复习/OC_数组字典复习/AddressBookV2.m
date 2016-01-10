//
//  AddressBookV2.m
//  OC_数组字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "AddressBookV2.h"

@implementation AddressBookV2
/* 重写init, 目的:字典初始化 */
- (instancetype)init  {
    if ([super init]) {
        self.dic = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)addContact:(Contact *)con {
    
      /* 添加到字典中相应分组的数组中 */
    
    NSString *key = con.group;  /*获得联系人的组名*/
    
    /* 根据key 在字典中获取对应的数组 */
    NSMutableArray *mArr = [self.dic objectForKey:key];
    /*判断,如果mArr 指针为空,说明字典中没有此分组 */
    if (mArr == nil) {
        /*创建key-value对,添加到字典中 */
      mArr = [NSMutableArray array];
        [mArr addObject:con];
        [self.dic setObject:mArr forKey:key];
    }else {
    /*将参数联系人,加入到数组中*/
    [mArr addObject:con];
    }/*else如果指针不为空,说明数组存在,直接添加联系人*/
}

- (void)listAllContact {

    /*遍历字典*/
    for ( NSString *key in self.dic) {
        
        /*指向key所对应的数组*/
        NSMutableArray *Arr = [self.dic objectForKey:key];
        
        /*遍历数组*/
        for (Contact *con in Arr) {
            NSLog(@"name:%@, phone:%@",con.name,con.phonenumber);
        }
    }
    
}


- (void)listForGroup:(NSString *)group {

    NSMutableArray *arr = [self.dic objectForKey:group.uppercaseString];
    
    for (Contact *con in arr) {
        NSLog(@"name:%@,phone:%@",con.name,con.phonenumber);
    }
}





@end
