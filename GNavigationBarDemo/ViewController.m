//
//  ViewController.m
//  navigationBarDemo
//
//  Created by GIKI on 2017/12/7.
//  Copyright © 2017年 GIKI. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView * tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setHidden:YES];
    
    self.navigationBar.title = @"自定义导航栏";
    GNavigationItem *item = [GNavItemFactory createTitleButton:@"按钮" target:self selctor:@selector(click:)];
    [self.navigationBar addRightItem:item];
    
    [self.view addSubview:({
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView;
    })];
    
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    [self.view bringSubviewToFront:self.navigationBar];
    _tableView.frame = CGRectMake(0, CGRectGetMaxY(self.navigationBar.frame), G_SCREEN_WIDTH, G_SCREEN_HEIGHT-CGRectGetMaxY(self.navigationBar.frame));
//    _tableView.contentInset = UIEdgeInsetsMake(CGRectGetMaxY(self.navigationBar.frame), 0, 0, 0);
//    _tableView.contentOffset = CGPointMake(0, -CGRectGetMaxY(self.navigationBar.frame));
}
- (void)click:(id)sender
{
    ViewController1 *Vc = [ViewController1 new];
    [self.navigationController pushViewController:Vc animated:YES];
}

#pragma mark -- TableView DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1 ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"tableViewCell"];
    }
    cell.backgroundColor = GNAVRandomColor;
    return cell;
}


#pragma mark -- TableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ViewController1 *Vc = [ViewController1 new];
    [self.navigationController pushViewController:Vc animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}



@end
