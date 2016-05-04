//
//  TextCell.h
//  测试TableView
//
//  Created by gongchen on 5/2/16.
//  Copyright © 2016 gongchen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContentMoele;

@interface TextCell : UITableViewCell
/** 内容类 */
@property (nonatomic , strong) ContentMoele *contentMoele;

/** 初始化cell */
+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
