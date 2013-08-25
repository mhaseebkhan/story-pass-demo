require 'spec_helper'

describe ImagesController do
  describe "GET #show_grabled_image" do

    before do
      a = Magick::Image.read("#{Rails.root}/app/assets#{ActionController::Base.helpers.asset_path('images/backgrounds/1.png')}")
      Magick::Image.stub(:read).and_return(a)
      get :show_grabled_image
    end

    it "renders the :show_grabled_image view" do
      expect(response).to render_template("demos/show_grabled_image")
    end

    it "sets the grabled image as a valid image" do
      assigns(:grabled_image).should_not be_empty
      Magick::Image.read_inline(assigns(:grabled_image)).first.should_not raise_error
    end

  end
end