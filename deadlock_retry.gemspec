# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)

require "deadlock_retry/version"

Gem::Specification.new do |s|
  s.name = %q{deadlock_retry}
  s.version = DeadlockRetry::VERSION
  s.authors = ["Jamis Buck", "Mike Perham", "Ehsanul Hoque", "Malachai Frazier"]
  s.description = s.summary = %q{Provides automatic deadlock retry and logging functionality for ActiveRecord and MySQL}
  s.email = %q{malachaifrazier@gmail.com}
  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage = %q{http://github.com/malachaifrazier/deadlock_retry}
  s.require_paths = ["lib"]
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'codeclimate-test-reporter', ENV['CODECLIMATE_REPO_TOKEN']
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'activerecord', ENV['ACTIVERECORD_VERSION'] || ' ~>3.2'
end
