//
//  TextCell.m
//  测试TableView
//
//  Created by gongchen on 5/2/16.
//  Copyright © 2016 gongchen. All rights reserved.
//

#import "TextCell.h"
#import "ContentMoele.h"

@interface TextCell () {
}

@property (weak, nonatomic) IBOutlet UILabel *contentLable;


@end

@implementation TextCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"cell";
    TextCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if(cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
    }
    return  cell;
}

- (void)awakeFromNib
{
    self.contentLable.preferredMaxLayoutWidth = self.frame.size.width;
}

- (void)setContentMoele:(ContentMoele *)contentMoele
{
    _contentMoele = contentMoele;
    
    self.contentLable.text = _contentMoele.text;
    [self layoutIfNeeded];

    // 设置高度
    contentMoele.cellHeigth = CGRectGetMaxY(self.contentLable.frame);
}



@end
