//
//  FGGameResultViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 8/3/12.
//
//

#import "FGFinalRoundViewController.h"
#import "FGGameSubmitViewController.h"
@implementation FGFinalRoundViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        arr_names = [[NSMutableArray alloc] initWithCapacity:10];
        [arr_names addObject:@"Abhinav Bindra"];
        [arr_names addObject:@"K.Prikhodchrnko"];
        [arr_names addObject:@"Peter Sidi"];
        [arr_names addObject:@"A.G.Moldoveanu"];
        [arr_names addObject:@"Qinan Zhu"];
        [arr_names addObject:@"Stevan Pletikosic"];
        [arr_names addObject:@"Sergey Kruglov"];
        [arr_names addObject:@"Henri Hakkinen"];

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

-(IBAction)buttonAction_go2submit:(UIButton *)_sender
{
    
    FGGameSubmitViewController *vc_submit = [[FGGameSubmitViewController alloc] initWithNibName:@"FGGameSubmitViewController" bundle:nil];
    [self presentModalViewController:vc_submit animated:YES];
    [vc_submit release];
    
}


@end
