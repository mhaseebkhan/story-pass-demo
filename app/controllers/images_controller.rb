class ImagesController < ApplicationController

  def show_grabled_image

    background = Magick::Image.read("#{Rails.root}/app/assets#{ActionController::Base.helpers.asset_path('images/backgrounds/1.png')}").first
    flickr_recent_photos = FlickRaw::Flickr.new.photos.getRecent

    x = 0
    y = 10

    for index in 0..19 do
      flickr_photo = Magick::Image.read("http://farm#{flickr_recent_photos[index].farm}.static.flickr.com/#{flickr_recent_photos[index].server}/#{flickr_recent_photos[index].id}_#{flickr_recent_photos[index].secret}_m.jpg").first
      flickr_photo.format = 'png'
      flickr_photo = irregular_crop(flickr_photo)

      background = background.dissolve(flickr_photo, 0.9, 1.0, x * 140, y, Magick::OverCompositeOp)

      x = x + 1

      if ((index + 1) % 5) == 0
        y = ((index + 1) / 5) * 140
        x = 0
      end

    end

    @flickr_photo = Base64.encode64(background.to_blob)

    render template: 'demos/show_grabled_image'
  end

  private

    def irregular_crop(image)
      mask = Magick::Image.read("#{Rails.root}/app/assets#{ActionController::Base.helpers.asset_path("images/cropper/#{1 + rand(19)}.png")}").first
      mask = mask.resize(image.columns, image.rows)

      result = Magick::Image.new(mask.columns, mask.rows)
      result.format = 'png'
      result.matte = true
      mask.matte = true

      result = image.composite!(mask, Magick::CenterGravity, Magick::DstInCompositeOp)
      result.matte = true

      result
    end

end