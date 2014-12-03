//
//  JPAttributedStringBuilder.m
//
//
//  Created by James Paolantonio on 12/11/14.
//
//

#import "JPAttributedStringBuilder.h"

@implementation JPAttributedStringBuilder

- (NSAttributedString *)build {
    return [self buildWithString:self.text];
}

- (NSAttributedString *)buildWithString:(NSString *)text {
    if (text == nil) {
        return nil;
    }
    return [[NSAttributedString alloc] initWithString:text attributes:[self attributedDictionary]];
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
