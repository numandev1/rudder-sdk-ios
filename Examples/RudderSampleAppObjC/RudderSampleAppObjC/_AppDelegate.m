//
//  _AppDelegate.m
//  Rudder
//
//  Created by arnabp92 on 02/26/2020.
//  Copyright (c) 2020 arnabp92. All rights reserved.
//

#import "_AppDelegate.h"
#import <Rudder/Rudder.h>
#import <AdSupport/ASIdentifierManager.h>
#import "CustomFactory.h"
#import "Rudder/RSApp.h"

@implementation _AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    [self sdkInitialisation];
//    [self configuringClient];
//    [self automaticLifecycleEvents];
//    [self automaticScreenEvents];
//    [self track];
//    [self screen];
//    [self group];
//    [self alias];
//    [self identify];
//    [self reset];
//    [self persistence];
//    [self traits];
//    [self advertisement];
//    [self message];
//    [self messageBuilder];
//    [self pageWithMessage];
//    [self anonymousId];
//    [self deviceToken];
//    [self userSession];
//    [self GDPR];
//    [self customFactory];
//    [self flush];
//    [self rudderOption];
    
    return YES;
}

// features test cases

-(void) rudderOption {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
    [builder withCustomFactory:[CustomFactory instance]];
    
    // Checking if the integrations passed using RudderOption object updates the integrations object of a message
//    RSClient *client = [RSClient getInstance:@"2FQBrkcXQutgHII73nzSod6VEmo" config:[builder build]];
//    // Event will be dropped
//    RSOption *options = [[RSOption alloc] init];
//    [options putIntegration:@"Custom Factory" isEnabled:false];
//    [client track:@"Random Event" properties:nil options:options];
//    // Event will be allowed
////    RSOption *options = [[RSOption alloc] init];
////    [options putIntegration:@"Custom Factory" isEnabled:true];
////    [client track:@"Random Event" properties:nil options:options];
    
    
    // Checking if the RudderOption object passed at the event level over-rides the RudderOption object passed at SDK initialization
//    RSOption *options1 = [[RSOption alloc] init];
//    [options1 putExternalId:@"brazeExternalId" withId:@"some_external_id_1"];
//    [options1 putIntegration:@"braze" isEnabled:true];
//    [options1 putCustomContext:@{
//        @"key-1": @"value-1",
//        @"key-2": @"value-2"
//    } withKey:@"new-1"];
//    RSClient *client = [RSClient getInstance:@"2FQBrkcXQutgHII73nzSod6VEmo" config:[builder build] options:options1];
//    [client track:@"Random Event"];
//
//    RSOption *options2 = [[RSOption alloc] init];
//    [options2 putExternalId:@"amplitudeExternalId" withId:@"some_external_id_2"];
//    [options2 putIntegration:@"amplitude" isEnabled:true];
//    [options2 putCustomContext:@{
//        @"key-3": @"value-3",
//        @"key-4": @"value-4"
//    } withKey:@"new-2"];
//    [client track:@"Random Event" properties:nil options:options2];
    
    // Checking if the externalId's passed using RudderOption object updates the externalId object of a message
//    RSClient *client = [RSClient getInstance:@"2FQBrkcXQutgHII73nzSod6VEmo" config:[builder build]];
//    RSOption *options = [[RSOption alloc] init];
//    [options putExternalId:@"webhookExternalId" withId:@"some_external_id_3"];
//    [client identify:@"Random Event" traits:nil options:options];
}

