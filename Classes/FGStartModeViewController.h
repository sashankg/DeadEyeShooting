//
//  FGStartModeViewController.h
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/2/12.
//
//

#import <UIKit/UIKit.h>

@interface FGStartModeViewController : UIViewController
{
    IBOutlet UIImageView *iv_bkg;
    IBOutlet UIButton *btn_airRifle;
    IBOutlet UIButton *btn_rapidFire;
    IBOutlet UIButton *btn_back;
    IBOutlet UIButton *mute;
    IBOutlet UIButton *unmute;
}
-(IBAction)buttonAction_go2airquick:(UIButton *)_sender;
-(IBAction)buttonAction_go2airtournament:(UIButton *)_sender;
-(IBAction)buttonAction_go2rapidquick:(UIButton *)_sender;
-(IBAction)buttonAction_go2rapidtournament:(UIButton *)_sender;
-(IBAction)clickBtnBack:(id)sender;
-(IBAction)buttonAction_go2Instructions:(UIButton *)_sender;
-(IBAction)buttonAction_go2TopScore:(UIButton *)_sender;
-(IBAction)buttonAction_go2Global:(UIButton *)_sender;
-(IBAction)buttonAction_go2About:(UIButton *)_sender;
-(IBAction)buttonAction_go2Game:(UIButton *)_sender;
-(IBAction)buttonAction_go2settings:(UIButton *)_sender;
-(IBAction)mute:(UIButton *)_sender;
-(IBAction)unmute:(UIButton *)_sender;
@end
