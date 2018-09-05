//
//  WLFirstPresentViewController.m
//  PresentPush
//
//  Created by wangxiaoli on 2018/9/4.
//  Copyright © 2018年 Sunshine. All rights reserved.
//

#import "WLFirstPresentViewController.h"
#import "WLPushViewController.h"

@interface WLFirstPresentViewController ()

@end

@implementation WLFirstPresentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)pushAction:(id)sender {
    WLPushViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"WLPushViewController"];
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
