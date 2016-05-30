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
@property (weak, nonatomic) IBOutlet UITextField *userID;
@property (weak, nonatomic) IBOutlet UITextField *userPW;


@end

@implementation YYLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    UIImageView *image=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图层-6"]];
    _userID.leftView=image;
    _userID.leftViewMode = UITextFieldViewModeAlways;
    UIImageView *image1=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图层-5"]];
    _userPW.leftView=image1;
    UIImageView *image2=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"忘记密码？"]];
    _userPW.rightView = image2;
    _userPW.leftViewMode = UITextFieldViewModeAlways;
    _userPW.rightViewMode = UITextFieldViewModeAlways;
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
