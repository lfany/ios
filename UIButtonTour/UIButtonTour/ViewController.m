//
//  ViewController.m
//  UIButtonTour
//
//  Created by ifnot on 2017/5/4.
//  Copyright © 2017年 ifnot.me. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)createBtn {
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeSystem];
    
    btn.frame = CGRectMake(100, 100, 100, 40);
    
    [btn setTitle:@"xxx" forState:UIControlStateNormal];
    [btn setTitle:@"yyy" forState:UIControlStateHighlighted];
    
//    btn.font = [UIFont systemFontOfSize:18];
//    [btn.titleLabel setFrame:CGRectMake(0, 0, 100, 100)];
//    btn.titleLabel.hidden = NO;
//    btn.titleLabel.text = @"xxxx";
//    btn.titleLabel.textColor = [UIColor orangeColor];
    
//    btn.titleLabel.backgroundColor = [UIColor greenColor];
    
    btn.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:btn];
}

- (void)createImagebtn {

    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 200, 100, 20);
    btn.backgroundColor = [UIColor orangeColor];
    
    UIImage* icon0 = [UIImage imageNamed:@"icon0.jpeg"];
    UIImage* icon1 = [UIImage imageNamed:@"icon1.jpeg"];
    
    [btn setImage:icon0 forState:UIControlStateNormal];
    [btn setImage:icon1 forState:UIControlStateHighlighted];
    
    [self.view addSubview:btn];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createBtn];
    [self createImagebtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
