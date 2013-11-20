//
//  ViewController.m
//  Example9
//
//  Created by 岡 大輔 on 2013/11/20.
//  Copyright (c) 2013年 ナノソフトウェア. All rights reserved.
//

#import "ViewController.h"

#import "SearchViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)searchBarSearchButtonClicked:(UISearchBar*)searchBar
{
    if([searchBar.text isEqual: @""]){
        return;
    }
    
    SearchViewController* ViewController = [[SearchViewController alloc] init];
    ViewController.SearchString = searchBar.text;
    ViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    //アニメーションを有効にしてビューを表示します。
    [self presentViewController: ViewController animated:YES completion: nil];
}

@end
