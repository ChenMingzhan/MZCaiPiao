//
//  MZProductController.m
//  网易彩票
//
//  Created by 铭铭 on 16/3/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MZProductController.h"
#import "MZProduct.h"
#import "MZProuductViewCell.h"

@interface MZProductController ()

@property (nonatomic, strong) NSArray *products;
@end

@implementation MZProductController

-(instancetype)init
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init ];
    
    layout.itemSize = CGSizeMake(80, 80);
    
    layout.sectionInset = UIEdgeInsetsMake(20, 0, 0, 0);
    
    if (self ==[super initWithCollectionViewLayout:layout]) {
        //修改collectionView的背景色
        self.collectionView.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINib *nib = [UINib nibWithNibName:@"MZProuductViewCell" bundle:nil];
    //注册
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:@"Cell"];

}

-(NSArray *)products
{
    if (!_products) {
        _products=[MZProduct products];
    }
    return _products;
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.products.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MZProuductViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    MZProduct *model = self.products[indexPath.item];
    
    cell.modal = model;

    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
  MZProduct *modal = self.products[indexPath.item];
    
    //2.1获得UIApplication
    UIApplication *application = [UIApplication sharedApplication];

     NSString *urlStr = [NSString stringWithFormat:@"%@://%@",modal.customUrl,modal.id];
    
    NSURL *url = [NSURL URLWithString:urlStr];
    
     BOOL flag = [application canOpenURL:url];
    
    //判断 如果能够打开那我们就打开
    if (flag) {
        [application openURL:url];
    }else
    {
        url = [NSURL URLWithString:modal.url];
        [application openURL:url];

    }
    
}

@end
