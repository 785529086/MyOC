//
//  Student.m
//  OC07_内存管理
//
//  Created by dllo on 15/12/9.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "Student.h"

@implementation Student

/*  重写KVC的未识别到key值的方法  */
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {

}


- (id)valueForUndefinedKey:(NSString *)key {

    return nil;
    
}

@end
