# Portfolio Source Code

This is the source code for [https://chazonabaum.com](https://chazonabaum.com?q=GitHub).

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

Create a `.env` file and fill it with your environmental variables.

Start your server:

```bash
rails s
```

### Notes

- You will need Ruby v2.4, Rails v5.0, and PostgreSQL set up on your system before these steps

## Features

- User authentication with Devise
- Roles and authorization with Petergate
- Gritter notifications
- Skills progres bars
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

This site would not have been possible without the phenomenal instruction of Jordan Hudgens. If you're learning Rails, you should really take [his course](https://www.udemy.com/professional-rails-5-development-course).

## License

MIT License

Copyright (c) [year] [fullname]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.