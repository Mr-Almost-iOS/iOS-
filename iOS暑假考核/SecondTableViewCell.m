//
//  SecondTableViewCell.m
//  iOS暑假考核
//
//  Created by 差不多先生 on 2021/7/30.
//

#import "SecondTableViewCell.h"

@implementation SecondTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    _firstImageView = [[UIImageView alloc] init];
    _topLabel = [[UILabel alloc] init];
    _secondImageView = [[UIImageView alloc] init];
    _thirdImageView = [[UIImageView alloc] init];
    _buttomLabel = [[UILabel alloc] init];
    _firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _aLabel = [[UILabel alloc] init];
    _aLabel.textColor = [UIColor blackColor];
    [self.contentView addSubview:_firstButton];
    [self.contentView addSubview:_firstImageView];
    [self.contentView addSubview:_topLabel];
    [self.contentView addSubview:_aLabel];
    [self.contentView addSubview:_buttomLabel];
    [self.contentView addSubview:_secondImageView];
    [self.contentView addSubview:_thirdImageView];
    _aLabel.text = @"yyds！";
    return self;
}
- (void) layoutSubviews {
    _firstImageView.frame = CGRectMake(10, 10, 50, 50);
    _topLabel.frame = CGRectMake(75, 10, 200, 40);
    _secondImageView.frame = CGRectMake(75, 80, 110, 110);
    _buttomLabel.frame = CGRectMake(75, 260, 60, 30);
    _firstButton.frame = CGRectMake(-10, 240, 200, 30);
    _thirdImageView.frame = CGRectMake(185, 80, 110, 110);
    _aLabel.frame = CGRectMake(75, 50, 200, 30);
}
@end
