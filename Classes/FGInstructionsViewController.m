//
//  FGInstructionsViewController.m
//  DeadEyeShootingios
//
//  Created by Gamesalad on 7/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FGInstructionsViewController.h"

@interface FGInstructionsViewController ()

@end

@implementation FGInstructionsViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    tv_insructions.font = [UIFont fontWithName:@"BookmanOldStyle-Bold" size:17];
    tv_instructionExplaination.font = [UIFont fontWithName:@"BookmanOldStyle-Bold" size:16];
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


@end
