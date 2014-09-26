# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'look_of_disapproval/version'

Gem::Specification.new do |spec|
  spec.name          = "look_of_disapproval"
  spec.version       = LookOfDisapproval::VERSION
  spec.authors       = ["Quinn Rohlf"]
  spec.email         = ["qr@qrohlf.com"]
  spec.summary       = "disapprove of things"
  spec.homepage      = "http://qrohlf.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['disapprove']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
