//
//  MZSettingViewController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/20.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZSettingViewController.h"

#import "MZPushViewController.h"
#import "MZProductController.h"
#import "MZhelpViewController.h"
#import "MBProgressHUD+PKX.h"

@interface MZSettingViewController ()


@end

@implementation MZSettingViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"设置";
    // 第一组
    MZSettingItem *item10 = [MZSettingArrow itemWithTitle:@"使用兑换码" andIcon:@"RedeemCode"];
    MZSettingGroup *group1 = [MZSettingGroup groupWitnItems:@[item10]];
    
    MZSettingItem *item20 = [MZSettingArrow itemWithTitle:@"推送提醒" andIcon:@"MorePush" anddesVc:[MZPushViewController class]];
    
    MZSettingItem *item21 = [MZSettingSwitch itemWithTitle:@"摇一摇机选" andIcon:@"handShake"];
    MZSettingItem *item22 = [MZSettingSwitch itemWithTitle:@"声音效果" andIcon:@"sound_Effect"];
    MZSettingItem *item23 = [MZSettingSwitch itemWithTitle:@"购彩效果" andIcon:@"More_LotteryRecommend"];
    MZSettingGroup *group2 = [MZSettingGroup groupWitnItems:@[item20,item21,item22,item23]];
    
    MZSettingItem *item30 = [MZSettingArrow itemWithTitle:@"检查更新" andIcon:@"MoreUpdate"];
    [item30 setOperationBlock:^{
        
        [MBProgressHUD showMessage:@"玩命检查中.."];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [MBProgressHUD hideHUD];
            
            [MBProgressHUD showSuccess:@"恭喜你!程序关闭中..."];
        
        });
        
    }];
    
    
    MZSettingItem *item31 = [MZSettingArrow itemWithTitle:@"帮助" andIcon:@"MoreHelp" anddesVc:[MZhelpViewController class]];
    MZSettingItem *item32 = [MZSettingArrow itemWithTitle:@"分享" andIcon:@"MoreShare"];
    MZSettingItem *item33 = [MZSettingArrow itemWithTitle:@"产品推荐" andIcon:@"MoreNetease" anddesVc:[MZProductController class]];
    
    MZSettingItem *item34 = [MZSettingArrow itemWithTitle:@"关于" andIcon:@"MoreAbout"];
    MZSettingGroup *group3 = [MZSettingGroup groupWitnItems:@[item30,item31,item32,item33,item34]];
    
    [self.groups addObject:group1];
    [self.groups addObject:group2];
    [self.groups addObject:group3];
}

@end
