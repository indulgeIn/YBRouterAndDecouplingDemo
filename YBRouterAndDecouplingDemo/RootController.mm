//
//  RootController.m
//  YBRouterAndDecouplingDemo
//
//  Created by 杨波 on 2019/5/29.
//  Copyright © 2019 杨波. All rights reserved.
//

#import "RootController.h"
#import <vector>
using namespace std;
#import "AController.h"
#import "BController.h"
#import "CController.h"
#import "DController.h"


typedef pair<NSString *, Class> RootRow;

@interface RootController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation RootController {
    vector<RootRow> _dataSource;
}

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareData];
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.tableView];
}

- (void)prepareData {
    RootRow arr[] = {
        RootRow(@"非完全解耦", AController.self),
        RootRow(@"Runtime解耦", BController.self),
        RootRow(@"Protocol解耦", CController.self),
        RootRow(@"Block解耦", DController.self)
    };
    for (auto value : arr) {
        _dataSource.push_back(value);
    }
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.tableView.frame = self.view.bounds;
}

#pragma mark - <UITableViewDataSource, UITableViewDelegate>

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.size();
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = NSStringFromClass(UITableViewCell.self);
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    cell.textLabel.text = _dataSource[indexPath.row].first;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *vc = [_dataSource[indexPath.row].second new];
    vc.view.backgroundColor = UIColor.whiteColor;
    vc.navigationItem.title = _dataSource[indexPath.row].first;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - getter

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.tableFooterView = [UIView new];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

@end
