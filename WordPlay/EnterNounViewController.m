//
//  EnterNounViewController.m
//  WordPlay
//
//  Created by malcolm on 10/13/14.
//  Copyright (c) 2014 parry. All rights reserved.
//

#import "EnterNounViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNounViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nounTextField;

@end

@implementation EnterNounViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([self.nounTextField.text isEqualToString:@" "]) {
        EnterAdjectiveViewController *enterAdjectiveViewController = segue.destinationViewController;
        enterAdjectiveViewController.name = self.name;
        enterAdjectiveViewController.verb = self.verb;
        enterAdjectiveViewController.noun = self.nounTextField.text;
    }
    

}


@end
