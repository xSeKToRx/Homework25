//
//  ViewController.m
//  Homework25
//
//  Created by Dima Sektor on 12.07.16.
//  Copyright © 2016 Dima Sektor. All rights reserved.
//

#import "ViewController.h"

typedef enum {
    operationPlus=12,
    opertionMinus=13,
    operationDivide=11,
    operationMultiply=10,
    operationDelete=14
}Operation;
@interface ViewController ()
@property(assign,nonatomic)double number;
@property(assign,nonatomic)float result;
@property(assign,nonatomic)Operation operationName;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultLabel.frame=CGRectMake(CGRectGetMinX(self.view.frame)+20, CGRectGetMinY(self.view.frame)+140, CGRectGetMaxX(self.view.frame)-40, CGRectGetMinY(self.view.frame)+60);
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButton:(UIButton *)sender {
   
    if (self.enteringDecimal==NO) {
        self.number=self.number*10+(float)sender.tag;
        self.resultLabel.text=[NSString stringWithFormat:@"%.f",self.number];
       }else{
        self.resultLabel.text=[self.resultLabel.text stringByAppendingFormat:@"%ld",(long)sender.tag];
      self.result=[self.resultLabel.text floatValue];
    }
}
- (IBAction)indicatorButton:(UIButton *)sender {
    /*
    switch (sender.tag) {
            case 10:
            self.resultLabel.text=[NSString stringWithFormat:@"*"];
            break;
            case 11:
            self.resultLabel.text=[NSString stringWithFormat:@"/"];
            break;
            case 12:
            self.resultLabel.text=[NSString stringWithFormat:@"+"];
            break;
            case 13:
            self.resultLabel.text=[NSString stringWithFormat:@"-"];
            break;
            case 14:
            self.number=0;
            self.resultLabel.text=[NSString stringWithFormat:@"0"];
            break;
            case 15:
            self.resultLabel.text=[NSString stringWithFormat:@"="];
            break;
            case 16:
            self.resultLabel.text=[NSString stringWithFormat:@"."];
            break;

        default:
            self.resultLabel.text=[NSString stringWithFormat:@"0"];
            break;
    }
     */

    if (self.operationName==0) {

        self.result=self.number;
    }else{

    switch (self.operationName) {
        case operationPlus:
            self.result=self.number+self.result;
          [self textMethod];
            break;
            
            case opertionMinus:
            self.result=self.result-self.number;
          [self textMethod];
            break;
            
            case operationMultiply:
            self.result=self.result*self.number;
            [self textMethod];
            break;
            
            case operationDivide:
            self.result=self.result/self.number;
           [self textMethod];
            break;
            
            case operationDelete:
            self.result=self.number;
            self.resultLabel.text=[NSString stringWithFormat:@"%.f",self.result];
            break;
            
            default:
            break;
                 
   }
    }
    self.number=0;
    if ((sender.tag)==0) self.result=0;
    self.operationName=sender.tag;
    self.enteringDecimal=NO;
    
    }

- (IBAction)pressedDote:(UIButton *)sender {
        if (!self.enteringDecimal) {
        self.enteringDecimal=YES;
        self.resultLabel.text=[self.resultLabel.text stringByAppendingFormat:@"."];
        }
    }

-(void)textMethod{
    NSString* text=[NSString stringWithFormat:@"%.2f",(float)self.result];
    [self.resultLabel setText:text];
    
}

@end
