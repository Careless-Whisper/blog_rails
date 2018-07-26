# Crée une relation avec acticles, comments, likes

class User < ApplicationRecord
  has_many :articles
  has_many :comments
  has_many :likes
end
