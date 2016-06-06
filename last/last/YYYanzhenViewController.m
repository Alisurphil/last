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
@property (strong, nonatomic) UITapGestureRecognizer *tapTrick;
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
    
     
    //给textfield添加左右两边的图片
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    UIImageView *image=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Mobile"]];
    //image.frame = CGRectMake(100, 0, 15, 20);
    image.bounds = CGRectMake(0, 0, 25, 20);
    _userPN.leftView=image;
    _userPN.leftViewMode = UITextFieldViewModeAlways;
    
    UIImageView *image1=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"key"]];
    image1.bounds = CGRectMake(0, 0, 20, 20);
    _userYZ.leftView=image1;
    _userYZ.leftViewMode = UITextFieldViewModeAlways;
    
    UIImageView *image2=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"发送验证码"]];
    image2.bounds = CGRectMake(0, 0, 70, 25);
    _userYZ.rightView=image2;
    _userYZ.rightViewMode = UITextFieldViewModeAlways;
    
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

    // Do any additional setup after loading the view.
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
