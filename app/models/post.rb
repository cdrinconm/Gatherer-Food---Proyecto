class Post < ApplicationRecord#ActiveRecord::Base
  validates :titulo, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 50, maximum: 400}
end