//
//  SecondViewController.m
//  Notification Exercise
//
//  Created by Colin on 2018-04-22.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (nonatomic) NSNumber *count;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeCount:) name:@"StepperNotification" object:nil];
    
}





- (void)changeCount:(NSNotification *)notification {
    self.countLabel.text = [NSString stringWithFormat:@"count: %@",[notification.userInfo valueForKey:@"stepper"]];
    
    //self.countLabel.text = [NSString stringWithFormat:@"count: %@", countValue];
}

@end
