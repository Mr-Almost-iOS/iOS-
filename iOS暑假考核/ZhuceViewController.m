//
//  ZhuceViewController.m
//  iOS暑假考核
//
//  Created by 差不多先生 on 2021/7/30.
//

#import "ZhuceViewController.h"

@interface ZhuceViewController ()

@end

@implementation ZhuceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _idTextField = [[UITextField alloc] init];
    _passwordTextField = [[UITextField alloc] init];
    _idTextField.backgroundColor = [UIColor orangeColor];
    _passwordTextField.backgroundColor = [UIColor orangeColor];
    _twopasswordTextField = [[UITextField alloc] init];
    _twopasswordTextField.backgroundColor = [UIColor orangeColor];
    _idTextField.frame = CGRectMake(20, 150, 350, 40);
    _passwordTextField.frame = CGRectMake(20, 210, 350, 40);
    _twopasswordTextField.frame = CGRectMake(20, 270, 350, 40);
    _idTextField.placeholder = @"请输入账号";
    _passwordTextField.placeholder = @"请输入密码";
    _twopasswordTextField.placeholder = @"再次输入密码";
    [self.view addSubview:_idTextField];
    [self.view addSubview:_passwordTextField];
    [self.view addSubview:_twopasswordTextField];
    UIButton* zhuceButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [zhuceButton setTitle:@"注册" forState:UIControlStateNormal];
    zhuceButton.frame = CGRectMake(150, 330, 40, 40);
    [zhuceButton addTarget:self action:@selector(buttonChange) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:zhuceButton];
    // Do any additional setup after loading the view.
}
- (void) buttonChange {
    if ([_idTextField.text isEqual:@""] == NO && [_passwordTextField.text isEqual:_twopasswordTextField.text] == YES) {
        NSLog(@"1");
        [_delegate sendId:_idTextField.text andPassword:_passwordTextField.text];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_idTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
    [_twopasswordTextField resignFirstResponder];
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
