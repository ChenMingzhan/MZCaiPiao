//
//  MZBaseSettingViewController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/21.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZBaseSettingViewController.h"

@interface MZBaseSettingViewController ()

////装所有的数组
@property (nonatomic, strong) NSMutableArray *groups;


@end

@implementation MZBaseSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"bg"].CGImage);
    
    // 隐藏分割线
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
     self.tableView.sectionFooterHeight = 0;

}
#pragma mark - -懒加载
- (NSMutableArray *)groups {
    if (!_groups) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}

#pragma mark - 重写init
- (instancetype)init {
    return [super initWithStyle:UITableViewStyleGrouped];
}

//- (instancetype)initWithStyle:(UITableViewStyle)style {
//    return [super initWithStyle:style];
//}



#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    MZSettingGroup *group = self.groups[section];
    return group.items.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    MZSettingViewCell *cell = [MZSettingViewCell SettingCell:tableView];
    
    MZSettingGroup *group =self.groups[indexPath.section];
    
    MZSettingItem *item = group.items[indexPath.row];
    
    cell.item = item;
    
    // 判断是否隐藏cell的分割线
    cell.hidenLine = (indexPath.row == group.items.count-1);
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    MZSettingGroup *group =self.groups[indexPath.section];
    
    MZSettingItem *item = group.items[indexPath.row];
    
//   判断如果block有值就调用block
    if (item.OperationBlock) {
        item.OperationBlock();
    }
    
    if ([item isKindOfClass:[MZSettingArrow class]]) {
    
        MZSettingArrow *arrowItem = (MZSettingArrow *)item;
        // 获得目标控制器的类名
        Class desVcClass = arrowItem.desVc;
        // 创建控制器
        UIViewController *desVC = [[desVcClass alloc] init];
        // 设置目标控制的标题
        desVC.title = item.title;
        
        [self.navigationController pushViewController:desVC animated:YES];
    }
    
   
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    MZSettingGroup *group1 = self.groups[section];
    
    return group1.footer;

}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{

    MZSettingGroup *group1 = self.groups[section];
    
    return group1.header;

}
@end
