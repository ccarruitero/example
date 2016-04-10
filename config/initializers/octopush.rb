Octopush.configure do |config|
  config.user_login = ENV['OCTOPUSH_LOGIN']
  config.api_key = ENV['OCTOPUSH_KEY']
end
