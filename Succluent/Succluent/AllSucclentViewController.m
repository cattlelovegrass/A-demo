//
//  AllSucclentViewController.m
//  Succluent
//
//  Created by LinShang on 16/1/18.
//  Copyright © 2016年 LinShang. All rights reserved.
//

#import "AllSucclentViewController.h"
//#import "WBStatusHelper.h"
#import "YTTableView.h"

//#import "AFNetworking.h"

@interface AllSucclentViewController ()

@property(nonatomic,strong)YTTableView *tableView;


@end

@implementation AllSucclentViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
  
    [self makeUI];
 


    if([self.statusType isEqualToString:@"all"]) {
//        self.view.backgroundColor = [UIColor redColor];
    }else if([self.statusType isEqualToString:@"hot"]) {
//        self.view.backgroundColor = [UIColor yellowColor];
    }else if([self.statusType isEqualToString:@"focus"]) {
//        self.view.backgroundColor = [UIColor blueColor];
    }

     [[UINavigationBar appearance]setBarTintColor:[UIColor whiteColor]];
    // Do any additional setup after loading the view.
}

-(void)makeUI {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
