require 'aws-sdk-s3'
require_relative 'environment'
require_relative 'logic'


Aws.config.update({
   credentials: Aws::Credentials.new(ACCESS_KEY, SECRET_KEY)
})

s3 = Aws::S3::Resource.new(region: 'us-west-2')

bucket = s3.bucket('https://s3.amazonaws.com/stellar.health.code.test/patients.log')

overwrite_file(bucket)