//
//  TemperatureViewController.m
//  TemperatureConverter
//
//  Created by Vinit Patwa on 1/21/14.
//  Copyright (c) 2014 Vinit Patwa. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()

@property  (nonatomic) float celcius;
@property  (nonatomic) float farenheit;

- (void) convertTemperature;


@end

@implementation TemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title=@"Temperature Converter";
        self.celcius=0;
        self.farenheit=0;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.btn_convert addTarget:self action:@selector(convertTemperature) forControlEvents:(UIControlEventTouchDown)];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) convertTemperature {

    self.celcius = [self.tx_celcius.text floatValue];
    self.farenheit = [self.tx_farenheit.text floatValue];
    if(self.celcius==0) {
        self.celcius = (self.farenheit - 32)/1.8;
        self.tx_celcius.text = [NSString stringWithFormat:@"%0.2f",self.celcius];
    }
    else {
        self.farenheit = self.celcius * 1.8 + 32;
        self.tx_farenheit.text = [NSString stringWithFormat:@"%0.2f",self.farenheit];
    }
}







@end
