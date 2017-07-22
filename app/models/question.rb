class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers,dependent: :destroy
  validates :title, presence: true, length: {maximum: 140}
  validates :desciption, presence: true, length: {maximum: 600}


def feed
 	Answer.all.order(created_at: :desc)
end


end
