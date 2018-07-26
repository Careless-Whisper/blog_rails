# Crée une relation avec user et article

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article
end
