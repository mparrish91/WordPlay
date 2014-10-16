//
//  ResultsViewController.m
//  WordPlay
//
//  Created by malcolm on 10/12/14.
//  Copyright (c) 2014 parry. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *infoString = [NSString stringWithFormat:@"%@ really enjoy %@ iOS programming. It is %@ of the activities I have ever %@.",self.name, self.verb, self.noun, self.adjective];
    
    
    const CGFloat fontSize = 14;
    UIFont *boldFont = [UIFont boldSystemFontOfSize:fontSize];
    NSMutableAttributedString *attString = [[NSMutableAttributedString alloc] initWithString:infoString];
    
    [attString beginEditing];

    [attString addAttribute:NSFontAttributeName value:boldFont range:NSMakeRange(0, [self.name length])];
    [attString addAttribute:NSFontAttributeName value:boldFont range:NSMakeRange(15, [self.verb length])];
    [attString addAttribute:NSFontAttributeName value:boldFont range:NSMakeRange(34, [self.noun length])];
    [attString addAttribute:NSFontAttributeName value:boldFont range:NSMakeRange([infoString length], [self.adjective length])];
    
    [attString endEditing];

    self.resultsTextView.attributedText = attString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/





@end
