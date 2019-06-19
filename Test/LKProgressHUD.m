//
//  LKProgressHUD.m
//  Test
//
//  Created by kunpeng on 2019/6/19.
//  Copyright © 2019 kunpeng. All rights reserved.
//

#import "LKProgressHUD.h"
#import "XNProgressHUD.h"

@interface LKProgressHUD()

@end

@implementation LKProgressHUD

//显示加载中，文本为正在加载
+ (void)showloadingInView:(UIView *)view{
     [self showloadingInView:view text:@"正在加载" delayDismiss:CGFLOAT_MAX];
}
//显示加载中，文本为正在加载，指定时间消失
+ (void)showloadingInView:(UIView *)view delayDismiss:(NSTimeInterval)delayDismiss{
    [self showloadingInView:view text:@"正在加载" delayDismiss:delayDismiss];
}


//显示加载中，文本自定义
+ (void)showloadingInView:(UIView *)view text:(NSString *)text{
    [self showloadingInView:view text:text delayDismiss:CGFLOAT_MAX];
}

//显示加载中，文本自定义，指定时间消失
+ (void)showloadingInView:(UIView *)view text:(NSString *)text delayDismiss:(NSTimeInterval)delayDismiss{
    XNProgressHUD *targetHud = XNHUD;
    targetHud.targetView = view;
    targetHud.position   = CGPointMake(view.bounds.size.width/2, view.bounds.size.height * 0.5);
    /*选择方向
     XNProgressHUDOrientationHorizontal = 0,
     XNProgressHUDOrientationVertical
     */
//    targetHud.duration = 0;
    [targetHud setOrientation:XNProgressHUDOrientationHorizontal];

    //设置遮罩底色
    [targetHud setMaskType:(XNProgressHUDMaskTypeCustom) hexColor:0x905a3d];
    targetHud.maximumDelayDismissDuration = delayDismiss;
    //设置内边距
    targetHud.padding = HUDPaddingMake(8, 8, 8, 8);
    [targetHud showLoadingWithTitle:text];
}

//在window上显示加载中，文本自定义
+ (void)showloadingInWindowWithText:(NSString *)text{
    UIWindow *userWindow   = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    userWindow.windowLevel = UIWindowLevelAlert + 1;
    userWindow.hidden = NO;
    [self showloadingInView:userWindow text:text delayDismiss:CGFLOAT_MAX];
}

//弹框提示，默认2秒后消息
+ (void)toastInView:(UIView *)view text:(NSString *)text{
    XNProgressHUD *targetHud = XNHUD;
    targetHud.targetView = view;
    targetHud.position   = CGPointMake(view.bounds.size.width/2, view.bounds.size.height * 0.5);
    /*选择方向
     XNProgressHUDOrientationHorizontal = 0,
     XNProgressHUDOrientationVertical
     */
//    targetHud.duration = 0;
    [targetHud setOrientation:XNProgressHUDOrientationHorizontal];
    
    //设置遮罩底色
    [targetHud setMaskType:(XNProgressHUDMaskTypeCustom) hexColor:0x905a3d];
    targetHud.maximumDelayDismissDuration = 2;
    //设置内边距
    targetHud.padding = HUDPaddingMake(8, 8, 8, 8);
    [targetHud showWithTitle:text];
}

//弹框提示，指定时间消失
+ (void)toastInView:(UIView *)view text:(NSString *)text delayDismiss:(NSTimeInterval)delayDismiss{
    XNProgressHUD *targetHud = XNHUD;
    targetHud.targetView = view;
    targetHud.position   = CGPointMake(view.bounds.size.width/2, view.bounds.size.height * 0.5);
    /*选择方向
     XNProgressHUDOrientationHorizontal = 0,
     XNProgressHUDOrientationVertical
     */
//    targetHud.duration = 0;
    [targetHud setOrientation:XNProgressHUDOrientationHorizontal];
    
    //设置遮罩底色
    [targetHud setMaskType:(XNProgressHUDMaskTypeCustom) hexColor:0x905a3d];
    targetHud.maximumDelayDismissDuration = delayDismiss;
    //设置内边距
    targetHud.padding = HUDPaddingMake(8, 8, 8, 8);
    [targetHud showWithTitle:text];
}

+ (void)dismiss{
    [XNHUD dismiss];
}



@end
