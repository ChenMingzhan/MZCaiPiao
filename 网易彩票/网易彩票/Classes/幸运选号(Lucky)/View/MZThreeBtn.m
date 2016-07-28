//
//  MZThreeBtn.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/19.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZThreeBtn.h"

@implementation MZThreeBtn

+(instancetype)ThreeBtnView
{

    return [[[NSBundle mainBundle] loadNibNamed:@"MZThreeBtn" owner:nil options:nil] firstObject];
}

@end
