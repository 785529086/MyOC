//
//  main.m
//  OC04_NSString
//
//  Created by dllo on 12/3/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
#pragma mark - 知识点1 不可变字符串
    /* Class:  NSString */
  /*  字符串的API(功能) - 通过方法和属性实现
    
    可以直接获取字符串的长度.
    通过属性str.length
   
    可以直接获取字符串中某一部分字符串(子字符串)
    characterAtIndex 返回值为 unichar
   
   可以直接拼接字符串
    stringByAppendingString 不可变字符串返回一个字符串,可变字符串没有返回值
   
   可以直接替换字符串中的某一部分内容(替换字符串)
   stringByReplacingOccurrencesOfString 
   stringByReplacingCharactersInRange
   RangeOfstring返回一个结构体,这个结构体包含有 location lenghth
    
    可以直接判断两个字符串是否相同
   isEqualToString

    可以直接比较两个字符串
   compare 返回3个值 -1 0 1;
   
    可以直接判断字符串是否以xx开头
    hasPrefix 前缀
   insetString --插入字符串
   setString -- 重置字符串
   
    可以直接判断字符串是否以xx结尾
        hasSuffix 后缀
   
    如果字符串是"3453"等只含有数字字符的, 可以直接转换成相应的数据类型(int)
   
    
    可以直接将字符串中的字符进行大小写转换
    uppercaseString 全部字符都变成大写
    lowercaseString 全部字符都变成小写
   .capitalizedString 属性 将首字母转换为大写
    */
#pragma mark 创建对象相关API  
#if 1
/*字面量方式,创建字符串对象,是常用方法*/
 
    NSString *str2 = @"iphone";
    NSString *str = [[NSString alloc]initWithString:str2];
    NSString *str10 = [NSString string];
    NSLog(@"str:%@",str);
    NSLog(@"str10:%@",str10);
    /*带format参数方法,比较灵活(万能方法),可以将任意内容以格式化方法生成字符串对象*/
    NSString *str3 = [[NSString alloc]initWithFormat:@"新建字符串,%@",str];
    NSLog(@"str3:%@",str3);
    
    int a = 123445;
    NSString *str4 = [[NSString alloc] initWithFormat:@"对象a:%d",a ];
    NSLog(@"str4:%@",str4);
    
    /*构造器的使用*/
    NSString *str5 = [NSString stringWithString:str4];
    NSLog(@"str5:%@",str5);
    
    NSString *str6 = [NSString stringWithFormat:@"%d",a];/*整型转换成对象*/
    NSLog(@"str6:%@",str6);
#endif
    
#if 0
#pragma mark ** 直接获取字符串长度 API
   NSString * str = @"Apple";
    NSLog(@"%ld",str.length);
    
#pragma mark ** 直接获取某一个字符  API
unichar c = [str characterAtIndex:4];
    NSLog(@"c:%c",c);

#pragma mark ** 直接判断两个字符串是否相等 API
    NSString *str1 = @"iPhone";
    NSString *str2 = @"iPhone";
    if ([str1 isEqualToString:str2]) {
        NSLog(@"用户名正确");
    }else{
        NSLog(@"用户名错误");
    }

#pragma mark ** 直接比较两个字符串
    
    NSString *str1 = @"zhangsan";
    NSString *str2 = @"zhangxiaoming";
    [str1 compare:str2];
    NSLog(@"%ld",[str1 compare:str2]);

#pragma mark ** 直接获取一个字符串中某个部分(子字符串)相关  API
    NSString *str1 = @"I have an iphone6s";
    [str1 substringToIndex:1];/*从首到规定数字*/
    NSLog(@"%@", [str1 substringToIndex:1]);
    
    [str1 substringFromIndex:10];/*从规定数字到尾端*/
    NSLog(@"%@",[str1 substringFromIndex:10]);
    
     /*  取出 have */
    NSRange range = {2,4};
    [str1 substringWithRange:range];
    NSLog(@"%@", [str1 substringWithRange:range]);
    
    /*  取出an    substringWithRange 返回一个长度结构体*/
    NSRange range2 = [str1 rangeOfString:@"an"];
    NSString *subString  =  [str1 substringWithRange:range2];
    NSLog(@"%@",subString);
   // NSString *str10 = @"what your name";
  //  [str10 lengthOfBytesUsingEncoding:@"y"];
  //  NSLog(@"%@",[str10 lengthOfBytesUsingEncoding:@"y"]);

#pragma mark ** 直接对字符串进行拼接
    NSString *str1 = @"iphone";
    NSString *str2 = @"6s";
    NSString *sum =  [str1 stringByAppendingString:str2];
    NSLog(@"%@",sum);
    NSString *str4 = [str1 stringByAppendingFormat:@"我的 %@",str2];
    NSLog(@"str4:%@",str4);
#endif
#if 0
#pragma mark ** 将字符串中的某个子字符串直接替换成其他字符 API
    NSString *str = @"i have an iphone";
    /*需求 将iphone 换成 xiaomi */
    NSString *str1 = @"xiaomi";
   NSString *str3 =  [str stringByReplacingOccurrencesOfString:@"iphone" withString:str1];
    NSLog(@"%@",str3);
    
    
    NSRange range = [str rangeOfString:@"iphone"];
    NSString *oldstr = [str stringByReplacingCharactersInRange:range withString:@"华为"];
    NSLog(@"oldstr:%@",oldstr);
#endif
#if 0
#pragma mark ** @"23453"直接转换成int类型 API
    
    NSString * str = @"12345";
    int a = str.intValue;
    NSLog(@"a = %d",a);

