class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets
  has_one :profile
  acts_as_voter
  # acts_as_followable
  # acts_as_follower
# nandini ->  without acts as voter we get nil error for @user.voted_as_when_voted_for
end
