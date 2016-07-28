//
//  MZBaseSettingViewController.h
//  网易彩票
//
//  Created by 铭铭 on 16/3/21.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MZSettingItem.h"
#import "MZSettingGroup.h"
#import "MZSettingViewCell.h"
#import "MZSettingArrow.h"
#import "MZSettingSwitch.h"
#import "MZLableText.h"
#import "MZKeyBoardView.h"

@interface MZBaseSettingViewController : UITableViewController
//装所有的数组
@property (nonatomic, strong,readonly) NSMutableArray *groups;

- (instancetype)initWithStyle:(UITableViewStyle)style;
@end
