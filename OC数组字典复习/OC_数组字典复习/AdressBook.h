//
//  AdressBook.h
//  OC_数组字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@interface AdressBook : NSObject
@property (nonatomic, retain) NSMutableArray *arr;/*用于存放联系人对象的数组*/

#pragma mark - 功能(方法)
        
/* 1. 添加联系人 */
- (void)addContact:(Contact *)con;


/* 2. 显示所有联系人*/
- (void)listAllContacts;

/* 3. 删除联系人 */
- (void)deleteContact:(Contact *)con;





@end
