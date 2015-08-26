//
//  ViewController.m
//  AppB
//
//  Created by Nguyen Minh Khue on 8/26/15.
//  Copyright (c) 2015 Nguyen Minh Khue. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *OpenAppA;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self.OpenAppA layer] setBorderWidth:1.0f];
    [[self.OpenAppA layer] setBorderColor:[UIColor lightGrayColor].CGColor];
    self.OpenAppA.backgroundColor = [UIColor lightGrayColor];
    self.OpenAppA.titleLabel.textColor = [UIColor blackColor];
}
- (IBAction)OpenAppAClick:(id)sender {
    NSString *customURL = @"ApplicationA://";
    
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:customURL]])
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:customURL]];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"URL error"
                                                        message:[NSString stringWithFormat:@"No custom URL defined for %@", customURL]
                                                       delegate:self cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
