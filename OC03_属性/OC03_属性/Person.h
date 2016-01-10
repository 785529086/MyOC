//
//  Person.h
//  OC03_属性
//
//  Created by dllo on 12/2/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
/*声明属性*/
//@property  NSString *name;
//@property NSInteger age;
//@property NSString *gender;
/*属性的特性*/
@property(readwrite)NSString *name;/*readwrite 可读特性,有4个选项:readyonly, readwrite, setter = , getter = , 默认是readwrite */
@property(readwrite,nonatomic)NSInteger age;
/*nonatomic ,原子性特性, 有两个选项,分别是atomic(原子性), nonatomic(非原子性), 其中的atomic 可以保证在多线程下的绝对安全,但占用系统资源.通常使用nonatomic即可,默认是atomic*/

@property(readwrite, nonatomic, retain)NSString *gender;
/*  retain, 语义设置,有3个选项:assign, retain, copy 不同的语义选项,setter 和 getter方法实现不同, 使用规则,非对象类型(int, float)使用 assign ,对象类型,使用retain 对象类型同时想得到副本,使用copy 默认assign */
@property(nonatomic, assign) float weight;
@property(nonatomic, retain) NSString *hobby;

@end
