//
//  Created by James Paolantonio on 12/11/14.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JPAttributedStringBuilder : NSObject

//@property (copy, nonatomic) NSArray *childBuilders; //JPAttributedStringBuilder

- (JPAttributedStringBuilder * (^)(UIFont *font))withFont;
- (JPAttributedStringBuilder * (^)(NSParagraphStyle *paragraphStyle))withParagraphStyle;
- (JPAttributedStringBuilder * (^)(UIColor *foregroundColor))withForegroundColor;
- (JPAttributedStringBuilder * (^)(UIColor *backgroundColor))withBackgroundColor;
- (JPAttributedStringBuilder * (^)(NSNumber *ligature))withLigature;
- (JPAttributedStringBuilder * (^)(NSNumber *kern))withKern;
- (JPAttributedStringBuilder * (^)(NSNumber *strikethroughStyle))withStrikethroughStyle;
- (JPAttributedStringBuilder * (^)(NSNumber *underlineStyle))withUnderlineStyle;
- (JPAttributedStringBuilder * (^)(UIColor *strokeColor))withStrokeColor;
- (JPAttributedStringBuilder * (^)(NSNumber *strokeWidth))withStrokeWidth;
- (JPAttributedStringBuilder * (^)(NSShadow *shadow))withShadow;
- (JPAttributedStringBuilder * (^)(NSString *textEffect))withTextEffect;
- (JPAttributedStringBuilder * (^)(NSString *text))withText;

/**
 *  Creates an attributed string with current parameters
 *
 *  @return NSAttributedString
 */
- (NSAttributedString * (^)())build;

/**
 *  Creates an attributed string with current parameters, except the text parameter
 *
 *  @param text NSString to be used with the current parameters
 *
 *  @return NSAttributedString
 */
- (NSAttributedString * (^)(NSString *text))buildWithString;

@end
