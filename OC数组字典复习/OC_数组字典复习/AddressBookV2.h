//
//  AddressBookV2.h
//  OC_数组字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@interface AddressBookV2 : NSObject
@property (nonatomic, retain) NSMutableDictionary *dic; /* 用于存放联系人的字典  */

/* 添加联系人 */
- (void)addContact:(Contact *)con;

/*显示所有联系人*/
- (void)listAllContact;

/* 显示某个分组下的所有联系人*/
- (void)listForGroup:(NSString *)group;

@end
