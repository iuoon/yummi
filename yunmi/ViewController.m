//
//  ViewController.m
//  yunmi
//
//  Created by 吴永正 on 2017/2/13.
//  Copyright © 2017年 吴永正. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)search:(UIButton *)sender {
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Information" message:@"Hellworld" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//    [alert show];
    NSLog(@"跳转搜索界面");
    UIStoryboard* storyboard=[UIStoryboard storyboardWithName:@"Search" bundle:nil];
    self.view.window.rootViewController=storyboard.instantiateInitialViewController;
}


@end
