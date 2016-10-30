//
//  FGRapidModeViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FGTopRapidModeViewController.h"
#import "TopRapidQuickViewController.h"
#import "TopRapidTournamentViewController.h"

@interface FGTopRapidModeViewController ()

@end

@implementation FGTopRapidModeViewController

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
    
    TopRapidQuickViewController *vc_quick = [[TopRapidQuickViewController alloc] initWithNibName:@"TopRapidQuickViewController" bundle:nil];
    [self presentModalViewController:vc_quick animated:YES];
    [vc_quick release];
    
}

-(IBAction)buttonAction_go2Tourn:(UIButton *)_sender
{
    
    TopRapidTournamentViewController *vc_tourn = [[TopRapidTournamentViewController alloc] initWithNibName:@"TopRapidTournamentViewController" bundle:nil];
    [self presentModalViewController:vc_tourn animated:YES];
    [vc_tourn release];
    
}


@end
