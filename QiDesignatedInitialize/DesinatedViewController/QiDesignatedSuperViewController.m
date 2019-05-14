//
//  QiDesignatedSuperViewController.m
//  QiDesignatedInitialize
//
//  Created by wangyongwang on 2019/4/23.
//  Copyright © 2019年 QiShare. All rights reserved.
//

#import "QiDesignatedSuperViewController.h"

@interface QiDesignatedSuperViewController ()

/*! @brief 导航栏title */
@property (nonatomic, copy) NSString *navTitle;

@end

@implementation QiDesignatedSuperViewController

- (instancetype)initWithSomething:(id)someThing {
    // Cannot assign to 'self' outside of a method in the init family
    // 指定初始化方法需要以 1. init开头 2. 并且init后边紧挨着地字母是大写的
    self = [super initWithNibName:nil bundle:nil];
    if (!self) {
        return nil;
    }
    _navTitle = someThing;
    [self commonInit];
    return self;
}

- (void)commonInit {
    
    self.navigationItem.title = _navTitle;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

/*
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (!self) {
        return nil;
    }
    return self;
}
 */




@end
