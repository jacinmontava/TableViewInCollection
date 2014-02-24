//
//  ViewController.m
//  TableViewInCollection
//
//  Created by Sang Quý Lê on 3/4/13.
//  Copyright (c) 2013 lequysang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSMutableArray *collectionData;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.collectionData = [[NSMutableArray alloc] initWithObjects:
                           [[NSMutableArray alloc] initWithObjects:
                            @"1",
                            @"2",
                            @"3",
                            @"4",
                            @"5",
                            @"6",
                            nil],
                           [[NSMutableArray alloc] initWithObjects:
                            @"A",
                            @"B",
                            @"C",
                            @"D",
                            @"E",
                            @"F",
                            nil],
                           [[NSMutableArray alloc] initWithObjects:
                            @"11",
                            @"22",
                            @"33",
                            @"44",
                            @"55",
                            @"66",
                            nil],
                           nil];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.collectionData count];
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CollectionCell *cell = (CollectionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionCell" forIndexPath:indexPath];
    cell.cellData = [self.collectionData objectAtIndex:indexPath.row];
    cell.delegate = self;
    return cell;
}

-(void)tableCellDidSelect:(UITableViewCell *)cell{
    NSLog(@"Tap %@",cell.textLabel.text);
    DetailViewController *detailVC = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    detailVC.label.text = cell.textLabel.text;
    [self.navigationController pushViewController:detailVC animated:YES];
}

@end
