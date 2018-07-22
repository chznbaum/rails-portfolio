# Portfolio Source Code

This is the source code for [https://chazonabaum.com](https://chazonabaum.com?q=GitHub).

## Prerequisites

* Ruby 2.5
* Node 10.3
* Rails 5.2
* Postgresql
* Yarn

## Installation

Clone the repository:

```bash
git clone https://github.com/chznbaum/rails-portfolio.git
```

Install the dependencies:

```bash
bundle install
```

Create your database:

```bash
rake db:create
```

Migrate the database tables:

```bash
rake db:migrate
```

Populate your development database with sample data:

```bash
rake db:seed
```

Obtain a copy of the `master.key` or set your own with your own encrypted `credentials.yml.enc`. If setting your own, the following are required:

```yaml
development:
  aws:
    access_key_id:
    region:
    secret_access_key:
    bucket_name:
  twitter:
    access_secret:
    access_token:
    consumer_key:
    consumer_secret:
  secret_key_base:
  sendgrid:
    username:
    password:
    api_key:
staging:
  aws:
    access_key_id:
    region:
    secret_access_key:
    bucket_name:
  twitter:
    access_secret:
    access_token:
    consumer_key:
    consumer_secret:
  secret_key_base:
  sendgrid:
    username:
    password:
    api_key:
production:
  aws:
    access_key_id:
    region:
    secret_access_key:
    bucket_name:
  twitter:
    access_secret:
    access_token:
    consumer_key:
    consumer_secret:
  secret_key_base:
  sendgrid:
    username:
    password:
    api_key:
```

Start your server:

```bash
rails s
```

## Features

- User authentication with Devise
- Roles and authorization with Petergate
- Dismissable flash notifications
- Skills progress bars
- Collapsible experience/education info
- Contact form for emails
- Draft/published toggleable blog posts
- Filter blog posts by topics
- Live-updating blog comments with ActionCable
- Drag-and-drop portfolio item order (for admins)
- Session tracker message "Thanks for visiting from __" message on blogs and portfolios when arriving from custom links (?q=something).

## To-Do List

- Implement featured image on blogs and plug them into the Twitter cards
- Show skills percentages and collapsible info on about page even when CSS and JS are stripped (like browsers' reading mode)
- PWA

## Credits

Thanks goes to the following rubyists who came before me and have provided valuable insight used to build and maintain this application:

* DHH
* Michael Hartl
* Jordan Hudgens
* the DigitalOcean Community
* RubyConf 2017
* Engine Yard's Technical Evangelists
* Andy Croll
* Marcelo Casiraghi

This list is not all-inclusive and there are many I've missed that I will back in add over time.

## License

MIT License

Copyright (c) 2017 Chazona Baum

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.