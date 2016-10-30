//
//  FGStartModeViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/2/12.
//
//

#import "FGStartModeViewController.h"
#import "FGStartEnterYourNameViewController.h"
#import "FGInstructionsViewController.h"
#import "FGTopScoreViewController.h"
#import "FGGlobalScoreCardViewController.h"
#import "FGAboutFuguMobileViewController.h"
#import "FGAirRifleGameViewController.h"
#import "FGRapidFireGameViewController.h"
#import "FGStartModeViewController.h"
#import "SettingsViewController.h"
@interface FGStartModeViewController ()

@end

@implementation FGStartModeViewController

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

-(IBAction)buttonAction_go2rapidquick:(UIButton *)_sender
{
    
    FGStartEnterYourNameViewController *vc_quickPlay = [[FGStartEnterYourNameViewController alloc] initWithNibName:@"FGStartEnterYourNameViewController" bundle:nil];
    vc_quickPlay.status = 3;
    [self presentModalViewController:vc_quickPlay animated:YES];
    [vc_quickPlay release];
     
}



-(IBAction)buttonAction_go2rapidtournament:(UIButton *)_sender
{
    
    FGStartEnterYourNameViewController *vc_quickPlay = [[FGStartEnterYourNameViewController alloc] initWithNibName:@"FGStartEnterYourNameViewController" bundle:nil];
    vc_quickPlay.status = 4;
    [self presentModalViewController:vc_quickPlay animated:YES];
    [vc_quickPlay release];
    
}
-(IBAction)buttonAction_go2airquick:(UIButton *)_sender
{
    
    FGStartEnterYourNameViewController *vc_quickPlay = [[FGStartEnterYourNameViewController alloc] initWithNibName:@"FGStartEnterYourNameViewController" bundle:nil];
    vc_quickPlay.status = 1;
    [self presentModalViewController:vc_quickPlay animated:YES];
    [vc_quickPlay release];
    
}
-(IBAction)buttonAction_go2airtournament:(UIButton *)_sender
{
    
    FGStartEnterYourNameViewController *vc_quickPlay = [[FGStartEnterYourNameViewController alloc] initWithNibName:@"FGStartEnterYourNameViewController" bundle:nil];
    vc_quickPlay.status = 2;
    [self presentModalViewController:vc_quickPlay animated:YES];
    [vc_quickPlay release];
    
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
-(IBAction)mute:(UIButton *)_sender
{
    mute.hidden = YES;
}
-(IBAction)unmute:(UIButton *)_sender
{
    mute.hidden = NO;
}



-(IBAction)clickBtnBack:(id)sender
{
	[self dismissModalViewControllerAnimated:YES];
}

@end
