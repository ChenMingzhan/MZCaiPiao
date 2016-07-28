//
//  MZProduct.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZProduct.h"

@implementation MZProduct

- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype)productWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

+(NSArray *)products
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"more_project.json" ofType:nil];
    
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    NSMutableArray *temarray = [NSMutableArray array];
    for (NSDictionary *dit in array) {
        
        MZProduct *product = [MZProduct productWithDict:dit];
        [temarray addObject:product];
    }
    return temarray;
}
@end
