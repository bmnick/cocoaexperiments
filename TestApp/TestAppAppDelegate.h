//
//  TestAppAppDelegate.h
//  TestApp
//
//  Created by Ben Nicholas on 4/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "TextFieldManager.h"

@interface TestAppAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
    TextFieldManager * tfm;
}

@property (assign) IBOutlet NSWindow *window;

@end
