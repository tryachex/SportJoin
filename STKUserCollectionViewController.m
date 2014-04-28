//
//  STKUserCollectionViewController.m
//  SportJoin
//
//  Created by apple on 14-4-27.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import "STKUserCollectionViewController.h"
#import "HeaderViewClasses/CSStickyHeaderFlowLayout.h"
#import "STKCell.h"

@interface STKUserCollectionViewController () <UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) NSArray *rows;
@property (nonatomic, strong) NSArray *sections;
@property (nonatomic, strong) UINib *headerNib;

@end

@implementation STKUserCollectionViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.sections = @[
                          @{@"Twitter":@"http://twitter.com"},
                          @{@"Facebook":@"http://facebook.com"},
                          @{@"Tumblr":@"http://tumblr.com"},
                          @{@"Pinterest":@"http://pinterest.com"},
                          @{@"Instagram":@"http://instagram.com"},
                          @{@"Github":@"http://github.com"},
                          ];
        self.headerNib = [UINib nibWithNibName:@"STKUserHeaderView" bundle:nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    CSStickyHeaderFlowLayout *layout = (id)self.collectionViewLayout;

    if ([layout isKindOfClass:[CSStickyHeaderFlowLayout class]]) {
        layout.parallaxHeaderReferenceSize = CGSizeMake(320, 200);
    }
    // If we want to disable the sticky header effect
    layout.disableStickyHeaders = YES;
    // Also insets the scroll indicator so it appears below the search bar
    self.collectionView.scrollIndicatorInsets = UIEdgeInsetsMake(44, 0, 0, 0);
    [self.collectionView registerNib:self.headerNib
          forSupplementaryViewOfKind:CSStickyHeaderParallaxHeader
                 withReuseIdentifier:@"header"];


    self.title = @"Sport Join";
    self.rows = @[@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"2"];

}

#pragma mark -
#pragma mark UICollectionViewController Data Source Method
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.rows count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{

    STKCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell"
                                                             forIndexPath:indexPath];

    cell.eventLabel.text = self.rows[indexPath.row];
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {

        // This part is useless


        STKCell *cell = [collectionView dequeueReusableSupplementaryViewOfKind:kind
                                                          withReuseIdentifier:@"sectionHeader"
                                                                 forIndexPath:indexPath];

        cell.eventLabel.text = @"";

        return cell;
    } else if ([kind isEqualToString:CSStickyHeaderParallaxHeader]) {
        UICollectionReusableView *cell = [collectionView dequeueReusableSupplementaryViewOfKind:kind
                                                                            withReuseIdentifier:@"header"
                                                                                   forIndexPath:indexPath];

        return cell;
    }
    return nil;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(320, 90);
}

@end
