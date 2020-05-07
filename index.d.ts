declare module 'react-native-apple-music' {
  export enum AuthorizationStatus {
    authorizationStatusNotDetermined,
    authorizationStatusDenied,
    authorizationStatusRestricted,
    authorizationStatusAuthorized
  }

  export enum Capability {
    capabilityNone,
    capabilityMusicCatalogPlayback,
    capabilityMusicCatalogSubscriptionEligible,
    capabilityAddToCloudMusicLibrary
  }

  export enum PlaybackState {
    playbackStateStopped,
    playbackStatePlaying,
    playbackStatePaused,
    playbackStateInterrupted,
    playbackStateSeekingForward,
    playbackStateSeekingBackward,
  }

  export interface Auth {
    requestAuthorization: () => Promise<AuthorizationStatus|any>
    getStoreFrontCountryCode: () => Promise<string|any>
    requestUserToken: (developerToken: string) => Promise<string|any>
    requestCapabilities: () => Promise<Capability|any>
  }

  export interface MediaPlayer {
    setQueue: (storeIDs: string[]) => void
    getPlaybackState: () => PlaybackState
    play: () => void
    pause: () => void
    stop: () => void
  }
}
