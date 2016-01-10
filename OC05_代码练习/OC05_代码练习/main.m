//
//  main.m
//  OC05_代码练习
//
//  Created by dllo on 12/4/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
#pragma mark - 知识点1 数组
#pragma mark ** 不可变数组
#pragma mark ** 创建相关对象 API
#if 0
    /*init 方法*/
    NSArray *array = [[NSArray alloc] initWithObjects:@"beijing", @"dalian", @"hunan", nil];
    /*构造器方法*/
    NSArray *array1 = [NSArray arrayWithObjects:@"beijin",@"dalian",@"hunnan", nil];
    /*字面量方法*/
    NSArray *array3 = @[@"biejing",@"dalian",@"hunan" ];
#pragma mark ** 获取数组元素个数 API
    NSLog(@"%ld",array.count);
#pragma mark ** 根据下标获取元素(对象) API
    NSString *city = [array1 objectAtIndex:2];
    NSLog(@"city:%@",city);
    
    NSString *name = array3[1];
    NSLog(@"name:%@",name);
    
#pragma mark ** 用来判断数组中是否包含某一个给定的对象
    if ([array containsObject:@"dalian"]) {
        NSLog(@"包含大连");
    }
#pragma mark ** 获取数组元素中对应的索引(返回值为一个下标值,整型)
    NSLog(@"dalian:%ld",[array indexOfObject:@"dalian"]);
    
#pragma mark ** 按照给定的字符串进行截取,将截取的多段字符串放入数组中
    NSString *str = @"www.baidu.com";
    NSArray *array4 = [str componentsSeparatedByString:@"."];
    NSLog(@"array4:%@",array4);
#pragma mark ** 将数组中的元素按照给定的字符串格式拼接成一个完整的字符串对象
    str = [array4 componentsJoinedByString:@"&"];
    NSLog(@"array4:%@",str);
    
#pragma mark ** 练习
    /*存在如下的字符串,将其中的图片网址提取出来
      http://www.imanhua.com/Cover/2011-10/hyrz.jpg&http://www.imanhua.com/Cover/2011-09/op.jpg&http://www.imanhua.com/Cover/2012-04/yjdwb.jpg
     */
    NSString *str1 = @" http://www.imanhua.com/Cover/2011-10/hyrz.jpg&http://www.imanhua.com/Cover/2011-09/op.jpg&http://www.imanhua.com/Cover/2012-04/yjdwb.jpg";
    array4 = [str1 componentsSeparatedByString:@"&"];
    NSLog(@"array4:%@",array4);
#endif
#pragma mark -* 可变数组
#if 0
#pragma mark ** 创建对象 API
    NSMutableArray *mArr = [[NSMutableArray alloc] initWithObjects:@"dalian",@"bejing",@"hunan", nil];
    NSMutableArray *mArr1 = [NSMutableArray arrayWithObjects:@"beijing",@"dalain",@"hunan", nil];
    NSMutableArray *mArr2 = [NSMutableArray arrayWithCapacity:10];
    NSLog(@"mArr2:%@",mArr2);
    [mArr2 addObject:@"beijing"];
    NSLog(@"mArr2:%@",mArr2);
    
    NSMutableArray *mArr3 = @[@"beijing",@"dalian",@"hunan"].mutableCopy;
#pragma mark ** 数组中添加一个对象
    [mArr addObject:@"吉林"];
    NSLog(@"mArr:%@",mArr);
#pragma mark ** 数组指定位置插入一个对象
    [mArr1 insertObject:@"jilin" atIndex:1];
    NSLog(@"mArr1:%@",mArr1);
#pragma mark ** 数组中移除一个对象
    [mArr3 removeObject:@"beijing"];
    NSLog(@"mArr3:%@",mArr3);
#pragma mark ** 移除数组中最后一个对象
    [mArr3 removeLastObject];
    NSLog(@"mArr3:%@",mArr3);
