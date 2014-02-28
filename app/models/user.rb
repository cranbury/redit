class User < ActiveRecord::Base

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  has_many :stories

  has_secure_password

end