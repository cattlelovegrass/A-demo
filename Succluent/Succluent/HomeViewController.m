//
//  HomeViewController.m
//  Succluent
//
//  Created by LinShang on 16/1/18.
//  Copyright © 2016年 LinShang. All rights reserved.
//
#import "AllSucclentViewController.h"
#import  "HomeViewController.h"
#import  "HMSegmentedControl.h"
//#import "WBStatusHelper.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self makeUI];
    [self loadAllSucclent:@"all"];
    // Do any additional setup after loading the view.
}
-(void)makeUI {
    HMSegmentedControl *segmentedControl = [[HMSegmentedControl alloc] initWithSectionTitles:@[@" 全部",@" 最热",@" 关注"]];
    [segmentedControl addTarget:self action:@selector(segmentedControlChangedValue:) forControlEvents:UIControlEventValueChanged];
    [segmentedControl setTag:0];
    [segmentedControl setSelectionIndicatorColor:[UIColor colorWithRed:70/255.0 green:177/255.0 blue:90/255.0 alpha:1]];
    self.navigationItem.titleView = segmentedControl;
    
}


-(void)segmentedControlChangedValue:(HMSegmentedControl *)segmentedControl {
    NSUInteger index = segmentedControl.selectedIndex;
    if(index == 0){
        [self loadAllSucclent:@"all"];
    }else if(index == 1) {
        [self loadAllSucclent:@"hot"];
    }else if(index == 2) {
        [self loadAllSucclent:@"focus"];
    }
}
-(void)loadAllSucclent:(NSString *)indexType {
    AllSucclentViewController *all = [[AllSucclentViewController alloc]init];
    [self addChildViewController:all];
    all.statusType = indexType;
    all.view.frame = CGRectMake(0,64,self.view.frame.size.width,self.view.frame.size.height);
    [self.view addSubview:all.view];
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
