CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIF5NZSIKPO2GYMRA',
    :aws_secret_access_key  => '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',
  }
  config.fog_directory  = 'storypass'
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end