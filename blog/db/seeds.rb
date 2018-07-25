
require 'faker'

5.times do     # On génère 5 catégories avec le style Pokémon Faker
  Category.create(name: Faker::Pokemon.name)
end

10.times do     # On génère 10 utilisateurs avec le style gem Faker
  new_user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )

  Article.create(   # On génère 10 articles avec le style geek de gamer WorldOfWarcraft
    title: Faker::WorldOfWarcraft.quote,
    content: Faker::Lorem.paragraph_by_chars,
    user_id: new_user.id,
    category_id: rand((Category.first.id)..(Category.last.id))
  )
end

((User.first.id)..(User.last.id)).each do |user_id|    # On génère 15 commentaires, pépère 
  15.times do
    Comment.create(
      content: Faker::WorldOfWarcraft.quote,
      article_id: rand((Article.first.id)..(Article.last.id)),
      user_id: user_id
    )
  end
end

  ((User.first.id)..(User.last.id)).each do |user_id|    # On génère 15 likes parce qu'on le vaut bien ;)
    15.times do
      Like.create(
          user_id: rand((User.first.id)..(User.last.id)),
          article_id: rand((Article.first.id)..(Article.last.id))
        )
    end
end
