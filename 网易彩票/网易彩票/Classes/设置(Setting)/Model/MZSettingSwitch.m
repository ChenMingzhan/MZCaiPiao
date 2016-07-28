//
//  MZSettingSwitch.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/21.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZSettingSwitch.h"

@implementation MZSettingSwitch

-(void)setOn:(BOOL)on
{
    _on=on;
    [MZSaveDataTool saveBool:on forKey:self.title];
    
}

-(void)setTitle:(NSString *)title
{
    
     [super setTitle:title];
    
   self.on = [MZSaveDataTool boolforKey:self.title];
   
    
}
@end
