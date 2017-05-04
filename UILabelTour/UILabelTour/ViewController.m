//
//  ViewController.m
//  UILabelTour
//
//  Created by ifnot on 2017/5/4.
//  Copyright © 2017年 ifnot.me. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)createUI {
    UILabel* label = [[UILabel alloc] init];
    
    label.text = @"你好, 世界!abcdefghijk \
    你好, 世界!abcdefghijk \
    你好, 世界!abcdefghijk";
    
    label.backgroundColor = [UIColor clearColor];
    
    label.frame = CGRectMake(100, 100, 200, 200);
    
    [self.view addSubview:label];
    
    label.textColor = [UIColor grayColor];
    
    label.font = [UIFont systemFontOfSize:22];
    
    label.shadowColor = [UIColor blueColor];
    
    label.shadowOffset = CGSizeMake(3, 3);
    
    label.numberOfLines = 0;
    
    label.textAlignment = NSTextAlignmentCenter;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
