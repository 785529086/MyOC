//
//  Contact.h
//  OC05_代码练习
//
//  Created by dllo on 12/4/15.
//  Copyright © 2015 doll. All rights reserved.
//
/*  完成以下需求
 需求：1、定义联系人类Contact。实例变量：姓名(拼音，首字母大写)、性别、电话号码、住址、分组名称、年龄。方法：自定义初始化方法(姓名、电话号码)、显示联系人信息。
 2、在main.m中定义字典，分组管理所有联系人。分组名为26个大写的英文字母。
 3、可以添加联系人对象，如果姓名或电话号码为空，添加失败。添加联系人到匹配的分组。
 4、删除某个分组的全部联系人。*/

#import <Foundation/Foundation.h>

@interface Contact : NSObject
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *gender;
@property (nonatomic, retain) NSString *phonenumber;
@property (nonatomic, retain) NSString *address;
@property (nonatomic, retain) NSString *group;
@property (nonatomic, assign) NSInteger age;


- (instancetype)initWithName:(NSString *)name
                 phonenumber:(NSString *)phonenumber;
- (void)information;

@end
