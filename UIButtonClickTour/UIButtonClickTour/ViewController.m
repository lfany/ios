//
//  ViewController.m
//  UIButtonClickTour
//
//  Created by ifnot on 2017/5/7.
//  Copyright © 2017年 ifnot.me. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)createBtn{

    UIButton* btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 80, 40);
    btn.tag = 101;
    
    [btn setTitle:@"按钮" forState:UIControlStateNormal];

    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)createBtn2 {
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 200, 80, 40);
    btn.tag = 102;
    
    [btn setTitle:@"xxx" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn];
}

- (void)pressBtn:(UIButton*) btn {
    if(btn.tag == 101){
        NSLog(@"按钮按下了...");
    }else {
        NSLog(@"xxx");
    }
    }

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createBtn];
    [self createBtn2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
