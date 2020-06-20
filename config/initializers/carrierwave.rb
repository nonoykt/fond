unless Rails.env.development? || Rails.env.test?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAX2UCCYFI5NB5UUMF',
      aws_secret_access_key: 'lwOAV5eMFUOP4ytVt3UMp5iLqlLTIMK6OUb1cJ',
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'fond-s3'
    config.cache_storage = :fog
  end
end