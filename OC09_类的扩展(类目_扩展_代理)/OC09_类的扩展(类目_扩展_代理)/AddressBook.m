//
//  AddressBook.m
//  OC09_类的扩展(类目_扩展_代理)
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "AddressBook.h"
#import "Contact.h"
#import "NSString+FirstName.h"
/*类的延展  注意延展后边的()里面是空的.
 *类的延展里面和.h文件写法一样.
 *延展里面的属性,外部看不到.
 */
@interface AddressBook ()
@property (nonatomic, retain) NSMutableDictionary *dic;
@end


/*方法的实现部分*/
@implementation AddressBook

- (instancetype)init {
    if ([super init]) {
        self.dic = [NSMutableDictionary dictionary];
    }
    return self;
}


- (void)addContact:(Contact *)con {

  NSString *group = [con.name firstName];
  NSMutableArray *arr = [self.dic objectForKey:group];
    if (arr == nil) {
        arr = [NSMutableArray array];
        [arr addObject:con];
        [self.dic setObject:arr forKey:group];
    }else {
        [arr addObject:con];
    }
}

@end
