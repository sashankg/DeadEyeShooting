//
//  FGInstructionsViewController.h
//  DeadEyeShootingios
//
//  Created by Gamesalad on 7/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGInstructionsViewController : UIViewController

{
    IBOutlet UIImageView *iv_bkgImgInstructions;
    IBOutlet UITextView *tv_insructions;
    IBOutlet UITextView *tv_instructionExplaination;
    IBOutlet UIButton *btn_back;
}

-(IBAction)clickBtnBack:(id)sender;

@end
