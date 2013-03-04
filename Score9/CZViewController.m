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
- (void)updateSkill;
- (void)updateScore;
- (void)updateProgress;
@end

@implementation CZViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _playerOneScore = [[CZPlayerScore alloc] initWithSkillLevel:4];
    _playerTwoScore = [[CZPlayerScore alloc] initWithSkillLevel:4];
    
    [_playerOneScore setOpponent:_playerTwoScore];
    [_playerTwoScore setOpponent:_playerOneScore];

    [self updateUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)updateUI {
    [self updateSkill];
    [self updateScore];
    [self updateProgress];
}

- (void)updateSkill {
    BOOL (^subSkillEnabled)(NSUInteger) = ^BOOL(NSUInteger skillLevel) { return (skillLevel > 1) ? YES : NO; };
    BOOL (^addSkillEnabled)(NSUInteger) = ^BOOL(NSUInteger skillLevel) { return (skillLevel < 9) ? YES : NO; };
    
    NSUInteger playerOneSkillLevel = [_playerOneScore skillLevel];
    NSUInteger playerTwoSKillLevel = [_playerTwoScore skillLevel];
    
    [_playerOneSkillSubtractButton setEnabled:subSkillEnabled(playerOneSkillLevel)];
    [_playerTwoSkillSubtractButton setEnabled:subSkillEnabled(playerTwoSKillLevel)];
    [_playerOneSkillAddButton setEnabled:addSkillEnabled(playerOneSkillLevel)];
    [_playerTwoSkillAddButton setEnabled:addSkillEnabled(playerTwoSKillLevel)];
    
    [_playerOneSkillLabel setText:[[NSNumber numberWithInt:playerOneSkillLevel] stringValue]];
    [_playerTwoSkillLabel setText:[[NSNumber numberWithInt:playerTwoSKillLevel] stringValue]];
}

- (void)updateScore {
    [_playerOneWinLabel setText:[[NSNumber numberWithInt:[_playerOneScore pointsToWin]] stringValue]];
    [_playerTwoWinLabel setText:[[NSNumber numberWithInt:[_playerTwoScore pointsToWin]] stringValue]];
    [_playerOneNextPointLabel setText:[[NSNumber numberWithInt:[_playerOneScore nextPoint]] stringValue]];
    [_playerTwoNextPointLabel setText:[[NSNumber numberWithInt:[_playerTwoScore nextPoint]] stringValue]];
    [_playerOneRemaining setText:[[NSNumber numberWithInt:[_playerOneScore remainingPoints]] stringValue]];
    [_playerTwoRemaining setText:[[NSNumber numberWithInt:[_playerTwoScore remainingPoints]] stringValue]];
    [_playerOneScoreLabel setText:[[NSNumber numberWithInt:[_playerOneScore score]] stringValue]];
    [_playerTwoScoreLabel setText:[[NSNumber numberWithInt:[_playerTwoScore score]] stringValue]];

    BOOL (^subPointEnabled)(CZPlayerScore *) = ^BOOL(CZPlayerScore *playerScore) { return ([playerScore currentScore] > 0) ? YES : NO; };
    BOOL (^addPointEnabled)(CZPlayerScore *) = ^BOOL(CZPlayerScore *playerScore) { return ([playerScore hasWon] || [[playerScore opponent] hasWon]) ? NO : YES; };
    
    [_playerOnePointSubtractButton setEnabled:subPointEnabled(_playerOneScore)];
    [_playerOnePointAddButton setEnabled:addPointEnabled(_playerOneScore)];
    [_playerTwoPointSubtractButton setEnabled:subPointEnabled(_playerTwoScore)];
    [_playerTwoPointAddButton setEnabled:addPointEnabled(_playerTwoScore)];
}

- (void)updateProgress {
    [_playerOneWinBar setProgress:[_playerOneScore percentageComplete]];
    [_playerTwoWinBar setProgress:[_playerTwoScore percentageComplete]];
}

- (IBAction)skillLevelChange:(id)sender {
    switch ([sender tag]) {
        case 1:
            [_playerOneScore decreaseSkillLevel];
            break;
        case 2:
            [_playerOneScore increaseSkillLevel];
            break;
        case 3:
            [_playerTwoScore decreaseSkillLevel];
            break;
        case 4:
            [_playerTwoScore increaseSkillLevel];
            break;
    }
    
    [self updateUI];
}

- (IBAction)pointChange:(id)sender {
    switch ([sender tag]) {
        case 1:
            [_playerOneScore decreaseScore];
            break;
        case 2:
            [_playerOneScore increaseScore];
            break;
        case 3:
            [_playerTwoScore decreaseScore];
            break;
        case 4:
            [_playerTwoScore increaseScore];
            break;
    }
    
    [self updateUI];
}

@end
