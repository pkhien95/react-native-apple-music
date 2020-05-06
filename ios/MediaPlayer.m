//
//  MediaPlayer.m
//  AppleMusic
//
//  Created by Hien Phung on 5/6/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "MediaPlayer.h"

@implementation MediaPlayer

RCT_EXPORT_MODULE()

+ (MPMusicPlayerApplicationController*) applicationQueuePlayer
{
    static MPMusicPlayerApplicationController *applicationQueuePlayer = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        applicationQueuePlayer = MPMusicPlayerController.applicationQueuePlayer;
    });
    return applicationQueuePlayer;
}

RCT_EXPORT_METHOD(setQueue: (NSArray<NSString*>*)storeIDs)
{
    MPMusicPlayerStoreQueueDescriptor* descriptor = [[MPMusicPlayerStoreQueueDescriptor alloc] initWithStoreIDs:storeIDs];
    [MediaPlayer.applicationQueuePlayer setQueueWithDescriptor:descriptor];
}

RCT_EXPORT_METHOD(play)
{
    [MediaPlayer.applicationQueuePlayer play];
}

RCT_EXPORT_METHOD(pause)
{
    [MediaPlayer.applicationQueuePlayer play];
}

RCT_EXPORT_METHOD(stop)
{
    [MediaPlayer.applicationQueuePlayer stop];
}


@end
