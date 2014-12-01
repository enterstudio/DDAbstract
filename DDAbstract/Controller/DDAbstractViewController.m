/*
 Copyright (C) 2009-2014 Deloitte Digital. All rights reserved.
 
 DDAbstract can be downloaded from: https://github.com/DeloitteDigital/DDAbstract
 
 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:
 
 * Redistributions of source code must retain the above copyright notice, this
 list of conditions and the following disclaimer.
 
 * Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation
 and/or other materials provided with the distribution.
 
 * Neither the name of DDAbstract nor the names of its
 contributors may be used to endorse or promote products derived from
 this software without specific prior written permission.
 
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
 */

#import "DDAbstractViewController.h"

@interface DDAbstractViewController ()

@end

@implementation DDAbstractViewController

- (void)loadView
{
    [super loadView];
    
    NSString *viewControllerClassName = NSStringFromClass([self class]);
    viewControllerClassName = [viewControllerClassName stringByReplacingOccurrencesOfString:@"Controller" withString:@""];
    [self setView:[self viewForDeviceWithBaseClassName:viewControllerClassName]];
}

#pragma mark - Private Methods
- (UIView *)viewForDeviceWithBaseClassName:(NSString *)className
{
    UIView *instanceView = nil;
    
    // Look for an iPad or iPhone view.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
    {
        NSString *viewClassName = [className stringByAppendingString:@"_Pad"];
        instanceView = (UIView *)[[NSClassFromString(viewClassName) alloc] initWithFrame:CGRectZero];
    }
    else
    {
        NSString *viewClassName = [className stringByAppendingString:@"_Phone"];
        instanceView = (UIView *)[[NSClassFromString(viewClassName) alloc] initWithFrame:CGRectZero];
    }
    
    // Look for a generic view.
    if (!instanceView)
    {
        instanceView = (UIView *)[[NSClassFromString(className) alloc] initWithFrame:CGRectZero];
    }
    
    // Only if we've found something, use it. Otherwise we use a standard UIView.
    if (instanceView)
    {
        return instanceView;
    }
    else
    {
        return [[UIView alloc] initWithFrame:CGRectZero];
    }
}

@end
