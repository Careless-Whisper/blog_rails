# Crée une relation avec articles
class Category < ApplicationRecord
  has_many :articles
end
