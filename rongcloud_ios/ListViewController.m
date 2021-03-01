//
//  ListViewController.m
//  rongcloud
//
//  Created by MrLee on 2021/2/26.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"消息列表";
}
- (void)onSelectedTableRow:(RCConversationModelType)conversationModelType conversationModel:(RCConversationModel *)model atIndexPath:(NSIndexPath *)indexPath {

    RCConversationViewController *conversationVC = [[RCConversationViewController alloc] initWithConversationType:model.conversationType targetId:model.targetId];
    //会话标题
    
    conversationVC.title = model.conversationTitle;
    [self.navigationController pushViewController:conversationVC animated:YES];
}


@end
