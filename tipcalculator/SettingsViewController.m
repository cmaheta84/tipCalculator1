//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Sandip Patel on 1/12/14.
//  Copyright (c) 2014 Y.CORP.YAHOO.COM\psandip. All rights reserved.
//

#import "SettingsViewController.h"
#import "TipViewController.h"

@interface SettingsViewController ()
- (IBAction)onOpt1:(id)sender;
- (IBAction)onOpt2:(id)sender;
- (IBAction)onOpt3:(id)sender;
@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Preferences";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onOpt1:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:0 forKey:@"percentage"];
    [self.navigationController pushViewController:[[TipViewController alloc] init]animated:YES];
}

- (IBAction)onOpt2:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:1 forKey:@"percentage"];
    [self.navigationController pushViewController:[[TipViewController alloc] init]animated:YES];
}

- (IBAction)onOpt3:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:2 forKey:@"percentage"];
    [self.navigationController pushViewController:[[TipViewController alloc] init]animated:YES];
}
@end
