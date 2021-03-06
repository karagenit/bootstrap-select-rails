# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap4-select-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap4-select-rails"
  spec.version       = Bootstrap4::Select::Rails::VERSION
  spec.authors       = ["Caleb Smith"]
  spec.email         = ["karagenit@outlook.com"]
  spec.description   = "bootstrap-select Gem for Rails"
  spec.summary       = "Updated version of bootstrap-select, compatible with Bootstrap 4 (Beta 2.1)"
  spec.homepage      = "https://github.com/karagenit/bootstrap-select-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 12.2"
end
