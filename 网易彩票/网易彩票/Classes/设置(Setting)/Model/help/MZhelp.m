//
//  MZhelp.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZhelp.h"

@implementation MZhelp

- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)helpWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}
+ (NSArray *)helps
{
 NSString *path = [[NSBundle mainBundle] pathForResource:@"help.json" ofType:nil];
    
    NSData *data = [NSData dataWithContentsOfFile:path];

    NSArray *array =[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    NSMutableArray *temp = [NSMutableArray array];
    
    for (NSDictionary *dict in array) {
        MZhelp *help = [MZhelp helpWithDict:dict];
        [temp addObject:help];
    }
    
    return  temp;
}

@end
