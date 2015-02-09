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
        attributes[NSFontAttributeName] = [self.font copy];
    }
    if (self.paragraphStyle) {
        attributes[NSParagraphStyleAttributeName] = [self.paragraphStyle copy];
    }
    if (self.foregroundColor) {
        attributes[NSForegroundColorAttributeName] = [self.foregroundColor copy];
    }
    if (self.backgroundColor) {
        attributes[NSBackgroundColorAttributeName] = [self.backgroundColor copy];
    }
    if (self.ligature) {
        attributes[NSLigatureAttributeName] = [self.ligature copy];
    }
    if (self.kern) {
        attributes[NSKernAttributeName] = [self.kern copy];
    }
    if (self.strikethroughStyle) {
        attributes[NSStrikethroughColorAttributeName] = [self.strikethroughStyle copy];
    }
    if (self.underlineStyle) {
        attributes[NSUnderlineStyleAttributeName] = [self.underlineStyle copy];
    }
    if (self.strokeColor) {
        attributes[NSStrokeColorAttributeName] = [self.strokeColor copy];
    }
    if (self.strokeWidth) {
        attributes[NSStrokeWidthAttributeName] = [self.strokeWidth copy];
    }
    if (self.shadow) {
        attributes[NSShadowAttributeName] = [self.shadow copy];
    }
    if (self.textEffect) {
        attributes[NSTextEffectAttributeName] = [self.textEffect copy];
    }
    
    return attributes;
}

@end
