//
//  WLViewController.m
//  Pushpresent
//
//  Created by 1587272615@qq.com on 09/05/2018.
//  Copyright (c) 2018 1587272615@qq.com. All rights reserved.
//

#import "WLViewController.h"
#import "WLFirstPresentViewController.h"

@interface WLViewController ()

@end

@implementation WLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)firstPresentAction:(id)sender {
    WLFirstPresentViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"WLFirstPresentViewController"];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
