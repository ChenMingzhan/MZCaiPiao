//
//  MZhelpViewController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZhelpViewController.h"

#import "MZhelp.h"

#import "MZWebViewController.h"

#import "MZBaseNavController.h"


@interface MZhelpViewController ()

@property (nonatomic,strong) NSArray *helps;

@end

@implementation MZhelpViewController
#pragma mark - 懒加载数组
- (NSArray *)helps {
    if (_helps == nil) {
        _helps = [MZhelp helps];
    }
    return _helps;
}
-(instancetype)init
{
return [super initWithStyle:UITableViewStylePlain];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *temp = [NSMutableArray array];
    
    for (MZhelp *help in self.helps) {
        
       MZSettingArrow *item = [MZSettingArrow itemWithTitle:help.title];
        
       [item setOperationBlock:^{
           
           // 跳到网页界面
           MZWebViewController *htmlVc = [[MZWebViewController alloc] init];
           
           // 传递帮助模型
           htmlVc.help = help;
           
           // 创建导航控制器
            MZBaseNavController *nav = [[MZBaseNavController alloc] initWithRootViewController:htmlVc] ;
           
           [self presentViewController:nav animated:YES completion:nil];
           
       }];
        
        [temp addObject:item];
    }
   
    MZSettingGroup *group = [MZSettingGroup groupWitnItems:temp];
    
    // 将组模型添加到数组中
    [self.groups addObject:group];
}

@end
