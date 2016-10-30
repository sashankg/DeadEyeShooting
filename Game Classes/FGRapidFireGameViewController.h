//
//  FGRapidFireGameViewController.h
//  DeadEyeShootingios
//
//  Created by Gamesalad on 7/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

enum 
{
    currentStatus_unknow1,
    currentStatus_left1 ,
    currentStatus_right1,
    currentStatus_up1,
    currentStatus_down1,
    currentStatus_fire1
}Status1;

@interface FGRapidFireGameViewController : UIViewController<UIAccelerometerDelegate>
{
    IBOutlet UIImageView *Target;
    IBOutlet UIImageView *Target2;
    IBOutlet UIImageView *Target3;
    IBOutlet UIImageView *Target4;
    IBOutlet UIImageView *Target5;
    IBOutlet UIImageView *Target6;
    IBOutlet UIImageView *Targe7;
    IBOutlet UIImageView *Target8;
    IBOutlet UIImageView *Target9;
    IBOutlet UIImageView *Target10;
    IBOutlet UIImageView *Crusor;
    IBOutlet UILabel *l_score;
    IBOutlet UILabel *l_1;
    IBOutlet UILabel *l_2;
    IBOutlet UILabel *l_3;
    IBOutlet UILabel *l_4;
    IBOutlet UILabel *l_5;
    IBOutlet UILabel *l_6;
    IBOutlet UILabel *l_7;
    IBOutlet UILabel *l_8;
    IBOutlet UILabel *l_9;
    IBOutlet UILabel *l_10;
    IBOutlet UILabel *l_totalscore;
    IBOutlet UIView *scoreBar;
    IBOutlet UIView *roundBar;
    IBOutlet UILabel *RoundNum;
    IBOutlet UIButton *Pause;
    IBOutlet UIButton *Play;
    IBOutlet UIButton *Mute;
    IBOutlet UIButton *UnMute;
    IBOutlet UIButton *Menu;
    IBOutlet UIImageView *Flag;
    IBOutlet UILabel *PlayerName;
    IBOutlet UIImageView *movingArea;
    IBOutlet UIImageView * JoyStickBase;
    IBOutlet UIImageView *Joystick;
    int maxBullet;
    
    NSMutableArray *arr_bulletPool;
    NSMutableArray *arr_targetPool;
    NSTimer *timer_targetMove;
    NSTimer *timer_logic;
    
    float dX;
    float dY;
    float cursorMoveSpeed;
    int currentStatus;
    float shakeDX;
    float shakeDY;
    int timerCount;
    int scorecount;
    float score;
    float op_1;
    float op_2;
    float op_3;
    float op_4;
    float op_5;
    float op_6;
    float op_7;
    float op_8;
    float op_9;
    float op_10;
    int roundcount;
    float totalscore;
    bool Paused;

   
    
    int targetStatus[10];
    int rounds;
}
@property int rounds;

-(IBAction) buttonAction_left:(UIButton*)_btn;
-(IBAction) buttonAction_right:(UIButton*)_btn;
-(IBAction) buttonAction_down:(UIButton*)_btn;
-(IBAction) buttonAction_up:(UIButton*)_btn;
-(IBAction) buttonAction_fire:(UIButton*)_btn;
-(IBAction) buttonAction_left_pressDown:(UIButton*)_btn;
-(IBAction) buttonAction_right_pressDown:(UIButton*)_btn;
-(IBAction) buttonAction_down_pressDown:(UIButton*)_btn;
-(IBAction) buttonAction_up_pressDown:(UIButton*)_btn;
-(IBAction)pause:(id)sender;
-(IBAction)unpause:(id)sender;
-(IBAction)buttonAction_go2Menu:(id)sender;
@end
