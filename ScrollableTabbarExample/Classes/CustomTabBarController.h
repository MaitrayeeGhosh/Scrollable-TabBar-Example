//
//  CustomTabBarController.h
//  ScrollableTabbarExample
//
//  Created by Maitrayee Ghosh on 13/07/15.
//  Copyright (c) 2015 Maitrayee Ghosh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTabBarController : UITabBarController
@property (strong, nonatomic) IBOutlet UIView *customTabUIView;
@property (weak, nonatomic) IBOutlet UIScrollView *tabUIScrollView;

@property (weak, nonatomic) IBOutlet UIButton *firstUIButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *secondUIButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *thirdUIButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *fourthUIButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *fifthUIButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *sixthUIButtonOutlet;

- (IBAction)didTapTabBarButton:(UIButton *)sender;

@end
