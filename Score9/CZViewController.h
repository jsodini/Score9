//
//  CZViewController.h
//  Score9
//
//  Created by James Sodini on 2/15/13.
//  Copyright (c) 2013 Cocoa Zombie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CZViewController : UIViewController

//
// Player One
//

@property (strong, nonatomic) IBOutlet UILabel *playerOneNextPointLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerOneScoreLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerOneWinLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerOneSkillLabel;
@property (strong, nonatomic) IBOutlet UIButton *playerOnePointAddButton;
@property (strong, nonatomic) IBOutlet UIButton *playerOnePointSubtractButton;
@property (strong, nonatomic) IBOutlet UIButton *playerOneSkillAddButton;
@property (strong, nonatomic) IBOutlet UIButton *playerOneSkillSubtractButton;
@property (strong, nonatomic) IBOutlet UIProgressView *playerOneNextPointBar;
@property (strong, nonatomic) IBOutlet UIProgressView *playerOneWinBar;

//
// Player Two
//

@property (strong, nonatomic) IBOutlet UILabel *playerTwoNextPointLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerTwoScoreLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerTwoWinLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerTwoSkillLabel;
@property (strong, nonatomic) IBOutlet UIButton *playerTwoPointAddButton;
@property (strong, nonatomic) IBOutlet UIButton *playerTwoPointSubtractButton;
@property (strong, nonatomic) IBOutlet UIButton *playerTwoSkillAddButton;
@property (strong, nonatomic) IBOutlet UIButton *playerTwoSkillSubtractButton;
@property (strong, nonatomic) IBOutlet UIProgressView *playerTwoNextPointBar;
@property (strong, nonatomic) IBOutlet UIProgressView *playerTwoWinBar;

@end