-(void) flush {
    // Checking if all the events in the DB are being flushed to the Data Plane as multiple batches
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    for (int i=0; i<30 * 4; i++) {
//        [client track:[NSString stringWithFormat:@"Random event %d", i]];
//    }
    
    // Checking if a batch is retried atleast three times before being considered as failed.
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    for (int i=0; i<30 * 4; i++) {
//        [client track:[NSString stringWithFormat:@"Random event %d", i]];
//    }
    
    // Checking if a batch failed to be sent to the Data Plane, all the subsequent batches should be dropped.
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    for (int i=0; i<30 * 11; i++) {
//        [client track:[NSString stringWithFormat:@"Random event %d", i]];
//    }
    
    // Checking if all the events were flushed successfully when the number of events in the DB is less than the multiple of batch size
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    for (int i=0; i<30 * 3 - 10; i++) {
//        [client track:[NSString stringWithFormat:@"Random event %d", i]];
//    }
    
    // Checking if all the events were flushed successfully when the number of events in the DB is greater than the multiple of batch size.
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    for (int i=0; i<30 * 3 + 10; i++) {
//        [client track:[NSString stringWithFormat:@"Random event %d", i]];
//    }
}

-(void) customFactory {
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//    [builder withCustomFactory:[CustomFactory instance]];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Random event"];
//    [client identify:@"UserId"];
//    [client screen:@"Screen evet"];
//    [client group:@"GroupId"];
//    [client alias:@"AliasId"];
//    [client reset];
//    [client flush];
}

-(void) GDPR {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    
    
    // Checking if the optOut status was persisted across multiple app opens
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client optOut:true];
//    [client track:@"Random event"];
//    // stop the app -> open the app make events (no events should be allowed
    
    // Checking if the optOut status was persisted across multiple app opens
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client optOut:false];
//    [client track:@"Random event"];
//    [client identify:@"UserId"];
//    [client screen:@"Screen evet"];
//    [client group:@"GroupId"];
//    [client alias:@"AliasId"];
    
    // Checking if all the calls which were made after the user opted-out from tracking his behaviour on the app were dropped.
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client optOut:true];
//    [client track:@"Random event"];
//    [client identify:@"UserId"];
//    [client screen:@"Screen evet"];
//    [client group:@"GroupId"];
//    [client alias:@"AliasId"];
    
    // Checking if all the calls which were made after the user opted-out from tracking his behaviour on the app were dropped.
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client optOut:true];
//    [client track:@"Random event"];
//    [client identify:@"UserId"];
//    [client screen:@"Screen evet"];
//    [client group:@"GroupId"];
//    [client alias:@"AliasId"];
//    [client optOut:false];
//    [client track:@"Random event"];
//    [client identify:@"UserId"];
//    [client screen:@"Screen evet"];
//    [client group:@"GroupId"];
//    [client alias:@"AliasId"];
    
    // Checking if all the Identify/Alias calls made, when the user opted-out from tracking are ignored
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client optOut:true];
//    [client identify:@"UserId"];
//    [client alias:@"AliasId"];
    
    // Checking if all the Automatically triggered life cycle events and screen view events were dropped once the user opted-out.
//    [builder withTrackLifecycleEvens:YES];
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client optOut:true];
    
    // Checking if the APIs putAnonymousId, putDeviceToken, which can be called before the SDK initialization as well drop the data passed to them, if the user opted-out.
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client optOut:true];
//    // stop and open the app
////    [RSClient putAnonymousId:@"AnonId"];
////    [RSClient putDeviceToken:@"DeviceToken"];
////    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // Checking if the APIs putAnonymousId, putDeviceToken and putAdvertisementId calls made, when the user opted-out from tracking are ignored.
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client optOut:true];
//    [RSClient putAnonymousId:@"AnonId"];
//    [RSClient putDeviceToken:@"DeviceToken"];
//    [[client getContext] putAdvertisementId:@"AdvertisingId"];
}

-(void) eventFiltering {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    
    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // Checking if only White listed track events are allowed
    //    [client track:@"Whitelist - 1"]; // As this is whitelisted, it is allowed
    //    [client track:@"Whitelist - 2"]; // As this is whitelisted, it is allowed
    //    [client track:@"Random event - 1"]; // As this is not whitelisted, it is dropped
    
    // Setting the eventFilteringOption as Disable
    //    [client track:@"Whitelist - 1"]; // it is allowed
    //    [client track:@"Random event - 1"]; // it is allowed
    //    [client track:@"Blacklist - 1"]; // it is allowed
    
    // Checking if all the Black listed track events are dropped
    //    [client track:@"Blacklist - 1"]; // As this is blacklisted, it is dropped
    //    [client track:@"Blacklist - 2"]; // As this is blacklisted, it is dropped
    //    [client track:@"Random event - 1"]; // As this is not blacklisted, it is allowed
    
    // Checking if all the track events are dropped, when the whitelist is empty
    //    [client track:@"Whitelist - 1"]; // it is dropped
    //    [client track:@"Random event - 1"]; // it is dropped
    //    [client track:@"Blacklist - 1"]; // it is dropped
    
    // Checking if all the track events are allowed, when the black list is empty
    //    [client track:@"Whitelist - 1"]; // it is allowed
    //    [client track:@"Random event - 1"]; // it is allowed
    //    [client track:@"Blacklist - 1"]; // it is allowed
    
    // Checking if all the other calls apart from track like Identify, Screen, Group were working as fine
//        [client identify:@"UserId"];
//        [client screen:@"Screen evet"];
//        [client group:@"GroupId"];
//        [client alias:@"AliasId"];
    
    // Track event names were stripped off with leading and trailing whitespaces, before comparing with either of blacklist or whitelist
    //    [client track:@"  Application Opened   "]; // it is allowed
    //    [client track:@"Order Completed   "]; // it is allowed
    //    [client track:@"     Product Added"]; // it is allowed
}

