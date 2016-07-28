
//
//  MZSettingItem.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/20.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZSettingItem.h"

@implementation MZSettingItem

+(instancetype)itemWithTitle:(NSString *)title andIcon:(NSString *)icon
{
    MZSettingItem *item = [[self alloc] init];
    
    item.title=title;
    
    item.icon = icon;
    
    return item;

}

+(instancetype)itemWithTitle:(NSString *)title
{
    return [self itemWithTitle:title andIcon:nil];

}

+(instancetype)itemWithTitle:(NSString *)title subTitle:(NSString *)subTitle{
    MZSettingItem *item = [self itemWithTitle:title];
    item.subTitle = subTitle;
    return item;
}
@end
