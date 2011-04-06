//
//  TestAppAppDelegate.m
//  TestApp
//
//  Created by Ben Nicholas on 4/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TestAppAppDelegate.h"

@implementation TestAppAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    tfm = [[TextFieldManager alloc] init];
    
    [self.window setContentView:tfm.view];
}

@end
