//
//  MZSaveDataTool.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/22.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZSaveDataTool.h"

@implementation MZSaveDataTool


+(void)saveBool:(BOOL)b forKey:(NSString *)key
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setBool:b forKey:key];
    
    [defaults synchronize];
}


+(BOOL)boolforKey:(NSString *)key
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  return   [defaults boolForKey:key];
}
@end
