//
//  FGStartEnterYourNameViewController.h
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/3/12.
//
//

#import <UIKit/UIKit.h>

@interface FGStartEnterYourNameViewController : UIViewController<UITextFieldDelegate>
{
    IBOutlet UIScrollView *sv;
    IBOutlet UIImageView *iv_selectedCountry;
    IBOutlet UILabel *lb_selectedCountryName;
    IBOutlet UIImageView *iv_bkg;
    IBOutlet UITextView *tv_enterName;
    IBOutlet UITextField *tf_20letter;
    IBOutlet UITextView *tv_chooseTeam;
    IBOutlet UIButton *btn_clickhere;
    IBOutlet UILabel *l_clickHere;
    IBOutlet UIImageView *iv_countryPic;
    IBOutlet UIButton *btn_ok;
    IBOutlet UIImageView *highlight;
    //=============Austria=============
    IBOutlet UIButton *btn_austria;
    IBOutlet UILabel *lb_austria;
    IBOutlet UIImageView *iv_austria;
    //=============China===============
    IBOutlet UIButton *btn_china;
    IBOutlet UILabel *lb_china;
    IBOutlet UIImageView *iv_china;
    //=============Czech===========
    IBOutlet UIButton *btn_czech;
    IBOutlet UILabel *lb_czech;
    IBOutlet UIImageView *iv_czech;
    //=============Finland==========
    IBOutlet UIButton *btn_finland;
    IBOutlet UILabel *lb_finland;
    IBOutlet UIImageView *iv_finland;
    //==============France==========
    IBOutlet UIButton *btn_france;
    IBOutlet UILabel *lb_france;
    IBOutlet UIImageView *iv_france;
    //===============Germany==============
    IBOutlet UIButton *btn_germany;
    IBOutlet UILabel *lb_germany;
    IBOutlet UIImageView *iv_germany;
    //================Hungary=============
    IBOutlet UIButton *btn_hungary;
    IBOutlet UILabel *lb_hungary;
    IBOutlet UIImageView *iv_hungary;
    //==================India==============
    IBOutlet UIButton *btn_india;
    IBOutlet UILabel *lb_india;
    IBOutlet UIImageView *iv_india;
    //==================Itlay========
    IBOutlet UIButton *btn_italy;
    IBOutlet UILabel *lb_italy;
    IBOutlet UIImageView *iv_italy;
    //===========Poland==========
    IBOutlet UIButton *btn_poland;
    IBOutlet UILabel *lb_poland;
    IBOutlet UIImageView *iv_poland;
    //=============Romania=======
    IBOutlet UIButton *btn_romania;
    IBOutlet UILabel *lb_romania;
    IBOutlet UIImageView *iv_romania;
    //==============Russia========
    IBOutlet UIButton *btn_russia;
    IBOutlet UILabel *lb_russia;
    IBOutlet UIImageView *iv_russia;
    //============Serbia=======
    IBOutlet UIButton *btn_serbia;
    IBOutlet UILabel *lb_serbia;
    IBOutlet UIImageView *iv_serbia;
    //==========Ukraine==============
    IBOutlet UIButton *btn_ukraine; 
    IBOutlet UILabel *lb_ukraine;
    IBOutlet UIImageView *iv_ukraine;
    //==============U.S.==============
    IBOutlet UIButton *btn_us;
    IBOutlet UILabel *lb_us;
    IBOutlet UIImageView *iv_us;
    int status;
    
}
@property int status;

-(IBAction)buttonAction_openCountrysList;
-(IBAction)buttonAction_austria:(id)sender;
-(IBAction)buttonAction_china:(id)sender;
-(IBAction)buttonAction_czech:(id)sender;
-(IBAction)buttonAction_finland:(id)sender;
-(IBAction)buttonAction_france:(id)sender;
-(IBAction)buttonAction_germany:(id)sender;
-(IBAction)buttonAction_hungary:(id)sender;
-(IBAction)buttonAction_india:(id)sender;
-(IBAction)buttonAction_italy:(id)sender;
-(IBAction)buttonAction_poland:(id)sender;
-(IBAction)buttonAction_romania:(id)sender;
-(IBAction)buttonAction_russia:(id)sender;
-(IBAction)buttonAction_serbia:(id)sender;
-(IBAction)buttonAction_ukraine:(id)sender;
-(IBAction)buttonAction_go2game:(UIButton *)_sender;

@end
