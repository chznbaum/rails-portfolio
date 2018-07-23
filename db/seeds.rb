# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  name: "Admin User",
  email: "admin@example.com",
  password: "passwordpassword",
  password_confirmation: "passwordpassword",
  roles: "site_admin"
)

User.create!(
  name: "Regular User",
  email: "regular@example.com",
  password: "passwordpassword",
  password_confirmation: "passwordpassword"
)

5.times do
  random_password = Faker::Internet.password(16, 26)
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: random_password,
    password_confirmation: random_password
  )
end

puts "#{User.count} users created."

8.times do |topic|
  Topic.create!(
    title: Faker::Lorem.words(2).join(" ").titlecase
  )
end

puts "#{Topic.count} topics created."

markdown_sample = '# h1 Heading
## h2 Heading
### h3 Heading 😁
#### h4 Heading
##### h5 Heading
###### h6 Heading

😂👩🏻‍💻

## Horizontal Rules

___

---

***


## Typographic replacements
&copy;



## Emphasis

**This is bold text**

__This is bold text__

*This is italic text*

_This is underlined text_

~~Strikethrough~~


## Quotes

This is a "quote".



## Blockquotes


> Blockquotes can be included by using greater-than signs right next to the quotes.


## Lists

Unordered

+ Create a list by starting a line with `+`, `-`, or `*`
+ Sub-lists are made by indenting 2 spaces:
  - Marker character change forces new list start:
    * Ac tristique libero volutpat at
    + Facilisis in pretium nisl aliquet
    - Nulla volutpat aliquam velit
+ Very easy!

Ordered

1. Lorem ipsum dolor sit amet
2. Consectetur adipiscing elit
3. Integer molestie lorem at massa


1. You can use sequential numbers...
1. ...or keep all the numbers as `1.`



## Code

Inline `code`

Indented code

    // Some comments
    line 1 of code
    line 2 of code
    line 3 of code


Block code "fences"

```
Sample text here...
```

Syntax highlighting

``` js
var foo = function (bar) {
  return bar++;
};

console.log(foo(5));
```

## Tables

| Column A | Column B | Column C |
|----------+----------+----------|
| Cell A1  | Cell B1  | Cell C1  |
| Cell A2  | Cell B2  | Cell C2  |
| Cell A3  | Cell B3  | Cell C3  |

| Column A | Column B | Column C |
|----------|----------|----------|
| Cell A1  | Cell B1  | Cell C1  |
| Cell A2  | Cell B2  | Cell C2  |
| Cell A3  | Cell B3  | Cell C3  |


## Links

[link text](http://dev.nodeca.com)

[link with title](http://nodeca.github.io/pica/demo/ "title text!")

Autoconverted link https://github.com/nodeca/pica (enable linkify to see)


## Images

![Minion](https://octodex.github.com/images/minion.png)
![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg "The Stormtroopocat")

Like links, Images also have a footnote style syntax

![Alt text][id]

With a reference later in the document defining the URL location:

[id]: https://octodex.github.com/images/dojocat.jpg  "The Dojocat"



### Superscript

- 19^th


### \<mark>

==Marked text==


### Footnotes

Footnote 1 link[^1].

Footnote 2 link[^2].

[^3]: Text of inline footnote definition.

Another footnote link[^3]. Duplicated footnote reference[^2].

[^1]: Footnote **can have markup**

    and multiple paragraphs.

[^2]: Footnote text.'

10.times do
  4.times do |blog|
    Blog.create!(
      title: Faker::Lorem.words(5).join(" ").titlecase,
      body: Faker::Lorem.paragraphs(3).join("\n\n"),
      topic_id: rand(1..8),
      status: rand(0..1)
    )
  end
  Blog.create!(
    title: Faker::Lorem.words(5).join(" ").titlecase,
    body: markdown_sample,
    topic_id: rand(1..8),
    status: rand(0..1)
  )
end

puts "#{Blog.count} blog posts created."

100.times do
    Comment.create!(
        content: Faker::Lorem.words(15).join(" "),
        user_id: rand(1..User.count),
        blog_id: rand(1..Blog.count)
    )
end

puts "#{Comment.count} comments created."

5.times do |skill|
  Skill.create!(
    title: Faker::Lorem.characters(6),
    percent_utilized: rand(25..100)
  )
end

puts "#{Skill.count} skills created."

8.times do |portfolio_item|
  @portfolio = Portfolio.create!(
    title: Faker::Lorem.words(5).join(" ").titlecase,
    subtitle: Faker::Lorem.words(5).join(" ").titlecase,
    body: Faker::Lorem.sentences(20).join(" ")
  )
  @portfolio.main_image.attach(io: File.open("#{Rails.root}/app/webpacker/images/600x400.png"), filename: '600x400.png', content_type: 'image/png')
  @portfolio.thumb_image.attach(io: File.open("#{Rails.root}/app/webpacker/images/350x200.png"), filename: '350x200.png', content_type: 'image/png')
end

puts "#{Portfolio.count} portfolio items created."

Portfolio.all.each do |portfolio_item|
  3.times do |technology|
    portfolio_item.technologies.create!(
      name: Faker::Lorem.characters(6).titlecase
    )
  end
end

puts "#{Technology.count} technologies created."