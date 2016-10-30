//
//  AppDelegate.h
//  DeadEyeShootingios
//
//  Created by Gamesalad on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FGStartModeViewController.h"
extern float gamescore;
extern NSString *Name;
extern NSString *Country;
extern int globalRounds;
extern bool isTilt;
@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    
}
@property (nonatomic, readwrite,retain) UIWindow *window;
@property (nonatomic, retain) IBOutlet FGStartModeViewController *viewController_;
-(NSMutableArray *)sortScore:(NSMutableArray *)_arr_score_source currentScore:(float)_currentScore;
-(NSMutableArray *)getTop5Score:(NSString *)_str_plistname;
-(void)saveScoreToTop5Score:(float)_score plistName:(NSString *)_str_plistname;
@end
