# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
StoryPassDemo::Application.initialize!

FlickRaw.api_key = ENV['FLICKR_API_KEY']
FlickRaw.shared_secret = ENV['FLICKR_SECRET']

require 'RMagick'
