# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-modular/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-modular'
  spec.version       = CMod::VERSION
  spec.authors       = ['wangshiyu13']
  spec.email         = ['wangshiyu13@163.com']
  spec.description   = %q{cocoapods-modular is a plugin which modularization of project.}
  spec.summary       = %q{cocoapods-modular is a plugin which modularization of project.}
  spec.homepage      = 'https://github.com/wangshiyu13/cocoapods-modular'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^mod/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'parallel'
  spec.add_dependency 'cocoapods', '~> 1.7'
  spec.add_dependency 'cocoapods-generate', '~> 1.5'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
