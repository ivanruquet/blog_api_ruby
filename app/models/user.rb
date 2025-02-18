class User < ApplicationRecord
  has_many :post

  validates :username, :email, presence: true, uniqueness: true
end
