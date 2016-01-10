//
//  main.m
//  OC - 06集合遍历和数组排序
//
//  Created by dllo on 15/12/8.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
#pragma mark - 知识点1 for遍历集合
#if 0
    NSArray *array = @[@"zhang", @"wang", @"li"];
    for (int i = 0; i < array.count; i ++) {
        NSLog(@"%@",array[i]);
    }
    
    NSDictionary *dic = @{@"name":@"Tom",
                           @"age":@"20",
                          @"sex":@"male"};
    NSArray *keys = [dic allKeys];
    for (int i = 0; i < keys.count; i++) {
        NSString *key = keys[i];
        NSString *str = [dic objectForKey:key];
        NSLog(@"%@",str);
    }
    
    NSSet *set = [NSSet setWithObjects:@"zhang",@"wang",@"li", nil];
    NSArray *temp = set.allObjects;
    for (int i = 0; i < temp.count; i++) {
        NSLog(@"%@",temp[i]);
    }
#endif
    
#pragma mark - 知识点2 NSEnumerator 枚举器
#if 0
    
    NSArray *array = @[@"wang", @"zhang", @"li"];
    /* 数组,字典,集合都有一个枚举器方法,返回的是枚举器对象*/
    
    NSEnumerator *enumerator = [array objectEnumerator];
    id anObject;
    while (anObject = [enumerator nextObject]) {
        NSLog(@"%@",anObject);
    }
    /*反向枚举数组*/
    NSEnumerator *reverse = [array reverseObjectEnumerator];
    id object;
    while (object = [reverse nextObject]) {
        NSLog(@"%@",object);
    }
    
    
    NSDictionary *dic = @{@"name":@"Tom",
                           @"age":@"20",
                           @"sex":@"male"};
    NSEnumerator *enumerator1 = [dic objectEnumerator];
    id objectIndic;
    while (objectIndic = [enumerator1 nextObject]) {
        NSLog(@"%@",objectIndic);
    }
    
    NSSet *set = [NSSet setWithObjects:@"zhang", @"wang", @"li", nil];
    NSEnumerator *enumSet = [set objectEnumerator];
    id objectInSet;
    while (objectInSet = [enumSet nextObject] ) {
        NSLog(@"%@",objectInSet);
    }
    
 
#endif
#pragma mark - 知识点3 for ..in 遍历集合 (重点)
#if 0
/**重点
 *1. 对于数组,forin 枚举的是对象
 *2. 对于字典, forin 枚举的是key
 *3. 对于集合, forin 枚举的是对象*/
//    for (<#type *object#> in <#collection#>) {
//        <#statements#>
//    }
  
#endif
#pragma mark - 知识点4 数组排序 (重点)
#if 0
#pragma mark ** sortedArrayUsingDescriptprs
    
    NSArray *arr = @[@"ansheng",@"wang",@"lili"];
    
    /*创建排序描述对象*/
    NSSortDescriptor *des = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
    
    /*调用数组的排序方法*/
    
  NSArray *newArr = [arr sortedArrayUsingDescriptors:@[des]];
    
    /*遍历数组, 输出元素*/
    for (NSString *string in newArr) {
        NSLog(@"%@",string);
    }
    
    Person *person1 = [[Person alloc] initWithName:@"zhangsan" sex:@"male" age:20];
    Person *person2 = [[Person alloc] initWithName:@"zhang" sex:@"male" age:18];
    Person *person3 = [[Person alloc] initWithName:@"lisi" sex:@"female" age:18];
    Person *person4 = [[Person alloc] initWithName:@"Tom" sex:@"male" age:25];
    Person *person5 = [[Person alloc] initWithName:@"xiaoming" sex:@"male" age:23];
    
    NSArray *arr2 = @[person1,person2,person3,person4,person5];
    /*需求: 按照年龄升序排序,如果年龄相同,再按照姓名升序排序*/
    NSSortDescriptor *age = [NSSortDescriptor sortDescriptorWithKey:@"age" ascending:YES];
    NSSortDescriptor *name = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
//    NSArray *newArray1 = [arr2 sortedArrayUsingDescriptors:@[des1]@[des2]];
    NSArray *newArray2 = [arr2 sortedArrayUsingDescriptors:@[name,age]];
    for (Person *person in newArray2) {
        NSLog(@"%@, %ld",person.name,person.age);
    }
    
    
#endif
    
