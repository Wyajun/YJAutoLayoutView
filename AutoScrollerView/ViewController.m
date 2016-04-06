//
//  ViewController.m
//  AutoScrollerView
//
//  Created by 王亚军 on 16/4/6.
//  Copyright © 2016年 王亚军. All rights reserved.
//

#import "ViewController.h"
#import "YJAutoLayoutView.h"
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatview2];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)creatview1 {
    YJAutoLayoutView *layoutView = [[YJAutoLayoutView alloc] init];
    [layoutView setContentSize:CGSizeMake(375, 0) viewType:AutoLayoutViewTypeV];
    [self.view addSubview:layoutView];
    [layoutView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsZero);
    }];
    
    for (int i = 0; i < 10; i++) {
        UIView *backView = [[UIView alloc] init];
        backView.backgroundColor = [UIColor redColor];
        [layoutView addAutoLayoutViewV:backView height:50];
    }
    
    UIView *backView = [[UIView alloc] init];
    backView.backgroundColor = [UIColor greenColor];
    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(375);
    }];
    [layoutView addAutoLayoutViewV:backView height:AuotLayoutViewAutoHeight];
    [layoutView setAutoLayoutView:backView content:1000];
    
    
}
-(void)creatview2 {
    YJAutoLayoutView *layoutView = [[YJAutoLayoutView alloc] init];
    [layoutView setContentSize:CGSizeMake(0, 300) viewType:AutoLayoutViewTypeH];
    [self.view addSubview:layoutView];
    [layoutView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsZero);
    }];
    
    for (int i = 0; i < 10; i++) {
        UIView *backView = [[UIView alloc] init];
        backView.backgroundColor = [UIColor redColor];
        [layoutView addAutoLayoutViewH:backView width:50];
    }
    
    UIView *backView = [[UIView alloc] init];
    backView.backgroundColor = [UIColor greenColor];
    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(375);
    }];
    [layoutView addAutoLayoutViewH:backView width:AuotLayoutViewAutoWidth];
    [layoutView setAutoLayoutView:backView content:375*2];
    
}
@end
