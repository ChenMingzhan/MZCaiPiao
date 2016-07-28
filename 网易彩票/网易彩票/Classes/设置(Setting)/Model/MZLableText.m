//
//  MZLableText.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZLableText.h"

@implementation MZLableText

+(instancetype)itemWithTitle:(NSString *)title andrightText:(NSString *)text
{
    MZLableText *item = [self itemWithTitle:title];
    item.rightText = text;
    return item;
}

@end
