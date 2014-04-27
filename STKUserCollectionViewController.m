//
//  STKUserCollectionViewController.m
//  SportJoin
//
//  Created by apple on 14-4-27.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import "STKUserCollectionViewController.h"
#import "HeaderViewClasses/CSStickyHeaderFlowLayout.h"

@interface STKUserCollectionViewController ()

//@property (nonatomic, strong) NSArray *sections;
@property (nonatomic, strong) UINib *headerNib;

@end

@implementation STKUserCollectionViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
//        self.sections = @[
//                          @{@"Twitter":@"http://twitter.com"},
//                          @{@"Facebook":@"http://facebook.com"},
//                          @{@"Tumblr":@"http://tumblr.com"},
//                          @{@"Pinterest":@"http://pinterest.com"},
//                          @{@"Instagram":@"http://instagram.com"},
//                          @{@"Github":@"http://github.com"},
//                          ];

        self.headerNib = [UINib nibWithNibName:@"STKUserHeaderView" bundle:nil];
    }
    return self;
}

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
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
