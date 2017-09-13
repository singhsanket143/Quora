class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates :content, presence: true, length: {in: 10..2000}

  acts_as_likeable
end
