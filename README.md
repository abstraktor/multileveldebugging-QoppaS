# QoppaS [![Build Status](https://secure.travis-ci.org/abstraktor/multileveldebugging-QoppaS.svg?branch=master)](http://travis-ci.org/abstraktor/multileveldebugging-QoppaS)

An implementation of [Qoppa Scheme](http://mainisusuallyafunction.blogspot.de/2012/04/scheme-without-special-forms.html) in [Squeak](http://squeak.org/) using [Ohm-S](https://github.com/hpi-swa/Ohm-S)
in order to explore debugging on multiple levels.

# Usage

```smalltalk
"open a read eval print window"
QoppaScriptsDemo openRepl

"use our multilevel debugger to debug a block"
QoppaScriptsDemo runDebugged: [1/0]
```

# Installation

1. Get [Squeak 4.6 or later](http://www.squeak.org) with a recent [CogVM](http://www.mirandabanda.org/files/Cog/VM/) for your operating system.
2. If not already integrated, load [Metacello](https://github.com/dalehenrich/metacello-work). Learn how it [works](https://github.com/dalehenrich/metacello-work/blob/master/docs/MetacelloUserGuide.md).
3. Finally, install QoppaS:

```smalltalk
Metacello new
  baseline: 'QoppaS';
  repository: 'github://abstraktor/multileveldebugging-QoppaS/packages';
  load.

```

# Contributing

1. Checkout this git repository
2. [Install QoppaS with Filetree](https://github.com/abstraktor/multileveldebugging-QoppaS/wiki/Installing-QoppaS)
3. Commit your changes to the filetree repository
4. Copy over your commit message to create a git commit with it
5. [Push it](https://open.spotify.com/track/2ipW48mvWEkQoZZMpLL9TX)
