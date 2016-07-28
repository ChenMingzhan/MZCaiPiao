//
//  MZNewFeatureViewController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/28.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZNewFeatureViewController.h"
#import "MZBaseTabBarController.h"

@interface MZNewFeatureViewController ()<UIScrollViewDelegate>
@property (nonatomic,weak) UIPageControl *pageControl;
@end

@implementation MZNewFeatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    
    scrollView.delegate=self;
    
    [self.view addSubview:scrollView];
    
    
    CGFloat imageW = self.view.frame.size.width;
    CGFloat imageH = self.view.frame.size.height;
    CGFloat imageY = 0;
    
    for (int i = 0; i < 3; ++i) {
        
        CGFloat imageX = i *imageW;
        
        UIImageView *imageView = [[UIImageView alloc] init];
        
        imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
        
        [scrollView addSubview:imageView];
        
        
        NSString *imageName;
        if ([UIScreen mainScreen].bounds.size.height>=568) {
            imageName = [NSString stringWithFormat:@"guide%d-568h.jpg",i+1];
        }else
        {
            imageName = [NSString stringWithFormat:@"guide%d.jpg",i+1];
        }
        NSString *path = [[NSBundle mainBundle]pathForResource:imageName ofType:nil];
        UIImage *image = [[UIImage alloc] initWithContentsOfFile:path];
        imageView.image = image;
        
        if (i==2) {
            
            imageView.userInteractionEnabled=YES;
            
            UIButton *enterbtn = [UIButton buttonWithType:UIButtonTypeCustom];
            
            //设置图片--png图片可以通过这种方式进行加载
            [enterbtn setBackgroundImage:[UIImage imageNamed:@"guide_start@2x.png"] forState:UIControlStateNormal];
            
            //设置frame
            enterbtn.bounds = CGRectMake(0, 0, enterbtn.currentBackgroundImage.size.width,enterbtn.currentBackgroundImage.size.height);
            
            enterbtn.center = CGPointMake(self.view.center.x, self.view.frame.size.height * 0.80);
            
            [imageView addSubview:enterbtn];
            
            //添加点击事件
            [enterbtn addTarget:self action:@selector(enterBtnClick) forControlEvents:UIControlEventTouchUpInside];
        }
        
        
            
      
    }
    
    scrollView.contentSize = CGSizeMake(3 * imageW, imageH);
    
    scrollView.bounces=NO;
    
    scrollView.pagingEnabled=YES;
    
    scrollView.showsHorizontalScrollIndicator=NO;
    
    
    UIPageControl *page = [[UIPageControl alloc] init];
    
    page.frame = CGRectMake(0, 0, 110, 37);
    
    page.center = CGPointMake(self.view.center.x, self.view.frame.size.height * 0.9);
    
    page.numberOfPages=3;
    
    page.tintColor = [UIColor redColor];
    page.currentPageIndicatorTintColor = [UIColor whiteColor];
    
    self.pageControl=page;
    
    [self.view addSubview:page];
}


-(void)enterBtnClick{

    UIApplication *app = [UIApplication sharedApplication];
    UIWindow *window = app.keyWindow;
    
    MZBaseTabBarController *baseVc = [[MZBaseTabBarController alloc] init];
    
    window.rootViewController=baseVc;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat offsetX = scrollView.contentOffset.x;
    
    int page = offsetX / self.view.frame.size.width + 0.5;
    
    self.pageControl.currentPage=page;
}

@end
