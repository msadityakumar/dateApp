/**
 * Copyright (c) 2015-present, Parse, LLC.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "ParseStarterProjectViewController.h"

#import <Parse/Parse.h>
@interface ParseStarterProjectViewController()
@property (weak, nonatomic) IBOutlet UITextField *usernameTxtField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTxtField;


@end

@implementation ParseStarterProjectViewController

#pragma mark -
#pragma mark UIViewController

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];


    
    
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];

    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (IBAction)saveUserButtAction:(id)sender {
    PFObject *credentialObj = [PFObject objectWithClassName:@"LoginCredentials"];
    credentialObj[@"name"] = self.usernameTxtField.text;
    credentialObj[@"password"] = self.passwordTxtField.text;
    
    
    [credentialObj saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            NSLog(@"\nsucessfull");
        }
        if (error)
        {
            NSLog(@"\n%@",error);
            
        }
        
    }];
    
}

@end
