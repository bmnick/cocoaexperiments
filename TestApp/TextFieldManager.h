//
//  TextFieldManager.h
//  TestApp
//
//  Created by Ben Nicholas on 4/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface TextFieldManager : NSViewController {
@private
    
    NSButton *secondCheckBox;
    NSTextField *firstInput;
    NSButton *secondCheck;
    NSTextField *thirdLabel;
    NSTextField *thirdInput;
    NSButton *firstCheckBox;
    NSTextField *secondLabel;
    NSTextField *secondInput;
}

@property (nonatomic, assign) BOOL firstEnabled;
@property (nonatomic, assign) BOOL secondEnabled;

@property (nonatomic, retain) NSString * firstString;
@property (nonatomic, retain) NSString * secondString;
@property (nonatomic, retain) NSString * thirdString;

- (IBAction)logValues:(id)sender;

@property (assign) IBOutlet NSTextField *secondLabel;
@property (assign) IBOutlet NSTextField *secondInput;
@property (assign) IBOutlet NSButton *secondCheck;

@property (assign) IBOutlet NSTextField *thirdLabel;
@property (assign) IBOutlet NSTextField *thirdInput;

@end