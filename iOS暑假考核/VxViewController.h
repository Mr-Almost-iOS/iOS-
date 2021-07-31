//
//  VxViewController.h
//  iOS暑假考核
//
//  Created by 差不多先生 on 2021/7/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VxViewController : UIViewController <
UITableViewDelegate,
UITableViewDataSource
>
@property (nonatomic, strong) UITableView* tableView;

@end

NS_ASSUME_NONNULL_END
