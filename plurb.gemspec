# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'plurb/version'

Gem::Specification.new do |gem|
  gem.name          = 'plurb'
  gem.version       = Plurb::VERSION
  gem.authors       = ['Edwin Tunggawan']
  gem.email         = ['vcc.edwint@gmail.com']
  gem.description   = 'Plurk API wrapper for Ruby'
  gem.summary       = 'Another Plurk API wrapper for Ruby'
  gem.homepage      = 'https://github.com/sdsdkkk/plurb'
  gem.licenses      = ['MIT']

  gem.add_runtime_dependency 'oauth', '~> 0.5.1'

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ['lib', 'lib/plurb']
end