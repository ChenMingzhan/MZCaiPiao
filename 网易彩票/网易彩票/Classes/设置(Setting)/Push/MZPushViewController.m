//
//  MZPushViewController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/21.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZPushViewController.h"

#import "MZOpenbonusViewController.h"
#import "MZCircleViewController.h"
#import "MZBuyTickitViewController.h"
#import "MZScoreLiveViewController.h"

@interface MZPushViewController ()


@end

@implementation MZPushViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    MZSettingItem *item10 = [MZSettingArrow itemWithTitle:@"开奖推送" anddesVc:[MZOpenbonusViewController class]];
    MZSettingItem *item11 = [MZSettingArrow itemWithTitle:@"比分直播推送" anddesVc:[MZScoreLiveViewController class]];
    MZSettingItem *item12 = [MZSettingArrow itemWithTitle:@"中奖动画"];
    MZSettingItem *item13 = [MZSettingArrow itemWithTitle:@"购彩提醒" anddesVc:[MZBuyTickitViewController class]];
    MZSettingItem *item14 = [MZSettingArrow itemWithTitle:@"圈子推送" anddesVc:[MZCircleViewController class]];
    MZSettingGroup *group1 = [MZSettingGroup groupWitnItems:@[item10,item11,item12,item13,item14]];
    // 将组模型添加到groups数组中
   [self.groups addObject:group1];
   
}


@end
