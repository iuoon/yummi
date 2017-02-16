//
//  ViewController.m
//  yunmi
//
//  Created by 吴永正 on 2017/2/13.
//  Copyright © 2017年 吴永正. All rights reserved.
//

#import "ViewController.h"
#import "SDCycleScrollView.h"


@interface ViewController () <SDCycleScrollViewDelegate>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *demoContainerView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 70, self.view.bounds.size.width,self.view.bounds.size.height)];
    demoContainerView.contentSize = CGSizeMake(self.view.frame.size.width, 20);
    [self.view addSubview:demoContainerView];
    
    NSArray *titles = @[@"纵有千种风情，更与何人说",
                        @"等到风霜都变成了雪",
                        @"且听风吟",
                        @"你的泪"
                        ];
    NSArray *imagesURLStrings = @[
                                  @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1487831666&di=392782b5f2ff2c13e4fafe192dbb45fd&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201508%2F11%2F20150811200837_QXhNU.jpeg",
                                  @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1487236997862&di=8072fe9d6bcdb9c6195b7ab76dddc2b3&imgtype=jpg&src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D2342477008%2C1761709829%26fm%3D214%26gp%3D0.jpg",
                                  @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1487236825429&di=6d195dc428a028c9ceae940eeedb0629&imgtype=0&src=http%3A%2F%2Fstatic4.photo.sina.com.cn%2Fbmiddle%2F4afe296344bdb9f5ba933",
                                  @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1487237394496&di=96b5a5c598b445ef5b4ad32e9d9f088d&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fback_pic%2Fqk%2Fback_origin_pic%2F00%2F01%2F48%2Ff1ac8ebc9b28c126f28edb6c091b223d.jpg"
                                  ];
    
    CGFloat w = self.view.bounds.size.width;
    
    // 网络加载 --- 创建带标题的图片轮播器
    SDCycleScrollView *cycleScrollView2 = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(20, 0, w-40, 140) delegate:self placeholderImage:[UIImage imageNamed:@"placeholder"]];
    
    cycleScrollView2.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    cycleScrollView2.titlesGroup = titles;
    cycleScrollView2.currentPageDotColor = [UIColor whiteColor]; // 自定义分页控件小圆标颜色
    [demoContainerView addSubview:cycleScrollView2];
    
    //         --- 模拟加载延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        cycleScrollView2.imageURLStringsGroup = imagesURLStrings;
    });
    
    /*
     block监听点击方式
     
     cycleScrollView2.clickItemOperationBlock = ^(NSInteger index) {
     NSLog(@">>>>>  %ld", (long)index);
     };
     
     */


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
