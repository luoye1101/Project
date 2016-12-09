//
//  QLSingleton.m
//  Demo
//
//  Created by 世纪守护 on 2016/12/9.
//  Copyright © 2016年 世纪守护. All rights reserved.
//

#import "QLSingleton.h"

static QLSingleton *_instance = nil;

@implementation QLSingleton

+ (instancetype)sharedSingleton {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

@end
