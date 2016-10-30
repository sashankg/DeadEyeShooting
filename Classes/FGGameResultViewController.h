//
//  FGGameResultViewController.h
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/2/12.
//
//

#import <UIKit/UIKit.h>

@interface FGGameResultViewController : UIViewController
{
    NSMutableArray *arr__names;
    NSMutableArray *arr__scores;
    NSMutableArray *arr__Country;
    IBOutlet UIImageView *iv_bkg;
    IBOutlet UITextView *tv_title;
    IBOutlet UIScrollView *sv_chart;
    IBOutlet UIButton *btn_continue;
    IBOutlet UITableViewCell *tvc_row1;
    IBOutlet UILabel *l_1;
    IBOutlet UILabel *l_name1;
    IBOutlet UIImageView *iv_country1;
    IBOutlet UILabel *l_score1;
    IBOutlet UITableViewCell *tvc_row2;
    IBOutlet UILabel *l_2;
    IBOutlet UILabel *l_name2;
    IBOutlet UIImageView *iv_country2;
    IBOutlet UILabel *l_score2;
    IBOutlet UITableViewCell *tvc_row3;
    IBOutlet UILabel *l_3;
    IBOutlet UILabel *l_name3;
    IBOutlet UIImageView *iv_country3;
    IBOutlet UILabel *l_score3;
    IBOutlet UITableViewCell *tvc_row4;
    IBOutlet UILabel *l_4;
    IBOutlet UILabel *l_name4;
    IBOutlet UIImageView *iv_country4;
    IBOutlet UILabel *l_score4;
    IBOutlet UITableViewCell *tvc_row5;
    IBOutlet UILabel *l_5;
    IBOutlet UILabel *l_name5;
    IBOutlet UIImageView *iv_country5;
    IBOutlet UILabel *l_score5;
    IBOutlet UITableViewCell *tvc_row6;
    IBOutlet UILabel *l_6;
    IBOutlet UILabel *l_name6;
    IBOutlet UIImageView *iv_country6;
    IBOutlet UILabel *l_score6;
    IBOutlet UITableViewCell *tvc_row7;
    IBOutlet UILabel *l_7;
    IBOutlet UILabel *l_name7;
    IBOutlet UIImageView *iv_country7;
    IBOutlet UILabel *l_score7;
    IBOutlet UITableViewCell *tvc_row8;
    IBOutlet UILabel *l_8;
    IBOutlet UILabel *l_name8;
    IBOutlet UIImageView *iv_country8;
    IBOutlet UILabel *l_score8;
    IBOutlet UITableViewCell *tvc_row9;
    IBOutlet UILabel *l_9;
    IBOutlet UILabel *l_name9;
    IBOutlet UIImageView *iv_country9;
    IBOutlet UILabel *l_score9;
    IBOutlet UITableViewCell *tvc_titleBar; 
    IBOutlet UILabel *l_pos;
    IBOutlet UILabel *l_athletes;
    IBOutlet UILabel *l_country;
    IBOutlet UILabel *l_score;
}
-(IBAction)buttonAction_go2submit:(UIButton *)_sender;
@end
