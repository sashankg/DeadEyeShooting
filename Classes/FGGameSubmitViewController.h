//
//  FGGameSubmitViewController.h
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/3/12.
//
//

#import <UIKit/UIKit.h>

@interface FGGameSubmitViewController : UIViewController<UITextFieldDelegate,NSURLConnectionDelegate>

{
    IBOutlet UITextField *tf_name;
    IBOutlet UITextField *tf_email;
    float submitscore;
    NSString *Name;
}
@property float submitscore;
@property(nonatomic,assign) NSString *Name;
-(IBAction)buttonAction_submit:(id)_sender;
-(IBAction)gotomenu:(id)sender;
-(IBAction)cancel:(id)_sender;

@end
