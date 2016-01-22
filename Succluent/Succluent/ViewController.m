//
//  ViewController.m
//  Succluent
//
//  Created by LinShang on 16/1/18.
//  Copyright © 2016年 LinShang. All rights reserved.
//

#import "DiscoverViewController.h"
#import "CommonViewController.h"
#import "BaikeViewController.h"
#import "MineViewController.h"
#import "HomeViewController.h"
#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self establishChildViewController];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)establishChildViewController {
    
    HomeViewController *homeVC = [[HomeViewController alloc]init];
    [self establishChildViewController:homeVC title:@"主页" nomarlImage:@"ic_main_n.png" selectedImage:@"ic_main_y.png"];
    
    DiscoverViewController *discoverVC = [[DiscoverViewController alloc]init];
    [self establishChildViewController:discoverVC title:@"发现" nomarlImage:@"ic_find_n.png" selectedImage:@"ic_find_y.png"];
    
    BaikeViewController *baiKeVC = [[BaikeViewController alloc]init];
    [self establishChildViewController:baiKeVC title:@"百科" nomarlImage:@"ic_search_n.png" selectedImage:@"ic_search_y.png"];
    
    MineViewController *mineVC = [[MineViewController alloc]init];
    [self establishChildViewController:mineVC title:@"我的" nomarlImage:@"ic_person_n.png" selectedImage:@"ic_person_y.png"];
  
}

-(void)establishChildViewController:(UIViewController *)ChildVC title:(NSString *)title nomarlImage:(NSString *)imageName selectedImage:(NSString *)selectedImageName {
    CommonViewController *comNav = [[CommonViewController alloc]initWithRootViewController:ChildVC];
    ChildVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:title image:[UIImage imageNamed:imageName] selectedImage:[UIImage imageNamed:selectedImageName]];
    [self addChildViewController:comNav];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