-(void) dataResidency {
    // Data-plane URL -> Not passed to the SDK by the developer Data-Residency Server Location -> Not passed to the SDK by the developer
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // Data-plane URL -> Not passed to the SDK by the developer Data-Residency Server Location -> Passed as US to the SDK by the developer.
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    //[builder withDataResidencyServer:RSDataResidencyServer.US];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // // Data-plane URL -> Not passed to the SDK by the developer Data-Residency Server Location -> Passed as EU to the SDK by the developer.
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    //[builder withDataResidencyServer:RSDataResidencyServer.EU];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // Data-plane URL -> Passed as https://random-dataplane.com to the SDK by the developer Data-Residency Server Location -> Passed as US to the SDK by the developer.
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//    //[builder withDataResidencyServer:RSDataResidencyServer.US];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // Data-plane URL -> Passed as https://random-dataplane.com to the SDK by the developer Data-Residency Server Location -> Passed as EU to the SDK by the developer.
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//    //[builder withDataResidencyServer:RSDataResidencyServer.EU];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // Data-plane URL -> Passed as https://random-dataplane.com to the SDK by the developer Data-Residency Server Location -> Not passed to the SDK by the developer
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
}

-(void) userSession {
    // Checking if Automatic User Session starts and attaches sessionId's to the events (Automatic User Session)
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:YES];
//    [builder withAutoSessionTracking:YES];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Random event 20"];
    
    // Checking if Automatic User Session works if the auto tracking of life cycle events is disabled. (Automatic User Session)
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:YES];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Random event 20"];
    
    // Checking if the session remains active if the application is opened back even before the in-activity window expires. (Automatic User Session)
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:YES];
//    [builder withAutoSessionTracking:YES];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Random event 20"];
//    // Move the app to background and open within 1 min
    
    // Checking if the session expires if the application is opened back after the in-activity window expires. (Automatic User Session)
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:YES];
//    [builder withAutoSessionTracking:YES];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Random event 20"];
//    // Move the app to background and open after 5 min
    
    // Checking if the reset api call refreshes the session while an automatic session is active. (Automatic User Session)
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:YES];
//    [builder withAutoSessionTracking:YES];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    // Make RESET calls and then track
    
    // SetSession timeout to 0
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:YES];
//    [builder withAutoSessionTracking:YES];
//    [builder withSessionTimeoutMillis:0];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Random event 20"];
//    // Move the app to background and open it instantly
    
    // Start a session with custom SessonId of legnth 10
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client startSession:1234567890];
//    [client track:@"Random event 20"];
//    // Stop and open the app then make other events
//    [client endSession];
    
    // Start a session with custom SessonId of length less than 10
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client startSession:1];
//    [client track:@"Random event 20"];
//    // Stop and open the app then make other events
//    [client endSession];
    
    // Checking if the manual user session triggered is active across multiple app opens untill the session is manually closed. (Manual User Session)
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client startSession];
//    [client track:@"Random event 20"];
//    // Stop and open the app then make other events and then end the session
    
    // Checking if the manual session when triggered over-rides the active automatic session. (Manual User Session)
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:YES];
//    [builder withAutoSessionTracking:YES];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client startSession];
//    [client track:@"Random event 20"];
    
    // Checking if the manual session triggered when the automatic session is enabled expires on the subsequent app-open (Manual User Session)
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:YES];
//    [builder withAutoSessionTracking:YES];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Before manual session begin"];
//    [client startSession];
//    [client track:@"After manual session begin"];
//    // stop and open the app - without the manual sessionTracking code. Now a new automatic session would start.
    
    // Checking if the reset api call refreshes the session while an Manual session is active. (Manual User Session)
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client startSession];
//    [client track:@"Random event 20"];
//    // Make RESET call and then track call through button
}

// Basic Test cases

-(void) deviceToken {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
    
    NSString *value = @"<VALUE>";
    
    // putDeviceToken - with deviceToken parameter
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [RSClient putDeviceToken:value];
//    [client track:@"Random event 13"];
    
    // Set the deviceToken before the initialisation of the SDK
//    [RSClient putDeviceToken:value];
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Random event 13"];
}

