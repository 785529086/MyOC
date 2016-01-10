//
//  NSString+FirstName.m
//  OC09_类的扩展(类目_扩展_代理)
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "NSString+FirstName.h"

@implementation NSString (FirstName)


- (NSString *)firstName {
//    self = [[NSString alloc]init];
    return [[self substringToIndex:1] uppercaseString];

}
@end
