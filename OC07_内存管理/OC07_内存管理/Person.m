//
//  Person.m
//  OC07_内存管理
//
//  Created by dllo on 15/12/9.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "Person.h"

@implementation Person


@synthesize name = _name;

/*重写dealloc方法*/
- (void)dealloc {
    [_name release];
    [_sex release];
    
    [super dealloc];/*最后一条语句一定要是调用父类的dealloc方法，即释放内存*/

}




// _name setter 方法的实现

- (void)setName:(NSString *)name{
    
    if ( _name != name) {
        [ _name release ];
        _name = [ name retain ];
    }
}

// _age setter 方法的实现 直接赋值,基本数据类型

-(void)setAge:(NSInteger)age {
    
    _age = age;
    
}

/*_name getter 方法的实现*/
- (NSString *)name {

    return [[_name retain] autorelease];


}


/*  构造器 */
+ (instancetype)person {
    Person *person = [[Person alloc] init];
    return [person autorelease];
}


/*初始化方法中实例变量的写法问题*/
- (instancetype)initWithName:(NSString *)name {
    if ([super init]) {
        
        _name = [name copy];/*  Apple 官方API的写法   */
   
    }
    return self;
}



@end
