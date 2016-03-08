//
//  QiYiTabbarController.m
//  AiQIyIVideo
//
//  Created by einsphy on 16/3/8.
//  Copyright © 2016年 einsphy. All rights reserved.
//

#import "QiYiTabbarController.h"
#import "QiYiViewController.h"
@interface QiYiTabbarController ()

@end

@implementation QiYiTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];



}

-(void)addChildVC:(UIViewController *)childController title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    

    /**
     标题及tabbarmingzi
     
     */
    childController.title = title;
    
    /**
     tabbar未被点击字体颜色
     
     */
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName] = QYColor(110, 110, 110);
    
    [childController.tabBarItem setTitleTextAttributes:attr forState:(UIControlStateNormal)];
    
    /**
     未被点击图片
     
     */
    
    childController.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    
    /**
     被点击后的图片颜色
     
     */
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    
    /**
     tabbar点击后字体颜色
     
     */
    NSMutableDictionary *selectedAttr = [NSMutableDictionary dictionary];
    selectedAttr[NSForegroundColorAttributeName] = QYColor(255, 0, 0);
    [childController.tabBarItem setTitleTextAttributes:selectedAttr forState:(UIControlStateSelected)];
    
    QiYiViewController *nav = [[QiYiViewController alloc]initWithRootViewController:childController];

    [self addChildViewController:nav];

}


@end
