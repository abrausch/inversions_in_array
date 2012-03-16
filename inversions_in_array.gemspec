# -*- encoding: utf-8 -*-
require File.expand_path('../lib/inversions_in_array/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alexander Brausch"]
  gem.email         = ["abrausch@web.de"]
  gem.description   = %q{Calculate the inversions in an array}
  gem.summary       = %q{Calculate the inversions in an array}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "inversions_in_array"
  gem.require_paths = ["lib"]
  gem.version       = InversionsInArray::VERSION

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
end
