//
//  BlockButton.h
//  customButton
//
//  Created by 冯亮 on 16/5/6.
//  Copyright © 2016年 冯亮. All rights reserved.
//

#import <UIKit/UIKit.h>
//详情请关注我的简书，地址：http://www.jianshu.com/users/83b2eba88a0d/latest_articles
// 谢谢 您的查看和意见

typedef  void(^DGCompletionHandler)(void);
@interface  BlockButton: UIButton
/**
 *  按钮以block样式返回的触发方法
 *
 *  @param controlEvents UIControlEvents
 *  @param completion    响应的回调
 */
- (void)addActionforControlEvents:(UIControlEvents)controlEvents respond:(DGCompletionHandler)completion;
@end
