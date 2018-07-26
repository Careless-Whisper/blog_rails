# Crée une Relation avec users et articles
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :article
end
