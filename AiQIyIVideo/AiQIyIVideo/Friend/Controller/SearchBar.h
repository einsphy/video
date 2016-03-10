//
//  SearchBar.h
//  AiQIyIVideo
//
//  Created by einsphy on 16/3/10.
//  Copyright © 2016年 einsphy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchBar : UIView
/**
 搜索框
 
 */
@property (nonatomic, strong)UITextField *searchBar;


/**
 筛选
 
 */
@property(nonatomic, strong)UIButton *selectBtn;
@end
