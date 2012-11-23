//
//  ExampleTest.m
//  CrazyRocketMan
//
//  Created by Regie G. Pinat on 11/21/12.
//  Copyright (c) 2012 Regie G. Pinat. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h> 
#import "OCMock/OCMock.h"
#import "CrazyRocketManViewController.h"
@interface ExampleTest : GHTestCase { }
@end


@implementation ExampleTest

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



//test methods should start with test
- (void)testFoo {
    NSString *a = @"foos";
    GHTestLog(@"I can log to the GHUnit test console: %@", a);
    
    // Assert a is not NULL, with no custom error description
    GHAssertNotNULL(a,nil);
    
    // Assert equal objects, add custom error description
    NSString *b = @"foos";
    
    GHAssertEqualObjects(a, b, @"A custom error message. a should be equal to: %@.", b);
    

}


- (void)testBar {
    GHAssertTrue(TRUE, @"Yes it worked");
}


- (void)testSimplePass {
	// Another test
}

- (void)testOCMockPass {
    id mock = [OCMockObject mockForClass:NSString.class];
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    
    NSString *returnValue = [mock lowercaseString];
    GHAssertEqualObjects(@"mocktest", returnValue, @"Should have returned the expected string.");
}

- (void)testOCMockFail {
    id mock = [OCMockObject mockForClass:NSString.class];
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    
    NSString *returnValue = [mock lowercaseString];
    GHAssertEqualObjects(@"mocktest", returnValue, @"Should have returned the expected string.");
}














@end
