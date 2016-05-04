//
//  ContentMoele.h
//  测试TableView
//
//  Created by gongchen on 5/2/16.
//  Copyright © 2016 gongchen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentMoele : NSObject

/** 内容 */
@property (nonatomic , strong) NSString *text;
/** cell的高度 */
@property (nonatomic , assign) CGFloat cellHeigth;

+ (instancetype)contentMoeleWithDic:(NSDictionary *)dic;

@end
