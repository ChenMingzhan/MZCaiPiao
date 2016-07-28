//
//  MZKeyBoardView.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZKeyBoardView.h"

@interface MZKeyBoardView ()

@property (nonatomic, weak) UIDatePicker *picker;

@property (nonatomic, weak)  UIToolbar *tool;
@end


@implementation MZKeyBoardView



+(instancetype)keyboardView
{
    return [[self alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {
        
        
        UIToolbar *tool = [[UIToolbar alloc] init];
        UIBarButtonItem *leftItem=[[UIBarButtonItem alloc] initWithTitle:@"确定" style:UIBarButtonItemStylePlain target:self action:@selector(comfirmAction)];
        leftItem.tintColor=[UIColor blueColor];
        UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
         UIBarButtonItem *rightItem=[[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(cancelAction)];
         rightItem.tintColor=[UIColor blueColor];
        tool.items=@[leftItem,item,rightItem,];
        [self addSubview:tool];
        self.tool=tool;
        
        UIDatePicker *picker = [[UIDatePicker alloc] init];
        
        picker.backgroundColor = [UIColor whiteColor];
        
        picker.datePickerMode =  UIDatePickerModeTime;
        //增加这句话就改为24小时
        picker.locale = [NSLocale systemLocale];
        
        picker.timeZone = [NSTimeZone timeZoneWithName:@"zh-Hans"];
        
        [picker addTarget:self action:@selector(datePickerChanged:) forControlEvents:UIControlEventValueChanged];
        
        [self addSubview:picker];
        self.picker =picker;
        
        
    }
    return self;
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    
    self.picker.frame = CGRectMake(0, self.frame.size.height - self.picker.frame.size.height,  self.frame.size.width, self.picker.frame.size.height);
    
    self.tool.frame = CGRectMake(0, self.frame.size.height - self.picker.frame.size.height-44,  self.frame.size.width, 44);
}

-(void)setCurrentDate:(NSString *)currentDate
{
    _currentDate=currentDate;
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm";
    
      //通过日期处理类--工具类
    NSCalendar *calender = [NSCalendar currentCalendar];
    NSDateComponents *cmps = [calender components: NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay fromDate:[NSDate date]];
    
     NSMutableString *string = [NSMutableString string];
    [string appendFormat:@"%zd-%zd-%zd %@",cmps.year,cmps.month,cmps.day,currentDate];
    NSDate *date = [formatter dateFromString:string];
    
    self.picker.date = date;
}

-(void)show
{
    UIApplication *app= [UIApplication sharedApplication];
    UIWindow *window = app.keyWindow;
    [window addSubview:self];
}

//取消
-(void)comfirmAction
{
    if ([self.mydelegate respondsToSelector:@selector(keyboardView:dateChanged:withFlag:)]) {
        [self.mydelegate keyboardView:self dateChanged:self.picker withFlag:NO];
    }
    [self dismiss];
    
}
//确定
-(void)cancelAction
{
    if ([self.mydelegate respondsToSelector:@selector(keyboardView:dateChanged:withFlag:)]) {
        [self.mydelegate keyboardView:self dateChanged:self.picker withFlag:YES];
    }
  [self dismiss];
    
}
//监听datepicker
-(void)datePickerChanged:(UIDatePicker *)datePicker
{
    if ([self.mydelegate respondsToSelector:@selector(keyboardView:dateChanged:withFlag:)]) {
        [self.mydelegate keyboardView:self dateChanged:self.picker withFlag:YES];
    }


}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismiss];
}

-(void)dismiss{
    
    [self removeFromSuperview];
}

@end
