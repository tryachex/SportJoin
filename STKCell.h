//
//  STKUserCollectionViewCell.h
//  SportJoin
//
//  Created by apple on 14-4-27.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STKCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *eventLabel;
@property (weak, nonatomic) IBOutlet UIImageView *eventImageView;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end
