//
//  MZSaveDataTool.h
//  网易彩票
//
//  Created by 铭铭 on 16/3/22.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MZSaveDataTool : NSObject

+(void)saveBool:(BOOL)b forKey:(NSString *)key;

+(BOOL)boolforKey:(NSString *)key;

@end
