# StoryPass

**Project Brief:**

StoryPass is a new password recovery system which allows users to recover their password based on some images uploaded as a part of registration process. The images are selected based on a story by the user.

When the user wants to recover their password, he/she will be presented with an image having the images uploaded by the user meshed with random images retrieved from Flickr.

Each image would have two characters written on it and the recovery token would be the combination of these characters in the order which the user uploaded the images.

This project is a demo for the concept. Later on, the code would be extracted and converted to a gem that can be used in any Rails project.

**Tech Details:**

* Ruby version - 2.0
* Rails - 4.0
* Database - MongoDB
* Other Tools - ImageMagick
* Some gems used:
 * rmagick
 * mongoid
 * devise
 * flickraw
 * haml
* Development Methodology - TDD/BDD using RSpec and Cucumber
* Deployment Platform - [Heroku](http://story-pass-demo.herokuapp.com/)

This document will be updated as we go.

# Version History

**StoryPass 0.0.1 - Released August 24, 2013**

* A Rails App which would be used to demonstrate all the features.
* Few cucumber features to demonstrate BDD.
* A user model with some initial specs using RSpec which would be used further in upcoming releases.
* FlickRaw integration to get photos from Flickr's public image feed.
* Demo of a grabled image made using the public photos.