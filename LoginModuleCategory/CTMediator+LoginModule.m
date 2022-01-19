//
//  CTMediator+LoginModule.m
//  LoginModuleCategory
//
//  Created by ahs on 2022/1/19.
//

#import "CTMediator+LoginModule.h"

@implementation CTMediator (LoginModule)
- (UIViewController *)accountLogin {
    UIViewController *viewController = [self performTarget:@"Account" action:@"nativeLoginViewController" params:nil shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}
@end
