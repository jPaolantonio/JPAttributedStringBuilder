JPAttributedStringBuilder
=========================

A DSL for creating NSStrings and NSAttributedStrings

[ ![Build Status] [travis-image] ] [travis]
[ ![Version] [cocoa-version] ] [cocoadocs]
[ ![Platform] [cocoa-plaform] ] [cocoadocs]

## Installation

Install with [CocoaPods](http://cocoapods.org):

```
pod 'JPAttributedStringBuilder'
```

## Usage

#### NSAttributedString Creation

Have you ever had to append a bunch of `NSAttributedStrings`?

```
NSMutableAttributedString *text = [[NSMutableAttributedString alloc] init];

[text appendAttributedString:
     [[NSAttributedString alloc] initWithString:firstName
                                     attributes:@{
                                                  NSFontAttributeName : [UIFont boldSystemFont:12.0f],
                                                  NSForegroundColorAttributeName : [UIColor blackColor]
                                                  }]];

[text appendAttributedString:
     [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@\n", self.search.neighborhoodsString]
                                     attributes:@{
                                                  NSFontAttributeName : [UIFont proximaNovaBoldWithSize:16.0f],
                                                  NSForegroundColorAttributeName : [UIColor ucDarkColor]
                                                  }]];

[text appendAttributedString:
     [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@", self.bedPriceString]
                                     attributes:@{
                                                  NSFontAttributeName : [UIFont proximaNovaRegularWithSize:14.0f],
                                                  NSForegroundColorAttributeName : [UIColor ucDarkColor]
                                                  }]];
```

## Examples

There is an example included with the project. To install,

```
$ pod install
$ open ZipLocateSample.xcworkspace/
```

##Contribute

Send me pull requests!

##Authors

James Paolantonio - [@jpaolantonio](http://twitter.com/jPaolantonio)

####Extra

Let me know if you are using this or want anything changed!! :)

[travis]: https://travis-ci.org/jPaolantonio/JPAttributedStringBuilder
[travis-image]: http://img.shields.io/travis/jPaolantonio/JPAttributedStringBuilder.svg?branch=master

[cocoadocs]: http://cocoadocs.org/docsets/JPAttributedStringBuilder
[cocoa-version]: http://cocoapod-badges.herokuapp.com/v/JPAttributedStringBuilder/badge.png
[cocoa-plaform]: http://cocoapod-badges.herokuapp.com/p/JPAttributedStringBuilder/badge.png
