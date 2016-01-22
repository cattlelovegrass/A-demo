//
//  YTTableView.m
//  Succluent
//
//  Created by LinShang on 16/1/18.
//  Copyright © 2016年 LinShang. All rights reserved.
//

#import "YTTableView.h"
#import "YTCell.h"

@implementation YTTableView

-(instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style reuseCellClassName:@"YTCell"];
    if(self){
        UIView *footerView = [[UIView alloc]init];
        footerView.backgroundColor = [UIColor whiteColor];
        [self setTableFooterView:footerView];
    }
    return self;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YTCell *cell = (YTCell *)[super tableView:tableView cellForRowAtIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
