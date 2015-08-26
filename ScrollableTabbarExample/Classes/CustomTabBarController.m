//
//  CustomTabBarController.m
//  ScrollableTabbarExample
//
//  Created by Maitrayee Ghosh on 13/07/15.
//  Copyright (c) 2015 Maitrayee Ghosh. All rights reserved.
//

#import "CustomTabBarController.h"

@interface CustomTabBarController ()

@end

@implementation CustomTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   [[NSBundle mainBundle] loadNibNamed:@"CustomTabUIView" owner:self options:nil];
    _customTabUIView.frame=CGRectMake(0, self.view.frame.size.height-49, self.view.frame.size.width, 49);
    [self.view addSubview:_customTabUIView];
    
    _tabUIScrollView.contentSize=CGSizeMake(_firstUIButtonOutlet.frame.size.width*6, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Custom Tab Buttons

- (IBAction)didTapTabBarButton:(UIButton *)sender {
    [self UnSelectAllTheTabs];
    switch (sender.tag) {
        case 0:
        {
            _firstUIButtonOutlet.backgroundColor=[UIColor grayColor];
            self.selectedIndex=0;
            break;
        }
        case 1:
        {
            _secondUIButtonOutlet.backgroundColor=[UIColor grayColor];
            self.selectedIndex=1;
            break;
        }
        case 2:
        {
            _thirdUIButtonOutlet.backgroundColor=[UIColor grayColor];
            self.selectedIndex=2;
            break;
        }
        case 3:
        {
            _fourthUIButtonOutlet.backgroundColor=[UIColor grayColor];
            self.selectedIndex=3;
            break;
        }
        case 4:
        {
            _fifthUIButtonOutlet.backgroundColor=[UIColor grayColor];
            self.selectedIndex=4;
            break;
        }
        case 5:
        {
            _sixthUIButtonOutlet.backgroundColor=[UIColor grayColor];
            self.selectedIndex=5;
            break;
        }
        default:
            break;
    }
}


#pragma mark - Unselect All Tab Button

-(void)UnSelectAllTheTabs
{
    _firstUIButtonOutlet.backgroundColor=[UIColor lightGrayColor];
    _secondUIButtonOutlet.backgroundColor=[UIColor lightGrayColor];
    _thirdUIButtonOutlet.backgroundColor=[UIColor lightGrayColor];
    _fourthUIButtonOutlet.backgroundColor=[UIColor lightGrayColor];
    _fifthUIButtonOutlet.backgroundColor=[UIColor lightGrayColor];
    _sixthUIButtonOutlet.backgroundColor=[UIColor lightGrayColor];
}

@end
