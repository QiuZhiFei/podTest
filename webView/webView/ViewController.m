//
//  ViewController.m
//  webView
//
//  Created by 仇志飞 on 15/2/8.
//  Copyright (c) 2015年 ZhiFei(qiuzhifei521@gmail.com). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (assign, nonatomic) NSInteger typeNumber;
@end

@implementation ViewController

- (void)setTypeNumber:(NSInteger)typeNumber
{
    _typeNumber = typeNumber;
    
    // 这里面所有的变量，应该是全局变量，因为set方法可以被执行多次
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://item.taobao.com/item.htm?spm=a1z10.5.w4002-3404645960.14.Badaf2&id=19444524344"]];
    [self.webView loadRequest:request];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
