//
//  AppDelegate.m
//  DeadEyeShootingios
//
//  Created by Gamesalad on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "FGAirRifleGameViewController.h"
#import "FGFont.h"
float gamescore;
NSString *Name;
NSString *Country;
int globalRounds;
bool isTilt;
@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController_;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [FGFont loadMyFonts];
    [FGFont showSupportedFont];
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    CGRect rcScreen = [[UIScreen mainScreen] applicationFrame];
	_window = [[UIWindow alloc] initWithFrame:rcScreen];
	viewController_ = [[FGStartModeViewController alloc] init];
    [_window addSubview:viewController_.view];

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [self saveScoreToTop5Score:100 plistName:@"TopAirTournament"];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(NSMutableArray *)sortScore:(NSMutableArray *)_arr_score_source currentScore:(float)_currentScore
{
    /**
     sort at here
     */
//    [ _arr_score_source insertObject:@"100" atIndex:0   ];
    NSLog(@"before: testArray:%@",_arr_score_source);
    [_arr_score_source sortUsingComparator:^(id firstObject, id secondObject) 
     {
         float firstScore = [firstObject floatValue];
         float secondScore = [secondObject floatValue];
         return secondScore>firstScore;
     }];
    NSLog(@"after: testArray:%@",_arr_score_source);
    
    return _arr_score_source;
}

-(void)saveScoreToTop5Score:(float)_score plistName:(NSString *)_str_plistname
{
    NSString *str_score = [[NSString stringWithFormat:@"%f",_score] retain];
    NSLog(@"insert score to top5:%@",str_score);
    NSMutableArray *arr_tmp = [self getTop5Score:_str_plistname];
    [arr_tmp addObject:str_score];
    arr_tmp = [self sortScore:arr_tmp currentScore:_score];
    NSLog(@"arr_tmp=%@",arr_tmp);
    NSString *str_filePath = [[NSBundle mainBundle] pathForResource:_str_plistname ofType:@"plist"];
    BOOL isSucess = [arr_tmp writeToFile:str_filePath atomically:YES];
    NSLog(@"isSucess=%d",isSucess);
}

-(NSMutableArray *)getTop5Score:(NSString *)_str_plistname
{
    /*this method read data from fakescore.plist*/
    NSMutableArray *arr_tmp = nil;
    NSString *str_plistPath = [[NSBundle mainBundle] pathForResource:_str_plistname ofType:@"plist"];
    NSLog(@"str_plistPath=%@",str_plistPath);
    arr_tmp = [[NSMutableArray alloc] initWithContentsOfFile:str_plistPath];
    NSLog(@"arr_tmp=%@",arr_tmp);
    
    
    return arr_tmp;
}
@end
