//
//  MZProuductViewCell.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZProuductViewCell.h"
#import "MZProduct.h"

@interface MZProuductViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *lableView;

@end
@implementation MZProuductViewCell


-(void)setModal:(MZProduct *)modal
{
    _modal=modal;
    
    modal.icon = [modal.icon stringByReplacingOccurrencesOfString:@"@2x" withString:@""];
    UIImage *image = [UIImage imageNamed:modal.icon];
    self.iconView.image =image;
    self.lableView.text =modal.title;
}

@end
