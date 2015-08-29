require 'faker'

5.times do
  Post.create(title: Faker::Lorem.word, content: Faker::Lorem.paragraph, user_id: 8 )
end