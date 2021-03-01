//
//  AppDelegate.h
//  rongcloud
//
//  Created by MrLee on 2021/2/26.
//

#import <UIKit/UIKit.h>
#import <RongIMKit/RongIMKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,RCIMUserInfoDataSource>

@property(nonatomic,strong)UIWindow *window;

@end

