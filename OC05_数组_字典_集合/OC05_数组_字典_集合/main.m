//
//  main.m
//  OC05_数组_字典_集合
//
//  Created by dllo on 12/4/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
int main(int argc, const char * argv[]) {
  
    
#pragma mark - 知识点1 数组
#pragma mark ** 不可变数组
#pragma mark ** 创建对象相关 API
#if 0
    /* init 方法*/
    NSArray *array = [[NSArray alloc] initWithObjects:@"beijing",@"dalian",@"haerbin", nil];
    /*构造器方法*/
    NSArray *array1 = [NSArray arrayWithObjects:@"beijing",@"dalian",@"haerbin", nil];
    /*字面量方法*/
    NSArray *array3 = @[@"beijing",@"haerbin",@"dalian"];
#endif
#pragma mark ** 获取数组元素个数 API
#if 0
    
    NSArray *array = @[@"beijing",@"dalian",@"haerbin"];
    NSLog(@"%ld",array.count);

#pragma mark ** 根据下标获取元素(对象) API
    NSArray *array1 = @[@"beijing",@"dalian",@"haerbin"];
    
    /*注意: 从数组中获取对象时,一定要明确对象类型*/
    NSString *city = [array1 objectAtIndex:1];
    NSLog(@"city:%@",city);
    
//    NSArray *arr = [array1 objectAtIndex:2];
//    NSLog(@"%ld",arr.count);
    /*字面量方式获取对象 */
    NSString *name = array1[2];
    NSLog(@"name:%@",name);
    
#endif
#if 0
    
#pragma mark   ** 用来判断数组中是否包含某一个给定的对象
    NSArray *array = @[@"dalian",@"beijing",@"haerbin"];
    if ([array containsObject:@"dalian"]){
        NSLog(@"包含大连");
    }

#pragma mark  ** 获取数组元素对应的索引
    NSArray *array = @[@"dalian",@"beijing",@"haerbin"];
    [array indexOfObject:@"beijing"];
    NSLog(@"beijingindex:%ld",[array indexOfObject:@"beijing"]);

#pragma mark **   按照给定的字符串进行截取，将截取的多段字符串放入数组中
    NSString * str = @"www.baidu.com";
    /*  注意: 这是字符串方法,返回值是数组 数组内容为字符串指针*/
   NSArray *array = [str componentsSeparatedByString:@"."];
    NSLog(@"array:%@",array);
#pragma mark **   将数组中的元素按照给定的字符串格式拼接成一个完整的字符串对象
    NSArray *arr = @[@"dalian",@"beijing",@"haerbin"];
    NSString *str1 = [arr componentsJoinedByString:@"&"];
    NSLog(@"str1:%@",str1);

#pragma mark ** 练习
   /**存在如下的字符串,将其中的图片网址提取出来
    http://www.imanhua.com/Cover/2011-10/hyrz.jpg&http://www.imanhua.com/Cover/2011-09/op.jpg&http://www.imanhua.com/Cover/2012-04/yjdwb.jpg*/
    NSString *str = @"http://www.imanhua.com/Cover/2011-10/hyrz.jpg&http://www.imanhua.com/Cover/2011-09/op.jpg&http://www.imanhua.com/Cover/2012-04/yjdwb.jpg";
    NSArray *array = [str componentsSeparatedByString:@"&"];
    NSLog(@"array:%@",array);
    /*有如下一个数组，@[@“type = iOS", @"Device = iPhone", @"count = 11344115@163.com", @"password = 12345”]，将其中的内容用”&"符号拼接成一个字符串*/
    NSArray *array1 = @[@"type = iOS", @"Device = iPhone", @"count = 11344115@163.com", @"password = 12345"];
    NSString *str1 = [array1 componentsJoinedByString:@"&"];
    NSLog(@"str1:%@",str1);
      #endif

#pragma mark -* 可变数组
#if 0
#pragma mark ** 创建对象相关API
    NSMutableArray *mArr = [[NSMutableArray alloc] initWithObjects:@"dalian",@"beijing",@"hunan", nil];
    NSMutableArray *mArr2 = [NSMutableArray arrayWithCapacity:20];
    /*字面量方式,后面加 mutableCopy 是一份可变的数组*/
    NSMutableArray *nArr3 = @[@"beijing",@"dalian",@"hunan"].mutableCopy;

    
    
    
#pragma mark ** 数组中添加一个对象

    NSMutableArray *mArr = @[@"dalian",@"beijing",@"hunan"].mutableCopy;
    /*注意: 添加对象在数组最后*/
    [mArr addObject:@"shenyang"];
    NSLog(@"mArr:%@",mArr);


#pragma mark ** 数组中指定位置插入一个对象
    NSMutableArray *mArr = @[@"biejing",@"shanghai",@"hunan"].mutableCopy;
    [mArr insertObject:@"shenyang" atIndex:2];
    NSLog(@"mArr:%@",mArr);
    
    
#pragma mark ** 数组中移除一个对象
    NSMutableArray *mArr = @[@"beijing",@"dalian",@"hunan"].mutableCopy;
    [mArr removeObject:@"dalian"];
    NSLog(@"mArr:%@",mArr);

#pragma mark ** 移除数组中最后一个对象
    [mArr removeLastObject];
    NSLog(@"mArr:%@",mArr);
    
#pragma mark ** 移除数组中所有的元素
    [mArr removeAllObjects];
    NSLog(@"mArr:%@",mArr);
  
    
#pragma mark ** 数组中移除指定位置的元素
    NSMutableArray *mArr = @[@"beijing",@"dalian",@"hunan"].mutableCopy;
   
#pragma mark ** 使用指定的对象替换指定位置的对象
    [mArr replaceObjectAtIndex:2 withObject:@"jilin"];
    NSLog(@"%@",mArr);
    
#pragma mark ** 交换指定的两个下标对应的对象
    [mArr exchangeObjectAtIndex:0 withObjectAtIndex:1];
    NSLog(@"%@",mArr);
#pragma mark - 知识点2 字典
    
#pragma mark ** 不可变字典
#pragma mark ** 创建对象 API
    /*init 方法 *
     *注意: key 和 value 的顺序.
     */
    NSDictionary *dic = [[NSDictionary alloc]
initWithObjectsAndKeys:@"zhangsnan",@"name", @"20", @"age", @"male",@"sex",nil];
    /*构造器方法
     注意: key 和value 的顺序*/
    NSDictionary *dic2 = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name", @"20", @"age", @"male",@"sex", nil];
    /*字面量的写法
     注意顺序: key:value, key:value*/
    NSDictionary *dic3 = @{@"name":@"zhangsan",
                            @"age":@"20",
                            @"sex":@"male"};

#pragma mark ** 获取字典中键值对的个数 API
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name", @"20",@"age", @"male",@"sex", nil];
    NSLog(@"%ld",dic.count);
    

#pragma mark ** 获取字典中所有的键 API
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name", @"male", @"sex", @"20", @"age", nil];
    [dic allKeys];
    NSLog(@"allkeys:%@",[dic allKeys]);
    

#pragma mark ** 获取字典中所有的值  API
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan", @"name", @"20", @"age", @"male", @"sex", nil];
    [dic allValues];
    NSLog(@"dic allvalues:%@",[dic allValues]);
 
#pragma mark ** 根据键获得对应的值
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name", @"male",@"sex",@"20",@"age", nil];
    NSString *name = [dic objectForKey:@"name"];
    NSString *age = [dic objectForKey:@"age"];
    NSLog(@"%@",name);
    NSLog(@"%@",age);
  
    
    
    
#pragma mark ** 可变字典
    

#pragma mark ** 创建对象 API
    NSMutableDictionary *mDic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"zhangsan",@"name", @"male", @"sex", @"20", @"age", nil];
    NSMutableDictionary *mDic2 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name", @"male",@"sex", @"20", @"age", nil];
    NSMutableDictionary *mDic3 = @{@"name":@"zhangsan",@"age":@"20",@"sex":@"male"}.mutableCopy;
    /*创建空的可变字典 */
    NSMutableDictionary *mDic4 = [NSMutableDictionary dictionary];
    NSMutableDictionary *mDic5 = [NSMutableDictionary dictionaryWithCapacity:26];

