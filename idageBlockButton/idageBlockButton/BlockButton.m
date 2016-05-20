//
//  BlockButton.m
//  customButton
//
//  Created by 冯亮 on 16/5/6.
//  Copyright © 2016年 冯亮. All rights reserved.
//

#import "BlockButton.h"
#import <objc/runtime.h>


static void *BuClickKey = @"BuClickKey";

@implementation BlockButton

//详情请关注我的简书，地址：http://www.jianshu.com/users/83b2eba88a0d/latest_articles
// 谢谢 您的查看和意见

- (void)addActionforControlEvents:(UIControlEvents)controlEvents respond:(DGCompletionHandler)completion{
    
    [self addTarget:self action:@selector(didClickBU) forControlEvents:controlEvents];
    
    void (^block)(void) = ^{
        completion();
    };
    objc_setAssociatedObject(self, BuClickKey, block, OBJC_ASSOCIATION_COPY);
    
}
-(void)didClickBU{
    void (^block)(void) = objc_getAssociatedObject(self, BuClickKey);
    block();
}

@end
