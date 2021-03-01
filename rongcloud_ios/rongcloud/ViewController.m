//
//  ViewController.m
//  rongcloud
//
//  Created by MrLee on 2021/2/26.
//

#import "ViewController.h"
#import "ListViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)chat:(UIButton *)sender {
    RCConversationViewController *conversationVC = [[RCConversationViewController alloc] init];
    conversationVC.conversationType = ConversationType_PRIVATE;
    conversationVC.targetId = @"888";
    [self.navigationController pushViewController:conversationVC animated:YES];
}

- (IBAction)list:(UIButton *)sender {
    
    ListViewController *vc = [[ListViewController alloc] initWithDisplayConversationTypes:@[@(ConversationType_PRIVATE),@(ConversationType_GROUP),@(ConversationType_SYSTEM)] collectionConversationType:@[@(ConversationType_SYSTEM)]];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
