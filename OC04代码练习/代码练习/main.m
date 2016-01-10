//
//  main.m
//  代码练习
//
//  Created by dllo on 15/11/28.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
#pragma mark - 知识点1 不可变字符串
#pragma mark ** 创建对象相关的API
#if 0
    NSString *str2 = @"iphone";
    NSString *str1 = [[NSString alloc]initWithString:str2];
    NSLog(@"str:%@",str1);
    NSString *str3 = [[NSString alloc]initWithFormat:@"%@",str2 ];
    NSLog(@"str3:%@",str3);
    int a = 1234;
    NSString *str4 = [[NSString alloc]initWithFormat:@"对象a%d",a ];
    NSLog(@"str4:%@",str4);
    
    NSString *str5 = [NSString stringWithString:str4];
    NSLog(@"str5:%@",str5);
    NSString *str6 = [NSString stringWithFormat:@"%d",a];
    NSLog(@"str6:%@",str6);/*整型换成对象*/
#endif
#pragma mark ** 直接获取字符串长度 API
#if 0
    NSString *str = @"Apple";
    NSLog(@"str:%ld",str.length);
#pragma mark ** 直接获取某一个字符 API
    unichar c = [str characterAtIndex:4];
    NSLog(@"c:%c",c);
#pragma mark ** 直接判断两个字符串是否相等 API
    NSString *str1 = @"iphone";
    NSString *str2 = @"iPhone";
    if ([str1 isEqualToString:str2]) {
        NSLog(@"用户名输入正确");
    }else{
        NSLog(@"用户名输入错误");
    }
#pragma mark ** 直接比较两个字符串
    NSString *str3 = @"zhangsan";
    NSString *str4 = @"zhaomin";
    NSLog(@"%ld", [str3 compare:str4]);
   #endif
#pragma mark ** 直接获取一个字符串中某个部分(子字符串)相关 API
#if 0
    NSString *str1 = @"I have an iphone";
    NSLog(@"str1:%@",[str1 substringFromIndex:10]);
    
    NSLog(@"%@",[str1 substringToIndex:1]);
    /*substringWithRange 返回一个长度结构体*/
    NSLog(@"%@",[str1 substringWithRange:[str1 rangeOfString:@"have"]]);
#pragma mark ** 直接对字符串进行拼接
    NSString *str2 = @"iphone";
    NSString *str3 = @"Plus6";
 NSString *str4 = [str2 stringByAppendingString:str3];
    NSLog(@"str4:%@",str4);
#pragma mark ** 将字符串中的某个子字符串直接替换成其他字符 API
    NSString *str5 = @"I have an iPhone";
    NSString *str6 = @"xiaomi";
    NSString *newString = [str5 stringByReplacingOccurrencesOfString:@"iPhone" withString:str6];
    NSLog(@"newString:%@",newString);
    str5 = [str5 stringByReplacingOccurrencesOfString:@"iPhone" withString:str6];
    NSLog(@"str5:%@",str5);
    str6 = @"华为";
    
//    str5 = [ str5 stringByReplacingCharactersInRange:[str5 rangeOfString:@"iPhone"] withString:str6];
//    NSLog(@"newString:%@",str5);
    /*注释部分的语法没有问题,出现指针错误的原因是由于此时的 str5 中的字符串已经变成"xiaomi"了,所以不能用"iPhone"*/
    
    NSString *str7 = @"I have an iPhone";
    NSRange range = [str7 rangeOfString:@"iPhone"];
    newString = [str7 stringByReplacingCharactersInRange:range withString:@"华为"];
    NSLog(@"%@",newString);
   
#endif
#if 0
#pragma mark ** @"12345"直接转换成int 类型 API
    NSString *str = @"12345";
    int a = str.intValue;
    NSLog(@"a = %d",a);
    
#endif
#if 0
#pragma mark ** 直接对字符串字母进行大小写的相关转换 API (case)
    NSString *str = @"I have an iPhone";
    /*将字母全变成大写*/
    NSString *strUP = [str uppercaseString];
    NSLog(@"strUP:%@",strUP);
    /*将字母全变成小写*/
    NSString *strup = [str lowercaseString];
    NSLog(@"strup:%@",strup);
    /*首字母大写*/
    NSString *newStr = str.capitalizedString;
    NSLog(@"Fristname:%@",newStr);
    /* 将姓名的首字母提取出来并且转换为大写字母 */
    NSString *name = @"zhangsan";
    NSString *Fristname = [name substringToIndex:1].uppercaseString;
    NSLog(@"Fristname:%@",Fristname);
    
