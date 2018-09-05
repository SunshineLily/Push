//
//  WLPushViewController.m
//  PresentPush
//
//  Created by wangxiaoli on 2018/9/4.
//  Copyright © 2018年 Sunshine. All rights reserved.
//

#import "WLPushViewController.h"
#import "WLSecondPresentViewController.h"

@interface WLPushViewController ()

@end

@implementation WLPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)secondPresentAction:(id)sender {
    WLSecondPresentViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"WLSecondPresentViewController"];
    [self.navigationController pushViewController:vc animated:YES];
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
