//
//  ViewController.m
//  QiDesignatedInitialize
//
//  Created by wangyongwang on 2019/4/23.
//  Copyright © 2019年 QiShare. All rights reserved.
//

#import "ViewController.h"
#import "DesinatedViewController/QiDesignatedSuperViewController.h"
#import "DesinatedViewController/QiDesignatedSubViewController.h"
#import "DesinatedViewController/QiDesignatedDefaultViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI {
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"QiDesignatedInitializer";
    
    CGFloat btnW = CGRectGetWidth(self.view.frame);
    CGFloat btnH = 40.0;
    
    UIButton *gotoDesignatedSubBtn = [[UIButton alloc] initWithFrame:CGRectMake(.0, 200.0, btnW, btnH)];
    [self.view addSubview:gotoDesignatedSubBtn];
    [gotoDesignatedSubBtn setTitle:@"去指定的初始化Sub页面" forState:UIControlStateNormal];
    [gotoDesignatedSubBtn addTarget:self action:@selector(gotoDesignatedSubButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    gotoDesignatedSubBtn.backgroundColor = [UIColor grayColor];
    
    UIButton *gotoDesignatedSuperBtn = [[UIButton alloc] initWithFrame:CGRectMake(.0, 300.0, btnW, btnH)];
    [self.view addSubview:gotoDesignatedSuperBtn];
    [gotoDesignatedSuperBtn setTitle:@"去指定的Super初始化页面" forState:UIControlStateNormal];
    [gotoDesignatedSuperBtn addTarget:self action:@selector(gotoDesignatedSuperButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    gotoDesignatedSuperBtn.backgroundColor = [UIColor grayColor];
    
    UIButton *gotoDesignatedDefaultBtn = [[UIButton alloc] initWithFrame:CGRectMake(.0, 400.0, btnW, btnH)];
    [self.view addSubview:gotoDesignatedDefaultBtn];
    [gotoDesignatedDefaultBtn setTitle:@"去指定的默认初始化页面" forState:UIControlStateNormal];
    [gotoDesignatedDefaultBtn addTarget:self action:@selector(gotoDesignatedDefaultButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    gotoDesignatedDefaultBtn.backgroundColor = [UIColor grayColor];
}

- (void)gotoDesignatedSuperButtonClicked:(UIButton *)sender {
    
    QiDesignatedSuperViewController *superVC = [[QiDesignatedSuperViewController alloc] initWithSomething:@"DesignatedSuperVC"];
    [self.navigationController pushViewController:superVC animated:YES];
}

- (void)gotoDesignatedSubButtonClicked:(UIButton *)sender {
    
//        [[QiDesignatedSubViewController alloc] init];
//        [QiDesignatedSubViewController new];
    QiDesignatedSubViewController *subVC = [[QiDesignatedSubViewController alloc] initWithSomething:@"DesignatedSubVC"];
    [self.navigationController pushViewController:subVC animated:YES];
}

- (void)gotoDesignatedDefaultButtonClicked:(UIButton *)sender {
    
    QiDesignatedDefaultViewController *defaultVC = [[QiDesignatedDefaultViewController alloc] initWithSomething:@"DesignatedDefaultVC"];
    defaultVC = [[QiDesignatedDefaultViewController alloc] init];
    defaultVC = [QiDesignatedDefaultViewController new];
    [self.navigationController pushViewController:defaultVC animated:YES];
}




@end
