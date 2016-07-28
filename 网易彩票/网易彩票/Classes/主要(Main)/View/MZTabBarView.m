//
//  MZTabBarView.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/18.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZTabBarView.h"

@interface MZTabBarView ()

//选中按钮或者取消按钮
@property (nonatomic, weak) UIButton *btn;

@end

@implementation MZTabBarView

-(void)setImageNormalWith:(NSString *)imageNormal andImageSelected:(NSString *)imageSelect andIndex:(NSInteger)index
{
     UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];

    [btn setBackgroundImage:[UIImage imageNamed:imageNormal] forState:UIControlStateNormal];
    
    [btn setBackgroundImage:[UIImage imageNamed:imageSelect] forState:UIControlStateSelected];
    
     [self addSubview:btn];
    
    //绑定按钮选中事件
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
      btn.tag=index;
}


//-(instancetype)initWithFrame:(CGRect)frame
//{
//    if (self=[super initWithFrame:frame]) {
//        for (int i=0; i<5; i++) {
//            
//            UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//            
//           NSString *imageName = [NSString stringWithFormat:@"TabBar%d",i+1];
//            
//            [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
//            NSString *imageNameSelected = [NSString stringWithFormat:@"TabBar%dSel",i+1];
//            
//            [btn setBackgroundImage:[UIImage imageNamed:imageNameSelected] forState:UIControlStateSelected];
//            //绑定按钮选中事件
//            [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
//            
//            [self addSubview:btn];
//            
//            btn.tag=i;
//        }
//        
//    }
//    return self;
//}

-(void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat btnW = self.frame.size.width/5;
    CGFloat btnH = self.frame.size.height;
    CGFloat btnY=0;
    for (int i=0; i<self.subviews.count; i++) {
        
        UIButton *btn = self.subviews[i];
        
         CGFloat btnX = i * btnW;
        
        btn.frame = CGRectMake(btnX, btnY , btnW, btnH);
        // 默认选中第一个
        if (i==0) {
            [self btnClick:btn];
        }
    }

}

-(void)btnClick:(UIButton *)btn
{

    self.btn.selected=NO;
    
    btn.selected=YES;
    
    self.btn=btn;
   
    self.selectedBlock(btn.tag);
}

@end
