//
//  Fraction.h
//  OC_数组字典复习
//
//  Created by dllo on 15/12/7.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property (nonatomic, assign) NSInteger num;
@property (nonatomic, assign) NSInteger deno;
/* init */
- (instancetype)initWithNum:(NSInteger)num
                       deno:(NSInteger)deno;

/* " + "*/
- (Fraction *)addFraction:(Fraction *)fraction;

/* " - " */

@end
