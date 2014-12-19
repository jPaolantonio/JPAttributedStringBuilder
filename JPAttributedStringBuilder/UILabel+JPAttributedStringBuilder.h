//
//  Created by James Paolantonio on 12/19/14.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JPAttributedStringBuilder.h"

@interface UILabel (JPAttributedStringBuilder)

- (void)jp_makeBuilder:(void(^)(JPAttributedStringBuilder *make))block;

@end
