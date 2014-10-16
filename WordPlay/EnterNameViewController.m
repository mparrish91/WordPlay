//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by malcolm on 10/12/14.
//  Copyright (c) 2014 parry. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterVerbViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

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
    
    if (![self.nameTextField.text isEqualToString:@" "]) {
        EnterVerbViewController *enterVerbViewController = segue.destinationViewController;
        enterVerbViewController.name = self.nameTextField.text;
    }

    
}


@end
