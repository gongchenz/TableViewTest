//
//  ContentMoele.m
//  测试TableView
//
//  Created by gongchen on 5/2/16.
//  Copyright © 2016 gongchen. All rights reserved.
//

#import "ContentMoele.h"

@implementation ContentMoele

+ (instancetype)contentMoeleWithDic:(NSDictionary *)dic
{
    ContentMoele *contentMoele = [[self alloc] init];
    [contentMoele setValuesForKeysWithDictionary:dic];
    return contentMoele;
}

@end
