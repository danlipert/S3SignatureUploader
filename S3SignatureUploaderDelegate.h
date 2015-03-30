//
//  S3SignatureUploaderDelegate.h
//  Silkey
//
//  Created by Dan Lipert on 3/29/15.
//  Copyright (c) 2015 Dan Lipert. All rights reserved.
//

#ifndef Silkey_S3SignatureUploaderDelegate_h
#define Silkey_S3SignatureUploaderDelegate_h

#endif

@protocol S3SignatureUploaderDelegate
- (void)didUploadFileToURL:(NSURL *)url;
- (void)uploadingFileFailedWithError:(NSError *)error;

@end