# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cbr2pdf/version'

Gem::Specification.new do |spec|
  spec.name          = "cbr2pdf"
  spec.version       = Cbr2pdf::VERSION
  spec.authors       = ["Nick Veys"]
  spec.email         = ["psylence519@gmail.com"]
  spec.description   = %q{Convert comic book archives to PDFs of the contained images.}
  spec.summary       = %q{CBR to PDF converter}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rmagick', '~> 2.13'
  spec.add_dependency 'zip', '~> 2.0'

  spec.add_development_dependency 'awesome_print'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'ci_reporter', '= 1.8.4'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 2.13'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'simplecov-gem-adapter'
  spec.add_development_dependency 'simplecov-rcov'
end
