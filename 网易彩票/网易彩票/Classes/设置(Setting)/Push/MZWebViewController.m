//
//  MZWebViewController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZWebViewController.h"

@interface MZWebViewController ()<UIWebViewDelegate>

@end

@implementation MZWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView *web = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    web.delegate=self;
    
    NSString *path = [[NSBundle mainBundle] pathForResource:self.help.html ofType:nil];
    
    //加载本地
    NSURL *url = [NSURL fileURLWithPath:path];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [web loadRequest:request];
    
    [self.view addSubview:web];
    
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(dimiss)];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView;
{
    NSString *string = [NSString stringWithFormat:@"window.location.herf = '#%@'",self.help.Id];
    //OC代码调用JavaScript代码
    [webView stringByEvaluatingJavaScriptFromString:string];
}
-(void)dimiss
{

    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
