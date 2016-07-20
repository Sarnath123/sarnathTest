//
//  ViewController.m
//  OC
//
//  Created by Sarnath RD on 16/7/18.
//  Copyright © 2016年 Sarnath. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UIWebView * webView;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	NSURL *url = [[NSBundle mainBundle] URLForResource:@"untitled" withExtension:@"html"];
	NSURLRequest *request = [NSURLRequest requestWithURL:url];
	
	self.webView = [[UIWebView alloc]init];
	self.webView.frame = self.view.bounds;

	self.webView.scrollView.scrollEnabled = NO;
	[self.webView loadRequest:request];
	[self.view addSubview:self.webView];
	/**
	 你个傻子
	 */
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
