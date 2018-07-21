# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => Rails.application.credentials.dig(Rails.env.to_sym, :sendgrid, :username),
  :password => Rails.application.credentials.dig(Rails.env.to_sym, :sendgrid, :password),
  :domain => 'chazonabaum.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}