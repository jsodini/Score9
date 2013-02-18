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
    
    [[self playerOneScore] setOpponent:[self playerTwoScore]];
    [[self playerTwoScore] setOpponent:[self playerOneScore]];

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
    
    NSUInteger playerOneSkillLevel = [[self playerOneScore] skillLevel];
    NSUInteger playerTwoSKillLevel = [[self playerTwoScore] skillLevel];
    
    [[self playerOneSkillSubtractButton] setEnabled:subSkillEnabled(playerOneSkillLevel)];
    [[self playerTwoSkillSubtractButton] setEnabled:subSkillEnabled(playerTwoSKillLevel)];
    [[self playerOneSkillAddButton] setEnabled:addSkillEnabled(playerOneSkillLevel)];
    [[self playerTwoSkillAddButton] setEnabled:addSkillEnabled(playerTwoSKillLevel)];
    
    [[self playerOneSkillLabel] setText:[[NSNumber numberWithInt:playerOneSkillLevel] stringValue]];
    [[self playerTwoSkillLabel] setText:[[NSNumber numberWithInt:playerTwoSKillLevel] stringValue]];
}

- (void)updateScore {
    [[self playerOneWinLabel] setText:[[NSNumber numberWithInt:[[self playerOneScore] pointsToWin]] stringValue]];
    [[self playerTwoWinLabel] setText:[[NSNumber numberWithInt:[[self playerTwoScore] pointsToWin]] stringValue]];
    [[self playerOneNextPointLabel] setText:[[NSNumber numberWithInt:[[self playerOneScore] nextPoint]] stringValue]];
    [[self playerTwoNextPointLabel] setText:[[NSNumber numberWithInt:[[self playerTwoScore] nextPoint]] stringValue]];
    [[self playerOneRemaining] setText:[[NSNumber numberWithInt:[[self playerOneScore] remainingPoints]] stringValue]];
    [[self playerTwoRemaining] setText:[[NSNumber numberWithInt:[[self playerTwoScore] remainingPoints]] stringValue]];
    [[self playerOneScoreLabel] setText:[[NSNumber numberWithInt:[[self playerOneScore] score]] stringValue]];
    [[self playerTwoScoreLabel] setText:[[NSNumber numberWithInt:[[self playerTwoScore] score]] stringValue]];

    BOOL (^subPointEnabled)(CZPlayerScore *) = ^BOOL(CZPlayerScore *playerScore) { return ([playerScore currentScore] > 0) ? YES : NO; };
    BOOL (^addPointEnabled)(CZPlayerScore *) = ^BOOL(CZPlayerScore *playerScore) {
        if ([playerScore hasWon] || [[playerScore opponent] hasWon]) {
            return NO;
        }
        
        return YES;
    };
    
    [[self playerOnePointSubtractButton] setEnabled:subPointEnabled([self playerOneScore])];
    [[self playerOnePointAddButton] setEnabled:addPointEnabled([self playerOneScore])];
    [[self playerTwoPointSubtractButton] setEnabled:subPointEnabled([self playerTwoScore])];
    [[self playerTwoPointAddButton] setEnabled:addPointEnabled([self playerTwoScore])];
}

- (void)updateProgress {
    [[self playerOneWinBar] setProgress:[[self playerOneScore] percentageComplete]];
    [[self playerTwoWinBar] setProgress:[[self playerTwoScore] percentageComplete]];
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
