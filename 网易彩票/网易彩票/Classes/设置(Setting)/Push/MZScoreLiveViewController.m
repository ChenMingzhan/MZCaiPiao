//
//  MZScoreLiveViewController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZScoreLiveViewController.h"


@interface MZScoreLiveViewController ()<MZMZKeyBoardDelegate>

@property (nonatomic, weak)  MZLableText *item20 ;
@end

@implementation MZScoreLiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MZSettingItem *item10 = [MZSettingArrow itemWithTitle:@"圈子仅消息推送"];
    MZSettingGroup *group1 = [MZSettingGroup groupWitnItems:@[item10]];
    group1.items = @[item10];
    
    
    
    MZLableText *item20 = [MZLableText itemWithTitle:@"起始时间" andrightText:@"07:00"];
    MZSettingGroup *group2 = [MZSettingGroup groupWitnItems:@[item20]];

    __weak typeof(MZScoreLiveViewController)*weakSelf = self;
//        __weak MZScoreLiveViewController *weakSelf = self;
        __weak  MZLableText *weakitem20=item20;
    [item20 setOperationBlock:^{
        MZKeyBoardView *keyBoard = [MZKeyBoardView keyboardView];
        keyBoard.mydelegate = weakSelf;
        keyBoard.currentDate=@"07:00";
        keyBoard.itemdestination=weakitem20;
        [keyBoard show];

   
    }];
    group2.items = @[item20];
    
   
    MZLableText *item30 = [MZLableText itemWithTitle:@"结束时间" andrightText:@"12:00"];
      __weak MZLableText *weakItem30 = item30;
    [item30 setOperationBlock:^{
        MZKeyBoardView *keyBoard = [MZKeyBoardView keyboardView];
        keyBoard.mydelegate = weakSelf;
        keyBoard.currentDate=@"12:00";
        keyBoard.itemdestination=weakItem30;
        [keyBoard show];
        
    }];
    
    
    
    MZSettingGroup *group3 = [MZSettingGroup groupWitnItems:@[item30]];
    group3.items = @[item30];
    
    [self.groups addObject:group1];
    [self.groups addObject:group2];
    [self.groups addObject:group3];
    
}
- (void)keyboardView:(MZKeyBoardView *)keyboardView dateChanged:(UIDatePicker *)datePicker withFlag:(BOOL)flag
{
    if (flag==0) {
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"HH:mm";
        NSString *date = [formatter stringFromDate:datePicker.date];
        MZLableText *item = (MZLableText *)keyboardView.itemdestination;
       item.rightText=date;
    
    }else
    {
        MZLableText *item = (MZLableText *)keyboardView.itemdestination;
        item.rightText=keyboardView.currentDate;
    }
    [self.tableView reloadData];
}

@end
