//
//  Person.h
//  OC08_内存管理2
//
//  Created by dllo on 15/12/10.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <Foundation/Foundation.h>


/*在@interface 后面签 <> 内签协议*/
@interface Person : NSObject <NSCopying>



@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *sex;
@property (nonatomic, assign) NSInteger age;


@end


@interface Student : Person

@end
