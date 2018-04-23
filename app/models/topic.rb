class Topic < ApplicationRecord
  has_many :posts, dependent: :delete_all
  belongs_to :category
end
