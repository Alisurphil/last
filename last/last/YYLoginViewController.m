//
//  YYLoginViewController.m
//  last
//
//  Created by 袁文轶 on 16/5/25.
//  Copyright © 2016年 袁文轶. All rights reserved.
//

#import "YYLoginViewController.h"
#import "YYYanzhenViewController.h"
#import "AppDelegate.h"
@interface YYLoginViewController ()


@end

@implementation YYLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    
    // Do any additional setup after loading the view.

}
-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden = YES;


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
