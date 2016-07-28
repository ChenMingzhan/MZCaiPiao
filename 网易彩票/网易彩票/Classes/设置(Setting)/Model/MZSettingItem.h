//
//  MZSettingItem.h
//  网易彩票
//
//  Created by 铭铭 on 16/3/20.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MZSettingItem : NSObject


/**
 *  标题
 */
@property (copy, nonatomic) NSString *title;

/**
 *  图标
 */
@property (nonatomic, copy) NSString *icon;

/**
 *  子标题
 */
@property (copy, nonatomic) NSString *subTitle;

//保存一个代码块
@property (nonatomic, copy) void (^OperationBlock)();

+(instancetype)itemWithTitle:(NSString *)title andIcon:(NSString *)icon;

+(instancetype)itemWithTitle:(NSString *)title;

+(instancetype)itemWithTitle:(NSString *)title subTitle:(NSString *)subTitle;


@end
