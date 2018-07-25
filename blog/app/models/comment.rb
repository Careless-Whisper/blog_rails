class Comment < ApplicationRecord
  belongs_to :user, :article
end
