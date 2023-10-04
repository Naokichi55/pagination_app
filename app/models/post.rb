class Post < ApplicationRecord
  validates :body, presence: true, length: { maximum: 20 }
end