#pragma mark  ** sortedArrayUsingSelector
#if 0
    
    /*1.数组中都是字符串对象*/
    NSArray *arr = @[@"zhangsan",@"lisi",@"wang"];
    /*
     *@param SEL 方法选择器,@selector (方法名).
     *            方法的返回值必须是 NSComparisonResult.
     *
     *           注意:此方法是数组中元素的方法
     */
    
    NSArray *newArr = [arr sortedArrayUsingSelector:@selector(compare:)];
    for (NSString *string in newArr) {
        NSLog(@"%@",string);
    }
    /*2. 数组中都是Person 对象,按照name 升序排序 */
    Person *person1 = [[Person alloc] initWithName:@"zhangsan" sex:@"male" age:20];
    Person *person2 = [[Person alloc] initWithName:@"zhang" sex:@"male" age:18];
    Person *person3 = [[Person alloc] initWithName:@"lisi" sex:@"female" age:18];
    Person *person4 = [[Person alloc] initWithName:@"Tom" sex:@"male" age:25];
    Person *person5 = [[Person alloc] initWithName:@"xiaoming" sex:@"male" age:23];
    NSArray *arr2 = @[person1,person2,person3,person4,person5];
    NSArray *newArr2 = [arr2 sortedArrayUsingSelector:@selector(compareWithNameUp:)];
    for (Person *per in newArr2) {
        NSLog(@"%@",per.name);
    }
    NSArray *newArr3 = [arr2 sortedArrayUsingSelector:@selector(compareWithNameDown:)];
    for (Person *per in newArr3) {
        NSLog(@"%@",per.name);
    }
    
    NSArray *newArr4 = [arr2 sortedArrayUsingSelector:@selector(compareWithAgeUp:)];
    for (Person *per in newArr4) {
        NSLog(@"%ld",per.age);
    }

#endif
#pragma mark ** sortedArrayUsingComparator
#if 1
    NSArray *arr = @[@"wang",@"zhang",@"lisi"];
    NSArray *newArr = [arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
      return  [obj1 compare:obj2];
    }];
    for (NSString *string in newArr) {
        NSLog(@"name:%@",string);
    }
    
    Person *person1 = [[Person alloc] initWithName:@"zhangsan" sex:@"male" age:20];
    Person *person2 = [[Person alloc] initWithName:@"zhang" sex:@"male" age:18];
    Person *person3 = [[Person alloc] initWithName:@"lisi" sex:@"female" age:18];
    Person *person4 = [[Person alloc] initWithName:@"Tom" sex:@"male" age:25];
    Person *person5 = [[Person alloc] initWithName:@"xiaoming" sex:@"male" age:23];
    
    NSArray *arr2 = @[person1,person2,person3,person4,person5];
    /*按照person的name升序排序*/
    NSArray *newArr2 = [arr2 sortedArrayUsingComparator:^NSComparisonResult(Person *  _Nonnull obj1, Person *  _Nonnull obj2) {
        
        return [obj1.name compare:obj2.name];
    }];
    for (Person *per in newArr2) {
        NSLog(@"name:%@,age:%ld",per.name,per.age);
    }
    
    
    /* 按照Person 的age 降序排序 */
    NSArray *ageDowm = [arr2 sortedArrayUsingComparator:^NSComparisonResult(id _Nonnull obj1, id  _Nonnull obj2) {
        Person *per1 = obj1;
        Person *per2 = obj2;
        if (per1.age > per2.age) {
            return NSOrderedAscending;/*Ascending(升序),传-1,*/
        }else if (per1.age < per2.age){
            return NSOrderedDescending;/*看到Descending(降序),传1,内部会发生交换,前后颠倒*/
        }else {
            return NSOrderedSame;
        }
    }];
    for (Person *per in ageDowm) {
        NSLog(@"%ld",per.age);
    }
  
#endif
#pragma mark - 知识点4 : 可变数组排序
#if 0
    NSMutableArray *mArr = @[@"wang",@"zhang",@"lisi"].mutableCopy;
    /*  升序排序 */
    
    [mArr sortUsingSelector:@selector(compare:)];/*无返回值*/

    [mArr sortedArrayUsingSelector:@selector(compare:)];/*返回一个数组*/
    

    
#pragma mark - 时间就是金钱
    /* API:NSDate */
    
    NSDate *startdate = [NSDate date];
    NSLog(@"%@",startdate);

    
    
    /*   对100万个样本进行排序,花费时间 ?  */
    NSMutableArray *arr = [NSMutableArray array];
    
    
    for (int i = 0; i < 10000; i++) {
        NSString *str = [NSString stringWithFormat:@"%ud",arc4random()];
        [arr addObject:str];
    }

    
    
    NSDate *enddate = [NSDate date];
    NSLog(@"%@",enddate);
 //   CFloat p = ;[enddate timeIntervalSinceDate:startdate]
    /* 计算两个时间对象的时间差 */
    NSLog(@"%f",[enddate timeIntervalSinceDate:startdate]);
    
    
    /*数组排序*/
    
    
    
    NSDate *startdate1 = [NSDate date];
    NSLog(@"%@",startdate1);

//    for (int i = 0; i < arr.count - 1; i++) {
//        for (int j = 0; j < arr.count - i - 1; j++) {
//            if ([arr[j] intValue] > [arr [j + 1]intValue] ) {
//                [arr exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
//            }
//        }
//    }
//    
    NSDate *enddate1 = [NSDate date];
    NSLog(@"%@",enddate1);
    //   CFloat p = ;[enddate timeIntervalSinceDate:startdate]
    /* 计算两个时间对象的时间差 */
    NSLog(@"%f",[enddate1 timeIntervalSinceDate:startdate1]);
 #endif
    
    
    
    
  
    return 0;
}
