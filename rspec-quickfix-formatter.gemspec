# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rspec-quickfix-formatter/version"

Gem::Specification.new do |s|
  s.name        = "rspec-quickfix-formatter"
  s.version     = Rspec::Quickfix::Formatter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["John Bintz"]
  s.email       = ["john@coswellproductions.com"]
  s.homepage    = ""
  s.summary     = %q{RSpec formatter to create a Quickfix-compatible output file for Vim}
  s.description = %q{RSpec formatter to create a Quickfix-compatible output file for Vim. Use as an --out format option for rspec.}

  s.rubyforge_project = "rspec-quickfix-formatter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'rspec'
  s.add_development_dependency 'mocha'
end
