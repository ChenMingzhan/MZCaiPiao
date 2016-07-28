//
//  MZCircleViewController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/21.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZCircleViewController.h"

@interface MZCircleViewController ()

@end

@implementation MZCircleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 第一组
    MZSettingItem *item10 = [MZSettingSwitch itemWithTitle:@"圈子仅消息推送" ];
    MZSettingGroup *group1 = [MZSettingGroup groupWitnItems:@[item10]];
    group1.footer = @"我的fuck you";
    
    
    MZSettingItem *item20 = [MZSettingSwitch itemWithTitle:@"圈子仅wifi加载图片" ];
    MZSettingGroup *group2 = [MZSettingGroup groupWitnItems:@[item20]];
    
    [self.groups addObject:group1];
    [self.groups addObject:group2];
}


@end
