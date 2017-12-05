class Permission < ApplicationRecord
  has_many :users, dependent: :destroy
end
