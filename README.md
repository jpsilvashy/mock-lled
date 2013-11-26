Mock Limitless LED Bridge
=========================

This is a ruby UDP server that mocks the [LimitlessLED Bridge](http://www.limitlessled.com/), this is intended to show the output color for the LimitlessLED without needing the hardware to test it on.

This is in very early development, and not of the functionality of the LED is mocked out

## Usage

Start the server:

    $ bin/server

In a seperate console window run the demo to see the mock server output the colors the light would change to:

    $ ruby examples/demo.rb

## Note

We are *not affiliated in any way* with the manufacturers of Limitless LED. We just think they are cool.

## License

The MIT License (MIT)

Copyright (c) 2013 Joseph Silvashy

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
