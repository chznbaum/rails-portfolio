# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
8.times do |topic|
  Topic.create!(
    title: Faker::Lorem.words(2).join(" ")
  )
end

puts "#{Topic.count} topics created."

50.times do |blog|
  Blog.create!(
    title: Faker::Lorem.words(5).join(" "),
    body: Faker::Lorem.sentences(20).join(" "),
    topic_id: rand(1..8),
    status: rand(0..1)
  )
end

puts "#{Blog.count} blog posts created."

5.times do |skill|
  Skill.create!(
    title: Faker::Lorem.characters(6),
    percent_utilized: rand(25..100)
  )
end

puts "#{Skill.count} skills created."

8.times do |portfolio_item|
  Portfolio.create!(
    title: Faker::Lorem.words(5).join(" "),
    subtitle: "Ruby on Rails",
    body: Faker::Lorem.sentences(20).join(" "),
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: Faker::Lorem.words(5).join(" "),
    subtitle: "Vue",
    body: Faker::Lorem.sentences(20).join(" "),
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "#{Portfolio.count} portfolio items created."

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: Faker::Lorem.characters(6)
  )
end

puts "#{Technology.count} technologies created."