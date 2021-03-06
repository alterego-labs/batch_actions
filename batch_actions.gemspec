# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'batch_actions/version'

Gem::Specification.new do |spec|
  spec.name          = "batch_actions"
  spec.version       = BatchActions::VERSION
  spec.authors       = ["Sergey Gridasov"]
  spec.email         = ["grindars@gmail.com"]
  spec.description   = %q{Batch action support for Rails.}
  spec.summary       = %q{Batch action support for Rails.}
  spec.homepage      = "https://github.com/grindars/batch_actions"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency 'vine', '~> 0.2'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
