CarrierWave.configure do |config|
  config.storage = :aws
  config.aws_bucket = Settings.s3.bucket
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365

  config.aws_credentials = {
    access_key_id: Settings.s3.access_key_id,
    secret_access_key: Settings.s3.secret_access_key
  }
end
