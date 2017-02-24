//
//  AppDelegate.h
//  yunmi
//
//  Created by 吴永正 on 2017/2/13.
//  Copyright © 2017年 吴永正. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;

@property float autoSizeScaleX;
@property float autoSizeScaleY;

+ (void)storyBoradAutoLay:(UIView *)allView;


@end

