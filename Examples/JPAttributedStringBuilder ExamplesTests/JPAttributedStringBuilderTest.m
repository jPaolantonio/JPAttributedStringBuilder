//
//  JPAttributedStringBuilder.m
//  JPAttributedStringBuilder Examples
//
//  Created by James Paolantonio on 12/11/14.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "JPAttributedStringBuilder.h"

@interface JPAttributedStringBuilderTest : XCTestCase

@end

@implementation JPAttributedStringBuilderTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testEmptyStringBuilder {
    JPAttributedStringBuilder *stringBuilder = [[JPAttributedStringBuilder alloc] init];
    XCTAssertNotNil(stringBuilder);
    
    NSAttributedString *attributedString = [stringBuilder build];
    XCTAssertNil(attributedString);
}

- (void)testBuilder {
    JPAttributedStringBuilder *stringBuilder = [[JPAttributedStringBuilder alloc] init];
    XCTAssertNotNil(stringBuilder);
    
    stringBuilder.font = [UIFont systemFontOfSize:14.f];
    stringBuilder.paragraphStyle = [[NSParagraphStyle alloc] init];
    stringBuilder.foregroundColor = [UIColor redColor];
    stringBuilder.backgroundColor = [UIColor lightGrayColor];
    stringBuilder.ligature = @1;
    stringBuilder.kern = @2;
    stringBuilder.strikethroughStyle = @3;
    stringBuilder.underlineStyle = @4;
    stringBuilder.strokeColor = [UIColor blueColor];
    stringBuilder.strokeWidth = @1.5;
    stringBuilder.shadow = [[NSShadow alloc] init];
    stringBuilder.textEffect = @"";
    
    stringBuilder.text = @"This is a great string";
    
    NSAttributedString *attributedString = [stringBuilder build];
    XCTAssertNotNil(attributedString);
    XCTAssertEqualObjects(attributedString.string, @"This is a great string");
}

@end
