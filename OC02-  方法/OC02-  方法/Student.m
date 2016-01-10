//
//  Student.m
//  OC02-  方法
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)setSchool:(NSString *)school {
    _school = school;
}
-(NSString *)school {
    return _school;
}

-(void)setNumber:(NSInteger)number {
    _number = number;
}
-(NSInteger)number {
    return _number;
}

-(void)study {
    NSLog(@"曾斌要好好学习拉");
}

-(void)informationOfStudent {
    NSLog(@"name:%@, age:%ld, sex:%@, school:%@,number:%ld",_name, _age, _sex, _school,_number);
}


@end
