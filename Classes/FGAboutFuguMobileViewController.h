//
//  FGAboutFuguMobileViewController.h
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGAboutFuguMobileViewController : UIViewController
{
    IBOutlet UIImageView *iv_bkgImgAbout;
    IBOutlet UITextView *tv_Head;
    IBOutlet UITextView *tv_About;
    IBOutlet UIButton *btn_back;
}

-(IBAction)clickBtnBack:(id)sender;

@end
