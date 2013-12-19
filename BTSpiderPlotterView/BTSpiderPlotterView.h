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

//Example value dictionary
//No less than 3 entries for the same reason as why the chair do not stand on 2 legs
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

//Contributed by Cdtschange - https://github.com/cdtschange
//Animate changes in the value on the spot
-(void)animateWithDuration:(NSTimeInterval)duration valueDictionary:(NSDictionary *)valueDictionary;

    
@end
