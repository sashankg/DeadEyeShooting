//
//  FGStartAirModeViewController.h
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/2/12.
//
//

#import <UIKit/UIKit.h>

@interface FGStartAirModeViewController : UIViewController
{
    IBOutlet UIImageView *iv_bkg;
    IBOutlet UIButton *btn_quickPlay;
    IBOutlet UIButton *btn_tournament;
    IBOutlet UIButton *btn_back;


}
-(IBAction)buttonAction_go2quickPlay:(UIButton *)_sender; 
-(IBAction)buttonAction_go2Tournament:(UIButton *)_sender;

-(IBAction)clickBtnBack:(id)sender;



@end
