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

    _playerOneSkillLevel = _playerTwoSkillLevel = 4;

    [self updateUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)updateUI {
    // Label
    
    [_playerOneSkillLabel setText:[[NSNumber numberWithInt:_playerOneSkillLevel] stringValue]];
    [_playerTwoSkillLabel setText:[[NSNumber numberWithInt:_playerTwoSkillLevel] stringValue]];
    
    // Buttons
    
    [_playerOneSkillSubtractButton setEnabled:(_playerOneSkillLevel > 1) ? YES : NO];
    [_playerTwoSkillSubtractButton setEnabled:(_playerTwoSkillLevel > 1) ? YES : NO];
    [_playerOneSkillAddButton      setEnabled:(_playerOneSkillLevel < 9) ? YES : NO];
    [_playerTwoSkillAddButton      setEnabled:(_playerTwoSkillLevel < 9) ? YES : NO];
}

- (IBAction)skillLevelChange:(id)sender {
    switch ([sender tag]) {
        case 1:
            _playerOneSkillLevel--;
            break;
        case 2:
            _playerOneSkillLevel++;
            break;
        case 3:
            _playerTwoSkillLevel--;
            break;
        case 4:
            _playerTwoSkillLevel++;
            break;
    }
        
    [self updateUI];
}

@end
