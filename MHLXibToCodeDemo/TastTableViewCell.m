//
//  TastTableViewCell.m
//  xibTest
//
//  Created by Sephiroth_Ma on 2018/1/11.
//  Copyright © 2018年 Sephiroth_Ma. All rights reserved.
//

#import "TastTableViewCell.h"
#import <MHLXibToCode/MHLXibToCode.h>
@implementation TastTableViewCell

- (void)awakeFromNib {
    
    [CodeGenerationEntry codeGenerationEntryfromCell:self.contentView];
   
    [super awakeFromNib];
    
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
