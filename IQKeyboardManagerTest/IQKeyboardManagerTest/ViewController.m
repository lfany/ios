//
//  ViewController.m
//  IQKeyboardManagerTest
//
//  Created by ifnot on 2017/5/14.
//  Copyright © 2017年 ifnot.me. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, 100, 100);
    
    view.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:view];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
