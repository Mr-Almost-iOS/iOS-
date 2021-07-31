//
//  StartViewController.h
//  iOS暑假考核
//
//  Created by 差不多先生 on 2021/7/30.
//

#import <UIKit/UIKit.h>
#import "ZhuceViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface StartViewController : UIViewController <ZhuceViewControllerDelegate>
@property (nonatomic, strong) UITextField* idTextField;
@property (nonatomic, strong) UITextField* passwordTextField;
@property (nonatomic, strong) UIButton* loginButton;
@property (nonatomic, strong) UIButton* zhuceButton;
@property (nonatomic, copy) NSString* idString;
@property (nonatomic, copy) NSString* passwordString;

@end

NS_ASSUME_NONNULL_END
