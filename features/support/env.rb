require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'
require 'yaml'

BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/homolog.yml")

World(PageObjects)

if BROWSER.eql?('chrome')
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
  options = {
  :js_errors => false,
  :timeout => 360,
  :debug => false,
  :inspector => false,
  }
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
 elsif BROWSER == 'firefox'
  Capybara.default_driver = :firefox
  Capybara.register_driver :firefox do |app|
  options = {
  :js_errors => true,
  :timeout => 360,
  :debug => false,
  :inspector => false,
  }
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
 elsif BROWSER == 'safari'
  Capybara.default_driver = :safari
  Capybara.register_driver :safari do |app|
  options = {
  :js_errors => false,
  :timeout => 360,
  :debug => false,
  :inspector => false,
  }
  Capybara::Selenium::Driver.new(app, :browser => :safari)
  end
 elsif BROWSER == 'ie'
  Capybara.register_driver :internet_explorer do |app|
    options = {
    :js_errors => false,
    :timeout => 360,
    :debug => false,
    :inspector => false,
    }
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  end
 elsif BROWSER == 'opera'
  Capybara.default_driver = :opera
  Capybara.register_driver :opera do |app|
  options = {
  :js_errors => false,
  :timeout => 360,
  :debug => false,
  :inspector => false,
  }
  Capybara::Selenium::Driver.new(app, :browser => :opera)
  end
 elsif
 Capybara.default_driver = :poltergeist
  Capybara.register_driver :poltergeist do |app|
  options = {
  :js_errors => false,
  :timeout => 360,
  :debug => false,
  :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
  :inspector => false,
  }
  Capybara::Poltergeist::Driver.new(app, options)
  end
 end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host   = CONFIG['url_padrao']
  config.default_max_wait_time = 5
end

  