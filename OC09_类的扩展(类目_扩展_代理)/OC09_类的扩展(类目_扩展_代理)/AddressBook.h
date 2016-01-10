//
//  AddressBook.h
//  OC09_类的扩展(类目_扩展_代理)
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;
/*声明属性和方法,外部可以看到使用这些属性和方法*/
@interface AddressBook : NSObject

- (void)addContact:(Contact *)con;

@end
