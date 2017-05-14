//
//  ViewController.m
//  NSTimeTour
//
//  Created by ifnot on 2017/5/14.
//  Copyright © 2017年 ifnot.me. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize timer = _timer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton* btn01 = [UIButton buttonWithType: UIButtonTypeSystem];
    btn01.frame = CGRectMake(100, 100, 80, 40);
    [btn01 setTitle:@"开始" forState:UIControlStateNormal];
    [btn01 addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn01];
    
    UIButton* btn02 = [UIButton buttonWithType: UIButtonTypeSystem];
    btn02.frame = CGRectMake(100, 200, 80, 40);
    [btn02 setTitle:@"停止" forState:UIControlStateNormal];
    [btn02 addTarget:self action:@selector(stop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn02];
    
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(10, 10, 100, 100);
    view.backgroundColor = [UIColor orangeColor];
    view.tag = 101;
    [self.view addSubview:view];
}

- (void) timerStart {
    NSLog(@"xxx");
    UIView* view = [self.view viewWithTag:101];
    view.frame = CGRectMake(view.frame.origin.x+5, view.frame.origin.y+5, 100, 100);
}

- (void) start {
    NSLog(@"开始了...");

    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerStart) userInfo:nil repeats:YES];
}

- (void) stop {
    NSLog(@"结束了...");
    [_timer invalidate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
