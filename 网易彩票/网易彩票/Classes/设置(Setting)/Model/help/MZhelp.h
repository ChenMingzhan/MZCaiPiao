//
//  MZhelp.h
//  网易彩票
//
//  Created by 铭铭 on 16/3/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MZhelp : NSObject

@property (nonatomic,copy) NSString *title;

@property (nonatomic,copy) NSString *html;

@property (nonatomic,copy) NSString *Id;

+ (NSArray *)helps;
@end
