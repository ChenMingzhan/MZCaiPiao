//
//  MZKeyBoardView.h
//  网易彩票
//
//  Created by 铭铭 on 16/3/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MZKeyBoardView;
@protocol MZMZKeyBoardDelegate <NSObject>

- (void)keyboardView:(MZKeyBoardView *)keyboardView dateChanged:(UIDatePicker *)datePicker withFlag:(BOOL)flag;

@end

@interface MZKeyBoardView : UIView

+(instancetype)keyboardView;

-(void)show;

@property (nonatomic,copy) NSString *currentDate;

////传值，回调
//@property (nonatomic, copy) void (^datePickerBlock)(UIDatePicker *datePicker,BOOL flag);
@property (nonatomic, weak) id<MZMZKeyBoardDelegate> mydelegate;


@property (nonatomic, weak) id itemdestination;

@end
