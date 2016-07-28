//
//  MZLuckyNavController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/18.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZLuckyNavController.h"
#import "MZturntableController.h"

@interface MZLuckyNavController ()
// 背景图片
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;
//灯
@property (weak, nonatomic) IBOutlet UIImageView *lightView;

@end

@implementation MZLuckyNavController

-(void)viewDidLoad
{
    [super viewDidLoad];
    // 加载背景图片
    NSString *path;
    if ([UIScreen mainScreen].bounds.size.height>568) {
     path = [[NSBundle mainBundle] pathForResource:@"luck_entry_background-568h@2x.jpg" ofType:nil];
    }else
    {
      path = [[NSBundle mainBundle] pathForResource:@"luck_entry_background@2x.jpg" ofType:nil];
    }
    
    self.backgroundImage.image = [UIImage imageWithContentsOfFile:path];   
    
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    UIImage *image1 = [UIImage imageNamed:@"lucky_entry_light0"];
    UIImage *image2 = [UIImage imageNamed:@"lucky_entry_light1"];
    self.lightView.animationImages = @[image1,image2];
    self.lightView.animationDuration=0.5;
    self.lightView.animationRepeatCount = MAXFLOAT;
    [self.lightView startAnimating];

}
//跳转转盘
- (IBAction)turntableView:(UIButton *)sender {
    
    MZturntableController *turn = [[MZturntableController alloc] init];
    
    [self presentViewController:turn animated:YES completion:nil];
}


@end
