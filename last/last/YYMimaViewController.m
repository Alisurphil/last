//
//  YYMimaViewController.m
//  last
//
//  Created by 袁文轶 on 16/5/26.
//  Copyright © 2016年 袁文轶. All rights reserved.
//

#import "YYMimaViewController.h"

@interface YYMimaViewController ()

@end

@implementation YYMimaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *customLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 40)];
    [customLab setTextColor:[UIColor whiteColor]];
    [customLab setText:@"注册"];
    customLab.font = [UIFont boldSystemFontOfSize:20];
    self.navigationItem.titleView = customLab;
    self.navigationController.navigationBar.translucent = NO;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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