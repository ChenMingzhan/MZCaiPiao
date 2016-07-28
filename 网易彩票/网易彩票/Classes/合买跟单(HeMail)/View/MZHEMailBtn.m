//
//  MZHEMailBtn.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/19.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZHEMailBtn.h"

@implementation MZHEMailBtn

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat btnW = self.frame.size.width;
    CGFloat btnH = self.frame.size.height;
    
    CGFloat imageW = self.imageView.image.size.width;
    CGFloat imageH = self.imageView.image.size.height;
    
    CGFloat titleW = self.titleLabel.frame.size.width;
    
    CGFloat titleX = (btnW-titleW-imageW-5) * 0.5;
    
    self.titleLabel.frame = CGRectMake(titleX, 0, titleW, btnH);
    
    CGFloat imageX = 5+titleX+titleW;
    CGFloat imageY = (btnH - imageH) *0.5;
    
    self.imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
}

@end
