# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
# 10.times do
#
#   first_name =  Faker::Name.first_name
#   email = Faker::Internet.email
#   User.create!(email: email,
#               first_name: first_name)
# end
# 10.times do
#   random = Faker::Number.between(1, 10)
#   title = Faker::Book.title
#    content = Faker::Community.quotes
#    user = User.find(random)
#
#    Article.create!(title: title,
#
#                   content: content,
#                   user_id: user.id)
#
# end
#
#


require 'faker'

5.times do
  Category.create(name: Faker::Pokemon.name)
end

10.times do
  new_user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )

  Article.create(
    title: Faker::WorldOfWarcraft.quote,
    content: Faker::Lorem.paragraph_by_chars,
    user_id: new_user.id,
    category_id: rand((Category.first.id)..(Category.last.id))
  )
end
#
# Commentaire.create(
#   title: Faker::WorldOfWarcraft.quote,
#   content: Faker::HeyArnold.quote.paragraph_by_chars,
#   user_id: new_user.id,
#   category_id: rand((Commentaire.first.id)..(Commentaire.last.id))
#

((User.first.id)..(User.last.id)).each do |user_id|
  15.times do
    Comment.create(
      content: Faker::WorldOfWarcraft.quote,
      article_id: rand((Article.first.id)..(Article.last.id)),
      user_id: user_id
    )
  end
end
