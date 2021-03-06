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
@property (weak, nonatomic) IBOutlet UIPickerView *myPickerView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.myPickerView.delegate = self;
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
    CountryOfGoogleSite site;
    if([self.myPickerView selectedRowInComponent:0] == 0){
        //日本のGoogleが選択されている
        site = JapaneseGoogle;
    }else if([self.myPickerView selectedRowInComponent:0] == 1){
        //アメリカのGoogleが選択されている。
        site = AmericanGoogle;
    }else{
        site = JapaneseGoogle;
    }
    
    SearchViewController* ViewController = [[SearchViewController alloc] init];
    ViewController.googlesite = site;
    ViewController.SearchString = searchBar.text;
    ViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    //アニメーションを有効にしてビューを表示します。
    [self presentViewController: ViewController animated:YES completion: nil];
    

}

-(NSString*)pickerView:(UIPickerView*)pickerView
           titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    // 行インデックス番号を返す
    //return [NSString stringWithFormat:@"%d", row];
    if(row == 0){
        return @"日本のGoogle";
    }else if(row ==1){
        return @"American Google";
    }
    return @"";
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 2;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView{
    return 1; //列数は２つ
}

@end
