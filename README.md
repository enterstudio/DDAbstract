	  ____         _         _  _    _           
	 |  _ \   ___ | |  ___  (_)| |_ | |_  ___    
	 | | | | / _ \| | / _ \ | || __|| __|/ _ \   
	 | |_| ||  __/| || (_) || || |_ | |_|  __/ _ 
	 |____/  \___||_| \___/ |_| \__| \__|\___|(_)
	  ____   _         _  _          _           
	 |  _ \ (_)  __ _ (_)| |_  __ _ | |          
	 | | | || | / _` || || __|/ _` || |          
	 | |_| || || (_| || || |_| (_| || |          
	 |____/ |_| \__, ||_| \__|\__,_||_|          
	            |___/                            


#DDAbstract Overview
This repo is home to our Abstract ViewController and View classes. We use these as our base for all screens (and sub-screens) in an iOS app.

We've found that using Storyboards can become cumbersome for apps with lots of screens and UI components. Reuse of UI components can me made a lot easier if we used plain-old UIViews. The primary purpose of this library is to attach, associate and load a UIView to a ViewController, based on the device type (iPhone/iPad) and ViewController's class name.

We typically combine this software-design pattern, with a UIView layout library called [SQLayout](https://github.com/dotb/SQLayout) - we encourage you to do the same.

#Getting Started

We believe that clearly-written and well-commented code, beats extensive documentation. [Download DDAbstract](https://github.com/DeloitteDigital/DDAbstract/archive/master.zip) and try out the included iPhone/iPad example app, to learn more about how this library is used.

##Installation

### Option 1: CocoaPods (recommended)

[CocoaPods](http://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects. Check out their [getting started](http://guides.cocoapods.org/using/getting-started.html) guide to learn more.

To use DDAbstract, add the following line to your `podfile`:

	pod 'DDAbstract'


### Option 2: Manually include files
[Download DDAbstract](https://github.com/DeloitteDigital/DDAbstract/archive/master.zip) and manually include a reference to the files under DDAbstract/.


#Who is [Deloitte Digital](http://www.deloittedigital.com) anyway?

**Part Business. Part Creative. Part Technology. One hundred per cent digital.**

Pioneered in Australia, Deloitte Digital is committed to helping clients unlock the business value of emerging technologies. We provide clients with a full suite of digital services, covering digital strategy, user experience, content, creative, engineering and implementation across mobile, web and social media channels.

#LICENSE (BSD-3-Clause)
Copyright (C) 2009-2014, Deloitte Digital. All rights reserved.

DDAbstract can be downloaded from: https://github.com/DeloitteDigital/DDAbstract

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors 
may be used to endorse or promote products derived from this software without 
specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
