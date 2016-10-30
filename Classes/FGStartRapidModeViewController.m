//
//  FGStartRapidModeViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/2/12.
//
//

#import "FGStartRapidModeViewController.h"
#import "FGRapidFireGameViewController.h"
#import "FGStartEnterYourNameViewController.h"
@interface FGStartRapidModeViewController ()

@end

@implementation FGStartRapidModeViewController

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

-(IBAction)buttonAction_go2quick:(UIButton *)_sender
{
    
    FGStartEnterYourNameViewController *vc_quickPlay = [[FGStartEnterYourNameViewController alloc] initWithNibName:@"FGStartEnterYourNameViewController" bundle:nil];
    vc_quickPlay.status = 3;
    [self presentModalViewController:vc_quickPlay animated:YES];
    [vc_quickPlay release];
    
}
-(IBAction)buttonAction_go2tournament:(UIButton *)_sender
{
        FGStartEnterYourNameViewController *vc_quickPlay = [[FGStartEnterYourNameViewController alloc] initWithNibName:@"FGStartEnterYourNameViewController" bundle:nil];
        vc_quickPlay.status = 4;
        [self presentModalViewController:vc_quickPlay animated:YES];
        [vc_quickPlay release];
}
-(IBAction)clickBtnBack:(id)sender
{
	[self dismissModalViewControllerAnimated:YES];
}




@end
