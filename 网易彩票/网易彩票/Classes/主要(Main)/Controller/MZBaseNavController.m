//
//  MZBaseNavController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/18.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZBaseNavController.h"


@interface MZBaseNavController ()

@end

@implementation MZBaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
//这个方法是在类第一次创建对象的时候调用
// 先调用父类的initialize 然后再调用自己的initialize
+(void)initialize
{
    if (self==[MZBaseNavController class]) {
        
        //获得整个项目中所有的UINavigationBar 对象
        UINavigationBar *navBar = [UINavigationBar appearance];
        
        [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
        
        
        NSDictionary *dit = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
        [navBar setTitleTextAttributes:dit];
        
        
        
        //获得全局的导航条返回按钮
        UIBarButtonItem *btnItem = [UIBarButtonItem appearance];
        NSDictionary *ditItem = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
//
        [btnItem setTitleTextAttributes:ditItem forState:UIControlStateNormal];
        
        //设置返回箭头颜色
        [navBar setTintColor:[UIColor whiteColor]];
        
//         navBar.tintColor = [UIColor whiteColor];
        
    }

}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    viewController.hidesBottomBarWhenPushed =YES;
    [super pushViewController:viewController animated:animated];

    
}

@end
