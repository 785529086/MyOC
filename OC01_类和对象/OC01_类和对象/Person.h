//
//  Person.h
//  OC01_类和对象
//
//  Created by dllo on 15/11/30.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>/*基础框架*/
/*  .h文件 包含类的实例变量和方法的声明 
     实例变量和方法的声明要在对应的@interface 和 @ end 之间
*/
@interface Person : NSObject
/*  其中: Person类名,代码规范要求,类名首字母大写! NSObject父类名(后面的继承章节详细介绍)*/
/*1 .类的实例变量   ,注意: 写在{  }内 */
{
    /*实例变量可见度: @public @protected @private
     @public  公共的,类的内部和外部都可以直接访问 
     @protected 受保护的.类的内部及子类可以访问
     @private 私有的  类的内部可以访问
     默认可见度是:@protected 受保护
     注: 类的内部是指 .m 文件中@implementation @end 之间 */
    @public  /*  可见度修饰词修饰直到下一个可见度修饰词之前的实例变量 */
    NSString *_name;   /*  OC中的字符串同样也是对象,NSString 就是字符串对象类型 由于对象是在堆区开辟空间,所以NSString 类型的实例变量前面加  *符号(指针)  代码规范: 实例变量前面加 _ 符号(目的:  是和后面讲到的属性进行区别 )  */
    int _age;
    NSInteger _number;/*  注意: NSInterger不是对象类型,根据系统环境确定不同的整型类型*/
    @private
    float _weight;
}
/* 2.类的方法*/
/*  1. 方法前面 要加上 '+'  或 ' - '  ,分别表示类方法或是对象方法
    2. 方法的返回值用( ) 括起来
    3. 方法如果没有参数, 后边没有( )  ;  */




/*1.(一) 对象方法
   2.   如果方法带参数, :  后面加上(参数类型)参数名*/
-(void)sayHello;
-(void)informationOfPerson:(Person *)person;
-(void)information;







@end
