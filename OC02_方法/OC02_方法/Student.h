//
//  Student.h
//  OC02_方法
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Person.h"

@interface Student : Person
{
NSString *_school;
NSInteger _number;
}

- (void)setSchool:(NSString *)school;
- (NSString *)school;

- (void)setNumber:(NSInteger)number;
- (NSInteger)number;

/*自定义初始化方法*/
-(instancetype)initWithName:(NSString *)name
                        age:(NSInteger)age
                        sex:(NSString *)sex
                     school:(NSString *)school
                     number:(NSInteger)number;






@end
