//
//  main.m
//  OC08_内存管理2
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        /*新建一个Person类 */
        
        
#pragma mark - 知识点1 copy
        /*  要将一个对象进行拷贝,此类必须遵循NSCoping协议 */
        
        Person *per1 = [[Person alloc] init];
        per1.name = @"Tom";
        [per1 retain];
        [per1 retain];
        NSLog(@"per1:%ld",per1.retainCount);
        
        
        Person *per2 = [per1 copy];
        NSLog(@"per2:%@",per2.name);
        NSLog(@"per2:%ld",per2.retainCount);
        [per2 release];
        [per1 release];
        
        
#pragma mark - 知识点2 OC的运行时和编译时
        /*编译时,按照指针类型(对象类型)处理,
         运行时,按照iSA指向的类对象进行处理*/
        
        
        
        
        
        
        
    }
    return 0;
}
