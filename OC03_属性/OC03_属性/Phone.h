//
//  Phone.h
//  OC03_属性
//
//  Created by dllo on 12/2/15.
//  Copyright © 2015 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Phone : NSObject
@property (nonatomic, retain)NSString *name;
@property (nonatomic, retain)NSString *color;
@property (nonatomic, assign)  float size;

- (instancetype)initWithName:(NSString *)name
               color:(NSString *)color
                size:(float)size;

+ (instancetype)phoneWithName:(NSString *)name
                       color:(NSString *)color
                         size:(float)size;

- (void)callPhone;





@end
