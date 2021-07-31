//
//  StartViewController.m
//  iOS暑假考核
//
//  Created by 差不多先生 on 2021/7/30.
//

#import "StartViewController.h"
#import "ZhuceViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
@interface StartViewController ()

@end

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    _idTextField = [[UITextField alloc] init];
    _passwordTextField = [[UITextField alloc] init];
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _zhuceButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _idTextField.backgroundColor = [UIColor whiteColor];
    _passwordTextField.backgroundColor = [UIColor whiteColor];
    _idTextField.frame = CGRectMake(20, 150, 350, 40);
    _passwordTextField.frame = CGRectMake(20, 210, 350, 40);
    _idTextField.placeholder = @"请输入账号";
    _passwordTextField.placeholder = @"请输入密码";
    [self.view addSubview:_idTextField];
    [self.view addSubview:_passwordTextField];
    [_zhuceButton setTitle:@"注册" forState:UIControlStateNormal];
    [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [_zhuceButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _loginButton.frame = CGRectMake(40, 300, 50, 50);
    _zhuceButton.frame = CGRectMake(240, 300, 50, 50);
    [_zhuceButton addTarget:self action:@selector(zhuceChange) forControlEvents:UIControlEventTouchUpInside];
    _idString = @"1";
    _passwordString = @"1";
    [_loginButton addTarget:self action:@selector(startChange) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_zhuceButton];
    [self.view addSubview:_loginButton];
}
- (void) zhuceChange {
    ZhuceViewController* zhuceViewController = [[ZhuceViewController alloc] init];
    zhuceViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    zhuceViewController.delegate = self;
    [self presentViewController:zhuceViewController animated:YES completion:nil];
}
- (void)sendId:(NSString *)idString andPassword:(NSString *)passString {
    _idString = idString;
    _passwordString = passString;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_idTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder]; 
}
- (void)startChange {
    if ([_idString isEqual:_idTextField.text] && [_passwordString isEqual:_passwordTextField.text]) {
        NSLog(@"1");
        FirstViewController* firstViewController = [[FirstViewController alloc] init];
        SecondViewController* secondViewController = [[SecondViewController alloc] init];
        ThirdViewController* thirdViewController = [[ThirdViewController alloc] init];
        FourViewController* fourViewController = [[FourViewController alloc] init];
        FiveViewController* fiveViewController = [[FiveViewController alloc] init];
        UINavigationController* firstNavigationController = [[UINavigationController alloc] initWithRootViewController:firstViewController];
        UINavigationController* secondNavigationController = [[UINavigationController alloc] initWithRootViewController:secondViewController];
        UINavigationController* thirdNavigationController = [[UINavigationController alloc] initWithRootViewController:thirdViewController];
        UINavigationController* fourNavigationController = [[UINavigationController alloc] initWithRootViewController:fourViewController];
        UINavigationController* fiveNavigationController = [[UINavigationController alloc] initWithRootViewController:fiveViewController];
        NSArray* tabArray = [NSArray arrayWithObjects:firstNavigationController, secondNavigationController, thirdNavigationController, fourNavigationController, fiveNavigationController, nil];
        firstViewController.title = @"1";
        secondViewController.title = @"2";
        thirdViewController.title = @"3";
        fourViewController.title = @"4";
        fiveViewController.title = @"5";
        UITabBarController* tabBarController = [[UITabBarController alloc] init];
        tabBarController.viewControllers = tabArray;
        tabBarController.modalPresentationStyle = UIModalPresentationFullScreen;
        tabBarController.selectedViewController = firstNavigationController;
        [self presentViewController:tabBarController animated:YES completion:nil];
        
    }
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
