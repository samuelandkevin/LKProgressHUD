//
//  ViewController.m
//  Test
//
//  Created by kunpeng on 2019/6/19.
//  Copyright © 2019 kunpeng. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"
#import "LKProgressHUD.h"

@interface ViewController ()
@property(nonatomic,strong)UIView *redV;
@property(nonatomic,strong)UIView *blueV;
@property(nonatomic,strong)UIButton *greenV;
@property(nonatomic,strong)UIButton *purpV;
@end

@implementation ViewController


- (IBAction)pushVC:(id)sender {
   ViewController1 *vc =  [ViewController1 new];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redV = [[UIView alloc] initWithFrame:CGRectMake(10, 100, 150, 150)];
    redV.backgroundColor = [UIColor redColor];
    [redV addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onRed)]];
    redV.tag = 1001;
    [self.view addSubview:redV];
    _redV = redV;
    
    
    UIView *blueV = [[UIView alloc] initWithFrame:CGRectMake(10+150+30, 100, 200, 400)];
    blueV.backgroundColor = [UIColor blueColor];
    [blueV addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onBlue)]];
    blueV.tag = 1002;
    [self.view addSubview:blueV];
    _blueV = blueV;
    
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onView)]];
    // Do any additional setup after loading the view.
    
    
    UIButton *greenV = [[UIButton alloc] initWithFrame:CGRectMake(10, 100+150+30, 80, 40)];
    greenV.titleLabel.font = [UIFont systemFontOfSize:10];
    [greenV setTitle:@"toast1" forState:UIControlStateNormal];
    greenV.backgroundColor = [UIColor greenColor];
    [greenV addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onGreen)]];
    greenV.tag = 1003;
    [self.view addSubview:greenV];
    _greenV = greenV;
    
    
    UIButton *purpV = [[UIButton alloc] initWithFrame:CGRectMake(10+150+30, 100+400+30, 80, 40)];
    purpV.titleLabel.font = [UIFont systemFontOfSize:10];
    [purpV setTitle:@"toast2" forState:UIControlStateNormal];
    purpV.backgroundColor = [UIColor purpleColor];
    [purpV addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onPurp)]];
    purpV.tag = 1003;
    [self.view addSubview:purpV];
    _purpV = purpV;
}


- (void)onRed{
   [LKProgressHUD showloadingInView:_redV];
}

- (void)onBlue{
   [LKProgressHUD showloadingInView:_blueV text:@"正在切换中..." delayDismiss:3];
}

- (void)onGreen{
    [LKProgressHUD toastInView:_greenV text:@"我是一个好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长的toast"];
}

- (void)onPurp{
    [LKProgressHUD toastInView:self.view text:@"我是一个好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长好长的toast"];
}

- (void)onView{
    [LKProgressHUD showloadingInView:self.view];
}

- (void)dismiss{
    [LKProgressHUD dismiss];
}

//- (void)testView:(UIView *)view delayDismiss:(NSTimeInterval)delayDismiss{
//
//    XNProgressHUD *targetHud = XNHUD;
//
//    targetHud.targetView = view;
//    targetHud.position   = CGPointMake(view.bounds.size.width/2, view.bounds.size.height * 0.5);
//    /*选择方向
//     XNProgressHUDOrientationHorizontal = 0,
//     XNProgressHUDOrientationVertical
//     */
//    [targetHud setOrientation:XNProgressHUDOrientationHorizontal];
//
//    //设置遮罩底色
//    [targetHud setMaskType:(XNProgressHUDMaskTypeCustom) hexColor:0x905a3d];
//    targetHud.maximumDelayDismissDuration = delayDismiss;
//    //设置内边距
//    targetHud.padding = HUDPaddingMake(8, 8, 8, 8);
//    [targetHud setDisposableDelayResponse:0 delayDismiss:delayDismiss];
//    [targetHud showLoadingWithTitle:@"正在登录"];
//}

@end