-(void) anonymousId {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
    
    NSString *value = @"<VALUE>";
    
    // setAnonymousId - with anonymousId parameter
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [RSClient setAnonymousId:value];
//    [client track:@"Random event 12"];
    
    // putAnonymousId - with anonymousId parameter
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [RSClient putAnonymousId:value];
//    [client track:@"Random event 12"];
    
    // Set the anonymousId before the initialisation of the SDK
//    [RSClient putAnonymousId:value];
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Random event 12"];
}

-(void) pageWithMessage {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
    
    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // pageWithMessage - with message parameter
    RSMessage *message = [[RSMessage alloc] init];
    [client pageWithMessage:message];
}

-(void) messageBuilder {
    RSOption *options = [[RSOption alloc] init];
    [options putExternalId:@"brazeExternalId" withId:@"some_external_id_1"];
    [options putIntegration:@"braze" isEnabled:true];
    [options putCustomContext:@{
        @"item-1": @"price-1",
        @"item-2": @"price-2"
    } withKey:@"new-1"];
    
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
    
    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    NSString *value = @"<VALUE>";
    NSDictionary *props = @{
        @"key-1": @"value-1",
        @"key-2": @"value-2"
    };
    
    RSMessageBuilder *messageBuilder = [[RSMessageBuilder alloc] init];
    RSTraits *traits = [[RSTraits alloc] init];
    RSProperty *property = [[RSProperty alloc] init];
    [property put:@"key-4" value:@"value-4"];
    
    [messageBuilder setPreviousId:value];
    [messageBuilder setGroupId:value];
    [messageBuilder setGroupTraits:props];
    [messageBuilder setEventName:value];
    [messageBuilder setUserId:value];
    [messageBuilder setPropertyDict:props];//
    [messageBuilder setProperty:property];//
    [messageBuilder setUserProperty:props];
    [messageBuilder setRSOption:options];
    [messageBuilder setIntegrations:props];
    [messageBuilder setTraits:traits];
    [messageBuilder setExternalIds:options];
    
    [client trackWithBuilder:messageBuilder];
}

-(void) message {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
    
    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // Send message object in track API
//    RSMessage *message = [[RSMessage alloc] init];
//    [client trackMessage:message];
}

-(void) advertisement {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
    
    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    [[client getContext] putAdvertisementId:@"AddvertisementId"];
    [[client getContext] putAppTrackingConsent:2];
    // track call to see the payload
    [client track:@"Random event 11"];
}

-(void) traits {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
    
    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    NSMutableDictionary *props = [[NSMutableDictionary alloc] init];
    props[@"key-1"] = @"value-1";
    props[@"key-2"] = @"value-2";
    
    // Putters
//    RSTraits *traits = [[RSTraits alloc] init];
//
//    NSString *value = @"<VALUE>";
//    [traits putAddress:props];
//    [traits putAge:value];
//    [traits putBirthdayString:@"01/01/0001"];
//    [traits putBirthday:[NSDate date]];
//    [traits putCompany:props];
//    [traits putCreatedAt:value];
//    [traits putDescription:value];
//    [traits putEmail:value];
//    [traits putFirstName:value];
//    [traits putGender:value];
//    [traits putId:value];
//    [traits putLastName:value];
//    [traits putName:value];
//    [traits putPhone:value];
//    [traits putTitle:value];
//    [traits putUserName:value];
//    [traits put:@"key-1" value:@"value-1"];
//
//    [client identify:@"Identiy userId" traits:[traits dict]];
}

-(void) persistence {
    RSOption *options = [[RSOption alloc] init];
    [options putExternalId:@"brazeExternalId" withId:@"some_external_id_1"];
    [options putIntegration:@"braze" isEnabled:true];
    [options putCustomContext:@{
        @"item-1": @"price-1",
        @"item-2": @"price-2"
    } withKey:@"new-1"];
    
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
    
    // UserId + traits
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client identify:@"Identify userId"];
//    // Stop the app then open the app then initialise the SDK and then make track call

    // options - identify (userId + traits + options)
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client identify:@"Identify userId" traits:@{
//        @"key-1": @"value-1",
//        @"key-2": @"value-2"
//    } options:options];
//    // Stop the app then open the app then initialise the SDK and then make track call
    
    // options - track
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Ranndom event 9" properties:nil options:options];
//    // Stop the app and make track call
    
    // AnonymousID
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Ranndom event 9"];
//    // Stop the app then open the app then initialise the SDK and then make track call
    
    // GDPR
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client optOut:true];
//    // Stop the app then open the app then initialise the SDK and then make track call
    
    // Advertisement - app reopens + successive calls
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [[[RSClient sharedInstance] getContext] putAdvertisementId:@"advertisement_Id"];
//    [[[RSClient sharedInstance] getContext] putAppTrackingConsent:3];
//    [client track:@"Random event 9"];
//    // Stop the app then open the app then initialise the SDK and then make track call
    
    // deviceToken - app reopens + successive calls
    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    [[[RSClient sharedInstance] getContext] putDeviceToken:@"Device-Token"];
    [client track:@"Random event 9"];
