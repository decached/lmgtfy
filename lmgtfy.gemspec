# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lmgtfy/version'

Gem::Specification.new do |gem|
  gem.name                 = "lmgtfy"
  gem.version              = Lmgtfy::VERSION
  gem.authors              = ["Prathamesh Sonpatki"]
  gem.email                = ["csonpatki@gmail.com"]
  gem.description          = %q{Command line wrapper for http://lmgtfy.com}
  gem.summary              = %q{Give a query string and get a url back from http://lmgtfy.com}
  gem.homepage             = "https://github.com/prathamesh-sonpatki/lmgtfy-gem"
  gem.post_install_message = "Thanks for installing! Now troll the trolls :)"
  gem.license              = 'MIT'
  gem.add_development_dependency 'rspec'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
