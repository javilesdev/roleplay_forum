class Post < ApplicationRecord
  has_many :messages, dependent: :delete_all
  belongs_to :topic
end
