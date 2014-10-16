$:.unshift(File.join(File.dirname(__FILE__),'..','lib'))
# $:.push File.expand_path("../lib", __FILE__)
require 'codeclimate-test-reporter'
require 'rubygems'
require 'active_record'
require 'active_record/version'
puts "Testing ActiveRecord #{ActiveRecord::VERSION::STRING}"
require 'minitest/autorun'
require 'minitest/spec'
require 'mocha/setup'
require 'mocha/mini_test'
require 'logger'
# require '../lib/deadlock_retry'
require 'coveralls'
gem 'activerecord', ENV['ACTIVERECORD_VERSION'] || ' ~>3.2'
Coveralls.wear!
CodeClimate::TestReporter.start

