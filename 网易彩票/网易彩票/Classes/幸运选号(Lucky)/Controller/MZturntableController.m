//
//  MZturntableController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/19.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZturntableController.h"
#import "MZThreeBtn.h"

#import "MZTabBarView.h"

#import "MZLuckyNavController.h"

@interface MZturntableController ()

@end

@implementation MZturntableController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:imageView];
    NSString *path;
    if ([UIScreen mainScreen].bounds.size.height>568) {
        path = [[NSBundle mainBundle] pathForResource:@"LuckyBackground-568h@2x.jpg" ofType:nil];
    }else
    {
        path = [[NSBundle mainBundle] pathForResource:@"LuckyBackground@2x.jpg" ofType:nil];
    }
    
    imageView.image = [UIImage imageWithContentsOfFile:path];
    
    MZThreeBtn *btn = [MZThreeBtn ThreeBtnView];
    btn.center = CGPointMake(self.view.center.x, 200);
    [self.view addSubview:btn];
    
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [closeBtn setImage:[UIImage imageNamed:@"button_close_white"] forState:UIControlStateNormal];
    
    closeBtn.frame = CGRectMake(100, 100, closeBtn.currentImage.size.width, closeBtn.currentImage.size.height);
    [self.view addSubview:closeBtn];

    [closeBtn addTarget:self action:@selector(ClickBtn) forControlEvents:UIControlEventTouchUpInside];
}
-(void)ClickBtn
{
    [self dismissViewControllerAnimated:YES completion:nil];

}


@end
