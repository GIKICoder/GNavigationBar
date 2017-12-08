//
//  ViewController1.m
//  GNavigationBarDemo
//
//  Created by GIKI on 2017/12/7.
//  Copyright © 2017年 GIKI. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1.0];
    GNavigationItem *back = [GNavItemFactory createImageButton:[UIImage imageNamed:@"back01"] highlightImage:nil target:self selctor:@selector(back)];
    self.navigationBar.leftNavigationItem = back;
    
    self.navigationBar.title = @"导航栏中间的text";
    
    GNavigationItem *close = [GNavItemFactory createImageButton:[UIImage imageNamed:@"close01"] highlightImage:nil target:self selctor:@selector(back)];
    [self.navigationBar addLeftItem:close];
    
    GNavigationItem *more = [GNavItemFactory createTitleButton:@"按钮" titleColor:[UIColor blackColor] highlightColor:[UIColor redColor] target:self selctor:@selector(more)];
    GNavigationItem *more2 = [GNavItemFactory createTitleButton:@"按钮2" target:self selctor:@selector(more)];
    self.navigationBar.rightNavigaitonItems = @[more,more2];
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)more
{}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
