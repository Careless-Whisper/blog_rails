class User < ApplicationRecord
  has_many :articles
end

class Article < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'id'
end
