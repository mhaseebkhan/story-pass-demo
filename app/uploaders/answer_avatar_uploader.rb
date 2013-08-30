# encoding: utf-8

class AnswerAvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


  process :resize_to_fit => [640, 420]

  def extension_white_list
     %w(jpg jpeg gif png)
  end
end
