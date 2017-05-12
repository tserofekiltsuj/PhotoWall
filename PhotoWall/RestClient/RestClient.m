//
//  RestClient.m
//  PhotoWall
//
//  Created by student on 2017/5/12.
//  Copyright © 2017年 student. All rights reserved.
//

#import "RestClient.h"

#import "RestRequest.h"

NSString* const ServerEndPointKey = @"ServerEndPoint";
NSString* const DefaultEndPoint = @"http://localhost:4567/ws";

@implementation RestClient {
    NSString* _endPoint;
    id<RequestAuthenticator> _authenticator;
}

#pragma mark - Initializers
+ (NSString*)defaultEndPoint {
    NSString* endPoint = [[[NSBundle mainBundle] infoDictionary] objectForKey:ServerEndPointKey];
    return endPoint != nil ? endPoint : DefaultEndPoint;
}

- (instancetype)initWithAuthenticator:(id<RequestAuthenticator>)authenticator {
    return [self initWithEndPoint:[RestClient defaultEndPoint] andAuthenticator:authenticator];
}

- (instancetype)initWithEndPoint:(NSString*)endPoint andAuthenticator:(id<RequestAuthenticator>)authenticator {
    if (self = [super init]) {
        _endPoint = endPoint;
        _authenticator = authenticator;
    }
    return self;
}

#pragma mark - Public Methods
- (RestRequest*)path:(NSString*)path {
    NSString* url = [NSString stringWithFormat:@"%@%@", _endPoint, path];
    RestRequest* request = [[RestRequest alloc] initWithURL:url];
    [_authenticator authenticate:request];
    return request;
}

@end
