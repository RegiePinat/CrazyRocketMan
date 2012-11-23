//
//  UItest.m
//  CrazyRocketMan
//
//  Created by Regie G. Pinat on 11/23/12.
//  Copyright (c) 2012 Regie G. Pinat. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h> 
#import "OCMock/OCMock.h"
#import "CrazyRocketManViewController.h"



@interface UItest : GHViewTestCase  

@end

@implementation UItest

- (BOOL)shouldRunOnMainThread {
    // By default NO, but if you have a UI test or test dependent on running on the main thread return YES
    return NO;
}

- (void)setUpClass {
    // Run at start of all tests in the class
}

- (void)tearDownClass {
    // Run at end of all tests in the class
}

- (void)setUp {
    // Run before each test method
}

- (void)tearDown {
    // Run after each test method
}




-(void)testgameViewnotNil
{
CrazyRocketManViewController *weew = [[[CrazyRocketManViewController alloc] init] autorelease];

GHVerifyView(weew.view);
}
@end
