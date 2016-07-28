//
//  MZLableText.h
//  网易彩票
//
//  Created by 铭铭 on 16/3/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZSettingItem.h"

@interface MZLableText : MZSettingItem

//右边内容
@property (nonatomic, copy) NSString *rightText;

+(instancetype)itemWithTitle:(NSString *)title andrightText:(NSString *)text;
@end
