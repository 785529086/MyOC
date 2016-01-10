//
//  Phone.m
//  OC03_属性
//
//  Created by dllo on 12/2/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import "Phone.h"

@implementation Phone


- (instancetype)initWithName:(NSString *)name
               color:(NSString *)color
                size:(float)size
{
    self = [super init];
    if (self) {
        _name = name;
        _color = color;
        _size = size;
    }
    return self;
}


+ (instancetype)phoneWithName:(NSString *)name
                       color:(NSString *)color
                       size:(float)size
{
Phone * phone = [[Phone alloc] initWithName:@"iPhone6 Plus" color:@"玫瑰金"
               size:5.5];
    return phone;
}

- (void)callPhone {
    NSLog(@"Calling.......");
}
@end
