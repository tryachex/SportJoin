//
//  STKSelectViewController.m
//  SportJoin
//
//  Created by apple on 14-4-28.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import "STKSelectViewController.h"
#import "STKCell.h"

@interface STKSelectViewController () <UICollectionViewDelegateFlowLayout>

@end

@implementation STKSelectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Sport Join";
}

#pragma mark -
#pragma mark UICollection View Data Source Method
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 15;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    STKCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"selectCell"
                                                                   forIndexPath:indexPath];
    cell.eventLabel.text = @"Play Together!";
    return cell;
}

#pragma mark -
#pragma mark UICollection View Flow Layout Delegate
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(320, 90);
}

@end
