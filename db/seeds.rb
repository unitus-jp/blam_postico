# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


100.times do |n|
  Suggestion.create(content: n.to_s + "これはサンプルのコンテンツです。", game_id: n, user_id: n)
end


100.times do |n|
  Company.create(name: "Comapy" + n.to_s)
end

100.times do |n|
  Game.create(name: "ゲーム" + n.to_s, company_id: n)
end
