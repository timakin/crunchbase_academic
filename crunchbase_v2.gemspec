# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crunchbase_v2/version'

Gem::Specification.new do |spec|
  spec.name          = "crunchbase_v2"
  spec.version       = CrunchbaseV2::VERSION
  spec.authors       = ["timakin"]
  spec.email         = ["timaki.st@gmail.com"]
  spec.description   = "Gemfile for CrunchBaseAPI ver2.0"
  spec.summary       = "Gemfile for CrunchBaseAPI ver2.0"
  spec.homepage      = "https://github.com/timakin/crunchbase_v2"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
