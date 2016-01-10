//
//  CollegeStudent.h
//  OC02_方法
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
- (void)setMajor:(NSString *)major;
- (NSString *)major;

- (void)setAcademy:(NSString *)academy;
- (NSString *)academy;
/*自定义初始化方法*/

-(instancetype)initWithName:(NSString *)name
                        age:(NSInteger)age
                        sex:(NSString *)sex
                     school:(NSString *)school
                     number:(NSInteger)number
                      major:(NSString *)major
                    academy:(NSString *)academy;


@end
