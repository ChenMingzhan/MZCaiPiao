//
//  MZSettingGroup.h
//  网易彩票
//
//  Created by 铭铭 on 16/3/20.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MZSettingGroup : NSObject

@property (nonatomic, strong) NSArray *items;

/**
 *  组头
 */
@property (copy, nonatomic) NSString *header;
/**
 *  组尾
 */
@property (copy, nonatomic) NSString *footer;

+(instancetype)groupWitnItems:(NSArray *)items;

@end
