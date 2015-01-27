# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = []

5.times do |i|
  categories[i] = Category.create name:        Faker::Lorem.words(Random.rand(2) + 1).join(' '),
                                  description: Faker::Lorem.paragraphs(1, true).join(' ')
end

10.times do
  post = Post.create title:     Faker::Lorem.sentences(1).join(' '),
                     content:   Faker::Lorem.paragraphs(25, true).join(' '),
                     category:  categories[Random.rand(5)]
                     
  
  (Random.rand(10) + 2).times do
    comment = Comment.create author:   Faker::Name.name,
                             content:  Faker::Lorem.paragraphs(1, true).join(' '),
                             post: post
  end
  
end