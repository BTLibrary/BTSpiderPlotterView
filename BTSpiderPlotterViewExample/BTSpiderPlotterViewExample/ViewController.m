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

@implementation ViewController{
    BTSpiderPlotterView *_spiderView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //create a random value dictionary
    //data represent a review rating for a device by The Verge
    NSDictionary *valueDictionary = @{@"Design": @"7",
                                      @"Display Life": @"9",
                                      @"Camera" : @"6",
                                      @"Reception": @"9",
                                      @"Performance" : @"8",
                                      @"Software": @"7",
                                      @"Battery Life" : @"9",
                                      @"Ecosystem": @"8"};
    
    //initiate a view with the value
    _spiderView = [[BTSpiderPlotterView alloc] initWithFrame:self.view.frame valueDictionary:valueDictionary];
    [_spiderView setMaxValue:10];
    //spiderView.plotColor = [UIColor colorWithRed:.8 green:.4 blue:.3 alpha:.7];
    [self.view addSubview:_spiderView];
    
    //here on is flavoring - non essentials
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    [self.view addGestureRecognizer:tap];
    
    UILabel *label = [[UILabel alloc] init];
    [label setTranslatesAutoresizingMaskIntoConstraints:NO];
    [label setText:@"Tap anywhere"];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setTextColor:[UIColor grayColor]];
    [self.view addSubview:label];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[label]-|" options:0 metrics:0 views:NSDictionaryOfVariableBindings(label)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[label]-|" options:0 metrics:0 views:NSDictionaryOfVariableBindings(label)]];
}

- (void)tapped:(UITapGestureRecognizer *)sender
{
    NSDictionary *valueDictionary = @{@"Design": @(arc4random_uniform(9)+1).stringValue,
                                      @"Display Life": @(arc4random_uniform(9)+1).stringValue,
                                      @"Camera" : @(arc4random_uniform(9)+1).stringValue,
                                      @"Reception": @(arc4random_uniform(9)+1).stringValue,
                                      @"Performance" : @(arc4random_uniform(9)+1).stringValue,
                                      @"Software": @(arc4random_uniform(9)+1).stringValue,
                                      @"Battery Life" : @(arc4random_uniform(9)+1).stringValue,
                                      @"Ecosystem": @(arc4random_uniform(9)+1).stringValue};
    NSLog(@"%@",valueDictionary);

    [_spiderView animateWithDuration:.3 valueDictionary:valueDictionary];

}

@end