#endif
#if 0
#pragma mark ** 直接判断字符串是否以XX开头或结尾 API
    NSString *str = @"http://www.baidu.com";
    if ([str hasPrefix:@"http:"]) {
        NSLog(@"字符串以http:开头");
    }if ([str hasSuffix:@".com"]) {
        NSLog(@"字符串以.com结尾");
    }
#pragma mark ** 练习
    /*判断http://www.lanou3g.com/icon.png是否以png结尾,是替换成jpg,不是就拼接.jpg */
    NSString *str1 = @"http://www.lanou3g.com/icon.png";
    if ([str1 hasSuffix:@".png"]) {
        str1 = [str1 stringByReplacingOccurrencesOfString:@".png" withString:@".jpg"];
    }else{
        str1 = [str1 stringByAppendingString:@".jpg"];
    }
      NSLog(@"str1:%@",str1);
#endif
    
#pragma mark - 知识点2 可变字符串
#if 0
#pragma mark ** 创建对象相关 API
    NSMutableString *mStr = [[NSMutableString alloc] initWithString:@"I have an iPhone"];
    NSLog(@"mStr:%@",mStr);
    
    NSMutableString *mStr1 = [NSMutableString
stringWithString:@"iOS"];
    NSLog(@"mStr1:%@",mStr1);
    
    NSMutableString *mStr2 = [NSMutableString stringWithFormat:@"%@",mStr];
    NSLog(@"mStr2:%@",mStr2);
    
/*需求: 在"iPhone" 后面加上6Plus*/
    [mStr appendString:@"6Plus"];
    NSLog(@"mStr:%@",mStr);

#pragma mark ** 删除一个范围内的字符 API
    NSMutableString *mStri = [NSMutableString stringWithString:@"http://www.baidu.com"];
   /*  需求:删除 http:// */
    [mStri deleteCharactersInRange:[mStri rangeOfString:@"http://"]];
    NSLog(@"mStri:%@",mStri);
  #endif
#if 0
#pragma mark ** 字符串中插入相应的字符串 API
    NSMutableString *mStr = [NSMutableString stringWithString:@"http://www.baidu.com"];
    /*需求: 在http 后面加上一个s ,即https://www.baidu.com */
    [mStr insertString:@"s" atIndex:4];
    NSLog(@"%@",mStr);
    
    NSRange range = [mStr rangeOfString:@"baidu"];
    [mStr insertString:@"?" atIndex:range.location + range.length ];
    NSLog(@"%@",mStr);
#endif
#pragma mark ** 字符串替换 API
#if 0
    NSMutableString *mStr = [NSMutableString stringWithString:@"I have an iphone"];
    [mStr replaceCharactersInRange:[mStr rangeOfString:@"iphone"] withString:@"xiaomi"];
    NSLog(@"mStr:%@",mStr);
    
    /*对比可变字符串和不可变字符串修改子字符串的区别, 可变字符串无返回值 不可变字符串会返回一个字符串*/
    NSString *Str = @"I have an iphone";
    Str = [ Str stringByReplacingOccurrencesOfString:@"iphone" withString:@"xiaomi"];
    NSLog(@"Str:%@",Str);
    
#pragma mark 重置字符串 API
    NSMutableString *mStr1 = [NSMutableString stringWithString:@"iOS"];
    [mStr1 setString:@"iphone"];
    NSLog(@"mStr1:%@",mStr1);
#endif
#pragma mark - 知识点 NSNumber 类
    NSNumber *num1 = [NSNumber numberWithInt:20];
    NSLog(@"num1:%@",num1);
    int a = 100;
    NSNumber *num2 = [NSNumber numberWithInt:a];
    NSLog(@"num2:%@",num2);
    
    
    
    NSNumber *num3 = @20;
    int b = 200;
    NSNumber *num4 = @(b);
    NSLog(@"%@ %@",num3, num4);
    
    int aa = num1.intValue;
    NSLog(@"aa:%d",aa);
    
    [num1 compare:num2];
    NSLog(@"%ld",[num1 compare:num2]);
    
#pragma mark - 知识点4 NSValue
    NSRange range = {3, 4};
    NSValue *value1 = [NSValue valueWithRange:range];
    NSLog(@"%@",value1);
    
    NSRange newRange = value1.rangeValue;
    NSLog(@"%ld %ld",newRange.location,newRange.length);
    

    
    
    
    
    
    
    
    
    return 0;
}
