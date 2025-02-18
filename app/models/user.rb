class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, foreign_key: :author_id, dependent: :destroy

  validates :username, :email, presence: true, uniqueness: true
end
