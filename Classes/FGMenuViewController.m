//
//  FGMenuViewController.m
//  DeadEyeShootingios
//
//  Created by Gamesalad on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FGMenuViewController.h"
#import "FGInstructionsViewController.h"
#import "FGTopScoreViewController.h"
#import "FGGlobalScoreCardViewController.h"
#import "FGAboutFuguMobileViewController.h"
#import "FGAirRifleGameViewController.h"
#import "FGRapidFireGameViewController.h"
#import "FGStartModeViewController.h"
#import "SettingsViewController.h"
@interface FGMenuViewController ()

@end

@implementation FGMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)buttonAction_go2Instructions:(UIButton *)_sender
{
    
    FGInstructionsViewController *vc_instructions = [[FGInstructionsViewController alloc] initWithNibName:@"FGInstructionsViewController" bundle:nil];
    [self presentModalViewController:vc_instructions animated:YES];
    [vc_instructions release];
    
}

-(IBAction)buttonAction_go2TopScore:(UIButton *)_sender
{
    
    FGTopScoreViewController *vc_topscore = [[FGTopScoreViewController alloc] initWithNibName:@"FGTopScoreViewController" bundle:nil];
    [self presentModalViewController:vc_topscore animated:YES];
    [vc_topscore release];
    
}

-(IBAction)buttonAction_go2Global:(UIButton *)_sender
{
    
    FGGlobalScoreCardViewController *vc_global = [[FGGlobalScoreCardViewController alloc] initWithNibName:@"FGGlobalScoreCardViewController" bundle:nil];
    [self presentModalViewController:vc_global animated:YES];
    [vc_global release];
    
}

-(IBAction)buttonAction_go2About:(UIButton *)_sender
{
    
    FGAboutFuguMobileViewController *vc_about = [[FGAboutFuguMobileViewController alloc] initWithNibName:@"FGAboutFuguMobileViewController" bundle:nil];
    [self presentModalViewController:vc_about animated:YES];
    [vc_about release];
    
}

-(IBAction)buttonAction_go2Game:(UIButton *)_sender
{
    
    FGStartModeViewController *vc_game = [[FGStartModeViewController alloc] initWithNibName:@"FGStartModeViewController" bundle:nil];
    [self presentModalViewController:vc_game animated:YES];
    [vc_game release];
    
}
-(IBAction)buttonAction_go2settings:(UIButton *)_sender
{
    
    SettingsViewController *vc_game = [[SettingsViewController alloc] initWithNibName:@"SettingsViewController" bundle:nil];
    [self presentModalViewController:vc_game animated:YES];
    [vc_game release];
    
}

@end
