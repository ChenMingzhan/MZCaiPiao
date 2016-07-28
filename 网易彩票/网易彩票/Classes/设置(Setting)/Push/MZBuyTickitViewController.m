//
//  MZBuyTickitViewController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/22.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZBuyTickitViewController.h"

@interface MZBuyTickitViewController ()

@end

@implementation MZBuyTickitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //
    MZSettingSwitch *item10 = [MZSettingSwitch itemWithTitle:@"定时醒" ];
    MZSettingGroup *group1 = [MZSettingGroup groupWitnItems:@[item10]];
    group1.footer = @"彩票 彩票";
    
    [item10 setSwitchBlock:^(BOOL on) {
        
        if (on) {
            
            MZSettingSwitch *item20 = [MZSettingSwitch itemWithTitle:@"定时提醒" ];
            MZSettingGroup *group2 = [MZSettingGroup groupWitnItems:@[item20]];
            group2.items=@[item20];
            [self.groups addObject:group2];
            
            MZSettingSwitch *item30 = [MZSettingSwitch itemWithTitle:@"提醒" ];
            MZSettingGroup *group3 = [MZSettingGroup groupWitnItems:@[item30]];
            group3.items = @[item30];
            [self.groups addObject:group3];
            
            //需要插入第一组和第二组
            NSMutableIndexSet *set = [NSMutableIndexSet indexSetWithIndex:1];
            [set addIndex:2];
            [self.tableView insertSections:set withRowAnimation:UITableViewRowAnimationNone];
        }else
        {
        
             if (self.groups.count == 1) return ;
            [self.groups removeLastObject];
            [self.groups removeLastObject];
            
           NSMutableIndexSet *set = [NSMutableIndexSet indexSetWithIndex:1];
           [set addIndex:2];
            [self.tableView deleteSections:set withRowAnimation:UITableViewRowAnimationFade];;
        }
        
    }];
    

        group1.items = @[item10];
      [self.groups addObject:group1];
      //如果这个开关是开的
    item10.SwitchBlock(item10.on);
    
}



@end
