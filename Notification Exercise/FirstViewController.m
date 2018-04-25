//
//  FirstViewController.m
//  Notification Exercise
//
//  Created by Colin on 2018-04-22.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    
}


- (IBAction)stepperTapped:(UIStepper *)sender {

    NSDictionary *userInfo = @{@"stepper": @((int)sender.value)};
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"StepperNotification" object:nil userInfo:userInfo];
}

@end