#pragma mark ** 移除数组中所有元素
    [mArr1 removeAllObjects];
    NSLog(@"mArr1:%@",mArr1);
#pragma mark ** 移除指定位置的元素
    [mArr removeObjectAtIndex:1];
    NSLog(@"mArr:%@",mArr);
#pragma mark ** 使指定的对象替换指定位置的对象
    /*字符串中含有汉语在输出界面显示不出来*/
    [mArr replaceObjectAtIndex:1 withObject:@"湖南"];
    NSLog(@"mArr:%@",mArr);
#pragma mark ** 交换指定的两个下标对应的对象
    [mArr exchangeObjectAtIndex:0 withObjectAtIndex:1];
    NSLog(@"mArr3:%@",mArr);
  #endif
#if 0
#pragma mark - 知识点2 字典
#pragma mark ** 不可变字典
#pragma mark ** 创建对象
    /*init 方法  注意: key 和 value 的顺序*/
    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"zhangsan",@"name",@"male",@"sex",@"30",@"age", nil];
    NSDictionary *dic1 = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name",@"male",@"sex",@"25",@"age", nil];
    NSDictionary *dic2 = @{@"name":@"zhangsan",@"sex":@"male",@"age":@"23"};
#pragma mark ** 获取字典中键值对的个数
    NSLog(@"dic:%ld",dic.count);
#pragma mark ** 获取字典中所有的键
    NSLog(@"allkeys:%@",[dic1 allKeys]);
#pragma mark ** 获取字典中所有的值
    NSLog(@"allvalue:%@",[dic2 allValues]);
#pragma mark ** 根据键获得对应的值
    NSString *name = [dic objectForKey:@"name"];
    NSLog(@"name:%@",name);
#endif
#pragma mark ** 可变字典
#if 1
#pragma mark ** 创建对象
    NSMutableDictionary *mDic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"zhangsan",@"name",@"male",@"sex",@"23",@"age", nil];
    NSMutableDictionary *mDic1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"zhangsan",@"name",@"male",@"gender",@"23",@"age", nil];
    NSMutableDictionary *mDic2 = @{@"name":@"zhangsan",@"gender":@"male",@"age":@"22"}.mutableCopy;
//    创建空的可变字典
    NSMutableDictionary *mDic3 = [NSMutableDictionary dictionary].mutableCopy;
    NSLog(@"mDic3:%@",mDic3);
//   NSArray *array =  [mDic1 allKeysForObject:mDic2];
//    NSLog( @"array:%@",array);
//    
    NSMutableDictionary *mDic4 = [NSMutableDictionary dictionaryWithCapacity:10];
#pragma mark ** 字典中添加新的键值对以及修改某一对键值对 
    [mDic setObject:@"running" forKey:@"hobby"];
    NSLog(@"mDic:%@",mDic);
    [mDic setObject:@"20" forKey:@"age"];
    NSLog(@"mDic:%@",mDic);
#pragma mark ** 移除指定键对应的键值对
    [mDic removeObjectForKey:@"sex"];
    NSLog(@"mDic:%@",mDic);
#pragma mark ** 移除字典中所有的键值对
    [mDic1 removeAllObjects];
    NSLog(@"mDic1:%@",mDic1);
  
#endif
#pragma mark ** 练习
    /*  完成以下需求
     需求：1、定义联系人类Contact。实例变量：姓名(拼音，首字母大写)、性别、电话号码、住址、分组名称、年龄。方法：自定义初始化方法(姓名、电话号码)、显示联系人信息。
     2、在main.m中定义字典，分组管理所有联系人。分组名为26个大写的英文字母。
     3、可以添加联系人对象，如果姓名或电话号码为空，添加失败。添加联系人到匹配的分组。
     4、删除某个分组的全部联系人。*/
    /*1. 创建一个可变字典 (26个键值对)*/
    

    return 0;
}
