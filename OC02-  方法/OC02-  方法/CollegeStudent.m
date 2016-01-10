//
//  CollegeStudent.m
//  OC02-  方法
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "CollegeStudent.h"

@implementation CollegeStudent
-(void)setMajor:(NSString *)major {
    _major = major;
}
-(NSString *)major {
    return _major;
}


-(void)setAcademy:(NSString *)academy {
    _academy = academy;
}
-(NSString *)academy {
    return _academy;
}

-(instancetype)initWithName:(NSString *)name
                        age:(NSInteger)age
                        sex:(NSString *)sex
                      major:(NSString *)major
                    academy:(NSString *)academy
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _sex = sex;
        _major = major;
        _academy = academy;
    }
    return self;
}
+(instancetype)collegeWithName:(NSString *)name
                           age:(NSInteger)age
                           sex:(NSString *)sex
                         major:(NSString *)major
                       academy:(NSString *)academy
{
    CollegeStudent *collegeStu = [[CollegeStudent alloc]initWithName:@"Zengbin" age:22 sex:@"male" major:@"IT" academy:@"优秀"];
    return collegeStu;
}
-(void)informationOfCollegeStudent {
    NSLog(@"name:%@, age:%ld, sex:%@, school:%@,number:%ld, major:%@, academy:%@",_name, _age, _sex, _school,_number,_major,_academy);
}
@end
