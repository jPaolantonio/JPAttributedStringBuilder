//
//  JPAttributedStringBuilder.h
//  
//
//  Created by James Paolantonio on 12/11/14.
//
//

#import <UIKit/UIKit.h>

@interface JPAttributedStringBuilder : NSObject

@property (strong, nonatomic) UIFont *font;
@property (strong, nonatomic) NSParagraphStyle *paragraphStyle;
@property (strong, nonatomic) UIColor *foregroundColor;
@property (strong, nonatomic) UIColor *backgroundColor;
@property (strong, nonatomic) NSNumber *ligature;
@property (strong, nonatomic) NSNumber *kern;
@property (strong, nonatomic) NSNumber *strikethroughStyle;
@property (strong, nonatomic) NSNumber *underlineStyle;
@property (strong, nonatomic) UIColor *strokeColor;
@property (strong, nonatomic) NSNumber *strokeWidth;
@property (strong, nonatomic) NSShadow *shadow;
@property (copy, nonatomic) NSString *textEffect;

@property (copy, nonatomic) NSString *text;

/**
 *  Creates an attributed string with current parameters
 *
 *  @return NSAttributedString
 */
- (NSAttributedString *)build;

/**
 *  Creates an attributed string with current parameters, except the text parameter
 *
 *  @param text NSString to be used with the current parameters
 *
 *  @return NSAttributedString
 */
- (NSAttributedString *)buildWithString:(NSString *)text;

@end
