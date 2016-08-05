//
//  ViewController.h
//  Homework25
//
//  Created by Dima Sektor on 12.07.16.
//  Copyright © 2016 Dima Sektor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *viewImage;
@property (weak, nonatomic) IBOutlet UIImageView *flagImage;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttonsCollection;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property BOOL enteringDecimal;

- (IBAction)actionButton:(UIButton *)sender;
- (IBAction)indicatorButton:(UIButton *)sender;
- (IBAction)pressedDote:(UIButton *)sender;


@end

