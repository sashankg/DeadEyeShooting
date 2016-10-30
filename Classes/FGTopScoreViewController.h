//
//  FGTopScoreViewController.h
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGTopScoreViewController : UIViewController
{
    IBOutlet UIImageView *iv_bkgImgTopScore;
    IBOutlet UIButton *btn_10m;
    IBOutlet UIButton *btn_25m;
    IBOutlet UIButton *btn_back;
    
    
    
}

-(IBAction)clickBtnBack:(id)sender;
-(IBAction)buttonAction_go2Air:(UIButton *)_sender;
-(IBAction)buttonAction_go2Rapid:(UIButton *)_sender;
@end
