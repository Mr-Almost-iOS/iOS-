//
//  ZhuceViewController.h
//  iOS暑假考核
//
//  Created by 差不多先生 on 2021/7/30.
//

#import <UIKit/UIKit.h>

@protocol ZhuceViewControllerDelegate <NSObject>

- (void) sendId:(NSString*) idString andPassword:(NSString*) passString;

@end
NS_ASSUME_NONNULL_BEGIN

@interface ZhuceViewController : UIViewController
@property (nonatomic, strong) UITextField* idTextField;
@property (nonatomic, strong) UITextField* passwordTextField;
@property (nonatomic, strong) UITextField* twopasswordTextField;
@property (nonatomic, assign) id<ZhuceViewControllerDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
