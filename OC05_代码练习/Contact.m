//
//  Contact.m
//  OC05_代码练习
//
//  Created by dllo on 12/4/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Contact.h"

@implementation Contact
- (instancetype)initWithName:(NSString *)name
                 phonenumber:(NSString *)phonenumber
{
    self = [super init];
    if (self) {
        _name = name;
        _phonenumber = phonenumber;
        _group = [name substringToIndex:1];
    }
    return self;
}


- (void)information
{
    NSLog(@"%@,%@,%@,%@,%@,%ld",_name,_gender,_phonenumber,_address,_group,_age);
}
@end
