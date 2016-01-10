//
//  CollegeStudent.h
//  OC02-  方法
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Student.h"

@interface CollegeStudent : Student
{
    NSString *_major;
    NSString *_academy;
}
-(void)setMajor:(NSString *)major;
-(NSString *)major;


-(void)setAcademy:(NSString *)academy;
-(NSString *)academy;

-(instancetype)initWithName:(NSString *)name
                        age:(NSInteger)age
                        sex:(NSString *)sex
                      major:(NSString *)major
                    academy:(NSString *)academy;
+(instancetype)collegeWithName:(NSString *)name
                           age:(NSInteger)age
                           sex:(NSString *)sex
                         major:(NSString *)major
                       academy:(NSString *)academy;
-(void)informationOfCollegeStudent;

@end
