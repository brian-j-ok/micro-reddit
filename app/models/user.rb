class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, length: { in: 5..15 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 8..20 }
end