#pragma mark **字典中添加新的键值对以及 修改某一对键值对 API  
   NSMutableDictionary *mDic = @{@"name":@"zhangsan",@"age":@"28",@"sex":@"male"}.mutableCopy;
    [mDic setObject:@"running" forKey:@"hobby"];
    [mDic setObject:@"20" forKey:@"age"];
    NSLog(@"%@",mDic);
  
#pragma mark**移除指定的键对应的键值对 API
    NSMutableDictionary *mDic = @{@"name":@"zhangsan",@"sex":@"male",@"age":@"28"}.mutableCopy;
    [mDic removeObjectForKey:@"age"];
    NSLog(@"%@",mDic);
  
    
#pragma mark **移除字典中所有的键值对 API
    NSMutableDictionary *mDic = @{@"name":@"zhangsan",@"sex":@"male",@"age":@"28"}.mutableCopy;
    [mDic removeAllObjects];
    NSLog(@"%@",mDic);
#endif
    
    
    
#if 1
#pragma mark ** 练习

    
    /*1.创建一个可变字典(26个键值对)*/
//    
//
//    NSMutableDictionary *mDic = @{@"A":@[],
//                                  @"B":@[],
//                                  @"C":@[],
//                                  @"D":@[],
//                                  @"E":@[],
//                                  @"F":@[],
//                                  @"G":@[],
//                                  @"H":@[],
//                                  @"I":@[],
//                                  @"J":@[],
//                                  @"K":@[],
//                                  @"L":@[],
//                                  @"M":@[],
//                                  @"N":@[],
//                                  @"O":@[],
//                                  @"P":@[],
//                                  @"Q":@[],
//                                  @"R":@[],
//                                  @"S":@[],
//                                  @"T":@[],
//                                  @"U":@[],
//                                  @"V":@[],
//                                  @"W":@[],
//                                  @"X":@[],
//                                  @"Y":@[],
//                                  @"Z":@[]}.mutableCopy;
//    
    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithCapacity:26];
    /*for 循环26次,添加键值对 */
    for (int i = 0; i < 26; i++) {
        /*创建 key值*/
        NSString *key = [NSString stringWithFormat:@"%c",'A'+ i];
        
        /* 创建一个空的可变数组 */
        NSMutableArray *mArr = [NSMutableArray array];
        /* 向字典中添加新的键值对 */
        [mDic setObject:mArr forKey:key];
    }
    /*2.创建联系人对象 */
    Contact *con1 = [[Contact alloc] initWithContactOfName:@"Zhangsan" number:@"13944686625"];
    
    /*3.根据联系人的分组, 在字典中找出分组对应的数组*/
    NSString *key = con1.group;
    NSMutableArray *mArr = [mDic objectForKey:key];

    [mArr addObject:con1]; /*  将联系人对象添加到数组当中 */
       
    