//    // Stop the app then open the app then initialise the SDK and then make track call
}

-(void) reset {
    RSOption *options = [[RSOption alloc] init];
    [options putExternalId:@"brazeExternalId" withId:@"some_external_id_1"];
    [options putIntegration:@"braze" isEnabled:true];
    [options putCustomContext:@{
        @"item-1": @"price-1",
        @"item-2": @"price-2"
    } withKey:@"new-1"];
    
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
    
    // RESET after Identify (with userId + traits + options)
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client identify:@"Identify userId" traits:@{
//        @"key-1": @"value-1",
//        @"key-2": @"value-2"
//    } options:options];
//    // Make RESET + Track call through separate buttons
    
    // GDPR - Set to true
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client optOut:true];
//    [client track:@"Random event 8"];
//    // Make RESET + Track call through separate buttons
    
    // GDPR - Set to false
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client optOut:false];
//    [client track:@"Random event 8"];
//    // Make RESET + Track call through separate buttons
    
    // AnonymousID
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Random event 8"];
//    // Make RESET + Track call through separate buttons
    
    // adTrackingEnabled + advertisingId + attTrackingStatus
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [[[RSClient sharedInstance] getContext] putAdvertisementId:@"advertisement_Id"];
//    [[[RSClient sharedInstance] getContext] putAppTrackingConsent:3];
//    [client track:@"Random event 8"];
//    // Make RESET + Track call through separate buttons
    
    // deviceToken
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [[[RSClient sharedInstance] getContext] putDeviceToken:@"Device-Token"];
//    [client track:@"Random event 8"];
//    // Make RESET + Track call through separate buttons
    
    // RESET after SDK initialisation (passing option fields)
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build] options:options];
//    [client track:@"Random event 8"];
//    // Make RESET + Track call through separate buttons
}

-(void) identify {
    RSOption *options = [[RSOption alloc] init];
    [options putExternalId:@"brazeExternalId" withId:@"some_external_id_1"];
    [options putIntegration:@"braze" isEnabled:true];
    [options putCustomContext:@{
        @"item-1": @"price-1",
        @"item-2": @"price-2"
    } withKey:@"new-1"];
    
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];

    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // identifyWithMessage - with message parameter
//    RSMessage *message = [[RSMessage alloc] init];
//    message.event = @"Apple_Event";
//    message.channel = @"mobile";
//    [client identifyWithMessage:message];
    
    // identifyWithBuilder - with builder parameters
//    RSMessageBuilder *messageBuilder = [[RSMessageBuilder alloc] init];
//    [messageBuilder setEventName:@"Apple_Event"];
//    [messageBuilder setUserId:@"Random UserId"];
//    [client identifyWithBuilder:messageBuilder];
    
    // identify - with userId + traits + options parameters
//    [client identify:@"Identify userId" traits:@{
//        @"key-1": @"value-1",
//        @"key-2": @"value-2"
//    } options:options];
    
    // identify - with userId + traits parameters
//    [client identify:@"Identify userId" traits:@{
//        @"key-1": @"value-1",
//        @"key-2": @"value-2"
//    }];
        
    // identify - with userId parameters
//    [client identify:@"Identify userId"];
        
    // track after identify call
//    RSOption *options = [[RSOption alloc] init];
//    [options putExternalId:@"brazeExternalId" withId:@"some_external_id_1"];
//    [options putIntegration:@"braze" isEnabled:true];
//    [options putCustomContext:@{
//        @"item-1": @"price-1",
//        @"item-2": @"price-2"
//    } withKey:@"new-1"];
//
//    [client identify:@"Identify userId" traits:@{
//        @"key-1": @"value-1",
//        @"key-2": @"value-2"
//    } options:options];
//    [client track:@"Random event 7"];
    
    // Making two identify call: identify(userId-1 + traits-1) and identify(userId-1 + traits-2)
