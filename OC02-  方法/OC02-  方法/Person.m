//
//  Person.m
//  OC02-  方法
//
//  Created by dllo on 12/1/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)information {
    NSLog(@"name:%@, age:%ld, sex:%@",_name, _age, _sex);
}


- (void)setName:(NSString *)name {
    _name = name;
}
- (NSString *)name {
    return _name;
}

-(void)setAge:(NSInteger)age {
    _age = age;
}
-(NSInteger)age {
    return _age;
}

-(void)setSex:(NSString *)sex {
    _sex = sex;
}
-(NSString *)sex {
    return _sex;
}

-(void)study {
    NSLog(@"我要好好学习了");
}
/*初始化方法*/
-(instancetype)initWithName:(NSString *)name
                        age:(NSInteger)age
                        sex:(NSString *)sex;
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _sex = sex;
    }
    return self;

}
/*便利构造器方法*/
+(instancetype)personWithName :(NSString *)name
                           age:(NSInteger)age
                           sex:(NSString *)sex
{
    Person *per =[[Person alloc] initWithName:@"XiaoQian" age:21 sex:@"female"];
    
    return per;
}




@end
