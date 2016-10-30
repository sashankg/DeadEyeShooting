//
//  FGAboutFuguMobileViewController.m
//  DeadEyeShootingios
//
//  Created by ABHINAV BALLAKUR on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FGAboutFuguMobileViewController.h"

@interface FGAboutFuguMobileViewController ()

@end

@implementation FGAboutFuguMobileViewController

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
    tv_Head.font = [UIFont fontWithName:@"BookmanOldStyle-Bold" size:17];
    tv_About.font = [UIFont fontWithName:@"BookmanOldStyle-Bold" size:17];
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
@end
