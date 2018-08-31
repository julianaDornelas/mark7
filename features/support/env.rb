require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://mark7.herokuapp.com'
end

Capybara.default_max_wait_time = 5 