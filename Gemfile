source 'https://rubygems.org'
ruby '2.3.4'

# Upgrading from rails 4 to rails 5
gem 'rails', '4.2.7'
# gem 'rails', '>= 5.0.0.rc2', '< 5.1'

gem 'nokogiri'
gem 'json'
gem 'haml'
gem 'sass'
gem 'haml-rails'
gem 'font-awesome-sass'
gem 'sass-rails'
gem 'sprockets', '=2.11.0'
gem 'uglifier'
gem 'coffee-rails' 
gem 'jquery-rails'

gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'
gem 'postmarkdown'
gem 'active_attr'
gem 'figaro'

gem 'newrelic_rpm'
gem 'friendly_id', '~> 5.1.0'
gem 'pygments.rb', '~> 0.6.0'
gem 'redcarpet', '~> 3.2.2'
gem 'paperclip', '~> 4.3'
gem 'aws-sdk'
gem 'devise', '~> 3.4.1'
gem 'mail_form'
gem 'will_paginate'

group :development, :test do
  gem 'rspec-rails', '2.13.1'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'

end

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'rails_12factor'
  gem 'unicorn'
end
group :production, :development, :test do
  gem 'pg'
end


