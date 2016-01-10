//
//  Person.m
//  OC02_方法
//
//  Created by dllo on 15/12/1.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)initWithName:(NSString *)name {
    
    /*self 关键字: 指当前类的对象 */
    self = [super init];
    if (self) {
        _name =name;
    }
    return self;
}

/*自定义初始化方法*/
- (instancetype)initWithName:(NSString *)name/*回车冒号对齐*/
                         age:(NSInteger)age
                         sex:(NSString *)sex {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _sex = sex;
    }
    return self;
}



-(void)information {
    NSLog(@"name :%@, age: %ld,sex: %@",_name, _age,_sex);
}


-(void)setName:(NSString *)name {
    _name = name;
}
-(NSString *)name  {
    return _name;
}


- (void)setAge:(NSInteger)age {
    age = _age;
}
- (NSInteger)age {
    return _age;
}


- (void)setSex:(NSString *)sex {
    _sex = sex;
}
- (NSString *)sex {
    return _sex;
}




/*便利构造器方法   ( 是类方法, 类调用此方法 )*/

+ (instancetype)personWithName:(NSString *)name
                           age:(NSInteger)age
                           sex:(NSString *)sex {
    Person *per = [[Person alloc]initWithName:name age: age sex: sex];
    return per;
}

+(instancetype)Person{
    Person *per = [[Person alloc] init];
    return per;
}


@end
