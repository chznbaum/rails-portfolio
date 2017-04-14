# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed varius felis. Cras eu dictum mi, ut tincidunt augue. Curabitur blandit leo at risus faucibus, in efficitur augue cursus. Duis non purus ut lectus varius interdum. Donec magna mauris, suscipit ut sem a, viverra vulputate est. Vestibulum sodales metus non orci pulvinar fringilla. Nunc pretium hendrerit ante sed porttitor. Maecenas tempus nisl non pharetra pretium. Morbi dui enim, bibendum sit amet porttitor auctor, lobortis quis justo. Curabitur porta neque nec velit varius scelerisque.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created."

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created."

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Title #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed varius felis. Cras eu dictum mi, ut tincidunt augue. Curabitur blandit leo at risus faucibus, in efficitur augue cursus. Duis non purus ut lectus varius interdum. Donec magna mauris, suscipit ut sem a, viverra vulputate est. Vestibulum sodales metus non orci pulvinar fringilla. Nunc pretium hendrerit ante sed porttitor. Maecenas tempus nisl non pharetra pretium. Morbi dui enim, bibendum sit amet porttitor auctor, lobortis quis justo. Curabitur porta neque nec velit varius scelerisque.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Title #{portfolio_item}",
    subtitle: "Vue",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed varius felis. Cras eu dictum mi, ut tincidunt augue. Curabitur blandit leo at risus faucibus, in efficitur augue cursus. Duis non purus ut lectus varius interdum. Donec magna mauris, suscipit ut sem a, viverra vulputate est. Vestibulum sodales metus non orci pulvinar fringilla. Nunc pretium hendrerit ante sed porttitor. Maecenas tempus nisl non pharetra pretium. Morbi dui enim, bibendum sit amet porttitor auctor, lobortis quis justo. Curabitur porta neque nec velit varius scelerisque.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portfolio items created."

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies created."