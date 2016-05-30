//
//  YYYanzhenViewController.m
//  last
//
//  Created by 袁文轶 on 16/5/26.
//  Copyright © 2016年 袁文轶. All rights reserved.
//

#import "YYYanzhenViewController.h"

@interface YYYanzhenViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userPN;
@property (weak, nonatomic) IBOutlet UITextField *userYZ;

@end

@implementation YYYanzhenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    
    UILabel *customLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 40)];
    [customLab setTextColor:[UIColor whiteColor]];
    [customLab setText:@"注册"];
    customLab.font = [UIFont boldSystemFontOfSize:20];
    self.navigationItem.titleView = customLab;
    self.navigationController.navigationBar.translucent = NO;
    
    //[customLab release];
    /*UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = item;*/
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    UIImageView *image=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Mobile"]];
    _userPN.leftView=image;
    _userPN.leftViewMode = UITextFieldViewModeAlways;
    
    UIImageView *image1=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"key"]];
    _userYZ.leftView=image1;
    _userYZ.leftViewMode = UITextFieldViewModeAlways;
    
    UIImageView *image2=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"发送验证码"]];
    _userYZ.rightView=image2;
    _userYZ.rightViewMode = UITextFieldViewModeAlways;

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
