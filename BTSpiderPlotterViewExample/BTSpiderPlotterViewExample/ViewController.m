//
//  ViewController.m
//  BTSpiderPlotterViewExample
//
//  Created by Byte on 10/14/13.
//  Copyright (c) 2013 Byte. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDictionary *valueDictionary = @{@"Design": @"7",
                                      @"Display Life": @"9",
                                      @"Camera" : @"6",
                                      @"Reception": @"9",
                                      @"Performance" : @"8",
                                      @"Software": @"7",
                                      @"Battery Life" : @"9",
                                      @"Ecosystem": @"8"};
    
    BTSpiderPlotterView *spiderView = [[BTSpiderPlotterView alloc] initWithFrame:self.view.frame valueDictionary:valueDictionary];
    //spiderView.plotColor = [UIColor colorWithRed:.8 green:.4 blue:.3 alpha:.7];
    [self.view addSubview:spiderView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
