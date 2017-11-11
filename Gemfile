source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.2'
gem 'bcrypt', platforms: :ruby
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.4'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :production do
  # Use postgresql as the database for Active Record
  gem 'pg', '~> 0.18'
  gem 'rails_12factor'
end

gem 'bootstrap', '~> 4.0.0.beta'
gem 'carrierwave'
gem 'carrierwave-ftp', '~> 0.3.1', require: 'carrierwave/storage/ftp/all'
gem 'cocoon', '~> 1.2', '>= 1.2.10'
gem 'coderay'
gem 'devise', '~> 4.3'
gem 'dotenv-rails'
gem 'em-synchrony', '~> 1.0', '>= 1.0.6'
gem 'font-awesome-rails'
gem 'friendly_id', '~> 5.2', '>= 5.2.1'
gem 'gritter', '~> 1.2'
gem 'hirb'
gem 'hiredis', '~> 0.6.1'
gem 'jquery-rails'
gem 'jquery-ui-rails', '~> 5.0', '>= 5.0.5'
gem 'kaminari', git: 'https://github.com/kaminari/kaminari'
gem 'mini_magick'
gem 'petergate', '~> 1.7', '>= 1.7.5'
gem 'redcarpet'
gem 'redis', '~> 4.0', '>= 4.0.1'
gem 'twitter', '~> 6.1'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]