class Question

  include Mongoid::Document
  include Mongoid::Timestamps

  field :question_text, :type => String
  field :blanks, :type => Integer

  has_many :answers
  belongs_to :user

  #embedded_in :user

end