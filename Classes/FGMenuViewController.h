//
//  FGMenuViewController.h
//  DeadEyeShootingios
//
//  Created by Gamesalad on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGMenuViewController : UIViewController
{
    IBOutlet UIImageView *iv_bkgImg;
    IBOutlet UIButton *btn_startGame;
    IBOutlet UIButton *btn_instructions;
    IBOutlet UIButton *btn_topScore;
    IBOutlet UIButton *btn_globalScoreCard;
    IBOutlet UIButton *btn_aboutFuguMobile;
    IBOutlet UIButton *btn_settings;
}

-(IBAction)buttonAction_go2Instructions:(UIButton *)_sender;
-(IBAction)buttonAction_go2TopScore:(UIButton *)_sender;
-(IBAction)buttonAction_go2Global:(UIButton *)_sender;
-(IBAction)buttonAction_go2About:(UIButton *)_sender;
-(IBAction)buttonAction_go2Game:(UIButton *)_sender;
-(IBAction)buttonAction_go2settings:(UIButton *)_sender;

@end

