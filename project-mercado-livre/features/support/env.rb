# frozen_string_literal: true

require 'appium_lib'
require 'cucumber'
require 'selenium-webdriver'
<<<<<<< HEAD
require 'allure-cucumber'
require 'fileutils'
require 'em/pure_ruby'
=======
require 'site_prism'
require 'pry'
require 'rake'
require 'page-object'
require_relative 'helper.rb'
require_relative 'page_helper.rb'
>>>>>>> 62d2136ea4149c55cbb15cc3df814586028b3244

caps = Appium.load_appium_txt file: File.expand_path("caps/android.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

<<<<<<< HEAD
=======
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")
World(Helper)
World(Pages)

EL = YAML.load_file("data/elements.yml")
>>>>>>> 62d2136ea4149c55cbb15cc3df814586028b3244

