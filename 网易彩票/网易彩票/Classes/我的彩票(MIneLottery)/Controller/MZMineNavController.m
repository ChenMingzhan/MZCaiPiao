//
//  MZMineNavController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/18.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZMineNavController.h"
#import "MZSettingViewController.h"
@interface MZMineNavController ()

@end

@implementation MZMineNavController

-(void)viewDidLoad
{
//设置左按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"zixunBarFlat"] forState:UIControlStateNormal];
    [btn setTitle:@"客服" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 80, 44);
    [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
 //设置右按钮
    UIButton *Setbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [Setbtn setImage:[UIImage imageNamed:@"Mylottery_config"] forState:UIControlStateNormal];
    Setbtn.frame = CGRectMake(0, 0, 80, 44);
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:Setbtn];
    [Setbtn addTarget:self action:@selector(SetBtn) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIImage *loginImage = [UIImage imageNamed:@"login_button_login_normal"];
    //处理背景图片
    CGFloat top = loginImage.size.width * 0.5;
    CGFloat left = loginImage.size.height *0.5;
    CGFloat bottom = top;
    CGFloat right= left;
    
    UIEdgeInsets insets = UIEdgeInsetsMake(top, left, bottom, right);
    //拉伸图片
    loginImage = [loginImage resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
}


-(void)SetBtn{
    MZSettingViewController *SetVc = [[MZSettingViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [self.navigationController pushViewController:SetVc animated:YES];
}

@end
