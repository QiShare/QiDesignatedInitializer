//
//  QiDesignatedSubViewController.m
//  QiDesignatedInitialize
//
//  Created by wangyongwang on 2019/4/23.
//  Copyright © 2019年 QiShare. All rights reserved.
//
// 参考学习网址:
// https://www.cnblogs.com/taintain1984/p/3399625.html
// https://stackoverflow.com/questions/16013238/cannot-assign-to-self-out-of-a-method-in-the-init-family
//

#import "QiDesignatedSubViewController.h"

static NSString *const kExceptionName = @"初始化方法有误";
static NSString *const kExceptionReason = @"请使用initWithSomething:进行初始化";

@interface QiDesignatedSubViewController ()

/*! @brief 导航栏title */
@property (nonatomic, copy) NSString *navTitle;

@end

@implementation QiDesignatedSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self commonInit];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)commonInit {
    
    self.navigationItem.title = _navTitle;
}

+ (instancetype)new {
    
    @throw [[self class] initExceptioin];
    return nil;
}

- (instancetype)init {
    
    @throw [[self class] initExceptioin];
    return nil;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    @throw [[self class] initExceptioin];
    return nil;
}

- (instancetype)initWithSomething:(id)someThing {
    
    self = [super init];
    if (!self) {
        return nil;
    }
    _navTitle = someThing;
    return self;
}

+ (NSException *)initExceptioin {
    
    return [NSException exceptionWithName:kExceptionName reason:kExceptionReason userInfo:nil];
}

@end
