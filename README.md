# S3SignatureUploader
Direct-to-S3 uploads for iOS apps without exposing secret keys

S3SignatureUploader makes simple direct-to-S3 uploads from your mobile app without having to include any secret keys in the mobile app itself. It relies on Amazon's S3 Signature-based uploads that allow a web server that has access to your AWS keys to pre-sign uploads on the user's behalf. This server returns a URL that contains all of the information Amazon needs to accept the upload.

This repo contains the iOS side of this process, wherein a URL is provided and the S3SignatureUploader makes the put request and handles errors.  This url looks something like https://yourbucketname.s3.amazonaws.com/yourfile.jpg?AWSAccessKeyId=youraccesskey&Expires=blah&Signature=blah

This repo was inspired by other browser based javascript direct uploading libraries. 
