//
//  ProjectAViewController.m
//  Pods
//
//  Created by Ning.liu on 2017/2/19.
//
//

#import "ProjectAViewController.h"
#import "Masonry.h"
#import "CTMediator+ProjectB.h"

@interface ProjectAViewController ()

@end

@implementation ProjectAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = ({
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:@"push B" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(pushB) forControlEvents:UIControlEventTouchUpInside];
        btn;
    });
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(@(0));
    }];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
}
- (void)pushB{
    UIViewController *BViewController = [[CTMediator sharedInstance] viewControllerB];
    [self.navigationController pushViewController:BViewController animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
