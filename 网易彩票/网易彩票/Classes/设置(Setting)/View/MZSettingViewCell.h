//
//  MZSettingViewCell.h
//  网易彩票
//
//  Created by 铭铭 on 16/3/21.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MZSettingItem.h"

@interface MZSettingViewCell : UITableViewCell

+(instancetype)SettingCell:(UITableView *)tableview;

@property (nonatomic, strong) MZSettingItem *item;

//隐藏底部分割线
@property (nonatomic, assign) BOOL *hidenLine;



@end
