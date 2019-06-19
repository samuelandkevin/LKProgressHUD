//
//  LKProgressHUD.h
//  Test
//
//  Created by kunpeng on 2019/6/19.
//  Copyright © 2019 kunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LKProgressHUD : NSObject

//显示加载中，文本为"正在加载"
+ (void)showloadingInView:(UIView *)view;
//显示加载中，文本为"正在加载"，指定时间消失
+ (void)showloadingInView:(UIView *)view delayDismiss:(NSTimeInterval)delayDismiss;

//显示加载中，文本自定义
+ (void)showloadingInView:(UIView *)view text:(NSString *)text;
//显示加载中，文本自定义，指定时间消失
+ (void)showloadingInView:(UIView *)view text:(NSString *)text delayDismiss:(NSTimeInterval)delayDismiss;

//在window上显示加载中，文本自定义
+ (void)showloadingInWindowWithText:(NSString *)text;

//弹框提示，默认2秒后消息,
+ (void)toastInView:(UIView *)view text:(NSString *)text;
//弹框提示，指定时间消失
+ (void)toastInView:(UIView *)view text:(NSString *)text delayDismiss:(NSTimeInterval)delayDismiss;
//消失
+ (void)dismiss;


@end

NS_ASSUME_NONNULL_END
