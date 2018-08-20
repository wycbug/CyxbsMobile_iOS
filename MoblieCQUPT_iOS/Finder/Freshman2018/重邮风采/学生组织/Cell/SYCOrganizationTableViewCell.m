//
//  SYCOrganizationTableViewCell.m
//  MoblieCQUPT_iOS
//
//  Created by 施昱丞 on 2018/8/16.
//  Copyright © 2018年 Orange-W. All rights reserved.
//

#import "SYCOrganizationTableViewCell.h"
#import "SYCOrganizationManager.h"

@implementation SYCOrganizationTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)drawRect:(CGRect)rect{
    self.organization = [SYCOrganizationManager sharedInstance].organizationData[self.index];
    
    CGFloat backgroundViewWidth = [[UIScreen mainScreen] bounds].size.width - 20;
    CGFloat backgroundViewHeight = self.frame.size.height - 30;
    UIView *backgroundView = [[UIView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width - backgroundViewWidth) / 2.0, (self.frame.size.height - backgroundViewHeight) / 2.0, backgroundViewWidth, backgroundViewHeight)];
    backgroundView.backgroundColor = [UIColor whiteColor];
    backgroundView.layer.masksToBounds = YES;
    backgroundView.layer.cornerRadius = 8.0;
    [self.contentView addSubview:backgroundView];
    self.contentView.backgroundColor = [UIColor colorWithRed:246.0/255.0 green:246.0/255.0 blue:246.0/255.0 alpha:1.0];
    
    CGFloat imageViewWidth = backgroundViewWidth * 0.93;
    CGFloat imageViewHeight = backgroundViewHeight * 0.1;
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake((backgroundViewWidth - imageViewWidth) / 2.0, backgroundViewHeight * 0.005, imageViewWidth, imageViewHeight)];
    imageView.image = self.organization.imagesArray[0];
    imageView.layer.masksToBounds = YES;
    imageView.layer.cornerRadius = 8.0;
    [backgroundView addSubview:imageView];
    
    CGFloat labelWidth = backgroundViewWidth * 0.8;
    CGFloat labelHeight = backgroundViewHeight * 0.03;
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(backgroundViewWidth * 0.04, backgroundViewHeight * 0.95, labelWidth, labelHeight)];
    nameLabel.text = self.organization.name;
    nameLabel.font = [UIFont systemFontOfSize:16 weight:UIFontWeightBold];
    [backgroundView addSubview:nameLabel];
    
    CGFloat textViewWidth = backgroundViewWidth * 0.95;
    CGFloat textViewHeight = backgroundViewHeight * 0.88;
    UILabel *detailText = [[UILabel alloc] initWithFrame:CGRectMake((backgroundViewWidth - textViewWidth) / 2.0, backgroundViewHeight * 0.116, textViewWidth, textViewHeight)];
    detailText.textColor = [UIColor colorWithRed:103.0/255.0 green:103.0/255.0 blue:103.0/255.0 alpha:1.0];
    detailText.font = [UIFont systemFontOfSize:16 weight:UIFontWeightUltraLight];
    detailText.text = self.organization.detail;
    detailText.numberOfLines = 0;
    [detailText sizeToFit];
    [backgroundView addSubview:detailText];
}

@end
