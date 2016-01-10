//
//  Contact.m
//  OC05_数组_字典_集合
//
//  Created by dllo on 12/4/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Contact.h"

@implementation Contact
- (instancetype)initWithContactOfName:(NSString *)name

                       number:(NSString *)number

              

{
    self = [super init];
    if (self) {
        self.name = name;
 
        self.number = number;
 
        /**/
        self.group = [name substringToIndex:1];

    }
    return self;
}


- (void)information {
    NSLog(@"%@,%@,%@,%@,%@,%ld",self.name,self.gender,self.number,self.address,self.group,self.age);
}
@end
