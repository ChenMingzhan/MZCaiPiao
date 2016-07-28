//
//  MZSettingArrow.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/21.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZSettingArrow.h"

@implementation MZSettingArrow

/**
 *  创建箭头模型
 *
 *  @param title  标题
 *  @param icon   图片
 *  @param destVc 要跳转的目标控制器的名字
 *
 *  @return 模型
 */
+(instancetype)itemWithTitle:(NSString *)title andIcon:(NSString *)icon anddesVc:(Class)desVc
{

    MZSettingArrow *item = [self itemWithTitle:title andIcon:icon];
    
    item.desVc = desVc;
    
    return item;

}
+(instancetype)itemWithTitle:(NSString *)title anddesVc:(Class)desVc
{

    return [self itemWithTitle:title andIcon:nil anddesVc:desVc];
}
@end
