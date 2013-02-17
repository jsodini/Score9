//
//  CZViewController.m
//  Score9
//
//  Created by James Sodini on 2/15/13.
//  Copyright (c) 2013 Cocoa Zombie. All rights reserved.
//

#import "CZViewController.h"

@interface CZViewController ()
- (void)updateUI;
@end

@implementation CZViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _playerOneScore = [[CZPlayerScore alloc] initWithSkillLevel:4];
    _playerTwoScore = [[CZPlayerScore alloc] initWithSkillLevel:4];

    [self updateUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)updateUI {
    // Label
    
    [[self playerOneSkillLabel] setText:[[NSNumber numberWithInt:[[self playerOneScore] skillLevel]] stringValue]];
    [[self playerTwoSkillLabel] setText:[[NSNumber numberWithInt:[[self playerTwoScore] skillLevel]] stringValue]];
    
    // Buttons
    
    [[self playerOneSkillSubtractButton] setEnabled:([[self playerOneScore] skillLevel] > 1) ? YES : NO];
    [[self playerTwoSkillSubtractButton] setEnabled:([[self playerTwoScore] skillLevel] > 1) ? YES : NO];
    [[self playerOneSkillAddButton]      setEnabled:([[self playerOneScore] skillLevel] < 9) ? YES : NO];
    [[self playerTwoSkillAddButton]      setEnabled:([[self playerTwoScore] skillLevel] < 9) ? YES : NO];
}

- (IBAction)skillLevelChange:(id)sender {
    switch ([sender tag]) {
        case 1:
            [[self playerOneScore] decreaseSkillLevel];
            break;
        case 2:
            [[self playerOneScore] increaseSkillLevel];
            break;
        case 3:
            [[self playerTwoScore] decreaseSkillLevel];
            break;
        case 4:
            [[self playerTwoScore] increaseSkillLevel];
    }
    
    [self updateUI];
}

@end
