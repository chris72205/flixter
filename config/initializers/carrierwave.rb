# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.storage = :aws
  config.aws_acl = "public_read"
  config.aws_bucket = ENV['AWS_BUCKET_NAME']

  config.aws_credentials = {
               region: ENV['AWS_REGION_NAME'],       # required
        access_key_id: ENV["AWS_ACCESS_KEY"],        # required
    secret_access_key: ENV["AWS_SECRET_KEY"],        # required
  }
end