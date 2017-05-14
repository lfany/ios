//
//  ViewController.m
//  UISwitcherTour
//
//  Created by ifnot on 2017/5/14.
//  Copyright © 2017年 ifnot.me. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize switcher = _switcher;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _switcher = [[UISwitch alloc] init];
    _switcher.frame = CGRectMake(100, 100, 100, 100);
    
    _switcher.on = YES;
    [_switcher setOn:YES];
    
    [_switcher setOnTintColor:[UIColor greenColor]];
    [_switcher setThumbTintColor:[UIColor purpleColor]];
    [_switcher setTintColor:[UIColor orangeColor]];
    
    [_switcher addTarget:self action:@selector(switcherChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_switcher];
}

- (void) switcherChange {
    if (_switcher.on == YES){
        NSLog(@"State: On");
    } else {
        NSLog(@"State: OFF");
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
