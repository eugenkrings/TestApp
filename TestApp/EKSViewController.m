//
//  EKSViewController.m
//  TestApp
//
//  Created by EK on 17/07/14.
//  Copyright (c) 2014 EK. All rights reserved.
//

#import "EKSViewController.h"

@interface EKSViewController ()

@property (weak, nonatomic) IBOutlet UIView *frameView;
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UIButton *signInButton;

- (IBAction)dismissKeyboard:(id)sender;

@end

@implementation EKSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // UI initializations
    self.frameView.layer.borderWidth = 1.0;
    self.frameView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.frameView.layer.cornerRadius = 10.0;
    
    self.signInButton.layer.borderWidth = 1.0;
    self.signInButton.layer.borderColor = [UIColor colorWithRed:0.0 green:120/255.0 blue:0.0 alpha:1.0].CGColor;
    self.signInButton.layer.cornerRadius = 10.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Dismiss keyboard when the user taps background view
- (IBAction)dismissKeyboard:(id)sender
{
    [self.usernameField resignFirstResponder];
    [self.passwordField resignFirstResponder];
}

@end
