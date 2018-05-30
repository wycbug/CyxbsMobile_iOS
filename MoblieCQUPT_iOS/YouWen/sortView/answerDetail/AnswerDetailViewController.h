//
//  AnswerDetailViewController.h
//  MoblieCQUPT_iOS
//
//  Created by helloworld on 2018/4/3.
//  Copyright © 2018年 Orange-W. All rights reserved.
//

#import <UIKit/UIKit.h>
//@class YouWenQuestionDetailModel;
@class YouWenAnswerDetailModel;

@interface AnswerDetailViewController : BaseViewController
@property (nonatomic, strong) NSString *answer_id;
@property (nonatomic, strong) NSString *isSelf;
@property (nonatomic, strong) YouWenAnswerDetailModel *model;
@property (copy, nonatomic) NSString *questionTitle;
@property (nonatomic) int is_upvote;
@end