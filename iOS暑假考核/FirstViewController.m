//
//  FirstViewController.m
//  iOS暑假考核
//
//  Created by 差不多先生 on 2021/7/30.
//

#import "FirstViewController.h"
#import "VxViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"起飞";
    self.view.backgroundColor = [UIColor orangeColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStylePlain target:self action:@selector(change)];
}
- (void) change {
    VxViewController* vxViewController = [[VxViewController alloc] init];
    UINavigationController* navigationController = [[UINavigationController alloc] initWithRootViewController:vxViewController];
    navigationController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:navigationController animated:YES completion:nil];
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
