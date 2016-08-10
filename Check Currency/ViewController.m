//
//  ViewController.m
//  Check Currency
//
//  Created by test on 29/07/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    double currency = 111.1;
//    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
//    
//        [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
//    numberFormatter.currencyCode = @"EUR";
//
//    NSString *numberAsString = [numberFormatter stringFromNumber:[NSNumber numberWithDouble:currency]];
//    
//    NSLog(@"Euro number format : %@",numberAsString);
    
    NSLog(@"Received Value : %@",[self getValuesInEuros:111.2]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSString *)getValuesInEuros : (double)doubleValue{

    double currency = doubleValue;
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    numberFormatter.currencyCode = @"EUR";
    
    NSString *numberAsString = [numberFormatter stringFromNumber:[NSNumber numberWithDouble:currency]];
    
       return numberAsString;
}
@end
