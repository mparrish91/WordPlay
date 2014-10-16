//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by malcolm on 10/12/14.
//  Copyright (c) 2014 parry. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"
@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if (![self.adjectiveTextField.text isEqualToString:@" "]) {
        ResultsViewController *resultsViewController = segue.destinationViewController;
        resultsViewController.adjective = self.adjectiveTextField.text;
        resultsViewController.name = self.name;
        resultsViewController.noun = self.noun;
        resultsViewController.verb = self.verb;
    }
    
}


@end
