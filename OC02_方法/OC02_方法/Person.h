//
//  Person.h
//  OC02_方法
//
//  Created by dllo on 15/12/1.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    NSString *_name;
    NSInteger _age;
    NSString *_sex;
}

/*自定义初始化方法 */
- (instancetype)initWithName:(NSString *)name;


- (instancetype)initWithName:(NSString *)name/*回车冒号对齐*/
                        age:(NSInteger)age
                        sex:(NSString *)sex;

- (void)information;

/*便利构造器方法   ( 是类方法, 类调用此方法 )*/

+ (instancetype)personWithName:(NSString *)name
                           age:(NSInteger)age
                           sex:(NSString *)sex;

+ (instancetype)Person;


/**  setter 方法:目的,给一个实例变量赋值  */
-(void)setName:(NSString *)name;
/**getter方法: 目的:  取出一个实例变量的值  */
- (NSString *)name;


- (void)setAge:(NSInteger)age;
- (NSInteger)age;


- (void)setSex:(NSString *)sex;
- (NSString *)sex;


@end
