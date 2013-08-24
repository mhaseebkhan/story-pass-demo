class ImagesController < ApplicationController

  def show_grabled_image
    @grabled_image = ImageUtils.get_grabled_image_from_flickr
    render template: 'demos/show_grabled_image'
  end
end