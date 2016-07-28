//
//  MZSettingArrow.h
//  网易彩票
//
//  Created by 铭铭 on 16/3/21.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZSettingItem.h"

@interface MZSettingArrow : MZSettingItem

/**
 *  控制器的名字
 */
@property (nonatomic, assign) Class desVc;


+(instancetype)itemWithTitle:(NSString *)title andIcon:(NSString *)icon anddesVc:(Class)desVc;

+(instancetype)itemWithTitle:(NSString *)title anddesVc:(Class)desVc;
@end
