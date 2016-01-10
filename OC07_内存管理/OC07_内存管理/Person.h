//
//  Person.h
//  OC07_内存管理
//
//  Created by dllo on 15/12/9.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *sex;
@property (nonatomic, assign) NSInteger age;


+ (instancetype)person;

- (instancetype)initWithName:(NSString *)name;
@end
