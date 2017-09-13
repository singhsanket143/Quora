class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
enum role: {guest: 0, member: 2, moderator: 1, admin: 3}
  acts_as_follower
  acts_as_followable
  acts_as_liker
  acts_as_likeable

def feed
 	Question.all.order(created_at: :desc)
end

end
