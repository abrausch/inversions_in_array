# -*- encoding: utf-8 -*-
require File.expand_path('../lib/inversion_of_array/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alexander Brausch"]
  gem.email         = ["alexander.brausch@caperwhite.com"]
  gem.description   = %q{Calculate the inversion of an array}
  gem.summary       = %q{Calculate the inversion of an array}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "inversion_of_array"
  gem.require_paths = ["lib"]
  gem.version       = InversionOfArray::VERSION

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
end
