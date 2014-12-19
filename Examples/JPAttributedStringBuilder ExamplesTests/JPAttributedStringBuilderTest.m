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
    
    NSAttributedString *attributedString = stringBuilder.build();
    XCTAssertNotNil(attributedString);
}

- (void)testBuilder {
    JPAttributedStringBuilder *stringBuilder = [[JPAttributedStringBuilder alloc] init];
    XCTAssertNotNil(stringBuilder);
    
    stringBuilder.withFont([UIFont systemFontOfSize:14.f]);
    stringBuilder.withParagraphStyle([[NSParagraphStyle alloc] init]);
    stringBuilder.withForegroundColor([UIColor redColor]);
    stringBuilder.withBackgroundColor([UIColor lightGrayColor]);
    stringBuilder.withLigature(@1);
    stringBuilder.withKern(@2);
    stringBuilder.withStrikethroughStyle(@3);
    stringBuilder.withUnderlineStyle(@4);
    stringBuilder.withStrokeColor([UIColor blueColor]);
    stringBuilder.withStrokeWidth(@1.5);
    stringBuilder.withShadow([[NSShadow alloc] init]);
    stringBuilder.withTextEffect(@"");
    
    stringBuilder.withText(@"This is a great string");
    
    NSAttributedString *attributedString = stringBuilder.build();
    XCTAssertNotNil(attributedString);
    XCTAssertEqualObjects(attributedString.string, @"This is a great string");
}

@end
