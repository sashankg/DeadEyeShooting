//
//  FGStartAirModeViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/2/12.
//
//

#import "FGStartAirModeViewController.h"
#import "FGAirRifleGameViewController.h"
#import "FGGameResultViewController.h"
#import "FGStartEnterYourNameViewController.h"
#import "FGStartEnterYourNameViewController.h"

@interface FGStartAirModeViewController ()

@end

@implementation FGStartAirModeViewController

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


-(IBAction)buttonAction_go2quickPlay:(UIButton *)_sender
{
    FGStartEnterYourNameViewController *vc_quickPlay = [[FGStartEnterYourNameViewController alloc] initWithNibName:@"FGStartEnterYourNameViewController" bundle:nil];
    vc_quickPlay.status = 1;
    [self presentModalViewController:vc_quickPlay animated:YES];
    [vc_quickPlay release];
}
-(IBAction)buttonAction_go2Tournament:(UIButton *)_sender
{
    FGStartEnterYourNameViewController *vc_tourn = [[FGStartEnterYourNameViewController alloc] initWithNibName:@"FGStartEnterYourNameViewController" bundle:nil];
    vc_tourn.status = 2;
    [self presentModalViewController:vc_tourn animated:YES];
    [vc_tourn release];
}

-(IBAction)clickBtnBack:(id)sender
{
	[self dismissModalViewControllerAnimated:YES];
}

@end
