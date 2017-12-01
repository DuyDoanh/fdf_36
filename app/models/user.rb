class User < ApplicationRecord
  has_many :suggests, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :comments, dependent: :destroy
end