//    [client identify:@"Identify userId" traits:@{
//        @"key-1": @"value-1",
//        @"key-2": @"value-2"
//    } options:options];
//
//    [client identify:@"Identify userId" traits:@{
//        @"key-3": @"value-3",
//        @"key-4": @"value-4"
//    } options:options];
    
    // Making two identify call: identify(userId-1 + traits-1) and identify(userId-2 + traits-2)
    [client identify:@"Identify userId - 1" traits:@{
        @"key-1": @"value-1",
        @"key-2": @"value-2"
    } options:options];
    
    [client identify:@"Identify userId - 2" traits:@{
        @"key-3": @"value-3",
        @"key-4": @"value-4"
    } options:options];
    
}
//@"<DATA_PLANE_URL>"
//@"<WRITE_KEY>"
-(void) alias {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];

    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // alias - with newId parameter
//    [client alias:@"Alias userId"];
    
    // alias - with null parameter
//    [client alias:nil];
    
    // alias - with empty string parameter
//    [client alias:@""];
    
    // alias - with newId + options parameters
//    RSOption *options = [[RSOption alloc] init];
//    [options putExternalId:@"brazeExternalId" withId:@"some_external_id_1"];
//    [options putIntegration:@"braze" isEnabled:true];
//    [options putCustomContext:@{
//        @"item-1": @"price-1",
//        @"item-2": @"price-2"
//    } withKey:@"new-1"];
//
//    [client alias:@"Alias userId" options:options];
    
    // Alias after identify event
//    [client identify:@"Identify userId"];
//    [client alias:@"Alias userId"];
    
    // Track after alias event
//    [client alias:@"Alias userId"];
//    [client track:@"Random event 6"];
}

-(void) group {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];

    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // group - with groupId parameter
//    [client group:@"New group Id"];
    
    // group - with nil parameter
//    [client group:nil];
    
    // group - with empty string parameter
//    [client group:@""];
    
    // group - with groupId + traits parameters
//    [client group:@"New group Id" traits:@{
//        @"key-1": @"value-1",
//        @"key-2": @"value-2"
//    }];
    
    // group - with groupId + traits + options parameters
//    RSOption *options = [[RSOption alloc] init];
//    [options putExternalId:@"brazeExternalId" withId:@"some_external_id_1"];
//    [options putIntegration:@"braze" isEnabled:true];
//    [options putCustomContext:@{
//        @"item-1": @"price-1",
//        @"item-2": @"price-2"
//    } withKey:@"new-1"];
//
//    [client group:@"New group Id" traits:@{
//        @"key-1": @"value-1",
//        @"key-2": @"value-2"
//    } options:options];
    
    // group (with traits) + track
//    [client group:@"New group Id" traits:@{
//        @"key-1": @"value-1",
//        @"key-2": @"value-2"
//    }];
//    [client track:@"Random event 5"];
}

-(void) screen {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];

    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // screenWithMessage - with with message parameter
//    RSMessage *message = [[RSMessage alloc] init];
//    message.event = @"Apple_Event";
//    message.channel = @"mobile";
//    [client screenWithMessage:message];
    
    // screenWithBuilder - with builder parameter
//    RSMessageBuilder *messageBuilder = [[RSMessageBuilder alloc] init];
//    [messageBuilder setEventName:@"Apple_Event"];
//    [messageBuilder setUserId:@"Random UserId"];
//    [client screenWithBuilder:messageBuilder];
    
    // screen - with name parameter
//    [client screen:@"Random event"];
    
    // screen - with nil name parameter
//    [client screen:nil];
    
    // screen - with empty string parameter
//    [client screen:@""];
    
    // screen - with name + properties parameters
//    [client screen:@"Random event 3" properties:@{
//        @"item-1": @"price-1",
//        @"item-2": @"price-2"
//    }];
    
    // screen - with name + properties + options parameters
//    RSOption *options = [[RSOption alloc] init];
//    [options putExternalId:@"brazeExternalId" withId:@"some_external_id_1"];
//    [options putIntegration:@"braze" isEnabled:true];
//    [options putCustomContext:@{
//        @"item-1": @"price-1",
//        @"item-2": @"price-2"
//    } withKey:@"new-1"];
    
//    [client screen:@"Random event 2" properties:@{
//        @"item-1": @"price-1",
//        @"item-2": @"price-2"
//    } options:options];
}

-(void) track {
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];

    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // trackMessage - with message parameter
