//
//  ViewController.m
//  Test
//
//  Created by Salvatore Graf on 26/02/16.
//  Copyright © 2016 Italwork S.r.l. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
#import "SGProgressIndicator.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet SGProgressIndicator *indicator;
@property (nonatomic) TableViewController* tableViewcontroller;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableViewcontroller              = self.childViewControllers[0] ;
    _tableViewcontroller.indicator    = self.indicator;
    self.indicator.SGProgressDelegate = _tableViewcontroller;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
