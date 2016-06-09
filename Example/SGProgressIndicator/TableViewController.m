//
//  TableViewController.m
//  Test
//
//  Created by Salvatore Graf on 01/03/16.
//  Copyright © 2016 Italwork S.r.l. All rights reserved.
//

#import "TableViewController.h"


@interface TableViewController ()

@property (weak, nonatomic) IBOutlet UILabel *valoreTickness;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBactions
#pragma mark - Tickness

- (IBAction)ticknessValue:(UIStepper *)sender {
    
    _indicator.thickness  = sender.value;
    _valoreTickness.text = [NSString stringWithFormat:@"%.0f",sender.value];
}

#pragma mark - Rotation
- (IBAction)firstRotation:(UISwitch*)sender {
    _indicator.firstClockWise = sender.on;
    [_indicator stopAnimating];
    [_indicator startAnimating];
}
- (IBAction)secondRotation:(UISwitch*)sender {
    _indicator.secondClockWise = sender.on;
    [_indicator stopAnimating];
    [_indicator startAnimating];
    
}
- (IBAction)thirdRotation:(UISwitch*)sender  {
    _indicator.thirdClockWise = sender.on;
    [_indicator stopAnimating];
    [_indicator startAnimating];
}
- (IBAction)fourthRotation:(UISwitch*)sender  {
    _indicator.fourthClockWise = sender.on;
    [_indicator stopAnimating];
    [_indicator startAnimating];
}

#pragma mark - Velocity
- (IBAction)firstVelocity:(UISlider *)sender {
    _indicator.firstVelocity = sender.value;
    [_indicator stopAnimating];
    [_indicator startAnimating];
}
- (IBAction)secondVelocity:(UISlider *)sender {
    _indicator.secondVelocity = sender.value;
    [_indicator stopAnimating];
    [_indicator startAnimating];
}
- (IBAction)thirdVelocity:(UISlider *)sender {
    _indicator.thirdVelocity = sender.value;
    [_indicator stopAnimating];
    [_indicator startAnimating];
}
- (IBAction)fourthVelocity:(UISlider *)sender {
    _indicator.fourthVelocity = sender.value;
    [_indicator stopAnimating];
    [_indicator startAnimating];
}

#pragma mark - Visibility
- (IBAction)firstVisible:(UISwitch *)sender {
    _indicator.firstVisible = sender.on;
}
#pragma mark - Visibility
- (IBAction)secondVisible:(UISwitch *)sender {
    _indicator.secondVisible = sender.on;
}
#pragma mark - Visibility
- (IBAction)thirdVisible:(UISwitch *)sender {
    _indicator.thirdVisible = sender.on;
}
#pragma mark - Visibility
- (IBAction)fourthVisible:(UISwitch *)sender {
    _indicator.fourthVisible = sender.on;
}


@end
