//
//  ViewController.m
//  BTLibrary
//
//  Created by Byte on 5/29/13.
//  Copyright (c) 2013 Byte. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface BTSpiderPlotterView : UIView

//example dictionary
/*
 @{@"Design": @"7",
 @"Display Life": @"9",
 @"Camera" : @"6",
 @"Reception": @"9",
 @"Performance" : @"8",
 @"Software": @"7",
 @"Battery Life" : @"9",
 @"Ecosystem": @"8"};
 */
- (id)initWithFrame:(CGRect)frame valueDictionary:(NSDictionary *)valueDictionary;

@property (nonatomic, assign) CGFloat valueDivider; // default 1
@property (nonatomic, assign) CGFloat maxValue; // default to the highest value in the dictionary
@property (nonatomic, strong) UIColor *drawboardColor; // defualt black
@property (nonatomic, strong) UIColor *plotColor; // defualt dark grey

@end
