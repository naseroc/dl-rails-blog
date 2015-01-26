# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
 post = Post.create title:     Faker::Lorem.sentences(1).join(' '),
                    content:   Faker::Lorem.paragraphs(25, true).join(' ')
 3.times do
   comment = Comment.create author:   Faker::Name.name,
                            content:  Faker::Lorem.paragraphs(4, true).join(' '),
                            post: post
 end
  
end