//
//  MZSettingSwitch.h
//  网易彩票
//
//  Created by 铭铭 on 16/3/21.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZSettingItem.h"

@interface MZSettingSwitch : MZSettingItem

//点击开关的时候调用
@property (nonatomic, copy) void (^SwitchBlock)(BOOL on);

////代表开关的状态
@property (nonatomic, assign) BOOL on;

@end
