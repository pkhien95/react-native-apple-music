# react-native-apple-music

## Getting started

`$ npm install @pkhien/react-native-apple-music --save`

### Mostly automatic installation

React Native 0.59+:

`$ cd ios && pod install`

React Native <0.59

`$ react-native link react-native-apple-music`

## Usage
#### 1. Authorization
```javascript
import {Auth} from 'react-native-apple-music'

Auth.requestAuthorization()
  .then(authorizationStatus => {})
  .catch(error => {})

Auth.getStoreFrontCountryCode()
  .then(code => {})
  .catch(error => {})

Auth.requestUserToken('<developerToken>')
  .then(userToken => {})
  .catch(error => {})

Auth.requestCapabilities()
  .then(capability => {})
  .catch(error => {})
```

#### 2. Media Player
```javascript
import {MediaPlayer} from 'react-native-apple-music'

MediaPlayer.setQueue(['storeId1', 'storeId2'])
MediaPlayer.play()
MediaPlayer.pause()
MediaPlayer.play() // Play again to resume
MediaPlayer.stop()
```
