# -*- encoding: utf-8 -*-
require File.expand_path('../lib/blurg/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nick Gauthier"]
  gem.email         = ["ngauthier@gmail.com"]
  gem.description   = %q{it's a Blurg}
  gem.summary       = %q{it's a Blurg}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "blurg"
  gem.require_paths = ["lib"]
  gem.version       = Blurg::VERSION
end
