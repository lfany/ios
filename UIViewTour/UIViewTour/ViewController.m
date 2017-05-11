//
//  ViewController.m
//  UIViewTour
//
//  Created by ifnot on 2017/5/11.
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
    
    view.frame = CGRectMake(100, 100, 100, 200);
    
    view.backgroundColor = [UIColor blueColor];
    
    view.hidden = NO;
    
    view.alpha = 0.3;
    
    view.opaque = NO;
    
    [self.view addSubview:view];
    
    [view removeFromSuperview];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
