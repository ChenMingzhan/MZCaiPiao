//
//  MZHeMailNavController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/18.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZHeMailNavController.h"
#import "MZHEMailBtn.h"

@interface MZHeMailNavController ()

@property (nonatomic, strong) UIView  *menView;

@end

@implementation MZHeMailNavController

//懒加载
-(UIView *)menView
{
    if (!_menView) {
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 200)];
        view.backgroundColor =[UIColor blueColor];
        _menView=view;
    }
    return _menView;
}


- (IBAction)HemaiBtn:(UIButton *)sender {
    //旋转图标
    [UIView animateWithDuration:0.3 animations:^{
        
    if (CGAffineTransformIsIdentity(sender.imageView.transform)) {
            
            sender.imageView.transform= CGAffineTransformMakeRotation(M_PI);
        }else
        {
            sender.imageView.transform = CGAffineTransformIdentity;
        }
        
    }];
  
    //下拉菜单
    if (CGAffineTransformEqualToTransform(sender.imageView.transform, CGAffineTransformIdentity))
    {
        
        CGRect frame= self.menView.frame;
        
        frame.size.height = -frame.size.height;
        
        [UIView animateWithDuration:0.5 animations:^{
             self.menView.frame = frame;
        } completion:^(BOOL finished) {
            [self.menView removeFromSuperview];
            self.menView = nil;
        }];
        
    }else
    {
         [self.view addSubview:self.menView];
    }
    
    
   
    
}


@end
