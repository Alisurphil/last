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
#import "AFViewShaker.h"

@interface YYLoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userID;
@property (weak, nonatomic) IBOutlet UITextField *userPW;

@property (nonatomic, strong) IBOutletCollection(UIView) NSArray * allTextFields;

@property (strong, nonatomic) UITapGestureRecognizer *tapTrick;

@property (nonatomic, strong) AFViewShaker * viewShaker;

@end

@implementation YYLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewShaker = [[AFViewShaker alloc] initWithViewsArray:self.allTextFields];
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

    //初始化手势并且申明手势触发的事件的方法名keyboardTrick
    _tapTrick = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(keyboardTrick:)];
    //将手势取消激活
    _tapTrick.enabled = NO;
    //将手势加入根视图
    [self.view addGestureRecognizer:_tapTrick];
    
    //监听键盘打开这一操作，打开后执行keyboardWillShow:方法
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    //监听键盘收起这一操作，收起后执行keyboardWillHide:方法
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (IBAction)onShakeOneAction:(UIButton *)sender {
    [self.viewShaker shake];
}

-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden = YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)keyboardTrick:(UITapGestureRecognizer *)tap{
    //判断触摸事件是否成功被识别
    if (tap.state == UIGestureRecognizerStateRecognized) {
        //NSLog(@"被摸了");
        //[_textField resignFirstResponder];
        //让根视图终止编辑状态，从而达到收起键盘的目的
        [self.view endEditing:YES];
    }
}

//键盘打开时的操作
- (void)keyboardWillShow:(NSNotification *)notification{
    //激活手势
    _tapTrick.enabled = YES;
}

//键盘收起时的操作
- (void)keyboardWillHide:(NSNotification *)notification{
    //关闭手势
    _tapTrick.enabled = NO;
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
