# About XcodeBoostUnitTest

I've recently been tooling about with the C++ exercises on [Exercism.io](http://exercism.io) and was inspired to work a few unit tests into my C++ projects.  Unfortunately, I use Xcode as my primary IDE and Apple's provided unit test framework didn't appear to be suited for cross-platform C++ unit testing.  I did a bit of research, but didn't find any good ways to integrate Boost unit tests.  This repository is my meager attempt to make it easy to write unit tests against Boost's unit test framework and run them readily in Xcode.

## What's in the repo?

This repository is a handful of things.  First and most simply, it contains an Xcode project that's been configured to compile and execute unit tests written in C++.  This is a simple demonstration project.  Second, there's a shell script that does most of the heavy lifting.  This may be the more interesting part of this project.  Finally, the repository itself is set up in a series of step-by-step instructions.  Each commit is a step in how this can be reproduced in another project.

## Documentation

This side of the project isn't documented.  It's mostly just project setup and a little bit of code for demonstration purposes.  This project utilizes Github's Pages support to display more information.  You can find detailed steps, screenshots, and more at [http://grayson.github.io/XcodeBoostUnitTest](http://grayson.github.io/XcodeBoostUnitTest).

## Contact

For questions, complaints, or suggestions, please contact me via email or Twitter:

[Grayson Hansard](mailto:grayson.hansard@gmail.com)  
[@Grayson](http://twitter.com/Grayson)  
