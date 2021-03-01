//
//  AppDelegate.m
//  rongcloud
//
//  Created by MrLee on 2021/2/26.
//

#import "AppDelegate.h"
#import <RongIMKit/RongIMKit.h>
#import "ViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) RCUserInfo *currentUserInfo;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 888 eW9Rt9z2Tm3/tQlX5a4NqtIY4qhW64Al1x/Y0ExX/Dc=@y5rq.cn.rongnav.com;y5rq.cn.rongcfg.com
    // 123 eLoXpCjcodv/tQlX5a4NqrtV0D2jRBff1x/Y0ExX/Dc=@y5rq.cn.rongnav.com;y5rq.cn.rongcfg.com
//    NSString *token = @"eLoXpCjcodv/tQlX5a4NqrtV0D2jRBff1x/Y0ExX/Dc=@y5rq.cn.rongnav.com;y5rq.cn.rongcfg.com";
    // 888
    NSString *token = @"eW9Rt9z2Tm3/tQlX5a4NqtIY4qhW64Al1x/Y0ExX/Dc=@y5rq.cn.rongnav.com;y5rq.cn.rongcfg.com";
    
    
    [[RCIM sharedRCIM] initWithAppKey:@"p5tvi9dspm5e4"];
    [[RCIM sharedRCIM] connectWithToken:token
                               dbOpened:^(RCDBErrorCode code) {
        
    }
                                success:^(NSString *userId) {
        NSLog(@"%@---",userId);
    }
                                  error:^(RCConnectErrorCode status) {
    }];
    
    
    // 当前用户信息
//    123
//    RCUserInfo *_currentUserInfo = [[RCUserInfo alloc] initWithUserId:@"123" name:@"湿漉漉" portrait:@"https://ss3.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/37d3d539b6003af3b4ca21b0332ac65c1138b6ea.jpg"];
    
    RCUserInfo *_currentUserInfo = [[RCUserInfo alloc] initWithUserId:@"888" name:@"今夜无眠" portrait:@"https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1351894405,1399438176&fm=26&gp=0.jpg"];
    [RCIM sharedRCIM].currentUserInfo = _currentUserInfo;

    
    
    //头像
    [RCIM sharedRCIM].globalMessageAvatarStyle = RC_USER_AVATAR_CYCLE;
    [RCIM sharedRCIM].globalConversationAvatarStyle = RC_USER_AVATAR_CYCLE;
    //
    [RCIM sharedRCIM].userInfoDataSource = self;
          //设置用户信息在本地持久化存储。SDK 获取过的用户信息将保存在数据库中，即使 App 重新启动也能再次读取。
    [RCIM sharedRCIM].enablePersistentUserInfoCache = YES;

    return YES;
}

- (void)getUserInfoWithUserId:(NSString *)userId completion:(void (^)(RCUserInfo *))completion {
    //开发者需要将 userId 对应的用户信息返回，下列仅为示例
      //实际项目中，开发者有可能需要到 App Server 获取 userId 对应的用户信息，再通过 completion 返回给 SDK。

    if ([userId isEqualToString:@"123"]) {
        RCUserInfo *userInfo = [[RCUserInfo alloc] initWithUserId:@"123" name:@"湿漉漉" portrait:@"https://ss3.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/37d3d539b6003af3b4ca21b0332ac65c1138b6ea.jpg"];
        if (completion) {
            completion(userInfo);
        }
    }else if([userId isEqualToString:@"888"]) {
        RCUserInfo *userInfo = [[RCUserInfo alloc] initWithUserId:@"888" name:@"今夜无眠" portrait:@"https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1351894405,1399438176&fm=26&gp=0.jpg"];
        if (completion) {
            completion(userInfo);
        }
    }else{
        
    }
}

@end
