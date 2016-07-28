//
//  MZHallNavController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/18.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZHallNavController.h"

@interface MZHallNavController ()

@end

@implementation MZHallNavController


-(void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"购彩大厅";
    
    //左按钮
    UIButton *buttonleft = [UIButton buttonWithType:UIButtonTypeCustom];
    
    UIImage *imageleft = [UIImage imageNamed:@"CS50_activity_image"];
    
    
    [buttonleft setBackgroundImage:imageleft forState:UIControlStateNormal];
    
    buttonleft.frame =CGRectMake(0, 0, imageleft.size.width, imageleft.size.height);
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:buttonleft];
    
    //右按钮
    UIButton *buttonright = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *imageright = [UIImage imageNamed:@"zixunBarFlat"];
   
    [buttonright setImage:imageright forState:UIControlStateNormal];
    
    buttonright.frame =CGRectMake(0, 0, 60, 44);
    
    [buttonright setTitle:@"咨询" forState:UIControlStateNormal];
    
    [buttonright setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    
    self.navigationItem.rightBarButtonItem= [[UIBarButtonItem alloc] initWithCustomView:buttonright];
    
}

@end
