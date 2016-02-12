//
//  ViewController.m
//  MockApp
//
//  Created by Appmonkeyz on 2/12/16.
//  Copyright © 2016 Appmonkeyz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageLogo;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _imageLogo.image = [UIImage imageNamed:@"AppLogo"];
    self.title = @"Mock App";
    
    _registerButton.layer.cornerRadius = 10.0;
    _loginButton.layer.cornerRadius = 10.0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnLogin:(UIButton *)sender {
    [self performSegueWithIdentifier:@"LOG_IN" sender:self];
}
- (IBAction)btnRegister:(id)sender {
    [self performSegueWithIdentifier:@"REGISTER" sender:self];

}

@end
