//
// Run
//
// Copyright 2011 Tiny Speck, Inc.
// Created by David Wilkinson.
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License. 
//
// See more about Glitch at http://www.glitch.com
// http://www.tinyspeck.com
//

#import "BackgroundLayer.h"

@implementation BackgroundLayer

- (id)init
{
    self = [super init];
    if (self) 
    {
        NSString *bgName = @"";
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
        {
            bgName = @"Background-iPad.png";
        }
        else
        {
            bgName = @"Background-iPhone.png";
        }
        
        CCSprite *backgroundImage = [CCSprite spriteWithFile:bgName];

        
        CGSize screenSize = [[CCDirector sharedDirector] winSize];
        [backgroundImage setPosition:ccp(screenSize.width/2, screenSize.height/2)];
        
        [self addChild:backgroundImage z:0];
    }
    
    return self;
}

@end
