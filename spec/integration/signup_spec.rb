require 'spec_helper'

describe "User Signs Up" do

  before do
    visit '/users/sign_up'
  end

  it 'should show the page successfully' do
    page.status_code.should be 200
  end

end