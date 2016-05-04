//
//  ViewController.m
//  测试TableView
//
//  Created by gongchen on 4/22/16.
//  Copyright © 2016 gongchen. All rights reserved.
//

#import "ViewController.h"
#import "TextCell.h"
#import "ContentMoele.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
{
    UITableView *_tableView;
}

/** 数据 */
@property (nonatomic , strong) NSArray *data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_tableView];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
}

- (NSArray *)data
{
    if (_data == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"texts.plist" ofType:nil];
        NSArray *datas = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *contents = [NSMutableArray array];
        for (NSDictionary *dic in datas) {
            ContentMoele *content = [ContentMoele contentMoeleWithDic:dic];
            [contents addObject:content];
        }
        
        _data = contents;
    }
    
    return _data;
}

#pragma mark --- UITableView 相关方法
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSLog(@" cellForRowAtIndexPath ----> %ld", indexPath.row);
    
    TextCell *cell = [TextCell cellWithTableView:tableView];
    cell.contentMoele = self.data[indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"numberOfRowsInSection");
    return self.data.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSLog(@"heightForRowAtIndexPath: %ld", indexPath.row);
    
    ContentMoele *contentMoele = self.data[indexPath.row];
    return contentMoele.cellHeigth;
}

#pragma mark ---- 测试位置
/**
 *   返回一个估计高度
 *
 * 可以把这个方法注释之后，再观察效果
 */
//- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return  180;
//}






@end
