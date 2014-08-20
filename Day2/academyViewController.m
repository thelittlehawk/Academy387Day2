//
//  academyViewController.m
//  Day2
//
//  Created by Faik Catibusic on 8/19/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import "academyViewController.h"

@interface academyViewController ()

@end

@implementation academyViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) plusClicked:(id)sender {
    @try {
        double left = [self.leftOperand.text doubleValue];
        double right = [self.rightOperand.text doubleValue];
        double result = left + right;
        self.result.text = [NSString stringWithFormat:@"%f", result];
    }
    @catch (NSException *exception) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error in Plus action" message:exception.name delegate:sender cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil , nil];
        [alert show];
        NSLog(@"Exception:%@",exception);
    }
}

- (IBAction)minusClicked:(id)sender {
    @try {
        double left = [self.leftOperand.text doubleValue];
        double right = [self.rightOperand.text doubleValue];
        double result = left - right;
        self.result.text = [NSString stringWithFormat:@"%f", result];
    }
    @catch (NSException *exception) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error in Minus action" message:exception.name delegate:sender cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil , nil];
        [alert show];
        NSLog(@"Exception:%@",exception);
    }
}

- (IBAction)multiplyClicked:(id)sender {
    @try {
        double left = [self.leftOperand.text doubleValue];
        double right = [self.rightOperand.text doubleValue];
        double result = left * right;
        self.result.text = [NSString stringWithFormat:@"%f", result];
    }
    @catch (NSException *exception) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error in Multiply action" message:exception.name delegate:sender cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil , nil];
        [alert show];
        NSLog(@"Exception:%@",exception);
    }
}

- (IBAction)divideClicked:(id)sender {
    @try {
        double left = [self.leftOperand.text doubleValue];
        double right = [self.rightOperand.text doubleValue];
        double result = left / right;
        self.result.text = [NSString stringWithFormat:@"%f", result];
    }
    @catch (NSException *exception) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error in Divide action" message:exception.name delegate:sender cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil , nil];
        [alert show];
        NSLog(@"Exception:%@",exception);
    }
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


@end
