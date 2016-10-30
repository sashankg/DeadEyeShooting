//
//  FGRapidModeViewController.h
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGTopRapidModeViewController : UIViewController
{
    IBOutlet UIImageView *iv_bkgImgRapidMode;
    IBOutlet UIButton *btn_quick;
    IBOutlet UIButton *btn_tournament;
    IBOutlet UIButton *btn_back;
}
-(IBAction)clickBtnBack:(id)sender;
-(IBAction)buttonAction_go2Quick:(UIButton *)_sender;
-(IBAction)buttonAction_go2Tourn:(UIButton *)_sender;
@end