//    RSMessage *message = [[RSMessage alloc] init];
//    message.event = @"Apple_Event";
//    message.channel = @"mobile";
//    [client trackMessage:message];
    
    // trackWithBuilder - with builder parameter
//    RSMessageBuilder *messageBuilder = [[RSMessageBuilder alloc] init];
//    [messageBuilder setEventName:@"Apple_Event"];
//    [messageBuilder setUserId:@"Random UserId"];
//    [client trackWithBuilder:messageBuilder];
    
    // track - with eventName parameter
//    [client track:@"Random event"];
    
    // track - with nil parameter
//    [client track:nil];
    
    // track - with empty string parameter
//    [client track:@""];
    
    // track - with eventName + properties parameters
//    [client track:@"Random event 2" properties:@{
//        @"item-1": @"price-1",
//        @"item-2": @"price-2"
//    }];
    
    // track - with eventName + properties + option parameters
//    RSOption *options = [[RSOption alloc] init];
//    [options putExternalId:@"brazeExternalId" withId:@"some_external_id_1"];
//    [options putIntegration:@"braze" isEnabled:true];
//    [options putCustomContext:@{
//        @"item-1": @"price-1",
//        @"item-2": @"price-2"
//    } withKey:@"new-1"];
//
//    [client track:@"Random event 2" properties:@{
//        @"item-1": @"price-1",
//        @"item-2": @"price-2"
//    } options:options];
}

-(void) automaticScreenEvents {
    // withRecordScreenViews -with recordScreenViews parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];

    // withRecordScreenViews -with recordScreenViews parameter - set to true
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withRecordScreenViews:true];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    //withRecordScreenViews -with recordScreenViews parameter - set to false
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withRecordScreenViews:false];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
}

-(void) automaticLifecycleEvents {
    // withTrackLifecycleEvens - with trackLifecycleEvents parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // withTrackLifecycleEvens - with trackLifecycleEvents parameter - set to false
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // withTrackLifecycleEvens - with trackLifecycleEvents parameter - set to true
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:YES];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
}

- (void) configuringClient {
    // logLevel - when log is not explicitily set (default case) - 1
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // logLevel - when log is not explicitily set (default case) - 2
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"" config:[builder build]];
    
    // logLevel - when log is set to Error
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelError];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"" config:[builder build]];
    
    // logLevel - when log is set to None
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelNone];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // logLevel - when log is set to Warning
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelWarning];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"" config:[builder build]];
    
    // logLevel - when log is set to Info
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelInfo];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];

    // logLevel - when log is set to Debug
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelDebug];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // logLevel - when log is set to Verbose
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // withFlushQueueSize - with flushQueueSize parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:YES];
//    [builder withFlushQueueSize:2];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
//    [client track:@"Event-3"];
//    [client track:@"Event-4"];
//    [client track:@"Event-5"];
//    [client track:@"Event-6"];
//    [client track:@"Event-7"];
//    [client track:@"Event-8"];
    
    // withFlushQueueSize - when size is not explicitly set (default case)
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
//    [client track:@"Event-3"];
//    [client track:@"Event-4"];
//    [client track:@"Event-5"];
//    [client track:@"Event-6"];
//    [client track:@"Event-7"];
//    [client track:@"Event-8"];
//    // .. Make total 30 events and all will be flushed at once.
    
    // withDBCountThreshold - with dbCountThreshold parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withDBCountThreshold:1];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withDBCountThreshold - when count is not explicitly set (default case)
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    // Disable the network until  below events are processed
//    for (int i=1; i<=10000 + 10; i++) {
//        [client track:@"Event"];
//    }
    
    // withSleepTimeOut - with sleepTimeOut parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withSleepTimeOut:20];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withConfigRefreshInteval - with configRefreshInterval parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withConfigRefreshInteval:5];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withEnableBackgroundMode
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withEnableBackgroundMode:true];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withEndPointUrl - with endPointUrl parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withEndPointUrl:@"<DATA_PLANE_URL>"];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withEndPointUrl - with empty parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withEndPointUrl:@""];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withEndPointUrl - with null parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withEndPointUrl:nil];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // withDataPlaneUrl - with dataPlaneUrl parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withDataPlaneUrl - with empty string parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withDataPlaneUrl:@""];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withDataPlaneUrl - with null parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withDataPlaneUrl:nil];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
  
    // withDataPlaneURL - with dataPlaneURL parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withDataPlaneURL:[[NSURL alloc] initWithString:@"<DATA_PLANE_URL>"]];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withDataPlaneURL - with null parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withDataPlaneURL:nil];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withConfigPlaneUrl - with configPlaneUrl parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withConfigPlaneUrl:@"<CONFIG_PLANE_URL>"];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withConfigPlaneUrl - with empty parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withConfigPlaneUrl:@""];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withConfigPlaneUrl - with null parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withConfigPlaneUrl:nil];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // withControlPlaneUrl - with controlPlaneUrl parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withControlPlaneUrl:@"<CONFIG_PLANE_URL>"];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withControlPlaneUrl - with empty string parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withControlPlaneUrl:@""];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withControlPlaneUrl - with null parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withControlPlaneUrl:nil];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
    
    // withControlPlaneURL - with controlPlaneURL parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withControlPlaneURL:[[NSURL alloc] initWithString:@"<CONTROL_PLANE_URL>"]];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
    
    // withControlPlaneURL - with null parameter
