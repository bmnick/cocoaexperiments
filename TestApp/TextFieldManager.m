//
//  TextFieldManager.m
//  TestApp
//
//  Created by Ben Nicholas on 4/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TextFieldManager.h"


@implementation TextFieldManager

@synthesize secondLabel;
@synthesize secondInput;
@synthesize secondCheck;

@synthesize thirdLabel;
@synthesize thirdInput;

@synthesize firstString;
@synthesize secondString;
@synthesize thirdString;

@synthesize firstEnabled;
@synthesize secondEnabled;

- (void)awakeFromNib 
{
    [self.view setWantsLayer:YES];
    
    [self.secondCheck.layer setHidden:!self.firstEnabled];
    [self.secondInput.layer setHidden:!self.firstEnabled];
    [self.secondLabel.layer setHidden:!self.firstEnabled];
    [self.thirdLabel.layer setHidden:!self.secondEnabled];
    [self.thirdInput.layer setHidden:!self.secondEnabled];
    
    
    // Register observers
    [self addObserver:self forKeyPath:@"self.firstEnabled" options:(NSKeyValueObservingOptionNew) context:nil];
    [self addObserver:self forKeyPath:@"self.secondEnabled" options:(NSKeyValueObservingOptionNew) context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath 
                      ofObject:(id)object 
                        change:(NSDictionary *)change 
                       context:(void *)context
{
    if ([keyPath isEqualToString:@"self.firstEnabled"])
    {
        if (!self.firstEnabled) {
            self.secondEnabled = NO;
        }
        
        [self.secondCheck.layer setHidden:!self.firstEnabled];
        [self.secondInput.layer setHidden:!self.firstEnabled];
        [self.secondLabel.layer setHidden:!self.firstEnabled];
    }
    else if ([keyPath isEqualToString:@"self.secondEnabled"])
    {   
        [self.thirdLabel.layer setHidden:!self.secondEnabled];
        [self.thirdInput.layer setHidden:!self.secondEnabled];
    }
}

- (void)dealloc
{
    [super dealloc];
}

-(NSString *)secondString
{
    return firstEnabled ? secondString : firstString;
}

-(NSString *)thirdString
{
    return secondEnabled ? thirdString : firstString;
}

- (IBAction)logValues:(id)sender {
    NSLog(@"first:\t%@\nsecond:\t%@\nthird:\t%@", self.firstString, self.secondString, self.thirdString);
}

@end
