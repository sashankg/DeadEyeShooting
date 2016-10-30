//
//  FGGlobalScoreCardViewController.h
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGGlobalScoreCardViewController : UIViewController<NSURLConnectionDelegate>
{
    IBOutlet UIImageView *iv_bkgImgGlobal;
    IBOutlet UIScrollView *sv_global;
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
    
    NSString *str_response;
    NSMutableArray *arr_myScores;
    NSMutableArray *arr_name;
}
-(IBAction)clickBtnBack:(id)sender;
@end
