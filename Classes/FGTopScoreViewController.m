//
//  FGTopScoreViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FGTopScoreViewController.h"
#import "FGTopAirModeViewController.h"
#import "FGTopRapidModeViewController.h"
#import "AppDelegate.h"
@interface FGTopScoreViewController ()

@end

@implementation FGTopScoreViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        /**first time your viewController init from memory , do some thing here...*/
    }
    return self;
}

- (void)viewDidLoad
{
    /*first time your screen(viewController) load . do some thing here....*/
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    
    
    
    
    
}

- (void)viewDidUnload

{
    /**when system make a memory warnning! your should release your subviews of the main view,do some thing here....*/
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

-(IBAction)buttonAction_go2Air:(UIButton *)_sender
{
    
    FGTopAirModeViewController *vc_air = [[FGTopAirModeViewController alloc] initWithNibName:@"FGTopAirModeViewController" bundle:nil];
    [self presentModalViewController:vc_air animated:YES];
    [vc_air release];
    
}

-(IBAction)buttonAction_go2Rapid:(UIButton *)_sender
{
    
    FGTopRapidModeViewController *vc_Rapid = [[FGTopRapidModeViewController alloc] initWithNibName:@"FGTopRapidModeViewController" bundle:nil];
    [self presentModalViewController:vc_Rapid animated:YES];
    [vc_Rapid release];
    
}


@end
