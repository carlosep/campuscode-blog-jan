# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process :convert => 'png'
  process :tags => ['campuscode-blogjan']

  version :standard do
   eager
   cloudinary_transformation :radius => 5, :width => 1000, :height => 250,
                             :crop => :thumb, :gravity => :center
  end

  version :thumbnail do
   eager
   cloudinary_transformation :radius => 5, :width => 550, :height => 150,
                             :crop => :thumb, :gravity => :center
  end

  def public_id
     return "campuscode-blogjan/#{model.title}"
  end
end
