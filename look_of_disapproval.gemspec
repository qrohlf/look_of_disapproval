# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'look_of_disapproval/version'
require 'rake'

Gem::Specification.new do |spec|
  spec.name          = "look_of_disapproval"
  spec.version       = LookOfDisapproval::VERSION
  spec.authors       = ["Quinn Rohlf"]
  spec.email         = ["qr@qrohlf.com"]
  spec.summary       = "A utility to disapprove of things"
  spec.homepage      = "https://github.com/qrohlf/look_of_disapproval"
  spec.license       = "MIT"

  spec.files         = FileList['lib/**/*',
                      'bin/*',
                      '[A-Z]*',
                      'test/   *'].to_a
  spec.executables   = ['disapprove']
  spec.test_files    = []
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "launchy", "~> 2.4.2"
end
