//
//  SettingsViewController.m
//  DeadEyeShootingios
//
//  Created by Gamesalad on 8/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SettingsViewController.h"
#import "AppDelegate.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

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
    [Option addTarget:self action:@selector(tilt:) forControlEvents:UIControlEventValueChanged];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    isTilt = FALSE;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)tilt:(UISegmentedControl *)sender
{
if ([Option selectedSegmentIndex] == 0)
{
    isTilt=FALSE;
}
    if ([Option selectedSegmentIndex] == 1)
    {
        isTilt=TRUE;
    }
NSLog(@"isTilt=%d",isTilt);
}
-(IBAction)clickBtnBack:(id)sender
{
	[self dismissModalViewControllerAnimated:YES];
}

@end
