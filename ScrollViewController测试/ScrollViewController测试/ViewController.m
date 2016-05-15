//
//  ViewController.m
//  ScrollViewController测试
//
//  Created by 李泽宇 on 16/5/15.
//  Copyright © 2016年 丶信步沧桑. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"


@interface ViewController ()

@property (nonatomic, strong)UIScrollView *sc;
@property (nonatomic, strong)UIView *vv;

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self createUI];
}


- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    //    [self.view layoutIfNeeded];
    
    
    NSLog(@"dsfsdf");
}

- (void)createUI{
    
    
    [self.sc addSubview:self.vv];
    
    
    [self.vv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.sc.mas_top).offset(18);
        make.left.mas_equalTo(self.sc.mas_left);
        make.right.mas_equalTo(self.sc.mas_right);
        make.bottom.mas_equalTo(self.sc.mas_bottom);
        //        make.width.mas_equalTo(200);
        //        make.height.equalTo(@210);
        
    }];
    
    
}


- (UIScrollView *)sc {
    
    if (!_sc) {
        _sc = [UIScrollView new];
        _sc.backgroundColor = [UIColor orangeColor];
        _sc.contentSize = CGSizeMake(375, 900);
        
        [self.view addSubview:_sc];
        
        [_sc mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.bottom.mas_equalTo(self.view);
        }];
        
    }
    return _sc;
}

- (UIView *)vv {
    
    if (!_vv) {
        _vv = [UIView new];
        _vv.backgroundColor = [UIColor greenColor];
        
    }
    return _vv;
}


@end
