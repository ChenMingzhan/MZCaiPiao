//
//  MZSettingViewCell.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/21.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZSettingViewCell.h"
#import "MZSettingArrow.h"
#import "MZSettingSwitch.h"
#import "MZLableText.h"

@interface MZSettingViewCell ()
// 箭头
@property (strong, nonatomic) UIImageView *arrowView;
// 开关
@property (strong, nonatomic) UISwitch *stView;
// 分隔线
@property (nonatomic, strong) UIView *lineView;
//
@property (nonatomic, strong) UILabel *labelView;


@end

@implementation MZSettingViewCell

#pragma mark --懒加载
-(UIImageView *)arrowView
{
    if (!_arrowView) {
        _arrowView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_right"]];
    }
    return _arrowView;
}

-(UISwitch *)stView
{
    if (!_stView) {
        _stView = [[UISwitch alloc] init];
        
        [_stView addTarget:self action:@selector(switchClick:) forControlEvents:UIControlEventValueChanged];
    }
    return _stView;
}
//分割线
-(UIView *)lineView
{
    if (!_lineView) {
        _lineView= [[UIView alloc] init];
        _lineView.backgroundColor = [UIColor redColor];
        _lineView.alpha = 0.3;
    }
    return _lineView;
}

-(UILabel *)labelView
{
    if (!_labelView) {
        _labelView = [[UILabel alloc] init];
        _labelView.frame = CGRectMake(0, 0, 100, 40);
        _labelView.textAlignment = NSTextAlignmentRight;
    }
    return _labelView;
}



//开关按钮传值
-(void)switchClick:(UISwitch *)switchView
{
//    [MZSaveDataTool saveBool:self.stView.on forKey:_item.title];
    
    MZSettingSwitch *st = (MZSettingSwitch *)self.item;
    st.on = switchView.on;
    
    if (st.SwitchBlock) {
        
        st.SwitchBlock(switchView.on);
    }
}

+(instancetype)SettingCell:(UITableView *)tableview
{
    NSString *ID = @"Setting";
    MZSettingViewCell *cell = [tableview dequeueReusableCellWithIdentifier:ID ];
    if (cell==nil) {
        
        cell = [[MZSettingViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
    
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self.contentView addSubview:self.lineView];
        
        // 设置字体
        [self setupTextFont];
        
        // 设置cell的背景颜色
        [self setupCellBgColor];
        
    }
    return self;
}

// 布局分割线
-(void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat lineX = self.textLabel.frame.origin.x;
    CGFloat lineH = 1;
    CGFloat lineY = CGRectGetHeight(self.frame)-lineH;
    CGFloat lineW = CGRectGetWidth(self.frame) -lineX;
    
    self.lineView.frame =CGRectMake(lineX, lineY, lineW, lineH);
}

// 设置字体
-(void)setupTextFont{

    self.textLabel.font = MZFont(14);
    self.textLabel.textColor = [UIColor colorWithRed:101/255.0 green:101/255.0 blue:101/255.0 alpha:1.0];
}
// 设置cell的背景颜色
-(void)setupCellBgColor
{
    UIView *bgView = [[UIView alloc]init];
    bgView.backgroundColor = [UIColor whiteColor];
    self.backgroundView = bgView;
    
    
    UIView *selectedView = [[UIView alloc]init];
    selectedView.backgroundColor = [UIColor redColor];
    self.selectedBackgroundView=selectedView;

}

// 判断是否隐藏cell的分割线
-(void)setHidenLine:(BOOL *)hidenLine
{
    _hidenLine=hidenLine;
    self.lineView.hidden=hidenLine;
}


-(void)setItem:(MZSettingItem *)item
{
    _item = item;
    
   //设置数据
    [self setData];

    [self setArrowWithSwitch];
}

-(void)setData
{
    self.textLabel.text = _item.title;
    
    if (self.item.icon) self.imageView.image = [UIImage imageNamed:self.item.icon];
     
    self.detailTextLabel.text = _item.subTitle;

}

-(void)setArrowWithSwitch
{
    
    // 设置cell的选中样式
    self.selectionStyle = ([_item isKindOfClass:[MZSettingSwitch class]]) ? UITableViewCellSelectionStyleNone:UITableViewCellSelectionStyleDefault;
    
    if ([_item isKindOfClass:[MZSettingArrow class]]) {

        self.accessoryView = self.arrowView;
        
    }else if ([_item isKindOfClass:[MZSettingSwitch class]])
    {

//      self.stView.on = [MZSaveDataTool boolforKey:_item.title];
        MZSettingSwitch *st = (MZSettingSwitch *)self.item;
        
        self.stView.on = st.on;
        
        self.accessoryView = self.stView;
    }else if([_item isKindOfClass:[MZLableText class]])
    {
        MZLableText *text = (MZLableText *)self.item;
        
        self.labelView.text =text.rightText;
      self.accessoryView=self.labelView;
    }

}

@end
