# SwiftOutTimingFunction

`SwiftOutTimingFunction` brings Google's new *Swift Out* animation curve to iOS.

![Demo GIF](https://raw.githubusercontent.com/fastred/SwiftOutTimingFunction/master/demo.gif)

## Demo

To run the example project; clone the repo, and open `Example/SwiftOutTimingFunction.xcodeproj`.

## Requirements

 * iOS 6 and above
 * ARC

## Installation

Copy `CAMediaTimingFunction+SwiftOut.h/m` to your project. Then, import it:

    #import "CAMediaTimingFunction+SwiftOut.h"

and use with:

    animation.timingFunction = [CAMediaTimingFunction swiftOut];

## Author

Arkadiusz Holko:

* [Blog](http://holko.pl/)
* [@arekholko on Twitter](https://twitter.com/arekholko)