//
//  MZBaseTabBarController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/18.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZBaseTabBarController.h"
#import "MZTabBarView.h"

@interface MZBaseTabBarController ()

@property (nonatomic,weak)MZTabBarView *tabBarView;

@end

@implementation MZBaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    MZTabBarView *tabBarView = [[MZTabBarView alloc] init];
    
    self.tabBarView = tabBarView;
    
    tabBarView.frame = self.tabBar.bounds;
    
    [self.tabBar addSubview:tabBarView];
        //Blok回传控制器
    [tabBarView setSelectedBlock:^(NSInteger index) {
        self.selectedIndex=index;
    }];
    
    //    tabBarView.selectedBlock=^(NSInteger index){
    //        self.selectedIndex=index;
    //    };
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"StoryBoard" ofType:@"plist"];
    
    NSArray *array = [NSArray arrayWithContentsOfFile:filePath];
    
    for (NSDictionary *dit in array) {
        
        NSString *name= dit[@"fileName"];
        
        UIStoryboard *sb = [UIStoryboard storyboardWithName:name bundle:nil];
        UIViewController *nav = sb.instantiateInitialViewController;
        
        [self addChildViewController:nav];
    }
    
    for (int i=0; i<self.childViewControllers.count; i++) {
        
        NSString *imageName = [NSString stringWithFormat:@"TabBar%d",i+1];
        
        NSString *imageNameSelected = [NSString stringWithFormat:@"TabBar%dSel",i+1];
        
        [self.tabBarView setImageNormalWith:imageName andImageSelected:imageNameSelected andIndex:i];
    }
    
}


-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [self.tabBar bringSubviewToFront:self.tabBarView];
}

@end
