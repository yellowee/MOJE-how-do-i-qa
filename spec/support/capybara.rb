require 'selenium/webdriver'
require 'webdrivers'

Capybara.register_driver :chrome do |app|
  browser_options = Selenium::WebDriver::Chrome::Options.new
  browser_options.add_argument('--window-size=1440,900')
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: browser_options
  )
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w[headless no-sandbox disable-gpu window-size=1400,900] }
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: capabilities
  )
end

Capybara.default_max_wait_time = 4
Capybara.javascript_driver = :chrome
