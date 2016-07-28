//
//  MZTabBarView.h
//  网易彩票
//
//  Created by 铭铭 on 16/3/18.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MZTabBarView : UIView
//选中回传控制器
@property (nonatomic, copy) void (^selectedBlock)(NSInteger index);

/**
 *  选中时的图片和不选中时的图片
 *
 *  @param imageNormal 普通状态下的图片
 *  @param imageHight  选中状态下的图片
 */
-(void)setImageNormalWith:(NSString *)imageNormal andImageSelected:(NSString *)imageSelect andIndex:(NSInteger)index;
@end
