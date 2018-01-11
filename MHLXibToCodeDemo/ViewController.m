//
//  ViewController.m
//  xibTest
//
//  Created by Sephiroth_Ma on 2018/1/1.
//  Copyright © 2018年 Sephiroth_Ma. All rights reserved.
//first second third fourth fifth sixth seventh eighth ninth tenth

#import "ViewController.h"
#import <MHLXibToCode/MHLXibToCode.h>

#import "TastTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource> {
    
    
    BOOL isHaveTableView;
    
}
@property(nonatomic, strong) NSMutableArray *dataArray;


@property(nonatomic, strong) NSString *buttonName;

@end

@implementation ViewController




- (void)viewDidLoad {
    
    [super viewDidLoad];
    
//    //层级：1，父视图：UIView 的UITableView
//    UITableView *firstTableViewInOne                         =[[UITableView alloc]initWithFrame:CGRectMake(7.00f, 20.00f, 360.00f,502.00f) style:UITableViewStylePlain];
//    firstTableViewInOne.rowHeight                            =-1.00f;
//    firstTableViewInOne.delegate                           =self;
//    firstTableViewInOne.dataSource                         =self;
//    [self.view addSubview:firstTableViewInOne];
//    
//    if (@available(iOS 11.0, *)) {
//        firstTableViewInOne.contentInsetAdjustmentBehavior       =UIScrollViewContentInsetAdjustmentNever;
//    } else {
//        self.automaticallyAdjustsScrollViewInsets = NO;
//    }
//    
//    [firstTableViewInOne registerNib:[UINib nibWithNibName:@"TastTableViewCell" bundle:nil] forCellReuseIdentifier:@"CELL"];
    
    [CodeGenerationEntry codeGenerationEntryfromClass:self automaticGenerationHierarchy:NO];
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
    
}

- (UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    TastTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CELL"];
    
    
    return cell;
    
    
    
}

@end

