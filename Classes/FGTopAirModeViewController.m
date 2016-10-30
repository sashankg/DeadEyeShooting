//
//  FGAirModeViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FGTopAirModeViewController.h"
#import "FGTopAirQuickViewController.h"
#import "FGTopAirTournamentViewController.h"
#import "FGGameResultViewController.h"
#import "FGAirRifleGameViewController.h"
@interface FGTopAirModeViewController ()

@end

@implementation FGTopAirModeViewController

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

-(IBAction)clickBtnBack:(id)sender
{
	[self dismissModalViewControllerAnimated:YES];
}

-(IBAction)buttonAction_go2Quick:(UIButton *)_sender
{
    
    FGTopAirQuickViewController *vc_quick = [[FGTopAirQuickViewController alloc] initWithNibName:@"FGTopAirQuickViewController" bundle:nil];
    [self presentModalViewController:vc_quick animated:YES];
    [vc_quick release];
    
   
    
}

-(IBAction)buttonAction_go2Tourn:(UIButton *)_sender
{
    
    FGTopAirTournamentViewController *vc_tourn = [[FGTopAirTournamentViewController alloc] initWithNibName:@"FGTopAirTournamentViewController" bundle:nil];
    [self presentModalViewController:vc_tourn animated:YES];
    [vc_tourn release];
    
}

@end
