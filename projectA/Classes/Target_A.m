//
//  Target_A.m
//  Pods
//
//  Created by Ning.liu on 2017/2/19.
//
//

#import "Target_A.h"
#import "ProjectAViewController.h"
@implementation Target_A
- (UIViewController *)Action_viewController:(NSDictionary *)params{
    return [[ProjectAViewController alloc] init];
}
- (void)Action_share:(NSDictionary *)params{
    NSDictionary *shareInfo = [params objectForKey:@"shareInfo"];

    void (^callBack)(BOOL,NSString *) = [params objectForKey:@"callBack"];
    
    !callBack?:callBack(shareInfo?YES:NO,shareInfo?@"success":@"failure");
}
@end
