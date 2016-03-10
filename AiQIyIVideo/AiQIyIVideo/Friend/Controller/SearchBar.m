//
//  SearchBar.m
//  AiQIyIVideo
//
//  Created by einsphy on 16/3/10.
//  Copyright © 2016年 einsphy. All rights reserved.
//

#import "SearchBar.h"

#define QYMargin 10
@implementation SearchBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(void)layoutSubviews
{

    
    

    self.searchBar = [[UITextField alloc]init];
    self.searchBar.backgroundColor = [UIColor redColor];
    [self addSubview:self.searchBar];
    
    self.selectBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    self.selectBtn.backgroundColor = [UIColor greenColor];
    [self addSubview:self.selectBtn];
    
    
    /**
     搜索框布局
     
     */
    __weak typeof(self) weakSelf= self;
    
    [self.searchBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.and.left.mas_equalTo(QYMargin / 2);
        make.width.equalTo(weakSelf.selectBtn).multipliedBy(2);
        make.bottom.mas_equalTo(-QYMargin / 2);
        
    }];
    
    
    
    
    /**
     筛选按钮布局
     
     */
    
    
    
    [self.selectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(CGRectGetMaxX(weakSelf.searchBar.frame) + QYMargin);
        make.top.equalTo(weakSelf.searchBar);
        make.right.mas_equalTo(-QYMargin);
        make.width.equalTo(weakSelf.searchBar).multipliedBy(0.5);
    }];


}

@end
