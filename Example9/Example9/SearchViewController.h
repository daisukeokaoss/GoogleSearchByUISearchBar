//
//  SearchViewController.h
//  BrainStorming
//
//  Created by 岡 大輔 on 2013/06/07.
//  Copyright (c) 2013年 岡 大輔. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM (NSUInteger, CountryOfGoogleSite) {
    JapaneseGoogle,
    AmericanGoogle,
    defaultGoogle
};

@interface SearchViewController : UIViewController
@property (nonatomic,strong) NSString *SearchString;
@property (nonatomic) CountryOfGoogleSite googlesite;

@end