#pragma mark ** 直接对字符串字母进行大小写的相关转换 API(case)
    
    NSString *str = @"i have an iphone";
    /*字母全变成大写*/
    NSString *strUP = [str uppercaseString];
    NSLog(@"strup:%@",strUP);
    NSString *strlow = [str lowercaseString];
    NSLog(@"strlow:%@",strlow);
    /*首字母大写*/
    NSString *newStr = str.capitalizedString;
    NSLog(@"newStr:%@",newStr);
    
    
    /*将姓名的首字母提取出来并且转换为大写字母*/
    NSString *name = @"zhan1gsan";
    NSString *Fristname = [name substringToIndex:1].uppercaseString;
    NSLog(@"%@",Fristname);
 #endif
#if 0
#pragma mark ** 直接判断字符串是否以XX开头或结尾 API
    NSString *str = @"hattp://www.baidu.com";
    if ([str hasPrefix:@"http:"]) {
        NSLog(@"字符串以hattp:开头");
    }
    if ([str hasSuffix:@".com"]) {
        NSLog(@"字符串以.com结尾");
    }
#endif
    
#pragma mark ** 练习
#if 0
/*http://www.lanou3g.com/icon.png
判断上述字符串中是否以“png”结尾，如果是就替换成“jpg”，如果不是，就拼接”.jpg”。*/
    NSString *str = @"http://www.lanou3g.com/icon.png";
    if ([str hasSuffix:@"png"]) {
        str =  [str stringByReplacingOccurrencesOfString:@"png" withString:@".jpg"];
    }else{
       str =  [str stringByAppendingString:@".jpg"];
    }
       NSLog(@"str:%@",str);
    
#endif
    
    
    
#pragma mark - 知识点2 可变字符串
    /*是NSString的子类,继承了NSString 所有属性和方法
     *可变意味着自身内容和长度是动态的(可以变化的)
     *****/
#if 0
#pragma mark ** 创建对象相关 API

    NSMutableString *mStr = [[NSMutableString alloc] initWithString:@"I have an iphone"];
    NSMutableString *mStr2 = [NSMutableString stringWithString:@"iOS"];
    NSMutableString *mStr3 = [NSMutableString stringWithFormat:@"%@",mStr];
#endif
    
#if 0
    NSMutableString *mStr = [NSMutableString stringWithString:@"iphone"];
    /*需求: "iphone" 后面加上"6Plus"*/
    [mStr appendString:@"6Plus"];
    NSLog( @"mStr:%@",mStr);
    
#endif
#if 0
#pragma mark ** 删除一个范围内的字符 API
    NSMutableString *mStri = [NSMutableString stringWithString:@"http://www.baidu.com"];
    /*删除  http://*/
    
    [mStri deleteCharactersInRange:[mStri rangeOfString:@"http://"]];
    NSLog(@"mStr:%@",mStri);
    
#endif
    
#if 0
#pragma mark ** 字符串中插入相应的字符串 API
    NSMutableString *mStr = [NSMutableString stringWithString:@"http://www.baidu.com"];
    /*需求: 在http 后面加上一个s, 即https://www.baidu.com*/
    [mStr insertString:@"s" atIndex:4];
    NSLog(@"%@",mStr);
    NSRange range = [mStr rangeOfString:@"baidu"];
    [mStr insertString:@"?" atIndex:range.location +range.length ];
    NSLog(@"%@",mStr);
   
#endif
#if 1
#pragma mark ** 字符串替换 API
    NSMutableString *mStr = [NSMutableString stringWithString:@"I have an iphone"];
[mStr replaceCharactersInRange:[mStr rangeOfString:@"iphone" ] withString:@"xiaomi"];
 
    NSLog(@"%@",mStr);
    
    
#endif
#if 0
#pragma mark 重置字符串 API
    NSMutableString *mStr = [NSMutableString stringWithString:@"iOS"];
    [mStr setString:@"iphone"];
    NSLog(@"%@",mStr);
#endif

    
    
#pragma mark - 知识点3 NSNumber 类
#if 0
    /*class:NSNumber
     此类的作用: 基本数据类型和OC对象进行相互转换   
     详见API
     
     */
    /*创建对象*/
    NSNumber * num1 = [NSNumber numberWithInt:20];
    NSLog( @"num1:%@",num1);
    int a = 100;
    NSNumber *num2 = [NSNumber numberWithInt:a];
    NSLog(@"num2:%@",num2);
    
/*字面量创建*/
    
    NSNumber *num3 = @20;
    int b = 200;
    NSNumber *num4 = @(b);
    NSLog(@"%@ %@",num3,num4);
    
    /*从NSNumber 对象转化为基本数据类型*/
    int aa = num1.intValue;
    NSLog(@"aa:%d",aa);
    
    
    /*NSNumber 对象之间比较 */
    [num1 compare:num2];
    NSLog(@"%ld",[num1 compare:num2]);
#endif
#pragma mark - 知识点4  NSValue
            /*
             *class: NSValue
             *作用:将结构体和对象类型进行互转
             *
       
             */
#if 0
    NSRange range = {3, 4};
    /*创建对象*/
    NSValue *value1 = [NSValue valueWithRange:range];
    NSLog(@"%@",value1);
    
    /*对象转换为结构体*/
    NSRange newRange = value1.rangeValue;
    NSLog(@"%ld %ld",newRange.location,newRange.length);
#endif
    
    
    return 0;
}
