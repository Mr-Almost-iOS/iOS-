//
//  VxViewController.m
//  iOS暑假考核
//
//  Created by 差不多先生 on 2021/7/30.
//

#import "VxViewController.h"
#import "FirstTableViewCell.h"
#import "SecondTableViewCell.h"
@interface VxViewController ()

@end

@implementation VxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"朋友圈";
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"left.png"] style:UIBarButtonItemStyleDone target:self action:@selector(change)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:nil];
    UIImageView* imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bj1.jpeg"]];
    imageView.frame = CGRectMake(0, 100, 390, 250);
    [self.view addSubview:imageView];
    UIImageView* secondImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tx.jpeg"]];
    secondImageView.frame = CGRectMake(290, 190, 75, 75);
    [imageView addSubview:secondImageView];
    UILabel* vxLabel = [[UILabel alloc] init];
    vxLabel.text = @"皮卡丘";
    vxLabel.frame = CGRectMake(230, 200, 60, 40);
    vxLabel.textColor = [UIColor whiteColor];
    [imageView addSubview:vxLabel];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 380, 390, 500) style:UITableViewStyleGrouped];
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[FirstTableViewCell class] forCellReuseIdentifier:@"1"];
    [self.tableView registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"2"];
    [self.view addSubview:self.tableView];
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        FirstTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"1" forIndexPath:indexPath];
        if (indexPath.row == 0) {
            cell.firstImageView.image = [UIImage imageNamed:@"1.jpeg"];
            cell.topLabel.text = @"Carry666";
        } else if (indexPath.row == 1) {
            cell.firstImageView.image = [UIImage imageNamed:@"2.jpeg"];
            cell.topLabel.text = @"Fttt.";
        } else if (indexPath.row == 2) {
            cell.firstImageView.image = [UIImage imageNamed:@"3.jpeg"];
            cell.topLabel.text = @"waxuuuu.";
        } else if (indexPath.row == 3) {
            cell.firstImageView.image = [UIImage imageNamed:@"4.jpeg"];
            cell.topLabel.text = @"无敌战神";
        } else {
            cell.firstImageView.image = [UIImage imageNamed:@"5.jpeg"];
            cell.topLabel.text = @"爱尔兰堤坝";
        }
        cell.buttomLabel.text = @"昨天";
        [cell.firstButton setTitle:@"西安邮电大学" forState:UIControlStateNormal];
        cell.secondImageView.image = [UIImage imageNamed:@"zp.jpeg"];
        cell.topLabel.textColor = [UIColor blackColor];
        return cell;
    } else {
        SecondTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
        cell.firstImageView.image = [UIImage imageNamed:@"guanzhu1的副本.png"];
        if (indexPath.row == 0) {
            cell.firstImageView.image = [UIImage imageNamed:@"1.jpeg"];
            cell.topLabel.text = @"Carry666";
        } else if (indexPath.row == 1) {
            cell.firstImageView.image = [UIImage imageNamed:@"2.jpeg"];
            cell.topLabel.text = @"Fttt.";
        } else if (indexPath.row == 2) {
            cell.firstImageView.image = [UIImage imageNamed:@"3.jpeg"];
            cell.topLabel.text = @"waxuuuu.";
        } else if (indexPath.row == 3) {
            cell.firstImageView.image = [UIImage imageNamed:@"4.jpeg"];
            cell.topLabel.text = @"无敌战神";
        } else {
            cell.firstImageView.image = [UIImage imageNamed:@"5.jpeg"];
            cell.topLabel.text = @"爱尔兰堤坝";
        }
        cell.buttomLabel.text = @"更早前";
        [cell.firstButton setTitle:@"西安" forState:UIControlStateNormal];
        cell.secondImageView.image = [UIImage imageNamed:@"6.jpeg"];
        cell.thirdImageView.image = [UIImage imageNamed:@"7.jpeg"];
        cell.topLabel.textColor = [UIColor blackColor];
        return cell;
    }
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 400;
    } else {
        return 300;
    }
    
    
}
- (void) change {
    [self dismissViewControllerAnimated:YES completion:nil];
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
