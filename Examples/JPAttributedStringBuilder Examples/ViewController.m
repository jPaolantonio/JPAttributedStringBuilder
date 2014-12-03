//
//  ViewController.m
//  JPAttributedStringBuilder Examples
//
//  Created by James Paolantonio on 12/2/14.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import "ViewController.h"
#import "JPAttributedStringBuilder.h"

@interface ViewController ()
@property (strong, nonatomic) UILabel *attributedLabel;
@property (strong, nonatomic) UILabel *jpAttributedLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.attributedLabel = ({
        UILabel *label = [[UILabel alloc] init];
        label.translatesAutoresizingMaskIntoConstraints = NO;
        label.numberOfLines = 0;
        [self.view addSubview:label];
        
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label
                                                              attribute:NSLayoutAttributeLeading
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeLeading
                                                             multiplier:1.f
                                                               constant:16.f]];
        
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label
                                                              attribute:NSLayoutAttributeTrailing
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeTrailing
                                                             multiplier:1.f
                                                               constant:-16.f]];
        
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.topLayoutGuide
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1.f
                                                               constant:16.f]];
        
        label;
    });
    
    self.jpAttributedLabel = ({
        UILabel *label = [[UILabel alloc] init];
        label.translatesAutoresizingMaskIntoConstraints = NO;
        label.numberOfLines = 0;
        [self.view addSubview:label];
        
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label
                                                              attribute:NSLayoutAttributeLeading
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeLeading
                                                             multiplier:1.f
                                                               constant:16.f]];
        
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label
                                                              attribute:NSLayoutAttributeTrailing
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeTrailing
                                                             multiplier:1.f
                                                               constant:-16.f]];
        
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.attributedLabel
                                                              attribute:NSLayoutAttributeBaseline
                                                             multiplier:1.f
                                                               constant:16.f]];
        
        label;
    });
    
    NSAttributedString *normalAttributedString = [[NSAttributedString alloc] initWithString:@"This is a normal string"
                                                                                 attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14.f],
                                                                                              NSForegroundColorAttributeName : [UIColor redColor],
                                                                                              NSBackgroundColorAttributeName : [UIColor lightGrayColor]}];
    
    JPAttributedStringBuilder *stringBuilder = [[JPAttributedStringBuilder alloc] init];
    stringBuilder.font = [UIFont systemFontOfSize:14.f];
    stringBuilder.foregroundColor = [UIColor redColor];
    stringBuilder.backgroundColor = [UIColor lightGrayColor];
    stringBuilder.text = @"This is a better string";
    
    NSAttributedString *jpAttributedString = [stringBuilder build];
    
    self.attributedLabel.attributedText = normalAttributedString;
    self.jpAttributedLabel.attributedText = jpAttributedString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
