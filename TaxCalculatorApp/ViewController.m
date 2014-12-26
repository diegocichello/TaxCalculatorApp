//
//  ViewController.m
//  TaxCalculatorApp
//
//  Created by Diego Cichello on 12/23/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property double ca_tax;
@property double chi_tax;
@property double ny_tax;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ca_tax = 7.5/100;
    self.chi_tax = 9.25/100;
    self.ny_tax = 4.5/100;
    self.resultLabel.text =@"";

}
- (IBAction)onButtonTapped:(id)sender {

    NSLog(@"Ok1");


    NSString *tfContent = self.priceTextField.text;


     double value = tfContent.doubleValue;
     double resultValue = 0;

    NSLog(@"%ld",(long)self.segmentedControl.selectedSegmentIndex);



     switch (self.segmentedControl.selectedSegmentIndex)
     {
         case 0:
             NSLog(@"Zero");
             resultValue = value * self.ca_tax; break;
         case 1:
             NSLog(@"One");
             resultValue = value * self.chi_tax; break;
         case 2:
             NSLog(@"Two");
             resultValue = value * self.ny_tax; break;
         default:
             NSLog(@"Bug");

     }

     NSLog(@"%f",resultValue);

     self.resultLabel.text =  [NSString stringWithFormat:@"%.2f",resultValue];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
