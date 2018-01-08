class Category < ApplicationRecord
  has_many :resaurants, dependent: :destory
end
