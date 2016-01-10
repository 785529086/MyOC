//
//  CollegeStudent.m
//  OC02_方法
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "CollegeStudent.h"

@implementation CollegeStudent
- (void)setMajor:(NSString *)major {
    _major = major;
}
- (NSString *)major {
    return _major;
}


- (void)setAcademy:(NSString *)academy {
    _academy = academy;
}
- (NSString *)academy {
    return _academy;
}

-(instancetype)initWithName:(NSString *)name
                        age:(NSInteger)age
                        sex:(NSString *)sex
                     school:(NSString *)school
                     number:(NSInteger)number
                      major:(NSString *)major
                    academy:(NSString *)academy
{
    self = [super initWithName:@"Zhangsan"];
    if (self) {
        _name = name;
        _age = age;
        _sex = sex;
        _school = school;
        _number = number;
    }
    return self;
}








@end
