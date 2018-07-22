source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'faker'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# friendly_id for blog slugs
gem 'friendly_id', '~> 5.1.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+

# Authentication
gem 'devise', '~> 4.2', '>= 4.2.1'
gem 'rack-attack', '~> 5.0', '>= 5.0.1'

# View Methods
gem 'chznbaum_view_tool', '~> 0.2.0'

# Authorization
gem 'petergate', '~> 1.7', '>= 1.7.3'

# FontAwesome
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'

# Pagination
gem 'kaminari', '~> 0.17.0'

# Uploading
gem 'aws-sdk-s3', '~> 1.17'
gem 'dotenv-rails', '~> 2.1', '>= 2.1.1'

# Twitter
gem 'twitter', '~> 6.1'

# Comments
gem 'redis', '~> 4.0', '>= 4.0.1'

# Markdown and Syntax Highlighting
gem 'redcarpet', '~> 3.4'
gem 'coderay', '~> 1.1', '>= 1.1.1'

# HAML Syntax
gem 'haml', '~> 5.0', '>= 5.0.4'

# Webpack
gem 'webpacker', '~> 3.5', '>= 3.5.5'

# Load App Faster, new in Rails 5.2.0
gem 'bootsnap', '~> 1.3', '>= 1.3.1'

ruby "~> 2.5.0"