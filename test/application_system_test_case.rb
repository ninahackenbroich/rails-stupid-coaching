require "test_helper"
require 'capybara/rails'
require 'capybara/rspec'
require 'capybara-screenshot/rspec'
require 'selenium-webdriver'
require 'webdrivers/chromedriver'



class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  Capybara.asset_host = 'http://localhost:3000'
  CAPYBARA_WINDOW_SIZE = [1366, 768].freeze
  Capybara.register_driver :chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument("headless")
    options.add_argument("window-size=#{CAPYBARA_WINDOW_SIZE.join(',')}")
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      options: options
    )
  end
  driven_by :selenium, using: :headless_chrome
end
