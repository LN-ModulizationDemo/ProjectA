//
//  CTMediator+ProjectB.m
//  Pods
//
//  Created by Ning.liu on 2017/2/19.
//
//

#import "CTMediator+ProjectB.h"

@implementation CTMediator (ProjectB)
- (UIViewController *)viewControllerB{
    return [[CTMediator sharedInstance] performTarget:@"B" action:@"viewController" params:nil shouldCacheTarget:NO];
}
@end
