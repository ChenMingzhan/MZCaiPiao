//
//  MZProduct.h
//  网易彩票
//
//  Created by 铭铭 on 16/3/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MZProduct : NSObject

@property (nonatomic,copy) NSString *title;

@property (nonatomic,copy) NSString *stitle;

@property (nonatomic,copy) NSString *id;

@property (nonatomic,copy) NSString *url;

@property (nonatomic,copy) NSString *icon;

@property (nonatomic,copy) NSString *customUrl;

+(NSArray *)products;
@end
