//
//  SettingsViewController.h
//  DeadEyeShootingios
//
//  Created by Gamesalad on 8/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController
{
    IBOutlet UISegmentedControl *Option;

    
    IBOutlet UIButton *back;
}
-(IBAction)tilt:(UISegmentedControl *)sender;
-(IBAction)clickBtnBack:(id)sender;


@end
