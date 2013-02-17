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
    //
    // Player Skill
    //
    
    BOOL (^subSkillEnabled)(NSUInteger) = ^BOOL(NSUInteger skillLevel) { return (skillLevel > 1) ? YES : NO; };
    BOOL (^addSkillEnabled)(NSUInteger) = ^BOOL(NSUInteger skillLevel) { return (skillLevel < 9) ? YES : NO; };
    
    NSUInteger playerOneSkillLevel = [[self playerOneScore] skillLevel];
    NSUInteger playerTwoSKillLevel = [[self playerTwoScore] skillLevel];
    
    [[self playerOneSkillSubtractButton] setEnabled:subSkillEnabled(playerOneSkillLevel)];
    [[self playerTwoSkillSubtractButton] setEnabled:subSkillEnabled(playerTwoSKillLevel)];
    [[self playerOneSkillAddButton] setEnabled:addSkillEnabled(playerOneSkillLevel)];
    [[self playerTwoSkillAddButton] setEnabled:addSkillEnabled(playerTwoSKillLevel)];
    
    [[self playerOneSkillLabel] setText:[[NSNumber numberWithInt:playerOneSkillLevel] stringValue]];
    [[self playerTwoSkillLabel] setText:[[NSNumber numberWithInt:playerTwoSKillLevel] stringValue]];
    
    //
    // Score
    //
    
    [[self playerOneScoreLabel] setText:[[NSNumber numberWithInt:[[self playerOneScore] currentScore]] stringValue]];
    [[self playerTwoScoreLabel] setText:[[NSNumber numberWithInt:[[self playerTwoScore] currentScore]] stringValue]];
    [[self playerOneWinLabel] setText:[[NSNumber numberWithInt:[[self playerOneScore] pointsToWin]] stringValue]];
    [[self playerTwoWinLabel] setText:[[NSNumber numberWithInt:[[self playerTwoScore] pointsToWin]] stringValue]];
    [[self playerOneNextPointLabel] setText:[[NSNumber numberWithInt:[[self playerOneScore] nextPoint]] stringValue]];
    [[self playerTwoNextPointLabel] setText:[[NSNumber numberWithInt:[[self playerTwoScore] nextPoint]] stringValue]];
    [[self playerOneRemaining] setText:[[NSNumber numberWithInt:[[self playerOneScore] remainingPoints]] stringValue]];
    [[self playerTwoRemaining] setText:[[NSNumber numberWithInt:[[self playerTwoScore] remainingPoints]] stringValue]];
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
            break;
    }
    
    [self updateUI];
}

- (IBAction)pointChange:(id)sender {
    switch ([sender tag]) {
        case 1:
            [[self playerOneScore] decreaseScore];
            break;
        case 2:
            [[self playerOneScore] increaseScore];
            break;
        case 3:
            [[self playerTwoScore] decreaseScore];
            break;
        case 4:
            [[self playerTwoScore] increaseScore];
            break;
    }
    
    [self updateUI];
}

@end
