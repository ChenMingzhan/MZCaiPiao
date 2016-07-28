//
//  MZSettingGroup.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/20.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZSettingGroup.h"

@implementation MZSettingGroup
+(instancetype)groupWitnItems:(NSArray *)items
{
    MZSettingGroup *group = [[MZSettingGroup alloc] init];
    
    group.items = items;

    return group;
}
@end
