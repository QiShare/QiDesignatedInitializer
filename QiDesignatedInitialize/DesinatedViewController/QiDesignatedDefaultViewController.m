//
//  QiDesignatedDefaultViewController.m
//  QiDesignatedInitialize
//
//  Created by wangyongwang on 2019/4/23.
//  Copyright © 2019年 QiShare. All rights reserved.
//

#import "QiDesignatedDefaultViewController.h"

@interface QiDesignatedDefaultViewController ()

@property (nonatomic, strong) id something;

@end

@implementation QiDesignatedDefaultViewController

- (instancetype)initWithSomething:(id)someThing {
    
    self = [super init];
    if (!self) {
        return nil;
    }
    _something = someThing;
    return self;
}

- (instancetype)init {
    
    self = [super init];
    if (!self) {
        return nil;
    }
    [self commonInit];
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (!self) {
        return nil;
    }
    [self commonInit];
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    if (!self) {
        return nil;
    }
    [self commonInit];
    return self;
}

- (void)commonInit {
    
    _something = @"Default";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = _something;
    self.view.backgroundColor = [UIColor whiteColor];
}


@end
