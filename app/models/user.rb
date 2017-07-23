class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
enum role: {guest: 0, member: 2, moderator: 1, admin: 3}   
def feed
 	Question.all.order(created_at: :desc)
end

end
