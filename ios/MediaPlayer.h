//
//  MediaPlayer.h
//  AppleMusic
//
//  Created by Hien Phung on 5/6/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif
#import <MediaPlayer/MediaPlayer.h>

@interface MediaPlayer : NSObject <RCTBridgeModule>

+ (MPMusicPlayerApplicationController*) applicationQueuePlayer;

@end

