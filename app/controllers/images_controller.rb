class ImagesController < ApplicationController

  before_filter :authenticate_user!, :except => [:show_grabled_image]
  def show_grabled_image
    @grabled_image = ImageUtils.get_grabled_image_from_flickr
    render template: 'demos/show_grabled_image'
  end
end