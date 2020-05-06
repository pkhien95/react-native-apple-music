//#import "AppleMusic.h"
//#import <React/RCTLog.h>
//#import <React/RCTConvert.h>
//
//@implementation RCTConvert (SKCloudServiceAuthorizationStatus)
//  RCT_ENUM_CONVERTER(SKCloudServiceAuthorizationStatus, (@{ @"authorizationStatusNotDetermined":@(SKCloudServiceAuthorizationStatusNotDetermined),
//      @"authorizationStatusDenied": @(SKCloudServiceAuthorizationStatusDenied),
//      @"authorizationStatusRestricted": @(SKCloudServiceAuthorizationStatusRestricted),
//      @"authorizationStatusAuthorized": @(SKCloudServiceAuthorizationStatusAuthorized)}),
//  SKCloudServiceAuthorizationStatusNotDetermined, integerValue)
//@end
//
//@implementation RCTConvert (SKCloudServiceCapability)
//  RCT_ENUM_CONVERTER(SKCloudServiceCapability, (@{ @"capabilityNone":@(SKCloudServiceCapabilityNone),
//      @"capabilityMusicCatalogPlayback": @(SKCloudServiceCapabilityMusicCatalogPlayback),
//      @"capabilityMusicCatalogSubscriptionEligible": @(SKCloudServiceCapabilityMusicCatalogSubscriptionEligible),
//      @"capabilityAddToCloudMusicLibrary": @(SKCloudServiceCapabilityAddToCloudMusicLibrary)}),
//  SKCloudServiceCapabilityNone, integerValue)
//@end
//
//@implementation AppleMusic
//
//RCT_EXPORT_MODULE()
//
//+ (SKCloudServiceController*) serviceControllerInstance
//{
//    static SKCloudServiceController *serviceControllerInstance = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        serviceControllerInstance = [[SKCloudServiceController alloc] init];
//        // Perform other initialisation...
//    });
//    return serviceControllerInstance;
//}
//
//- (NSDictionary *)constantsToExport
//{
//  return @{ @"authorizationStatusNotDetermined" : @(SKCloudServiceAuthorizationStatusNotDetermined),
//            @"authorizationStatusDenied" : @(SKCloudServiceAuthorizationStatusDenied),
//            @"authorizationStatusRestricted" : @(SKCloudServiceAuthorizationStatusRestricted),
//            @"authorizationStatusAuthorized" : @(SKCloudServiceAuthorizationStatusAuthorized),
//            @"capabilityNone":@(SKCloudServiceCapabilityNone),
//            @"capabilityMusicCatalogPlayback": @(SKCloudServiceCapabilityMusicCatalogPlayback),
//            @"capabilityMusicCatalogSubscriptionEligible": @(SKCloudServiceCapabilityMusicCatalogSubscriptionEligible),
//            @"capabilityAddToCloudMusicLibrary": @(SKCloudServiceCapabilityAddToCloudMusicLibrary)};
//};
//
//RCT_EXPORT_METHOD(requestAuthorization: (RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
//{
//    [SKCloudServiceController requestAuthorization:^(SKCloudServiceAuthorizationStatus status) {
//        resolve([NSNumber numberWithInt:((int)status)]);
//    }];
//}
//
//RCT_EXPORT_METHOD(getStoreFrontCountryCode: (RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
//{
//    [AppleMusic.serviceControllerInstance requestStorefrontCountryCodeWithCompletionHandler:^(NSString *storefrontCountryCode, NSError *error){
//        if(error) {
//            reject(@"getStoreFrontCountryCode", @"Failed to get storefront country code", error);
//        }
//
//        resolve(storefrontCountryCode);
//    }];
//}
//
//RCT_EXPORT_METHOD(requestUserToken: (NSString*)developerToken resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
//{
//    [AppleMusic.serviceControllerInstance requestUserTokenForDeveloperToken:developerToken completionHandler:^(NSString *userToken, NSError *error){
//        if(error) {
//            reject(@"requestUserToken", @"Failed to get user token", error);
//        }
//
//        resolve(userToken);
//    }];
//}
//
//
//RCT_EXPORT_METHOD(requestCapabilities: (RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
//{
//    [AppleMusic.serviceControllerInstance requestCapabilitiesWithCompletionHandler:^(SKCloudServiceCapability capabilities, NSError *error){
//        if(error) {
//            reject(@"requestCapabilities", @"Failed to request capabilities", error);
//        }
//
//        resolve([NSNumber numberWithInt:((int)capabilities)]);
//    }];
//}
//
//
//@end
//
//
//
////@implementation MediaPlayer
////
////RCT_EXPORT_MODULE()
////
////+ (MPMusicPlayerApplicationController*) applicationQueuePlayer
////{
////    static MPMusicPlayerApplicationController *applicationQueuePlayer = nil;
////    static dispatch_once_t onceToken;
////    dispatch_once(&onceToken, ^{
////        applicationQueuePlayer = MPMusicPlayerController.applicationQueuePlayer;
////    });
////    return applicationQueuePlayer;
////}
////
////RCT_EXPORT_METHOD(setQueue: (NSArray<NSString*>*)storeIDs)
////{
////    MPMusicPlayerStoreQueueDescriptor* descriptor = [[MPMusicPlayerStoreQueueDescriptor alloc] initWithStoreIDs:storeIDs];
////    [MediaPlayer.applicationQueuePlayer setQueueWithDescriptor:descriptor];
////}
////
////RCT_EXPORT_METHOD(play)
////{
////    [MediaPlayer.applicationQueuePlayer play];
////}
////
////RCT_EXPORT_METHOD(pause)
////{
////    [MediaPlayer.applicationQueuePlayer play];
////}
////
////RCT_EXPORT_METHOD(stop)
////{
////    [MediaPlayer.applicationQueuePlayer stop];
////}
////
////@end
//
