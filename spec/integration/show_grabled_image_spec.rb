require 'spec_helper'

describe "Show Grabled Image" do

  before do
    a = Magick::Image.read("#{Rails.root}/app/assets#{ActionController::Base.helpers.asset_path('images/backgrounds/1.png')}")
    Magick::Image.stub(:read).and_return(a)
    visit '/show-grabled-image'
  end

  it 'should show the page successfully' do
    page.status_code.should be 200
  end

  it 'should have a valid grabled image' do
    image = find("img")
    image.should_not be_nil
    Magick::Image.read_inline(image["src"].gsub(/^(data:image\/png;base64,)$/, '')).first.should_not raise_error
  end

end