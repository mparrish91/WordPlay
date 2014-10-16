//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by malcolm on 10/13/14.
//  Copyright (c) 2014 parry. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterNounViewController.h"

@interface EnterVerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation EnterVerbViewController

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
    if (![self.verbTextField.text isEqualToString:@" "]) {
        EnterNounViewController *enterNounViewController = segue.destinationViewController;
        enterNounViewController.name = self.name;
        enterNounViewController.verb = self.verbTextField.text;
    }
}

@end
