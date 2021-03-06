//
//  CZViewController.h
//  Score9
//
//  Created by James Sodini on 2/15/13.
//  Copyright (c) 2013 James Sodini. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CZPlayerScore.h"

@interface CZViewController : UIViewController

//
// Player One
//

@property (readonly, nonatomic) CZPlayerScore *playerOneScore;
@property (strong, nonatomic) IBOutlet UILabel *playerOneNextPointLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerOneScoreLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerOneWinLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerOneSkillLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerOneRemaining;
@property (strong, nonatomic) IBOutlet UIButton *playerOnePointAddButton;
@property (strong, nonatomic) IBOutlet UIButton *playerOnePointSubtractButton;
@property (strong, nonatomic) IBOutlet UIButton *playerOneSkillAddButton;
@property (strong, nonatomic) IBOutlet UIButton *playerOneSkillSubtractButton;
@property (strong, nonatomic) IBOutlet UIProgressView *playerOneNextPointBar;
@property (strong, nonatomic) IBOutlet UIProgressView *playerOneWinBar;

//
// Player Two
//

@property (readonly, nonatomic) CZPlayerScore *playerTwoScore;
@property (strong, nonatomic) IBOutlet UILabel *playerTwoNextPointLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerTwoScoreLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerTwoWinLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerTwoSkillLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerTwoRemaining;
@property (strong, nonatomic) IBOutlet UIButton *playerTwoPointAddButton;
@property (strong, nonatomic) IBOutlet UIButton *playerTwoPointSubtractButton;
@property (strong, nonatomic) IBOutlet UIButton *playerTwoSkillAddButton;
@property (strong, nonatomic) IBOutlet UIButton *playerTwoSkillSubtractButton;
@property (strong, nonatomic) IBOutlet UIProgressView *playerTwoNextPointBar;
@property (strong, nonatomic) IBOutlet UIProgressView *playerTwoWinBar;

//
// Actions
//

- (IBAction)skillLevelChange:(id)sender;
- (IBAction)pointChange:(id)sender;

@end
