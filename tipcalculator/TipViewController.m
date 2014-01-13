//
//  TipViewController.m
//  tipcalculator
//
//  Created by Sandip Patel on 1/9/14.
//  Copyright (c) 2014 Y.CORP.YAHOO.COM\psandip. All rights reserved.
//

#import "TipViewController.h"
#import "SettingsViewController.h"
@interface TipViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;
- (IBAction)onTap:(id)sender;
- (IBAction)onSettings:(id)sender;

- (IBAction)onMyTap:(id)sender;
- (void) updateValues;
@end

@implementation TipViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Tip Calculator";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int percentage = [defaults integerForKey:@"percentage"];
    self.tipControl.selectedSegmentIndex = percentage;
     //setSelectedSegmentIndex:(percentage)];
    [self updateValues];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)onSettings:(id)sender {
    [self.navigationController pushViewController:[[SettingsViewController alloc] init] animated:YES];
}

- (IBAction)onMyTap:(id)sender {
    [self.view endEditing:YES];
    [self updateValues];
}

- (void) updateValues {
    float billAmount = [self.billTextField.text floatValue];
    NSArray *tipValues = @[@(0.1),@(0.15),@(0.2)];
    float tipAmount = billAmount * [tipValues[self.tipControl.selectedSegmentIndex] floatValue];
    float totalAmount = tipAmount+billAmount;
    self.tipLabel.text = [NSString stringWithFormat:@"%0.2f",tipAmount];
    self.totalLabel.text = [NSString stringWithFormat:@"%0.2f",totalAmount];
}
@end
