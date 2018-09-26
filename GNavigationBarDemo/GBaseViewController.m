//
//  GBaseViewController.m
//  GNavigationBarDemo
//
//  Created by GIKI on 2017/12/7.
//  Copyright © 2017年 GIKI. All rights reserved.
//

#import "GBaseViewController.h"

@interface GBaseViewController ()

@end

@implementation GBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setHidden:YES];
    
    self.navigationBar = [GNavigationBar navigationBar];
    [self.view addSubview:self.navigationBar];
//    self.navigationBar.backgroundColor = [UIColor colorWithRed:248.0/255.0 green:249.0/255.0 blue:250.0/255.0 alpha:1];
   
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    [self.view bringSubviewToFront:self.navigationBar];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
