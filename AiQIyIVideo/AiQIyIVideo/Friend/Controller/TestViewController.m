//
//  TestViewController.m
//  AiQIyIVideo
//
//  Created by einsphy on 16/3/9.
//  Copyright © 2016年 einsphy. All rights reserved.
//

#import "TestViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    AVPlayerViewController *play = [[AVPlayerViewController alloc]init];
    play.player = [[AVPlayer alloc]initWithURL:[NSURL URLWithString:@"http://www.iqiyi.com/w_19rt0sner1.html"]];
    [self presentViewController:play animated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
