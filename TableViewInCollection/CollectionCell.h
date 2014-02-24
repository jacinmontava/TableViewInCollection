//
//  CollectionCell.h
//  TableViewInCollection
//
//  Created by Sang Quý Lê on 3/4/13.
//  Copyright (c) 2013 lequysang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CollectionCell;
@protocol ColectionCellDelegate
-(void)tableCellDidSelect:(UITableViewCell *)cell;
@end

@interface CollectionCell : UICollectionViewCell<UITableViewDataSource,UITableViewDelegate>
@property(strong,nonatomic) NSMutableArray *cellData;
@property(weak,nonatomic) id<ColectionCellDelegate> delegate;
@end
