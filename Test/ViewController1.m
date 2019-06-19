//
//  ViewController1.m
//  Test
//
//  Created by kunpeng on 2019/6/19.
//  Copyright © 2019 kunpeng. All rights reserved.
//

#import "ViewController1.h"
#import "LKProgressHUD.h"

@interface ViewController1 ()
@property(nonatomic,assign)int ib;
@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *redV = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 200, 40)];
    redV.titleLabel.font = [UIFont systemFontOfSize:10];
    [redV setTitle:@"显示在window上，不影响点击返回" forState:UIControlStateNormal];
    redV.backgroundColor = [UIColor redColor];
    [redV addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onRed)]];
    redV.tag = 1001;
    [self.view addSubview:redV];
    
    
    UIButton *blueV = [[UIButton alloc] initWithFrame:CGRectMake(10, 100+40+30, 200, 40)];
    blueV.titleLabel.font = [UIFont systemFontOfSize:10];
    [blueV setTitle:@"显示在window上，影响点击返回" forState:UIControlStateNormal];
    blueV.backgroundColor = [UIColor blueColor];
    [blueV addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onBlue)]];
    blueV.tag = 1002;
    [self.view addSubview:blueV];
    
 
}

- (void)onRed{
    
}


- (void)onBlue{
   [LKProgressHUD showloadingInWindowWithText:@"正在加载"];
}

- (void)dealloc{
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
