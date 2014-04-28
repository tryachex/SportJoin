//
//  STKEventCreateViewController.m
//  SportJoin
//
//  Created by apple on 14-4-28.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import "STKEventCreateViewController.h"
#import "STKEventCreateCell.h"

@interface STKEventCreateViewController () <UICollectionViewDelegateFlowLayout>

@end

@implementation STKEventCreateViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Sport Join";
}

#pragma mark -
#pragma mark UICollectionView Delegate
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 9;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    STKEventCreateCell *cell = [self.collectionView
                                dequeueReusableCellWithReuseIdentifier:@"createEventCell"
                                                          forIndexPath:indexPath];
    cell.eventCreateImageView.image = [UIImage imageNamed:@"success-baby"];
    cell.eventCreateLabel.text = @"123";
    return cell;
}

#pragma mark -
#pragma mark UICollectionView FlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(80, 100);
}

@end
