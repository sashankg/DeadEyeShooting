//
//  FGAirQuickViewController.h
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGTopAirQuickViewController : UIViewController
{
    IBOutlet UIImageView *iv_bkgImgAirQuick;
    IBOutlet UIScrollView *sv_airquick;
    IBOutlet UILabel *l_Rank;
    IBOutlet UILabel *l_Score;
    IBOutlet UILabel *l_1;
    IBOutlet UILabel *l_2;
    IBOutlet UILabel *l_3;
    IBOutlet UILabel *l_4;
    IBOutlet UILabel *l_5;
    IBOutlet UILabel *l_Score1;
    IBOutlet UILabel *l_Score2;
    IBOutlet UILabel *l_Score3;
    IBOutlet UILabel *l_Score4;
    IBOutlet UILabel *l_Score5;
    IBOutlet UIButton *btn_back;
    NSMutableArray *arr_top5Score;
    
    

}
-(IBAction)clickBtnBack:(id)sender;
@end
