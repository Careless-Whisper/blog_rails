# Crée une relation avec users et articles

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article
end
