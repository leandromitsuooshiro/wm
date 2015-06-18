require 'capybara/cucumber'
require 'capybara/session'
require 'features/support/patches/capybara'
Capybara.default_driver = :selenium
Capybara.run_server = false
Capybara.default_selector = :css
Capybara.default_wait_time = 20
