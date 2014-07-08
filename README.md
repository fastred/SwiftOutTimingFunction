# SwiftOutTimingFunction

[![License: MIT](https://img.shields.io/badge/license-MIT-red.svg?style=flat)](https://github.com/fastred/SwiftOutTimingFunction/blob/master/LICENSE)
[![CocoaPods](https://img.shields.io/cocoapods/v/SwiftOutTimingFunction.svg?style=flat)](https://github.com/fastred/SwiftOutTimingFunction)

`SwiftOutTimingFunction` brings Google's new *Swift Out* animation curve to iOS.

![Demo GIF](https://raw.githubusercontent.com/fastred/SwiftOutTimingFunction/master/demo.gif)

## Demo

To run the example project; clone the repo, and open `Example/SwiftOutTimingFunction.xcodeproj`.

## Requirements

 * iOS 6 and above
 * ARC

## Installation

SwiftOutTimingFunction is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "SwiftOutTimingFunction"
  
Then import it with:

    #import "CAMediaTimingFunction+SwiftOut.h"

and use it with:

    animation.timingFunction = [CAMediaTimingFunction swiftOut];

## Author

Arkadiusz Holko:

* [Blog](http://holko.pl/)
* [@arekholko on Twitter](https://twitter.com/arekholko)