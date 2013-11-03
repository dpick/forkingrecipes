CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['S3_ACCESS_KEY_ID'],      # required
    :aws_secret_access_key  => ENV['S3_SECRET_ACCESS_KEY'],  # required
  }

  config.fog_directory  = ENV['S3_BUCKET']                        # required
  config.fog_public     = true                                    # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
