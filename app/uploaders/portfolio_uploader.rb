# encoding: utf-8

class PortfolioUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :ftp

  process resize_to_fit: [600, 400]

  version :thumb do
    process resize_to_fill: [350, 200]
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end