CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIPUG4IN2MJUWIH5Q',
    :aws_secret_access_key  => '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',
  }
  config.fog_directory  = 'StoryPass-Demo'
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end