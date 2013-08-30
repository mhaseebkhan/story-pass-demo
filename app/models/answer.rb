require 'carrierwave/orm/activerecord'
class Answer
  include Mongoid::Document
  include Mongoid::Timestamps

  #Fields for Answers
  field :question_id,   :type => String
  field :answer_image,  :type =>  String
  field :position,      :type =>  Integer

  belongs_to  :question
  belongs_to  :user

  mount_uploader :answer_image, AnswerAvatarUploader

  embedded_in :user
end