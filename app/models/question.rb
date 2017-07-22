class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  validates :title, presence: true, length: {maximum: 140}
  validates :desciption, presence: true, length: {maximum: 600}
end
