//
//  MediaPlayer.m
//  AppleMusic
//
//  Created by Hien Phung on 5/6/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "MediaPlayer.h"
#import <React/RCTConvert.h>

@implementation RCTConvert (MPMusicPlaybackState)
  RCT_ENUM_CONVERTER(MPMusicPlaybackState, (@{
      @"playbackStateStopped":@(MPMusicPlaybackStateStopped),
      @"playbackStatePlaying": @(MPMusicPlaybackStatePlaying),
      @"playbackStatePaused": @(MPMusicPlaybackStatePaused),
      @"playbackStateInterrupted": @(MPMusicPlaybackStateInterrupted),
      @"playbackStateSeekingForward": @(MPMusicPlaybackStateSeekingForward),
      @"playbackStateSeekingBackward": @(MPMusicPlaybackStateSeekingBackward)}),
  MPMusicPlaybackStateStopped, integerValue)
@end


@implementation MediaPlayer

RCT_EXPORT_MODULE()

- (NSDictionary *)constantsToExport
{
  return @{ @"playbackStateStopped":@(MPMusicPlaybackStateStopped),
  @"playbackStatePlaying": @(MPMusicPlaybackStatePlaying),
  @"playbackStatePaused": @(MPMusicPlaybackStatePaused),
  @"playbackStateInterrupted": @(MPMusicPlaybackStateInterrupted),
  @"playbackStateSeekingForward": @(MPMusicPlaybackStateSeekingForward),
  @"playbackStateSeekingBackward": @(MPMusicPlaybackStateSeekingBackward)};
};

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

RCT_EXPORT_METHOD(getPlaybackState)
{
    [MediaPlayer.applicationQueuePlayer playbackState];
}

RCT_EXPORT_METHOD(play)
{
    [MediaPlayer.applicationQueuePlayer play];
}

RCT_EXPORT_METHOD(pause)
{
    [MediaPlayer.applicationQueuePlayer pause];
}

RCT_EXPORT_METHOD(stop)
{
    [MediaPlayer.applicationQueuePlayer stop];
}


@end
