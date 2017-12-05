class Product < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :order_details, dependent: :destroy
  has_many :ratings, dependent: :destroy
  belongs_to :category

  scope :sort_products, ->{order name: :asc}
  scope :sort_by_create_at, -> {order created_at: :desc}
end
