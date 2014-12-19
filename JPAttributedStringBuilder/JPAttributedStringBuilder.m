//
//  Created by James Paolantonio on 12/11/14.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import "JPAttributedStringBuilder.h"

@interface JPAttributedStringBuilder ()
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
@end

@implementation JPAttributedStringBuilder

- (JPAttributedStringBuilder * (^)(UIFont *font))withFont {
    return ^(UIFont *font) {
        self.font = font;
        return self;
    };
}

- (JPAttributedStringBuilder * (^)(NSParagraphStyle *paragraphStyle))withParagraphStyle {
    return ^(NSParagraphStyle *paragraphStyle) {
        self.paragraphStyle = paragraphStyle;
        return self;
    };
}
- (JPAttributedStringBuilder * (^)(UIColor *foregroundColor))withForegroundColor {
    return ^(UIColor *foregroundColor) {
        self.foregroundColor = foregroundColor;
        return self;
    };
}
- (JPAttributedStringBuilder * (^)(UIColor *backgroundColor))withBackgroundColor {
    return ^(UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}
- (JPAttributedStringBuilder * (^)(NSNumber *ligature))withLigature {
    return ^(NSNumber *ligature) {
        self.ligature = ligature;
        return self;
    };
}
- (JPAttributedStringBuilder * (^)(NSNumber *kern))withKern {
    return ^(NSNumber *kern) {
        self.kern = kern;
        return self;
    };
}
- (JPAttributedStringBuilder * (^)(NSNumber *strikethroughStyle))withStrikethroughStyle {
    return ^(NSNumber *strikethroughStyle) {
        self.strikethroughStyle = strikethroughStyle;
        return self;
    };
}
- (JPAttributedStringBuilder * (^)(NSNumber *underlineStyle))withUnderlineStyle {
    return ^(NSNumber *underlineStyle) {
        self.underlineStyle = underlineStyle;
        return self;
    };
}
- (JPAttributedStringBuilder * (^)(UIColor *strokeColor))withStrokeColor {
    return ^(UIColor *strokeColor) {
        self.strokeColor = strokeColor;
        return self;
    };
}
- (JPAttributedStringBuilder * (^)(NSNumber *strokeWidth))withStrokeWidth {
    return ^(NSNumber *strokeWidth) {
        self.strokeWidth = strokeWidth;
        return self;
    };
}
- (JPAttributedStringBuilder * (^)(NSShadow *shadow))withShadow {
    return ^(NSShadow *shadow) {
        self.shadow = shadow;
        return self;
    };
}
- (JPAttributedStringBuilder * (^)(NSString *textEffect))withTextEffect {
    return ^(NSString *textEffect) {
        self.textEffect = textEffect;
        return self;
    };
}
- (JPAttributedStringBuilder * (^)(NSString *text))withText {
    return ^(NSString *text) {
        self.text = text;
        return self;
    };
}

- (NSAttributedString * (^)())build {
    return ^{
        return self.buildWithString(self.text);
    };
}

- (NSAttributedString * (^)(NSString *text))buildWithString {
    return ^(NSString *text) {
        if (text == nil) {
            return [[NSAttributedString alloc] init];
        }
        return [[NSAttributedString alloc] initWithString:text attributes:[self attributedDictionary]];
    };
}

- (NSDictionary *)attributedDictionary {
    NSMutableDictionary *attributes = [[NSMutableDictionary alloc] init];
    if (self.font) {
        attributes[NSFontAttributeName] = self.font;
    }
    if (self.paragraphStyle) {
        attributes[NSParagraphStyleAttributeName] = self.paragraphStyle;
    }
    if (self.foregroundColor) {
        attributes[NSForegroundColorAttributeName] = self.foregroundColor;
    }
    if (self.backgroundColor) {
        attributes[NSBackgroundColorAttributeName] = self.backgroundColor;
    }
    if (self.ligature) {
        attributes[NSLigatureAttributeName] = self.ligature;
    }
    if (self.kern) {
        attributes[NSKernAttributeName] = self.kern;
    }
    if (self.strikethroughStyle) {
        attributes[NSStrikethroughColorAttributeName] = self.strikethroughStyle;
    }
    if (self.underlineStyle) {
        attributes[NSUnderlineStyleAttributeName] = self.underlineStyle;
    }
    if (self.strokeColor) {
        attributes[NSStrokeColorAttributeName] = self.strokeColor;
    }
    if (self.strokeWidth) {
        attributes[NSStrokeWidthAttributeName] = self.strokeWidth;
    }
    if (self.shadow) {
        attributes[NSShadowAttributeName] = self.shadow;
    }
    if (self.textEffect) {
        attributes[NSTextEffectAttributeName] = self.textEffect;
    }
    
    return attributes;
}

@end