//    [[mDic objectForKey:con1.group] addObject:con1];
//    NSLog(@"mArr:%@",mDic);    和上面3句一样功能
    
    for (NSString *key in mDic) {
       // NSArray *arr = [mDic objectForKey:key];
        NSLog(@"%@",[mDic objectForKey:key]);
    }
    
#endif
#if 0
#pragma mark - 知识点3 快速遍历容器(数组, 字典, 集合)
    NSArray *arr = @[@"zhangsan",@"lisi",@"wangwu"];
    /*forin 快速遍历数组*/
    for (NSString *str in arr) {
        NSLog(@"%@",str);
    }
    Contact *con1 = [[Contact alloc] initWithContactOfName:@"Lily" number:@"15754689463"];
    
    Contact *con2 = [[Contact alloc] initWithContactOfName:@"Lisi" number:@"13517323704"];
    Contact *con3 = [[Contact alloc] initWithContactOfName:@"Wangwu" number:@"13517329704"];
    NSArray *conArr = @[con1, con2, con3];
    for (Contact *con in conArr) {
        [con information];
    }
#endif
#if 0
    /*forin 快速遍历字典*/
    NSDictionary *mDic = @{@"name":@"zhangsan",
                            @"age":@"20",
                            @"sex":@"male",
                          @"hobby":@"running"};
    
    /*注意: 对字典快速遍历,遍历的是key */
    for (NSString *key in mDic) {
        NSLog(@"%@",[mDic objectForKey:key]);
        NSLog(@"%@",key);
    }

    
    
    
    
#endif
#if 0
#pragma mark - 知识点4 集合
#pragma mark ** 不可变集
#pragma mark ** 创建对象 API
    /*注意: 集合的互异性, 不能存在相同的对象*/
    NSSet *set =[[NSSet alloc] initWithObjects:@"zhang",@"wang",@"zhang",@"li", nil];
    
    
    NSSet *set2 = [[NSSet alloc] initWithObjects:@"li", @"wang", @"zhang", nil];

#pragma mark ** 个数.
    
    
    NSLog(@"%ld",set.count);
    
    
#pragma mark ** 取出对象
    
    NSLog(@"%@",[set anyObject]);
#pragma mark ** 取出所有对象
    NSArray *Arr = [set allObjects];
    
#pragma mark  ** 判断是否含有某一个对象
    if ([set containsObject:@"wu"]){
        NSLog(@"含有");
    }else{
        NSLog(@"不含有");
    }
    
    
#pragma mark ** 可变集合
#pragma mark ** 创建对象 API
    NSMutableSet *mSet = [[NSMutableSet alloc] initWithObjects:@"zhang", @"li", @"wang", @"li",@"li", nil];
    NSMutableSet *mSet2 = [NSMutableSet setWithObjects:@"zhang", @"li", @"wang", @"li", @"li", nil];
    
    
#pragma mark ** 添加对象
    [mSet addObject:@"li"];
#pragma mark ** 删除对象
    [mSet removeObject:@"li"];
#pragma mark ** 删除所有对象
    [mSet removeAllObjects];
#pragma mark ** 快速遍历集合
    for (NSString *str in mSet) {
        NSLog(@"%@",str);
    }
    
#endif
    
    return 0;
}