//    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
//    [builder withLoglevel:RSLogLevelVerbose];
//    [builder withControlPlaneURL:nil];
//    [builder withTrackLifecycleEvens:NO];
//    [builder withAutoSessionTracking:NO];
//    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
//
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    [client track:@"Event-1"];
//    [client track:@"Event-2"];
}

- (void) sdkInitialisation {
    RSOption *options = [[RSOption alloc] init];
    [options putExternalId:@"brazeExternalId" withId:@"some_external_id_1"];
    [[RSClient sharedInstance] identify:@"testUserId"
                                 traits:@{@"firstname": @"First Name"}
                                options:options];
    RSConfigBuilder *builder = [[RSConfigBuilder alloc] init];
    [builder withLoglevel:RSLogLevelVerbose];
    [builder withTrackLifecycleEvens:NO];
    [builder withAutoSessionTracking:NO];
    [builder withDataPlaneUrl:@"<DATA_PLANE_URL>"];
    
    // 1
//    if ([RSClient getInstance] == nil) {
//        NSLog(@"Instance is null");
//    }
    
    // 2
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    if ([RSClient getInstance] != nil) {
//        NSLog(@"SDK is initialised");
//    }
    
    // 3
//    if ([RSClient getInstance:@"<WRITE_KEY>"] != nil) {
//        NSLog(@"SDK is initialised");
//    }
    
    // 4
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build]];
//    if (client != nil) {
//        NSLog(@"SDK is initialised");
//    }
    
    // 5
    
//    RSClient *client = [RSClient getInstance:@"<WRITE_KEY>" config:[builder build] options:options];
//    if (client != nil) {
//        NSLog(@"SDK is initialised");
//    }
    
    // 6
//    [RSClient getInstance:@"" config:[builder build]];
    
    // 7
//    [RSClient getInstance:nil config:[builder build]];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

// [START receive_message]
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
}
// [END receive_message]

// [START ios_10_message_handling]
// Receive displayed notifications for iOS 10 devices.
// Handle incoming notification messages while app is in the foreground.
- (void)userNotificationCenter:(UNUserNotificationCenter *)center
       willPresentNotification:(UNNotification *)notification
         withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler {
}

// Handle notification messages after display notification is tapped by the user.
- (void)userNotificationCenter:(UNUserNotificationCenter *)center
didReceiveNotificationResponse:(UNNotificationResponse *)response
         withCompletionHandler:(void(^)(void))completionHandler {
}

// [END ios_10_message_handling]

// [START refresh_token]
- (void)messaging:(FIRMessaging *)messaging didReceiveRegistrationToken:(NSString *)fcmToken {
    NSLog(@"FCM registration token: %@", fcmToken);
    // Notify about received token.
    NSDictionary *dataDict = [NSDictionary dictionaryWithObject:fcmToken forKey:@"token"];
    [[NSNotificationCenter defaultCenter] postNotificationName:
     @"FCMToken" object:nil userInfo:dataDict];
    // TODO: If necessary send token to application server.
    // Note: This callback is fired at each app startup and whenever a new token is generated.
}
// [END refresh_token]

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    NSLog(@"Unable to register for remote notifications: %@", error);
}

// This function is added here only for debugging purposes, and can be removed if swizzling is enabled.
// If swizzling is disabled then this function must be implemented so that the APNs device token can be paired to
// the FCM registration token.
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    NSLog(@"APNs device token retrieved: %@", deviceToken);
    
    // With swizzling disabled you must set the APNs device token here.
    // [FIRMessaging messaging].APNSToken = deviceToken;
}

@end
