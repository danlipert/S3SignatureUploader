//
//  S3SignatureUploader.m
//  Silkey
//
//  Created by Dan Lipert on 3/29/15.
//  Copyright (c) 2015 Dan Lipert. All rights reserved.
//

#import "S3SignatureUploader.h"

@implementation S3SignatureUploader

@synthesize delegate;

- (void)uploadFile:(NSData *)fileData toURL:(NSURL *)url
{
    NSLog(@"S3 Uploader: %@", [url absoluteString]);
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    request.HTTPMethod = @"PUT";
    [request setValue:@"image/jpeg" forHTTPHeaderField:@"Content-Type"];
    [request setValue:@"public-read" forHTTPHeaderField:@"x-amz-acl"];
    request.HTTPBody = fileData;
    
    [NSURLConnection sendAsynchronousRequest:request queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        if (error) {
            [self.delegate uploadingFileFailedWithError:error];
        } else {
            NSLog(@"S3 upload successful to %@", [url absoluteString]);
            [self.delegate didUploadFileToURL:(NSURL *)url];
        }
    }];
}

@end
