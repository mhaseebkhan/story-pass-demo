require 'spec_helper'

describe "StoryPass Demo Homepage" do

  before :each do
    visit '/'
  end

  it 'should show the homepage successfully' do
    page.status_code.should be 200
  end

  it 'should have StoryPass Demo as the main heading' do
    find("h1").should have_content("StoryPass Demo")
  end

  it 'should have a View Demo link' do
    find("a").should have_content("View Demo")
  end

end