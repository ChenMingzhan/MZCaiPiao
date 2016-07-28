//
//  MZOpenbonusViewController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/21.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZOpenbonusViewController.h"

@interface MZOpenbonusViewController ()

@end

@implementation MZOpenbonusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建item模型
    MZSettingItem *item21 = [MZSettingSwitch itemWithTitle:@"摇一摇机选" subTitle:@"每周二，四，日开奖"];
    MZSettingItem *item22 = [MZSettingSwitch itemWithTitle:@"声音效果" subTitle:@"每周二，四，日开奖"];
    MZSettingItem *item23 = [MZSettingSwitch itemWithTitle:@"购彩小助手" subTitle:@"每周二，四，日开奖"];
    MZSettingItem *item24 = [MZSettingSwitch itemWithTitle:@"摇一摇机选" subTitle:@"每周二，四，日开奖"];
    MZSettingItem *item25 = [MZSettingSwitch itemWithTitle:@"声音效果" subTitle:@"每周二，四，日开奖"];
    MZSettingItem *item26 = [MZSettingSwitch itemWithTitle:@"购彩小助手" subTitle:@"每周二，四，日开奖"];
    MZSettingItem *item27 = [MZSettingSwitch itemWithTitle:@"购彩小助手" subTitle:@"每周二，四，日开奖"];
    
    MZSettingGroup *group1 = [MZSettingGroup groupWitnItems:@[item21,item22,item23,item24,item25,item26,item27]];
    // 将组模型添加到groups数组中
    [self.groups addObject:group1];
    
    
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // 设置头部控件
    self.tableView.tableHeaderView = [[[NSBundle mainBundle] loadNibNamed:@"MZOpenbonus" owner:nil options:nil] lastObject];
    
}


@end
