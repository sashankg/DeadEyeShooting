//
//  FGStartRapidModeViewController.h
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/2/12.
//
//

#import <UIKit/UIKit.h>

@interface FGStartRapidModeViewController : UIViewController

{
    IBOutlet UIImageView *iv_bkg;
    IBOutlet UIButton *btn_quickPlay;
    IBOutlet UIButton *btn_tournament;
    IBOutlet UIButton *btn_back; 

}
-(IBAction)buttonAction_go2quick:(UIButton *)_sender;
-(IBAction)buttonAction_go2tournament:(UIButton *)_sender;
-(IBAction)clickBtnBack:(id)sender;



@end
