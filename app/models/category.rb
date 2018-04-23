class Category < ApplicationRecord
  has_many :topics, dependent: :delete_all
end
