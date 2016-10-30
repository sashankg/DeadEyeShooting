//
//  FGAirRifleTournamentGameViewController.h
//  DeadEyeShootingios
//
//  Created by Gamesalad on 7/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

enum 
{
    currentStatus_unknow,
    currentStatus_left ,
    currentStatus_right,
    currentStatus_up,
    currentStatus_down,
    currentStatus_fire
}Status;


@interface FGAirRifleTournamentGameViewController : UIViewController
{
    IBOutlet UIButton *btn_up;
    IBOutlet UIButton *btn_down;
    IBOutlet UIButton *btn_left;
    IBOutlet UIButton *btn_right;
    IBOutlet UIButton *btn_fire;
    IBOutlet UIImageView *iv_crusor;
    IBOutlet UIButton *btn_back;
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
    IBOutlet UILabel *l_total;
    IBOutlet UIImageView *target;
    
    float dX;
    float dY;
    float cursorMoveSpeed;
    int currentStatus;
    float shakeDX;
    float shakeDY;
    int timerCount;
    float test;
    int scorecount;
    float totalscore;
    
    NSTimer *timer_logic;
    NSTimer *timer_render;
    
    UIImageView *iv_bulletHole;
    
    IBOutlet UIView *view_scoreBar;
}

-(IBAction) buttonAction_left:(UIButton*)_btn;
-(IBAction) buttonAction_right:(UIButton*)_btn;
-(IBAction) buttonAction_down:(UIButton*)_btn;
-(IBAction) buttonAction_up:(UIButton*)_btn;
-(IBAction) buttonAction_fire:(UIButton*)_btn;
-(IBAction) buttonAction_left_pressDown:(UIButton*)_btn;
-(IBAction) buttonAction_right_pressDown:(UIButton*)_btn;
-(IBAction) buttonAction_down_pressDown:(UIButton*)_btn;
-(IBAction) buttonAction_up_pressDown:(UIButton*)_btn;
-(IBAction)clickBtnBack:(id)sender;
@end
