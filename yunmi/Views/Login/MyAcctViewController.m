//
//  MyAcctViewController.m
//  yunmi
//
//  Created by 吴永正 on 2017/2/17.
//  Copyright © 2017年 吴永正. All rights reserved.
//

#import "MyAcctViewController.h"

@interface MyAcctViewController()

@end

@implementation MyAcctViewController

- (IBAction)backMainStory:(UIButton *)sender {
    NSLog(@"跳转主界面");
    UIStoryboard* storyboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.view.window.rootViewController=storyboard.instantiateInitialViewController;
}

@end
