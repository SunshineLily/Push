//
//  WLSecondPresentViewController.m
//  PresentPush
//
//  Created by wangxiaoli on 2018/9/4.
//  Copyright © 2018年 Sunshine. All rights reserved.
//

#import "WLSecondPresentViewController.h"

@interface WLSecondPresentViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, assign) BOOL flag;

@end

@implementation WLSecondPresentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadRequest];
}
- (void)loadRequest
{
    NSString *urlStr = @"https://dev.qingkepay.com:10080/demo.html";
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:urlStr]];
    [self.webView loadRequest:request];
}

- (UIViewController *)presentingViewController
{
    if (self.flag) {
        return nil;
    } else {
       return  [super presentingViewController];
    }
}

- (void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion
{
//    NSLog(@)
    if ([viewControllerToPresent isKindOfClass:[UIDocumentMenuViewController class]] || [viewControllerToPresent isKindOfClass:[UIImagePickerController class]]) {
        self.flag = YES;
    }
    [super presentViewController:viewControllerToPresent animated:flag completion:completion];
}
//-(void)dismissViewControllerAnimated:(BOOL)flag completion:(void (^)(void))completion
//{
//    if (self.presentedViewController)
//    {
//        [super dismissViewControllerAnimated:flag completion:completion];
//    }
//}

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
