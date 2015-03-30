//
//  S3SignatureUploader.h
//  Silkey
//
//  Created by Dan Lipert on 3/29/15.
//  Copyright (c) 2015 Dan Lipert. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SilkeyManagerDelegate.h"
#import "S3SignatureUploaderDelegate.h"

@interface S3SignatureUploader : NSObject

@property (weak, nonatomic) id<S3SignatureUploaderDelegate> delegate;

- (void)uploadFile:(NSData *)fileData toURL:(NSURL *)url;


@end
