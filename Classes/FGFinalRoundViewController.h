//
//  FGGameResultViewController.h
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/3/12.
//
//

#import <UIKit/UIKit.h>

@interface FGFinalRoundViewController : UIViewController

{
    NSMutableArray *arr_names;
    IBOutlet UIImageView *iv_bkg;
    IBOutlet UITextView *tv_score;
    IBOutlet UIScrollView *sv_chart;
    IBOutlet UITableViewCell *tvc_row1;
    IBOutlet UILabel *l_1;
    IBOutlet UILabel *l_abhinav;
    IBOutlet UIImageView *iv_abhinavCoutry;
    IBOutlet UILabel *l_abhinavScore;
    IBOutlet UITableViewCell *tvc_row2;
    IBOutlet UILabel *l_2;
    IBOutlet UILabel *l_kp;
    IBOutlet UIImageView *iv_kpCountry;
    IBOutlet UILabel *l_kpScore;
    IBOutlet UITableViewCell *tvc_row3;
    IBOutlet UILabel *l_3;
    IBOutlet UILabel *l_peter;
    IBOutlet UIImageView *iv_peterCountry;
    IBOutlet UILabel *l_peterScore;
    IBOutlet UITableViewCell *tvc_row4;
    IBOutlet UILabel *l_4;
    IBOutlet UILabel *l_ag;
    IBOutlet UIImageView *iv_agCountry;
    IBOutlet UILabel *l_agScore;
    IBOutlet UITableViewCell *tvc_row5;
    IBOutlet UILabel *l_5;
    IBOutlet UILabel *l_qinan;
    IBOutlet UIImageView *iv_qinanCountry;
    IBOutlet UILabel *l_qianScore;
    IBOutlet UITableViewCell *tvc_6;
    IBOutlet UILabel *l_6;
    IBOutlet UILabel *l_stevan;
    IBOutlet UIImageView *iv_stevanCountry;
    IBOutlet UILabel *l_stevanScore;
    IBOutlet UITableViewCell *tvc_row7;
    IBOutlet UILabel *l_8;
    IBOutlet UILabel *l_sergey;
    IBOutlet UIImageView *iv_sergeyCountry;
    IBOutlet UILabel *l_sergeyScore;
    IBOutlet UITableViewCell *tvc_row9;
    IBOutlet UILabel *l_9;
    IBOutlet UILabel *l_yourName;
    IBOutlet UIImageView *iv_yourCountry;
    IBOutlet UILabel *iv_yourScore;
    IBOutlet UITableViewCell *tvc_titleBar;
    IBOutlet UILabel *l_pos;
    IBOutlet UILabel *l_athletes;
    IBOutlet UILabel *l_country;
    IBOutlet UILabel *l_results;
    IBOutlet UIButton *btn_continue;
    



}
-(IBAction)buttonAction_go2submit:(UIButton *)_sender;



@end
