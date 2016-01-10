//
//  Contact.m
//  OC_数组字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Contact.h"

@implementation Contact
- (instancetype)initWithName:(NSString *)name
                 phonenumber:(NSString *)phonenumber
{   if ([super init]){
    _name = name;
    _phonenumber = phonenumber;
    
         /* 组名赋值 */
    self.group = [[name substringToIndex:1] uppercaseString];
    
    
}
    return self;
}
@end
