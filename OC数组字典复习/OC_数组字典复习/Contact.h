//
//  Contact.h
//  OC_数组字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *phonenumber;
@property (nonatomic, retain) NSString *address;
@property (nonatomic, retain) NSString *group;

- (instancetype)initWithName:(NSString *)name
                 phonenumber:(NSString *)phonenumber;


@end
